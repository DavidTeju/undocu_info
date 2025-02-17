# Ensure you have fetched_images.json in the same directory as this script

import os
import json
import magic
import pandas as pd
import requests
from supabase import create_client, Client
from dotenv import load_dotenv

load_dotenv()


def create_supabase_client(
    key: str = None,
    url: str = "http://127.0.0.1:54321",
    # TODO: move this to a .env file
) -> Client:
    if key is None:
        key: str = os.getenv("SERVICE_ROLE_KEY")

    supabase: Client = create_client(url, key)

    return supabase


def hide_hostile_colleges(supabase, hostile: list[str] = None):
    """
    Hide colleges that request to be hidden.

    Args:
        hostile (list[str], required): List of colleges (domains) to hide.
    """
    if hostile is None:
        print("No input")
        return
    for college in hostile:
        supabase.table("colleges").update({"hidden": True}).eq(
            "domain", college
        ).execute()


def add_college_locations(
    supabase, college_locations: dict[str, tuple[str, str]] = None
):
    """
    Add college locations to the database.

    Args:
        college_locations (dict[str, tuple[str, str]], required): Dictionary of form - Domain: (City, State)

    """
    if college_locations is None:
        print("No input")
        return

    for college, location in college_locations.items():
        city = location[0]
        state = location[1]
        supabase.table("colleges").update({"state": state, "city": city}).eq(
            "domain", college
        ).execute()


def delete_dead_colleges(supabase, colleges_to_delete: list[str] = None):
    if colleges_to_delete is None:
        print("No input")
        return

    for college in colleges_to_delete:
        supabase.table("colleges").delete().eq("domain", college).execute()


def upload_images(supabase, fetchedData: dict[str, list[str]] = None):
    """
    Fetch images using urls in fetchedData and upload them to supabase.

    Args:
        fetchedData (dict[str, list[str]], required): Dictionary of form - Domain: [Image URLs]
    """

    if fetchedData is None:
        print("No input")
        return

    mime = magic.Magic(mime=True)

    weird_errors = []
    for domain, imageLinks in list(fetchedData.items()):
        for i, imageLink in enumerate(imageLinks):
            if "x-raw-image" in imageLink:
                continue
            try:
                response = requests.get(imageLink, timeout=10)
                content = response.content
                supabase.storage.from_("campuses").upload(
                    file=content,
                    path=f"{domain}/{i}",
                    file_options={
                        "cache-control": "3600",
                        "upsert": "false",
                        "content-type": mime.from_buffer(content),
                    },
                )
                del fetchedData[domain][i]

            except Exception as e:
                try:
                    if e.args[0]["error"] == "Duplicate":
                        continue
                    print(e)
                    print(imageLink)
                except Exception:
                    weird_errors.append((domain, imageLink, e))
                    print("weird error")
                    break
                # exit(1)
    with open("fetched_images.json", "w") as f:
        json.dump(fetchedData, f)


def download_all_campus_images(
    supabase,
    path_to_store="images/",
):
    for item in supabase.storage.from_("campuses").list(path=""):
        uni = item["name"]
        for campus_image in supabase.storage.from_("campuses").list(path=uni):
            print(campus_image)
            extension = campus_image["metadata"]["mimetype"].split("/")[1]
            name = campus_image["name"]
            if path_to_store[-1] != "/":
                path_to_store += "/"
            if not os.path.exists(f"{path_to_store}{uni}"):
                os.makedirs(f"{path_to_store}{uni}")
            with open(f"{path_to_store}{uni}/{name}.{extension}", "wb+") as f:
                response = supabase.storage.from_("campuses").download(f"{uni}/{name}")
                f.write(response)

    with open(f"{path_to_store}generic", "wb+") as f:
        response = supabase.storage.from_("campuses").download("generic")
        f.write(response)


def upload_all_campus_images(
    supabase,
    path_to_images="images/",
):
    mime = magic.Magic(mime=True)

    if path_to_images[-1] != "/":
        path_to_images += "/"

    list_of_unis = os.listdir(path_to_images)
    if "generic" in list_of_unis:
        list_of_unis.remove("generic")
    for uni in list_of_unis:
        for image in os.listdir(f"{path_to_images}{uni}"):
            with open(f"{path_to_images}{uni}/{image}", "rb") as f:
                name = image.split(".")[0]
                print(f"{path_to_images}{uni}/{image}")
                supabase.storage.from_("campuses").upload(
                    f"{uni}/{name}",
                    f,
                    file_options={
                        "cache-control": "3600",
                        "upsert": "true",
                        "content-type": mime.from_file(
                            f"{path_to_images}{uni}/{image}"
                        ),
                    },
                )

    with open(f"{path_to_images}generic", "rb") as f:
        supabase.storage.from_("campuses").upload(
            "generic",
            f,
            file_options={
                "cache-control": "3600",
                "upsert": "true",
                "content-type": mime.from_file(f"{path_to_images}generic"),
            },
        )


def update_from_suggestions(supabase, path_to_csv):
    if not path_to_csv or path_to_csv[-4:] != ".csv":
        print("Not a csv file")
        return
    df = pd.read_csv(path_to_csv)

    for row in df.itertuples():
        domain = row.college_domain
        content = json.loads(
            row.content.encode()
            .decode("unicode_escape")
            .encode("latin-1")
            .decode("utf-8")[1:-1]
        )

        colleges = (
            supabase.table("colleges")
            .select("*, responses(*)")
            .eq("domain", domain)
            .execute()
        )

        for response in colleges.data[0]["responses"]:
            questionid = response["questionid"]
            corresponding_suggestion = content[str(questionid)]

            if (
                corresponding_suggestion["response"].strip()
                and response["response"] != corresponding_suggestion["response"].strip()
            ):
                print(
                    f"Updating {domain} {questionid} from \n\n{response['response']} \n\nto \n\n{corresponding_suggestion['response']}\n\n\n"
                )
                supabase.table("responses").update(
                    {"response": corresponding_suggestion["response"]}
                ).eq("id", response["id"]).execute()
