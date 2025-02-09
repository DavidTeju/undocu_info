import os

import magic
from supabase import create_client, Client
from dotenv import load_dotenv

load_dotenv()


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


def create_supabase_client(
    key: str = None,
    # TODO: move this to a .env file
) -> Client:
    if key is None:
        key: str = os.getenv("SERVICE_ROLE_KEY")
    url: str = "http://127.0.0.1:54321"

    supabase: Client = create_client(url, key)

    return supabase


def upload_all_campus_images(
    supabase,
    path_to_images="images/",
):
    mime = magic.Magic(mime=True)

    if path_to_images[-1] != "/":
        path_to_images += "/"

    for uni in os.listdir(path_to_images):
        for image in os.listdir(f"{path_to_images}{uni}"):
            with open(f"{path_to_images}{uni}/{image}", "rb") as f:
                name = image.split(".")[0]
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
