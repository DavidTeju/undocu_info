SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.8
-- Dumped by pg_dump version 15.8

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
00000000-0000-0000-0000-000000000000	31816bab-ecfd-4bc6-9a5d-d37946fc8882	{"action":"user_signedup","actor_id":"31543300-c365-46e5-b2d5-15aac5dc3781","actor_username":"tejuoshodavid@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-01-26 04:55:17.964469+00	
00000000-0000-0000-0000-000000000000	2b1b3040-4ce4-4f69-b361-8c0db410692d	{"action":"login","actor_id":"31543300-c365-46e5-b2d5-15aac5dc3781","actor_username":"tejuoshodavid@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-26 04:55:17.970053+00	
00000000-0000-0000-0000-000000000000	e5eca2b1-2eea-448c-9e3b-5151b2887975	{"action":"user_recovery_requested","actor_id":"31543300-c365-46e5-b2d5-15aac5dc3781","actor_username":"tejuoshodavid@gmail.com","actor_via_sso":false,"log_type":"user"}	2025-01-26 04:55:17.983447+00	
00000000-0000-0000-0000-000000000000	871c6b9f-157c-4152-9d59-621d407ebad9	{"action":"user_signedup","actor_id":"74cfe8f6-9a18-4017-8854-69f8cf30be00","actor_username":"simeon@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-01-26 21:02:47.11328+00	
00000000-0000-0000-0000-000000000000	beb48fe3-81b4-47b8-8353-67e03309f44d	{"action":"login","actor_id":"74cfe8f6-9a18-4017-8854-69f8cf30be00","actor_username":"simeon@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-26 21:02:47.124962+00	
00000000-0000-0000-0000-000000000000	9d9a8680-20d7-4086-a5c1-c68612787541	{"action":"user_recovery_requested","actor_id":"74cfe8f6-9a18-4017-8854-69f8cf30be00","actor_username":"simeon@gmail.com","actor_via_sso":false,"log_type":"user"}	2025-01-26 21:02:47.135765+00	
00000000-0000-0000-0000-000000000000	7066422b-6d10-43fc-87a1-fea71449b227	{"action":"user_recovery_requested","actor_id":"31543300-c365-46e5-b2d5-15aac5dc3781","actor_username":"tejuoshodavid@gmail.com","actor_via_sso":false,"log_type":"user"}	2025-01-26 21:09:22.741847+00	
00000000-0000-0000-0000-000000000000	9b190d67-a0a2-44e2-821e-1f1f6418d499	{"action":"user_recovery_requested","actor_id":"31543300-c365-46e5-b2d5-15aac5dc3781","actor_username":"tejuoshodavid@gmail.com","actor_via_sso":false,"log_type":"user"}	2025-01-29 22:09:24.203983+00	
00000000-0000-0000-0000-000000000000	574a3478-c368-406e-a950-faa0906d9144	{"action":"login","actor_id":"31543300-c365-46e5-b2d5-15aac5dc3781","actor_username":"tejuoshodavid@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-01-29 22:10:02.28907+00	
00000000-0000-0000-0000-000000000000	60697b16-c830-4f1e-84ad-8c4ca11e83af	{"action":"user_recovery_requested","actor_id":"31543300-c365-46e5-b2d5-15aac5dc3781","actor_username":"tejuoshodavid@gmail.com","actor_via_sso":false,"log_type":"user"}	2025-01-29 22:13:55.000956+00	
00000000-0000-0000-0000-000000000000	d35b8443-7f83-456f-896f-99c2fec17a28	{"action":"user_recovery_requested","actor_id":"31543300-c365-46e5-b2d5-15aac5dc3781","actor_username":"tejuoshodavid@gmail.com","actor_via_sso":false,"log_type":"user"}	2025-01-29 22:20:58.139789+00	
00000000-0000-0000-0000-000000000000	9ccf304d-4ea9-4206-9922-1b56bc16d21a	{"action":"login","actor_id":"31543300-c365-46e5-b2d5-15aac5dc3781","actor_username":"tejuoshodavid@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-01-29 22:21:19.106848+00	
00000000-0000-0000-0000-000000000000	3a846fe9-e345-44db-88de-f95335acfc5d	{"action":"user_recovery_requested","actor_id":"31543300-c365-46e5-b2d5-15aac5dc3781","actor_username":"tejuoshodavid@gmail.com","actor_via_sso":false,"log_type":"user"}	2025-01-29 22:22:26.01556+00	
00000000-0000-0000-0000-000000000000	671aa6bc-3995-4471-83af-e8339eb6d24a	{"action":"login","actor_id":"31543300-c365-46e5-b2d5-15aac5dc3781","actor_username":"tejuoshodavid@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-01-29 22:22:41.978277+00	
00000000-0000-0000-0000-000000000000	00023272-5bfe-4005-b715-07305dd0f9e0	{"action":"user_recovery_requested","actor_id":"31543300-c365-46e5-b2d5-15aac5dc3781","actor_username":"tejuoshodavid@gmail.com","actor_via_sso":false,"log_type":"user"}	2025-01-29 22:41:06.008701+00	
00000000-0000-0000-0000-000000000000	fc662ebc-3932-439b-8ef1-a2d273be7e7d	{"action":"user_recovery_requested","actor_id":"31543300-c365-46e5-b2d5-15aac5dc3781","actor_username":"tejuoshodavid@gmail.com","actor_via_sso":false,"log_type":"user"}	2025-01-29 22:58:27.642712+00	
00000000-0000-0000-0000-000000000000	8cace6c3-65cf-4323-9750-3696b5761f72	{"action":"login","actor_id":"31543300-c365-46e5-b2d5-15aac5dc3781","actor_username":"tejuoshodavid@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-01-29 22:58:45.96476+00	
00000000-0000-0000-0000-000000000000	e4a26d3b-fda1-49e6-89f9-ff09bffd08ca	{"action":"token_refreshed","actor_id":"31543300-c365-46e5-b2d5-15aac5dc3781","actor_username":"tejuoshodavid@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-08 22:11:39.093057+00	
00000000-0000-0000-0000-000000000000	18d4fc70-0035-4402-94a9-7f159136fa9b	{"action":"token_revoked","actor_id":"31543300-c365-46e5-b2d5-15aac5dc3781","actor_username":"tejuoshodavid@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-08 22:11:39.094225+00	
00000000-0000-0000-0000-000000000000	c5c3a60e-c0c2-4d3d-a699-5b38ad51ca9f	{"action":"token_refreshed","actor_id":"31543300-c365-46e5-b2d5-15aac5dc3781","actor_username":"tejuoshodavid@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-09 02:33:07.117546+00	
00000000-0000-0000-0000-000000000000	278c900d-d174-4a2a-a0dd-098eb4b2a00f	{"action":"token_revoked","actor_id":"31543300-c365-46e5-b2d5-15aac5dc3781","actor_username":"tejuoshodavid@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-09 02:33:07.126617+00	
00000000-0000-0000-0000-000000000000	4cac1492-ac37-45c3-a608-cd8d8421d0d4	{"action":"token_refreshed","actor_id":"31543300-c365-46e5-b2d5-15aac5dc3781","actor_username":"tejuoshodavid@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-09 05:15:12.45361+00	
00000000-0000-0000-0000-000000000000	e3553d1c-6809-4eaa-b2bf-4b68bac01139	{"action":"token_revoked","actor_id":"31543300-c365-46e5-b2d5-15aac5dc3781","actor_username":"tejuoshodavid@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-09 05:15:12.456259+00	
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
00000000-0000-0000-0000-000000000000	74cfe8f6-9a18-4017-8854-69f8cf30be00	authenticated	authenticated	simeon@gmail.com	$2a$10$gevjKgb7aVsvkBroLTYk/.Pl/I4nF3ul.RvZ6Nu/o2xyR.KHQsao6	2025-01-26 21:02:47.11423+00	\N		\N	11a92df24b9dde0f63a46ac95f1b58a9ee1ab1e5acbbc9a3cb5a5bad	2025-01-26 21:02:47.135941+00			\N	2025-01-26 21:02:47.125245+00	{"provider": "email", "providers": ["email"]}	{"sub": "74cfe8f6-9a18-4017-8854-69f8cf30be00", "email": "simeon@gmail.com", "email_verified": false, "phone_verified": false}	\N	2025-01-26 21:02:47.104826+00	2025-01-26 21:02:47.164887+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	31543300-c365-46e5-b2d5-15aac5dc3781	authenticated	authenticated	tejuoshodavid@gmail.com	$2a$10$ZaROZJBqBJqCs/ErCfccR.YkUx1qDdBvBOURAFe/dLzWtbkmizs2.	2025-01-26 04:55:17.966187+00	\N		\N		2025-01-29 22:58:27.650246+00			\N	2025-01-29 22:58:45.968735+00	{"provider": "email", "providers": ["email"]}	{"sub": "31543300-c365-46e5-b2d5-15aac5dc3781", "email": "tejuoshodavid@gmail.com", "email_verified": false, "phone_verified": false}	\N	2025-01-26 04:55:17.929834+00	2025-02-09 05:15:12.460126+00	\N	\N			\N		0	\N		\N	f	\N	f
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
31543300-c365-46e5-b2d5-15aac5dc3781	31543300-c365-46e5-b2d5-15aac5dc3781	{"sub": "31543300-c365-46e5-b2d5-15aac5dc3781", "email": "tejuoshodavid@gmail.com", "email_verified": false, "phone_verified": false}	email	2025-01-26 04:55:17.962119+00	2025-01-26 04:55:17.96215+00	2025-01-26 04:55:17.96215+00	75c97995-fe8b-424e-b977-5540e9c1bf7e
74cfe8f6-9a18-4017-8854-69f8cf30be00	74cfe8f6-9a18-4017-8854-69f8cf30be00	{"sub": "74cfe8f6-9a18-4017-8854-69f8cf30be00", "email": "simeon@gmail.com", "email_verified": false, "phone_verified": false}	email	2025-01-26 21:02:47.110658+00	2025-01-26 21:02:47.110686+00	2025-01-26 21:02:47.110686+00	58b57f83-614c-46dd-80f6-d30e3e9952dc
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") FROM stdin;
9d348787-1a2c-4165-af8d-d1b9ef3a11d4	31543300-c365-46e5-b2d5-15aac5dc3781	2025-01-26 04:55:17.970346+00	2025-01-26 04:55:17.970346+00	\N	aal1	\N	\N	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 Edg/132.0.0.0	192.168.97.1	\N
e9dfa1c5-0b12-4bcf-8ff1-ca008f9eba5c	74cfe8f6-9a18-4017-8854-69f8cf30be00	2025-01-26 21:02:47.12531+00	2025-01-26 21:02:47.12531+00	\N	aal1	\N	\N	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 Edg/132.0.0.0	192.168.97.1	\N
659d039d-b5db-45ac-94aa-9b1b6db40ead	31543300-c365-46e5-b2d5-15aac5dc3781	2025-01-29 22:10:02.299726+00	2025-01-29 22:10:02.299726+00	\N	aal1	\N	\N	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 Edg/132.0.0.0	192.168.97.1	\N
7bf6377c-ea81-4076-a546-8b969d8cb983	31543300-c365-46e5-b2d5-15aac5dc3781	2025-01-29 22:21:19.11504+00	2025-01-29 22:21:19.11504+00	\N	aal1	\N	\N	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 Edg/132.0.0.0	192.168.97.1	\N
1d894f4f-6833-47eb-802c-3caa538b3a87	31543300-c365-46e5-b2d5-15aac5dc3781	2025-01-29 22:22:41.999011+00	2025-01-29 22:22:41.999011+00	\N	aal1	\N	\N	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 Edg/132.0.0.0	192.168.97.1	\N
6224dec1-ec54-4aad-b89e-07bca3ec6762	31543300-c365-46e5-b2d5-15aac5dc3781	2025-01-29 22:58:45.969052+00	2025-02-09 05:15:12.464637+00	\N	aal1	\N	2025-02-09 05:15:12.464415	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 Edg/132.0.0.0	192.168.97.1	\N
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
9d348787-1a2c-4165-af8d-d1b9ef3a11d4	2025-01-26 04:55:17.976905+00	2025-01-26 04:55:17.976905+00	password	49a0d3db-824b-457d-b768-62cb9e3cd6f6
e9dfa1c5-0b12-4bcf-8ff1-ca008f9eba5c	2025-01-26 21:02:47.129864+00	2025-01-26 21:02:47.129864+00	password	43ae8191-416b-45cb-8c27-8ae393a20709
659d039d-b5db-45ac-94aa-9b1b6db40ead	2025-01-29 22:10:02.314486+00	2025-01-29 22:10:02.314486+00	otp	abbb4cf9-6e3c-42e4-b4a2-435b7e8df436
7bf6377c-ea81-4076-a546-8b969d8cb983	2025-01-29 22:21:19.13235+00	2025-01-29 22:21:19.13235+00	otp	95dab4c2-ee50-4b8e-9998-0d645420dc68
1d894f4f-6833-47eb-802c-3caa538b3a87	2025-01-29 22:22:42.007402+00	2025-01-29 22:22:42.007402+00	otp	4bdf2f1a-36b7-408e-b508-648305c63ad7
6224dec1-ec54-4aad-b89e-07bca3ec6762	2025-01-29 22:58:45.974932+00	2025-01-29 22:58:45.974932+00	otp	0fb2c302-4d3a-4fca-ad04-2df018ca035a
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
de672dbf-fc9a-4ce1-8b4d-a9d6fc9afe54	74cfe8f6-9a18-4017-8854-69f8cf30be00	recovery_token	11a92df24b9dde0f63a46ac95f1b58a9ee1ab1e5acbbc9a3cb5a5bad	simeon@gmail.com	2025-01-26 21:02:47.165381	2025-01-26 21:02:47.165381
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
00000000-0000-0000-0000-000000000000	1	WNHm5nvHEZ_XdC3vjglHOQ	31543300-c365-46e5-b2d5-15aac5dc3781	f	2025-01-26 04:55:17.973016+00	2025-01-26 04:55:17.973016+00	\N	9d348787-1a2c-4165-af8d-d1b9ef3a11d4
00000000-0000-0000-0000-000000000000	2	kZNqpA_RrFVWyzweTrLZiA	74cfe8f6-9a18-4017-8854-69f8cf30be00	f	2025-01-26 21:02:47.127757+00	2025-01-26 21:02:47.127757+00	\N	e9dfa1c5-0b12-4bcf-8ff1-ca008f9eba5c
00000000-0000-0000-0000-000000000000	3	Sc75BMQ8OhjeKKCIq0jSsw	31543300-c365-46e5-b2d5-15aac5dc3781	f	2025-01-29 22:10:02.303182+00	2025-01-29 22:10:02.303182+00	\N	659d039d-b5db-45ac-94aa-9b1b6db40ead
00000000-0000-0000-0000-000000000000	4	e8oi8XXYOTkFRf4XSfBqyQ	31543300-c365-46e5-b2d5-15aac5dc3781	f	2025-01-29 22:21:19.124074+00	2025-01-29 22:21:19.124074+00	\N	7bf6377c-ea81-4076-a546-8b969d8cb983
00000000-0000-0000-0000-000000000000	5	WRoVAUAtrKRNhezTf0xA7A	31543300-c365-46e5-b2d5-15aac5dc3781	f	2025-01-29 22:22:42.00297+00	2025-01-29 22:22:42.00297+00	\N	1d894f4f-6833-47eb-802c-3caa538b3a87
00000000-0000-0000-0000-000000000000	6	x6IBcG-B5dxClirwefocSw	31543300-c365-46e5-b2d5-15aac5dc3781	t	2025-01-29 22:58:45.971056+00	2025-02-08 22:11:39.094368+00	\N	6224dec1-ec54-4aad-b89e-07bca3ec6762
00000000-0000-0000-0000-000000000000	7	13zO4LM_8wMO09n9zWOtlA	31543300-c365-46e5-b2d5-15aac5dc3781	t	2025-02-08 22:11:39.095589+00	2025-02-09 02:33:07.126895+00	x6IBcG-B5dxClirwefocSw	6224dec1-ec54-4aad-b89e-07bca3ec6762
00000000-0000-0000-0000-000000000000	8	N-2mpMBqCJjiIy0CzXT_1w	31543300-c365-46e5-b2d5-15aac5dc3781	t	2025-02-09 02:33:07.128173+00	2025-02-09 05:15:12.456816+00	13zO4LM_8wMO09n9zWOtlA	6224dec1-ec54-4aad-b89e-07bca3ec6762
00000000-0000-0000-0000-000000000000	9	AOi_HOXWh6H65Qh2OXRjAQ	31543300-c365-46e5-b2d5-15aac5dc3781	f	2025-02-09 05:15:12.458724+00	2025-02-09 05:15:12.458724+00	N-2mpMBqCJjiIy0CzXT_1w	6224dec1-ec54-4aad-b89e-07bca3ec6762
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--

COPY "pgsodium"."key" ("id", "status", "created", "expires", "key_type", "key_id", "key_context", "name", "associated_data", "raw_key", "raw_key_nonce", "parent_key", "comment", "user_data") FROM stdin;
\.


--
-- Data for Name: colleges; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."colleges" ("id", "name", "domain", "city", "state") FROM stdin;
8	Abilene Christian University	acu	Abilene	TX
9	Academy Of Art University	academyart	San Francisco	CA
10	Acadia University	acadiau	\N	\N
11	Adams State University	adams	Alamosa	CO
12	Adelphi University	adelphi	Garden City	NY
13	Adrian College	adrian	Adrian	MI
14	Agnes Scott College	agnesscott	Decatur	GA
15	Alabama Agricultural And Mechanical University	aamu	Normal	AL
16	Alabama State University	alasu	Montgomery	AL
17	Alaska Bible College	akbible	\N	\N
18	Alaska Pacific University	alaskapacific	Anchorage	AK
19	Albany College Pharmacy And Health Sciences	acphs	Albany	NY
20	Albany State University	asurams	Albany	GA
21	Albertus Magnus College	albertus	New Haven	CT
22	Albion College	albion	Albion	MI
23	Albright College	alb	Reading	PA
24	Alcorn State University	alcorn	Alcorn State	MS
25	Alderson Broaddus University	ab	Philippi	WV
26	Alfred University	alfred	Alfred	NY
27	Alice Lloyd College	alc	Pippa Passes	KY
28	Allegheny College	allegheny	Meadville	PA
29	Allen College	allencollege	Waterloo	IA
30	Allen University	allenuniversity	Columbia	SC
31	Alma College	alma	Alma	MI
32	Alvernia University	alvernia	Reading	PA
33	Alverno College	alverno	Milwaukee	WI
34	American Baptist College	abcnash	Nashville	TN
35	American International College	aic	Springfield	MA
36	American Jewish University	aju	Los Angeles	CA
37	American University	american	Washington	DC
38	American University Beirut Aub	aub	\N	\N
39	American University Bulgaria	aubg	\N	US
40	American University Paris	aup	\N	\N
41	American University Rome	aur	\N	\N
42	Amherst College	amherst	Amherst	MA
43	Anderson University	anderson	Anderson	IN
44	Andrews University	andrews	Berrien Springs	MI
45	Angelo State University	angelo	San Angelo	TX
46	Anna Maria College	annamaria	Paxton	MA
47	Antioch College	antiochcollege	Yellow Springs	OH
48	Appalachian Bible College	abc	Mt. Hope	WV
49	Appalachian State University	appstate	Boone	NC
50	Aquinas College	aquinas	Grand Rapids	MI
51	Arcadia University	arcadia	Glenside	PA
52	Arizona Christian University	arizonachristian	Phoenix	AZ
53	Arizona State University	asu	Tempe	AZ
54	Arkansas Baptist College	arkansasbaptist	Little Rock	AR
55	Arkansas State University	astate	State University	AR
56	Arkansas Tech University	atu	Russellville	AR
57	Arlington Baptist University	arlingtonbaptistcollege	\N	\N
58	Art Academy Cincinnati	artacademy	Cincinnati	OH
59	Art Center College Of Design	artcenter	Pasadena	CA
60	Asbury University	asbury	Wilmore	KY
61	Ashland University	ashland	Ashland	OH
62	Assumption College	assumption	Worcester	MA
63	Athens State University	athens	Athens	AL
64	Auburn University	auburn	Auburn University	AL
65	Auburn University At Montgomery	aum	Montgomery	AL
66	Augsburg University	augsburg	Minneapolis	MN
67	Augusta University	augusta	\N	\N
68	Augustana College Illinois	augustana	Rock Island	IL
69	Augustana University South Dakota	augie	Sioux Falls	SD
70	Aurora University	aurora	Aurora	IL
71	Austin College	austincollege	Sherman	TX
72	Austin Graduate School Of Theology	austingrad	Austin	TX
73	Austin Peay State University	apsu	Clarksville	TN
74	Ave Maria University	avemaria	Ave Maria	FL
75	Averett University	averett	Danville	VA
76	Avila University	avila	Kansas City	MO
77	Azusa Pacific University	apu	Azusa	CA
78	Babson College	babson	Wellesley	MA
79	Baker University	bakeru	Baldwin City	KS
80	Baldwin Wallace University	bw	Berea	OH
81	Ball State University	bsu	Muncie	IN
82	Baptist College Of Florida	baptistcollege	Graceville	FL
83	Baptist College Of Health Sciences	bchs	Memphis	TN
84	Barclay College	barclaycollege	Haviland	KS
85	Bard College	bard	Annandale-On-Hudson	NY
86	Bard College Berlin	berlin.bard	\N	\N
87	Bard College Simons Rock Early College	simons-rock	\N	\N
88	Barnard College	barnard	New York	NY
89	Barry University	barry	Miami Shores	FL
90	Barton College	barton	Wilson	NC
91	Bastyr University	bastyr	Kenmore	WA
92	Bates College	bates	Lewiston	ME
93	Bay Path University	baypath	Longmeadow	MA
94	Baylor University	baylor	Waco	TX
95	Beacon College	beaconcollege	Leesburg	FL
96	Becker College	becker	Worcester	MA
97	Belhaven University	belhaven	Jackson	MS
98	Bellarmine University	bellarmine	Louisville	KY
99	Belmont Abbey College	bac	Belmont	NC
100	Belmont University	belmont	Nashville	TN
101	Beloit College	beloit	Beloit	WI
102	Bemidji State University	bemidjistate	Bemidji	MN
103	Benedict College	benedict	Columbia	SC
104	Benedictine College	benedictine	Atchison	KS
105	Benedictine University Il	ben	Lisle	IL
106	Bennett College	bennett	Greensboro	NC
107	Bennington College	bennington	Bennington	VT
108	Bentley University	bentley	Waltham	MA
109	Berea College	berea	Berea	KY
110	Berklee College Of Music	berklee	Boston	MA
111	Berry College	berry	Mount Berry	GA
112	Bethany College	bethanywv	Lindsborg	KS
113	Bethany Lutheran College	blc	Mankato	MN
114	Bethel College	bethelcollege	Mishawaka	IN
115	Bethel University	bethelu	St. Paul	MN
116	Bethune Cookman University	cookman	Daytona Beach	FL
117	Beulah Heights University	beulah	Atlanta	GA
118	Biola University	biola	La Mirada	CA
119	Birmingham Southern College	bsc	Birmingham	AL
120	Bishops University	ubishops	\N	\N
121	Black Hills State University	bhsu	Spearfish	SD
122	Blackburn College	blackburn	Carlinville	IL
123	Blessing Rieman College Of Nursing	brcn	Quincy	IL
124	Bloomfield College	bloomfield	Bloomfield	NJ
125	Bloomsburg University Of Pennsylvania	bloomu	Bloomsburg	PA
126	Blue Mountain College	bmc	Blue Mountain	MS
127	Bluefield College	bluefield	Bluefield	VA
128	Bluefield State College	bluefieldstate	Bluefield	WV
129	Bluffton University	bluffton	Bluffton	OH
130	Bob Jones University	bju	Greenville	SC
131	Boise State University	boisestate	Boise	ID
132	Boston College	bc	Chestnut Hill	MA
133	Boston University	bu	Boston	MA
134	Bowdoin College	bowdoin	Brunswick	ME
135	Bowie State University	bowiestate	Bowie	MD
136	Bowling Green State University	bgsu	Bowling Green	OH
137	Bradley University	bradley	Peoria	IL
138	Brandeis University	brandeis	Waltham	MA
139	Brenau University	brenau	Gainesville	GA
140	Brescia University	brescia	Owensboro	KY
141	Brevard College	brevard	Brevard	NC
142	Brewton Parker College	bpc	Mount Vernon	GA
143	Briar Cliff University	briarcliff	Sioux City	IA
144	Bridgewater College	bridgewater	Bridgewater	VA
145	Bridgewater State University	bridgew	Bridgewater	MA
146	Brigham Young University Hawaii	byuh	Laie	HI
147	Brigham Young University Idaho	byui	Rexburg	ID
148	Brigham Young University Provo	byu	Provo	UT
149	Bryan College	bryan	Dayton	TN
150	Bryant University	bryant	Smithfield	RI
151	Bryn Athyn College	brynathyn	Bryn Athyn	PA
152	Bryn Mawr College	brynmawr	Bryn Mawr	PA
153	Bucknell University	bucknell	Lewisburg	PA
154	Buena Vista University	bvu	Storm Lake	IA
155	Butler University	butler	Indianapolis	IN
156	Cabarrus College Of Health Sciences	cabarruscollege	Concord	NC
157	Cabrini University	cabrini	Radnor	PA
158	Cairn University	cairn	Langhorne	PA
159	Caldwell University	caldwell	Caldwell	NJ
160	California Baptist University	calbaptist	Riverside	CA
161	California College Of The Arts	cca	Oakland	CA
162	California Institute Of The Arts	calarts	Valencia	CA
163	California Institute Technology Caltech	caltech	Pasadena	CA
164	California Lutheran University	callutheran	Thousand Oaks	CA
165	California Maritime Academy	csum	Vallejo	CA
166	California State Polytechnic University Pomona	cpp	\N	\N
167	California State University Bakersfield	csub	\N	\N
168	California State University Chico	csuchico	Chico	CA
169	California State University Dominguez Hills	csudh	Carson	CA
170	California State University East Bay	csueastbay	Hayward	CA
171	California State University Fresno	csufresno	Fresno	CA
172	California State University Fullerton	fullerton	Fullerton	CA
173	California State University Long Beach	csulb	Long Beach	CA
174	California State University Los Angeles	calstatela	Los Angeles	CA
175	California State University Monterey Bay	csumb	Seaside	CA
176	California State University Northridge	csun	Northridge	CA
177	California State University Sacramento	csus	Sacramento	CA
178	California State University San Bernardino	csusb	San Bernardino	CA
179	California State University San Marcos	csusm	San Marcos	CA
180	California State University Stanislaus	csustan	Turlock	CA
181	California University Of Pennsylvania	calu	California	PA
182	Calumet College Of St Joseph	ccsj	Whiting	IN
183	Calvary University	calvary	Kansas City	MO
184	Calvin College	calvin	Grand Rapids	MI
185	Cambridge College	cambridgecollege	Cambridge	MA
186	Cameron University	cameron	Lawton	OK
187	Campbellsville University	campbellsville	Campbellsville	KY
188	Canisius College	canisius	Buffalo	NY
189	Capital University	capital	Columbus	OH
190	Capitol Technology University	captechu	Laurel	MD
191	Cardinal Stritch University	stritch	Milwaukee	WI
192	Caribbean University	caribbean	Bayamon	PR
193	Carleton College	carleton	Northfield	MN
194	Carlow University	carlow	Pittsburgh	PA
195	Carroll College	carroll	Helena	MT
196	Carroll University	carrollu	Waukesha	WI
197	Carson Newman University	cn	Jefferson City	TN
198	Carthage College	carthage	Kenosha	WI
199	Case Western Reserve University	case	Cleveland	OH
200	Castleton University	castleton	Castleton	VT
201	Catawba College	catawba	Salisbury	NC
202	Catholic University America	cua	Washington	DC
203	Cazenovia College	cazenovia	Cazenovia	NY
204	Cedar Crest College	cedarcrest	Allentown	PA
205	Cedarville University	cedarville	Cedarville	OH
206	Centenary College Louisiana	centenary	Shreveport	LA
207	Centenary University	centenaryuniversity	\N	\N
208	Central Christian College Of Kansas	centralchristian	McPherson	KS
209	Central College	central	Pella	IA
210	Central Connecticut State University	ccsu	New Britain	CT
211	Central Methodist University	centralmethodist	Fayette	MO
212	Central Michigan University	cmich	Mount Pleasant	MI
213	Central Penn College	centralpenn	Summerdale	PA
214	Central State University	centralstate	Wilberforce	OH
215	Central Washington University	cwu	Ellensburg	WA
216	Centre College	centre	Danville	KY
217	Chadron State College	csc	Chadron	NE
218	Chaminade University Honolulu	chaminade	Honolulu	HI
219	Champlain College	champlain	Burlington	VT
220	Chapman University	chapman	Orange	CA
221	Charles R Drew University Medicine And Science	cdrewu	Los Angeles	CA
222	Charleston Southern University	csuniv	Charleston	SC
223	Charter Oak State College	charteroak	New Britain	CT
224	Chatham University	chatham	Pittsburgh	PA
225	Chestnut Hill College	chc	Philadelphia	PA
226	Cheyney University Of Pennsylvania	cheyney	Cheyney	PA
227	Chicago State University	csu	Chicago	IL
228	Chipola College	chipola	Marianna	FL
229	Chowan University	chowan	Murfreesboro	NC
230	Christendom College	christendom	Front Royal	VA
231	Christian Brothers University	cbu	Memphis	TN
232	Christopher Newport University	cnu	Newport News	VA
233	Cincinnati Christian University	ccuniversity	Cincinnati	OH
234	Claflin University	claflin	Orangeburg	SC
235	Claremont Mckenna College	cmc	\N	\N
236	Clarion University Of Pennsylvania	clarion	Clarion	PA
237	Clark Atlanta University	cau	Atlanta	GA
238	Clark University	clarku	Worcester	MA
239	Clarke University	clarke	Dubuque	IA
240	Clarks Summit University	clarkssummitu	\N	\N
241	Clarkson College	clarksoncollege	Omaha	NE
242	Clarkson University	clarkson	Potsdam	NY
243	Clayton State University	clayton	Morrow	GA
244	Clear Creek Baptist Bible College	ccbbc	Pineville	KY
245	Cleary University	cleary	Ann Arbor	MI
246	Clemson University	clemson	Clemson	SC
247	Cleveland Institute Of Music	cim	Cleveland	OH
248	Cleveland State University	csuohio	Cleveland	OH
249	Coastal Carolina University	coastal	Conway	SC
250	Coe College	coe	Cedar Rapids	IA
251	Cogswell Polytechnical College	cogswell	Sunnyvale	CA
252	Coker College	coker	Hartsville	SC
253	Colby College	colby	Waterville	ME
254	Colby Sawyer College	colby-sawyer	\N	\N
255	Colgate University	colgate	Hamilton	NY
256	College Of Charleston	cofc	Charleston	SC
257	College Of Mount Saint Vincent	mountsaintvincent	Bronx	NY
258	College Of Saint Benedict	csbsju	Saint Joseph	MN
259	College Of St Mary	csm	\N	\N
260	College Of Staten Island Cuny	csi.cuny	\N	\N
261	College Of The Ozarks	cofo	Point Lookout	MO
262	College St Joseph	csj	Rutland	VT
263	College St Scholastica	css	Duluth	MN
264	College Wooster	wooster	Wooster	OH
265	College of New Jersey	tcnj	Ewing	NJ
266	College of New Rochelle	cnr	New Rochelle	NY
267	College of Saint Elizabeth	cse	Morristown	NJ
268	College of William & Mary	wm	Williamsburg	VA
269	College of the Atlantic Atlantic	coa	Bar Harbor	ME
270	College of the Holy Cross	holycross	Worcester	MA
271	Colorado Christian University	ccu	Lakewood	CO
272	Colorado College	coloradocollege	Colorado Springs	CO
273	Colorado Mesa University	coloradomesa	Grand Junction	CO
274	Colorado School Of Mines	mines	Golden	CO
275	Colorado State University	colostate	Fort Collins	CO
276	Colorado State University Pueblo	csupueblo	\N	\N
277	Columbia College	ccis	Sonora	CA
278	Columbia College Chicago	colum	Chicago	IL
279	Columbia International University	ciu	Columbia	SC
280	Columbus College Of Art And Design	ccad	\N	\N
281	Columbus State University	columbusstate	Columbus	GA
282	Concord University	concord	Athens	WV
283	Concordia College	concordia-ny	Moorhead	MN
284	Concordia College Moorhead	cord	Moorhead	MN
285	Concordia University Chicago	CUChicago	River Forest	IL
286	Concordia University Irvine	cui	Irvine	CA
287	Concordia University Nebraska	cune	\N	\N
288	Concordia University Portland Or	cu-portland	\N	\N
289	Concordia University St Paul	csp	St. Paul	MN
290	Concordia University Texas	concordia	Austin	TX
291	Concordia University Wisconsin	cuw	Mequon	WI
292	Connecticut College	conncoll	New London	CT
293	Conservatory Of Music Of Puerto Rico	cmpr	San Juan	PR
294	Converse College	converse	Spartanburg	SC
295	Cooper Union Advancement Science And Art	cooper	New York	NY
296	Coppin State University	coppin	Baltimore	MD
297	Corban University	corban	Salem	OR
298	Cornell College	cornellcollege	Mount Vernon	IA
299	Cornerstone University	cornerstone	Grand Rapids	MI
300	Cornish College Of The Arts	cornish	Seattle	WA
301	Covenant College	covenant	Lookout Mountain	GA
302	Creighton University	creighton	Omaha	NE
303	Criswell College	criswell	Dallas	TX
304	Crown College	crown	Saint Bonifacius	MN
305	Culinary Institute America Ny	culinary	Hyde Park	NY
306	Culver Stockton College	culver	Canton	MO
307	Cumberland University	cumberland	Lebanon	TN
308	Cuny Baruch College	baruch.cuny	\N	\N
309	Cuny City College	ccny.cuny	\N	\N
310	Cuny Hunter College	hunter.cuny	\N	\N
311	Cuny John Jay College Of Criminal Justice	jjay.cuny	\N	\N
312	Cuny Lehman College	lehman.cuny	\N	\N
313	Cuny Medgar Evers College	mec.cuny	\N	\N
314	Cuny New York City College Of Technology	citytech.cuny	\N	\N
315	Cuny Queens College	qc.cuny	\N	\N
316	Cuny York College	york.cuny	\N	\N
317	Curry College	curry	Milton	MA
318	Daemen College	daemen	Amherst	NY
319	Dakota State University	dsu	Madison	SD
320	Dakota Wesleyan University	dwu	Mitchell	SD
321	Dallas Baptist University	dbu	Dallas	TX
322	Dallas Christian College	dallas	Dallas	TX
323	Dalton State College	daltonstate	Dalton	GA
324	Dartmouth College	dartmouth	Hanover	NH
325	Davenport University	davenport	Grand Rapids	MI
326	Davidson College	davidson	Davidson	NC
327	Davis Elkins College	dewv	Elkins	WV
328	Dean College	dean	Franklin	MA
329	Defiance College	defiance	Defiance	OH
330	Delaware State University	desu	Dover	DE
331	Delaware Valley University	delval	Doylestown	PA
332	Delta State University	deltastate	Cleveland	MS
333	Denison University	denison	Granville	OH
334	Depaul University	depaul	Chicago	IL
335	Depauw University	depauw	Greencastle	IN
336	Desales University	desales	Center Valley	PA
337	Dickinson College	dickinson	Carlisle	PA
338	Dickinson State University	dickinsonstate	Dickinson	ND
339	Digipen Institute Of Technology	digipen	Redmond	WA
340	Dillard University	dillard	New Orleans	LA
341	Dixie State University	dixie	Saint George	UT
342	Doane University	doane	Crete	NE
343	Dominican College	dc	Orangeburg	NY
344	Dominican University	dom	River Forest	IL
345	Dominican University California	dominican	San Rafael	CA
346	Dordt College	dordt	Sioux Center	IA
347	Drake University	drake	Des Moines	IA
348	Drew University	drew	Madison	NJ
349	Drexel University	drexel	Philadelphia	PA
350	Drury University	drury	Springfield	MO
351	Duke Kunshan University	dukekunshan	\N	\N
352	Duke University	duke	Durham	NC
353	Duquesne University	duq	Pittsburgh	PA
354	Dyouville College	dyc	Buffalo	NY
355	Earlham College	earlham	Richmond	IN
356	East Carolina University	ecu	Greenville	NC
357	East Central University	ecok	Ada	OK
358	East Stroudsburg University Of Pennsylvania	esu	East Stroudsburg	PA
359	East Tennessee State University	etsu	Johnson City	TN
360	East Texas Baptist University	etbu	Marshall	TX
361	East West University	eastwest	Chicago	IL
362	Eastern Connecticut State University	easternct	Willimantic	CT
363	Eastern Illinois University	eiu	Charleston	IL
364	Eastern Kentucky University	eku	Richmond	KY
365	Eastern Mennonite University	emu	Harrisonburg	VA
366	Eastern Michigan University	emich	Ypsilanti	MI
367	Eastern Nazarene College	enc	Quincy	MA
368	Eastern New Mexico University	enmu	Portales	NM
369	Eastern Oregon University	eou	La Grande	OR
370	Eastern University	eastern	Saint Davids	PA
371	Eastern Washington University	ewu	Cheney	WA
372	Eckerd College	eckerd	Saint Petersburg	FL
373	Edgewood College	edgewood	Madison	WI
374	Edinboro University Pennsylvania	edinboro	Edinboro	PA
375	Edward Waters College	ewc	Jacksonville	FL
376	Elizabeth City State University	ecsu	Elizabeth City	NC
377	Elizabethtown College	etown	Elizabethtown	PA
378	Elmhurst College	elmhurst	Elmhurst	IL
379	Elmira College	elmira	Elmira	NY
380	Elms College	elms	Chicopee	MA
381	Elon University	elon	Elon	NC
382	Embry Riddle Aeronautical University Daytona Beach	erau	Daytona Beach	FL
383	Emerson College	emerson	Boston	MA
384	Emily Carr University Of Art Design	ecuad	\N	\N
385	Emmanuel College	emmanuel	Franklin Springs	GA
386	Emmanuel College Ga	ec	Franklin Springs	GA
387	Emmaus Bible College	emmaus	Dubuque	IA
388	Emory Henry College	ehc	Emory	VA
389	Emory University	emory	Atlanta	GA
390	Emporia State University	emporia	Emporia	KS
391	Endicott College	endicott	Beverly	MA
392	Erskine College	erskine	Due West	SC
393	Escp Europe Business School	escpeurope	\N	\N
394	Eureka College	eureka	Eureka	IL
395	Evangel University	evangel	Springfield	MO
396	Evergreen State College	evergreen	Olympia	WA
397	Fairfield University	fairfield	Fairfield	CT
398	Fairleigh Dickinson University	fdu	Teaneck	NJ
399	Fairmont State University	fairmontstate	Fairmont	WV
400	Faith Baptist Bible College And Theological Seminary	faith	Ankeny	IA
401	Fashion Institute Of Technology	fitnyc	New York	NY
402	Faulkner University	faulkner	Montgomery	AL
403	Fayetteville State University	uncfsu	Fayetteville	NC
404	Felician University	felician	Lodi	NJ
405	Ferris State University	ferris	Big Rapids	MI
406	Ferrum College	ferrum	Ferrum	VA
407	Fisher College	fisher	Boston	MA
408	Fisk University	fisk	Nashville	TN
409	Fitchburg State University	fitchburgstate	Fitchburg	MA
410	Five Towns College	ftc	Dix Hills	NY
411	Flagler College	flagler	Saint Augustine	FL
412	Florida Agricultural Mechanical University	famu	Tallahassee	FL
413	Florida Atlantic University	fau	Boca Raton	FL
414	Florida College	floridacollege	Temple Terrace	FL
415	Florida Gulf Coast University	fgcu	Fort Myers	FL
416	Florida Institute Technology	fit	Melbourne	FL
417	Florida International University	fiu	Miami	FL
418	Florida Memorial University	fmuniv	Miami Gardens	FL
419	Florida National University	fnu	Hialeah	FL
420	Florida Polytechnic University	flpoly	\N	\N
421	Florida Southern College	flsouthern	Lakeland	FL
422	Florida State University	fsu	Tallahassee	FL
423	Fontbonne University	fontbonne	St. Louis	MO
424	Fordham University	fordham	Bronx	NY
425	Fort Hays State University	fhsu	Hays	KS
426	Fort Lewis College	fortlewis	Durango	CO
427	Fort Valley State University	fvsu	Fort Valley	GA
428	Framingham State University	framingham	Framingham	MA
429	Francis Marion University	fmarion	Florence	SC
430	Franciscan Missionaries Of Our Lady University	ololcollege	Baton Rouge	LA
431	Franciscan University Of Steubenville	franciscan	Steubenville	OH
432	Franklin College	franklincollege	Franklin	IN
433	Franklin Marshall College	fandm	\N	\N
434	Franklin Pierce University	franklinpierce	Rindge	NH
435	Franklin University Switzerland	fus	\N	\N
436	Franklin W Olin College Engineering	olin	Needham	MA
437	Freed Hardeman University	fhu	Henderson	TN
438	Fresno Pacific University	fresno	Fresno	CA
439	Friends University	friends	Wichita	KS
440	Frostburg State University	frostburg	Frostburg	MD
441	Furman University	furman	Greenville	SC
442	Gallaudet University	gallaudet	Washington	DC
443	Gannon University	gannon	Erie	PA
444	Gardner Webb University	gardner-webb	\N	\N
445	George Fox University	georgefox	Newberg	OR
446	George Mason University	gmu	Fairfax	VA
447	George Washington University	gwu	Washington	DC
448	Georgetown College	georgetowncollege	Georgetown	KY
449	Georgetown University	georgetown	Washington	DC
450	Georgia College	gcsu	Milledgeville	GA
451	Georgia Gwinnett College	ggc	Lawrenceville	GA
452	Georgia Southern University Armstrong And Liberty Campuses	georgiasouthern	Statesboro	GA
453	Georgia Southwestern State University	gsw	Americus	GA
454	Georgia State University	gsu	Atlanta	GA
455	Georgian Court University	georgian	Lakewood	NJ
456	Gettysburg College	gettysburg	Gettysburg	PA
457	Glenville State College	glenville	Glenville	WV
458	Goddard College	goddard	Plainfield	VT
459	Goldey Beacom College	gbc	Wilmington	DE
460	Goldfarb School Of Nursing At Barnes Jewish College	bjc	\N	\N
461	Gonzaga University	gonzaga	Spokane	WA
462	Gordon College	gordon	Wenham	MA
463	Gordon State College	gordonstate	Barnesville	GA
464	Goshen College	goshen	Goshen	IN
465	Goucher College	goucher	Baltimore	MD
466	Governors State University	govst	University Park	IL
467	Grace Bible College	gbcol	Grand Rapids	MI
468	Grace College Seminary	grace	Winona Lake	IN
469	Graceland University	graceland	Lamoni	IA
470	Grambling State University	gram	Grambling	LA
471	Grand Canyon University	gcu	Phoenix	AZ
472	Grand Valley State University	gvsu	Allendale	MI
473	Grand View University	grandview	Des Moines	IA
474	Granite State College	granite	Concord	NH
475	Great Basin College	gbcnv	Elko	NV
476	Green Mountain College	greenmtn	Poultney	VT
477	Greensboro College	greensboro	Greensboro	NC
478	Greenville University	greenville	Greenville	IL
479	Grinnell College	grinnell	Grinnell	IA
480	Grove City College	gcc	Grove City	PA
481	Guilford College	guilford	Greensboro	NC
482	Gustavus Adolphus College	gustavus	Saint Peter	MN
483	Gwynedd Mercy University	gmercyu	Gwynedd Valley	PA
484	Hamilton College	hamilton	Clinton	NY
485	Hamline University Mn	hamline	Saint Paul	MN
486	Hampden Sydney College	hsc	Hampden-Sydney	VA
487	Hampshire College	hampshire	Amherst	MA
488	Hampton University	hamptonu	Hampton	VA
489	Hannibal Lagrange University	hlg	Hannibal	MO
490	Hanover College	hanover	Hanover	IN
491	Hardin Simmons University	hsutx	Abilene	TX
492	Harding University	harding	Searcy	AR
493	Harris Stowe State University	hssu	St. Louis	MO
494	Harrisburg University Science And Technology	HarrisburgU	Harrisburg	PA
495	Hartwick College	hartwick	Oneonta	NY
496	Harvard College	harvard	Cambridge	MA
497	Harvey Mudd College	hmc	Claremont	CA
498	Hastings College	hastings	Hastings	NE
499	Haverford College	haverford	Haverford	PA
500	Hawaii Pacific University	hpu	Honolulu	HI
501	Heidelberg University	heidelberg	Tiffin	OH
502	Hellenic College	hchc	Brookline	MA
503	Henderson State University	hsu	Arkadelphia	AR
504	Hendrix College	hendrix	Conway	AR
505	High Point University	highpoint	High Point	NC
506	Hilbert College	hilbert	Hamburg	NY
507	Hillsdale College	hillsdale	Hillsdale	MI
508	Hiram College	hiram	Hiram	OH
509	Hobart And William Smith Colleges	hws	Geneva	NY
510	Hodges University	hodges	Naples	FL
511	Hofstra University	hofstra	Hempstead	NY
512	Hollins University	hollins	Roanoke	VA
513	Holy Cross College	hcc-nd	Notre Dame	IN
514	Holy Family University	holyfamily	Philadelphia	PA
515	Holy Names University	hnu	Oakland	CA
516	Hood College	hood	Frederick	MD
517	Hope College	hope	Holland	MI
518	Houghton College	houghton	Houghton	NY
519	Houston Baptist University	hbu	Houston	TX
520	Howard Payne University	hputx	Brownwood	TX
521	Howard University	howard	Washington	DC
522	Hult International Business School	hult	Cambridge	MA
523	Humboldt State University	humboldt	Arcata	CA
524	Huntingdon College	huntingdon	Montgomery	AL
525	Huntingdon College Of Health Sciences	hchs	Knoxville	TN
526	Huntington University	huntington	Huntington	IN
527	Husson University	husson	Bangor	ME
528	Huston Tillotson University	htu	Austin	TX
529	IPFW	ipfw	Fort Wayne	IN
530	IUPUI	iupui	Indianapolis	IN
531	Idaho State University	isu	Pocatello	ID
532	Ie University	ie	\N	\N
533	Illinois College	ic	Jacksonville	IL
534	Illinois Institute Technology	iit	Chicago	IL
535	Illinois State University	illinoisstate	Normal	IL
536	Illinois Wesleyan University	iwu	Bloomington	IL
537	Immaculata University	immaculata	Immaculata	PA
538	Indiana Institute Of Technology	indianatech	Fort Wayne	IN
539	Indiana State University	indstate	Terre Haute	IN
540	Indiana University Bloomington	indiana	Bloomington	IN
541	Indiana University East	iue	Richmond	IN
542	Indiana University Kokomo	iuk	Kokomo	IN
543	Indiana University Northwest	iun	Gary	IN
544	Indiana University Of Pennsylvania	iup	Indiana	PA
545	Indiana University South Bend	iusb	South Bend	IN
546	Indiana University Southeast	ius	New Albany	IN
547	Indiana Wesleyan University	indwes	Marion	IN
548	Institute Of American Indian Arts	iaia	Santa Fe	NM
549	Inter American University Of Puerto Rico San German	intersg	\N	\N
550	Iona College	iona	New Rochelle	NY
551	Iowa State University	iastate	Ames	IA
552	Iowa Wesleyan University	iw	\N	\N
553	Ithaca College	ithaca	Ithaca	NY
554	Jackson State University	jsums	Jackson	MS
555	Jacksonville State University	jsu	Jacksonville	AL
556	Jacksonville University	ju	Jacksonville	FL
557	Jacobs University Bremen	jacobs-university	\N	\N
558	James Madison University	jmu	Harrisonburg	VA
559	Jarvis Christian College	jarvis	Hawkins	TX
560	Jefferson College Health Sciences	jchs	Roanoke	VA
561	Jefferson Philadelphia University Thomas Jefferson University	philau	Philadelphia	PA
562	John Brown University	jbu	Siloam Springs	AR
563	John Cabot University Rome	johncabot	\N	\N
564	John Carroll University	jcu	University Heights	OH
565	John Paul The Great Catholic University	jpcatholic	\N	\N
566	John Wesley University	johnwesley	\N	\N
567	Johns Hopkins University	jhu	Baltimore	MD
568	Johnson C Smith University	jcsu	Charlotte	NC
569	Johnson University	johnsonu	Knoxville	TN
570	Johnson Wales University	jwu	Providence	RI
571	Judson College	judson	Marion	AL
572	Judson University	judsonu	Elgin	IL
573	Juilliard School	juilliard	New York	NY
574	Juniata College	juniata	Huntingdon	PA
575	Kalamazoo College	kzoo	Kalamazoo	MI
576	Kansas City Art Institute	kcai	Kansas City	MO
577	Kansas State University	k-state	Manhattan	KS
578	Kean University	kean	Union	NJ
579	Keene State College	keene	Keene	NH
580	Kendall College	kendall	Chicago	IL
581	Kennesaw State University	kennesaw	Kennesaw	GA
582	Kent State University	kent	Kent	OH
583	Kentucky Christian University	kcu	Grayson	KY
584	Kentucky Mountain Bible College	kmbc	Vancleve	KY
585	Kentucky State University	kysu	Frankfort	KY
586	Kentucky Wesleyan College	kwc	Owensboro	KY
587	Kenyon College	kenyon	Gambier	OH
588	Kettering University	kettering	Flint Township	MI
589	Keuka College	keuka	Keuka Park	NY
590	Keystone College	keystone	La Plume	PA
591	King University	king	Bristol	TN
592	Kings College	kings	Wilkes Barre	PA
593	Knox College	knox	Galesburg	IL
594	Kutztown University Of Pennsylvania	kutztown	Kutztown	PA
595	Kuyper College	kuyper	Grand Rapids	MI
596	La Roche College	laroche	Pittsburgh	PA
597	La Salle University	lasalle	Philadelphia	PA
598	La Sierra University	lasierra	Riverside	CA
599	Lafayette College	lafayette	Easton	PA
600	Lagrange College	lagrange	Lagrange	GA
601	Laguna College Of Art And Design	lcad	\N	\N
602	Lake Erie College	lec	Painesville	OH
603	Lake Forest College	lakeforest	Lake Forest	IL
604	Lake Superior State University	lssu	Sault Ste Marie	MI
605	Lakeland University	lakeland	Plymouth	WI
606	Lamar University	lamar	Beaumont	TX
607	Lander University	lander	Greenwood	SC
608	Lane College	lanecollege	Jackson	TN
609	Langston University	langston	Langston	OK
610	Lasell College	lasell	Newton	MA
611	Lawrence Technological University	ltu	Southfield	MI
612	Lawrence University	lawrence	Appleton	WI
613	Le Moyne College	lemoyne	Syracuse	NY
614	Leavell College Of New Orleans Baptist Theological Seminary	nobts	New Orleans	LA
615	Lebanon Valley College	lvc	Annville	PA
616	Lee University	leeuniversity	Cleveland	TN
617	Lees Mcrae College	lmc	Banner Elk	NC
618	Lehigh University	lehigh	Bethlehem	PA
619	Lemoyne Owen College	loc	Memphis	TN
620	Lenoir Rhyne University	lr	Hickory	NC
621	Lesley University	lesley	Cambridge	MA
622	Letourneau University	letu	Longview	TX
623	Lewis Clark College	lclark	Portland	OR
624	Lewis Clark State College	lcsc	Lewiston	ID
625	Lewis University	lewisu	Romeoville	IL
626	Liberty University	liberty	Lynchburg	VA
627	Life Pacific College	lifepacific	San Dimas	CA
628	Life University	life	Marietta	GA
629	Lim College	limcollege	New York	NY
630	Limestone College	limestone	Gaffney	SC
631	Lincoln Christian University	lincolnchristian	Lincoln	IL
632	Lincoln Memorial University	lmunet	Harrogate	TN
633	Lincoln University	lincolnuca	Oakland	CA
634	Lindenwood University	lindenwood	St. Charles	MO
635	Lindsey Wilson College	lindsey	Columbia	KY
636	Linfield College	linfield	McMinnville	OR
637	Lipscomb University	lipscomb	Nashville	TN
638	List College Jewish Theological Seminary	jtsa	New York	NY
639	Livingstone College	livingstone	Salisbury	NC
640	Lock Haven University Of Pennsylvania	lockhaven	\N	\N
641	Long Island University Brooklyn Campus	liu	Brookville	NY
642	Longwood University	longwood	Farmville	VA
643	Loras College	loras	Dubuque	IA
644	Louisiana College	lacollege	Pineville	LA
645	Louisiana State University Am Baton Rouge	lsu	Baton Rouge	LA
646	Louisiana State University Shreveport	lsus	Shreveport	LA
647	Louisiana Tech University	latech	Ruston	LA
648	Lourdes University	lourdes	Sylvania	OH
649	Loyola Marymount University	lmu	Los Angeles	CA
650	Loyola University Chicago	luc	Chicago	IL
651	Loyola University Maryland	loyola	Baltimore	MD
652	Loyola University New Orleans	loyno	New Orleans	LA
653	Lubbock Christian University	lcu	Lubbock	TX
654	Luther College	luther	Decorah	IA
655	Luther Rice College Seminary	lutherrice	\N	\N
656	Lycoming College	lycoming	Williamsport	PA
657	Lynn University	lynn	Boca Raton	FL
658	Lyon College	lyon	Batesville	AR
659	Macalester College	macalester	St. Paul	MN
660	Macmurray College	mac	Jacksonville	IL
661	Madonna University	madonna	Livonia	MI
662	Maharishi University Of Management	mum	Fairfield	IA
663	Maine College Art	meca	Portland	ME
664	Maine Maritime Academy	mma	Castine	ME
665	Malone University	malone	Canton	OH
666	Manchester University	manchester	North Manchester	IN
667	Manhattan Christian College	mccks	Manhattan	KS
668	Manhattan College	manhattan	Riverdale	NY
669	Manhattan School Of Music	msmnyc	New York	NY
670	Manhattanville College	mville	Purchase	NY
671	Mansfield University Of Pennsylvania	mansfield	Mansfield	PA
672	Maranatha Baptist University	mbu	\N	\N
673	Marian University Indiana	marian	Indianapolis	IN
674	Marian University Wisconsin	marianuniversity	\N	\N
675	Marietta College	marietta	Marietta	OH
676	Marist College	marist	Poughkeepsie	NY
677	Marlboro College	marlboro	Marlboro	VT
678	Marquette University	mu	Milwaukee	WI
679	Mars Hill University	mhu	Mars Hill	NC
680	Marshall University	marshall	Huntington	WV
681	Martin Luther College	mlc-wels	New Ulm	MN
682	Martin Methodist College	martinmethodist	Pulaski	TN
683	Martin University	martin	Indianapolis	IN
684	Mary Baldwin University	marybaldwin	\N	\N
685	Marygrove College	marygrove	Detroit	MI
686	Maryland Institute College Art	mica	Baltimore	MD
687	Marylhurst University	marylhurst	Marylhurst	OR
688	Marymount California University	marymountcalifornia	Rancho Palos Verdes	CA
689	Marymount Manhattan College	mmm	New York	NY
690	Marymount University	marymount	Arlington	VA
691	Maryville College	maryvillecollege	Maryville	TN
692	Maryville University St Louis	maryville	Saint Louis	MO
693	Marywood University	marywood	Scranton	PA
694	Massachusetts College Art And Design	massart	Boston	MA
695	Massachusetts College Liberal Arts	mcla	North Adams	MA
696	Massachusetts College Pharmacy And Health Sciences Mcphs University	mcphs	Boston	MA
697	Massachusetts Institute Of Technology	mit	Cambridge	MA
698	Massachusetts Maritime Academy	maritime	Buzzards Bay	MA
699	Mayville State University	mayvillestate	Mayville	ND
700	Mcdaniel College	mcdaniel	Westminster	MD
701	Mckendree University	mckendree	Lebanon	IL
702	Mcmurry University	mcm	Abilene	TX
703	Mcneese State University	mcneese	Lake Charles	LA
704	Mcpherson College	mcpherson	McPherson	KS
705	Medaille College	medaille	Buffalo	NY
706	Medical University Of South Carolina	musc	Charleston	SC
707	Memphis College Of Art	mca	Memphis	TN
708	Menlo College	menlo	Atherton	CA
709	Mercer University	mercer	Macon	GA
710	Mercy College	mercy	Dobbs Ferry	NY
711	Mercy College Of Health Sciences	mchs	Des Moines	IA
712	Mercyhurst University	mercyhurst	Erie	PA
713	Meredith College	meredith	Raleigh	NC
714	Merrimack College	merrimack	North Andover	MA
715	Messiah College	messiah	Grantham	PA
716	Methodist University	methodist	Fayetteville	NC
717	Metropolitan College Of New York	mcny	\N	\N
718	Metropolitan State University	metrostate	Saint Paul	MN
719	Metropolitan State University Of Denver	msudenver	\N	\N
720	Miami University Ohio	miamioh	\N	\N
721	Michigan State University	msu	East Lansing	MI
722	Michigan Technological University	mtu	Houghton	MI
723	Mid America Christian University	macu	Oklahoma City	OK
724	Mid Atlantic Christian University	macuniversity	Elizabeth City	NC
725	Midamerica Nazarene University	mnu	Olathe	KS
726	Middle Georgia State University	mga	Macon	GA
727	Middle Tennessee State University	mtsu	Murfreesboro	TN
728	Middlebury College	middlebury	Middlebury	VT
729	Midland University	midlandu	Fremont	NE
730	Midway University	midway	Midway	KY
731	Midwestern State University	mwsu	Wichita Falls	TX
732	Miles College	miles	Fairfield	AL
733	Millersville University	millersville	Millersville	PA
734	Milligan College	milligan	Milligan College	TN
735	Millikin University	millikin	Decatur	IL
736	Mills College	mills	Oakland	CA
737	Millsaps College	millsaps	Jackson	MS
738	Milwaukee Institute Of Art And Design	miad	Milwaukee	WI
739	Milwaukee School Engineering	msoe	Milwaukee	WI
740	Minerva Schools Kgi	kgi	Claremont	CA
741	Minneapolis College Of Art And Design	mcad	\N	\N
742	Minnesota State University Mankato	mnsu	Mankato	MN
743	Minnesota State University Moorhead	mnstate	Moorhead	MN
744	Minot State University	minotstateu	Minot	ND
745	Misericordia University	misericordia	Dallas	PA
746	Mississippi College	mc	Clinton	MS
747	Mississippi State University	msstate	Mississippi State	MS
748	Mississippi University For Women	muw	Columbus	MS
749	Mississippi Valley State University	mvsu	Itta Bena	MS
750	Missouri Baptist University	mobap	Saint Louis	MO
751	Missouri Southern State University	mssu	Joplin	MO
752	Missouri State University	missouristate	Springfield	MO
753	Missouri University Science And Technology	mst	Rolla	MO
754	Missouri Valley College	moval	Marshall	MO
755	Missouri Western State University	missouriwestern	Saint Joseph	MO
756	Mitchell College	mitchell	New London	CT
757	Molloy College	molloy	Rockville Centre	NY
758	Monash University	monash	\N	\N
759	Monmouth College Il	monmouthcollege	\N	\N
760	Monmouth University	monmouth	West Long Branch	NJ
761	Montana State University Billings	msubillings	Billings	MT
762	Montana State University Bozeman	montana	Bozeman	MT
763	Montana State University Northern	msun	Havre	MT
764	Montana Tech	mtech	Butte	MT
765	Montclair State University	montclair	Montclair	NJ
766	Montreat College	montreat	Montreat	NC
767	Montserrat College Art	montserrat	Beverly	MA
768	Moravian College	moravian	Bethlehem	PA
769	Morehead State University	moreheadstate	Morehead	KY
770	Morehouse College	morehouse	Atlanta	GA
771	Morgan State University	morgan	Baltimore	MD
772	Morningside College	morningside	Sioux City	IA
773	Morris College	morris	Sumter	SC
774	Mount Aloysius College	mtaloy	Cresson	PA
775	Mount Carmel College Of Nursing	mccn	Columbus	OH
776	Mount Holyoke College	mtholyoke	South Hadley	MA
777	Mount Marty College	mtmc	Yankton	SD
778	Mount Mary University	mtmary	Milwaukee	WI
779	Mount Mercy University	mtmercy	Cedar Rapids	IA
780	Mount Saint Mary College	msmc	Newburgh	NY
781	Mount Saint Marys University	msmu	\N	\N
782	Mount St Joseph University	msj	Cincinnati	OH
783	Mount St Marys University	msmary	Emmitsburg	MD
784	Mount Vernon Nazarene University	mvnu	Mount Vernon	OH
785	Muhlenberg College	muhlenberg	Allentown	PA
786	Multnomah University	multnomah	Portland	OR
787	Murray State University	murraystate	Murray	KY
788	Muskingum University	muskingum	New Concord	OH
789	Naropa University	naropa	Boulder	CO
790	National Louis University	nl	Chicago	IL
791	Navarra University Of	unav	\N	\N
792	Nazarene Bible College	nbc	Colorado Springs	CO
793	Nazareth College	naz	Rochester	NY
794	Nebraska Christian College	nechristian	Papillion	NE
795	Nebraska Methodist College	methodistcollege	Omaha	NE
796	Nebraska Wesleyan University	nebrwesleyan	Lincoln	NE
797	Neumann University	neumann	Aston	PA
798	Neumont College Of Computer Science	neumont	\N	\N
799	Nevada State College	nsc	\N	\N
800	New College Florida	ncf	Sarasota	FL
801	New England College	nec	Henniker	NH
802	New England Conservatory Of Music	necmusic	Boston	MA
803	New England Institute Technology	neit	East Greenwich	RI
804	New Hampshire Institute Art	nhia	Manchester	NH
805	New Hope Christian College	newhope	Eugene	OR
806	New Jersey City University	njcu	Jersey City	NJ
807	New Jersey Institute Technology	njit	Newark	NJ
808	New Mexico Highlands University	nmhu	Las Vegas	NM
809	New Mexico Institute Of Mining And Technology	nmt	Socorro	NM
810	New Mexico State University	nmsu	Las Cruces	NM
811	New School	newschool	New York	NY
812	New School Of Architecture And Design	newschoolarch	San Diego	CA
813	New York Institute Technology Nyit	nyit	Old Westbury	NY
814	New York School Of Interior Design	nysid	New York	NY
815	New York University	nyu	New York	NY
816	Newberry College	newberry	Newberry	SC
817	Newbury College	newbury	Brookline	MA
818	Newman University	newmanu	Wichita	KS
819	Niagara University	niagara	Niagara University	NY
820	Nicholls State University	nicholls	Thibodaux	LA
821	Nichols College	nichols	Dudley	MA
822	Norfolk State University	nsu	Norfolk	VA
823	North Carolina Central University	nccu	Durham	NC
824	North Carolina State University	ncsu	Raleigh	NC
825	North Carolina Wesleyan College	ncwc	Rocky Mount	NC
826	North Central College	noctrl	Naperville	IL
827	North Central University	northcentral	Minneapolis	MN
828	North Dakota State University	ndsu	\N	\N
829	North Greenville University	ngu	Tigerville	SC
830	North Park University	northpark	Chicago	IL
933	Purdue University Northwest	pnw	\N	\N
831	Northeastern Illinois University	neiu	Chicago	IL
832	Northeastern State University	nsuok	Tahlequah	OK
833	Northern Arizona University	nau	Flagstaff	AZ
834	Northern Illinois University	niu	Dekalb	IL
835	Northern Kentucky University	nku	Highland Heights	KY
836	Northern Michigan University	nmu	Marquette	MI
837	Northern State University	northern	Aberdeen	SD
838	Northern Vermont University	NorthernVermont	\N	\N
839	Northern Vermont University Johnson Campus	jsc	\N	\N
840	Northland College	northland	Ashland	WI
841	Northwest Christian University	nwcu	Eugene	OR
842	Northwest Missouri State University	nwmissouri	Maryville	MO
843	Northwest Nazarene University	nnu	Nampa	ID
844	Northwest University	northwestu	Kirkland	WA
845	Northwestern College	nwciowa	Orange City	IA
846	Northwestern Oklahoma State University	nwosu	Alva	OK
847	Northwestern State University Of Louisiana	nsula	Natchitoches	LA
848	Northwestern University	northwestern	Evanston	IL
849	Northwood University	northwood	Midland	MI
850	Norwich University	norwich	Northfield	VT
851	Notre Dame De Namur University	ndnu	Belmont	CA
852	Notre Dame Of Maryland University	ndm	Baltimore	MD
853	Nova Scotia College Of Art And Design	nscad	\N	\N
854	Nova Southeastern University	nova	Fort Lauderdale	FL
855	Nyack College	nyack	Nyack	NY
856	Oak Hills Christian College	oakhills	Bemidji	MN
857	Oakland City University	oak	Oakland City	IN
858	Oakland University	oakland	Rochester	MI
859	Oakwood University	oakwood	Huntsville	AL
860	Oberlin College Arts And Sciences	oberlin	Oberlin	OH
861	Occidental College	oxy	Los Angeles	CA
862	Oglethorpe University	oglethorpe	Atlanta	GA
863	Ohio Dominican University	ohiodominican	Columbus	OH
864	Ohio Northern University	onu	Ada	OH
865	Ohio University	ohio	Athens	OH
866	Ohio Valley University	ovu	Vienna	WV
867	Ohio Wesleyan University	owu	Delaware	OH
868	Oklahoma Baptist University	okbu	Shawnee	OK
869	Oklahoma Christian University	oc	Oklahoma City	OK
870	Oklahoma City University	okcu	Oklahoma City	OK
871	Oklahoma Panhandle State University	opsu	Goodwell	OK
872	Oklahoma State University	okstate	Stillwater	OK
873	Oklahoma Wesleyan University	okwu	Bartlesville	OK
874	Old Dominion University	odu	Norfolk	VA
875	Ole Miss University Mississippi	olemiss	University	MS
876	Olivet College	olivetcollege	Olivet	MI
877	Olivet Nazarene University	olivet	Bourbonnais	IL
878	Oral Roberts University	oru	Tulsa	OK
879	Oregon College Of Art And Craft	ocac	Portland	OR
880	Oregon Institute Of Technology	oit	Klamath Falls	OR
881	Oregon State University	oregonstate	Corvallis	OR
882	Otis College Art And Design	otis	Los Angeles	CA
883	Ottawa University	ottawa	Ottawa	KS
884	Otterbein University	otterbein	Westerville	OH
885	Ouachita Baptist University	obu	Arkadelphia	AR
886	Our Lady Of The Lake University	ollusa	San Antonio	TX
887	Pace University	pace	New York	NY
888	Pacific Lutheran University	plu	Tacoma	WA
889	Pacific Northwest College Of Art	pnca	Portland	OR
890	Pacific Oaks College	pacificoaks	Pasadena	CA
891	Pacific Union College	puc	Angwin	CA
892	Pacific University Oregon	pacificu	Forest Grove	OR
893	Paier College Of Art	snet	\N	\N
894	Paine College	paine	Augusta	GA
895	Palm Beach Atlantic University	pba	West Palm Beach	FL
896	Park University	park	Parkville	MO
897	Patrick Henry College	phc	Purcellville	VA
898	Paul Quinn College	pqc	Dallas	TX
899	Paul Smiths College	paulsmiths	Paul Smiths	NY
900	Peirce College	peirce	Philadelphia	PA
901	Penn State	psu	Carlisle	PA
902	Pennsylvania Academy Fine Arts	pafa	\N	\N
903	Pennsylvania College Of Technology	pct	Williamsport	PA
904	Pepperdine University	pepperdine	Malibu	CA
905	Peru State College	peru	Peru	NE
906	Pfeiffer University	pfeiffer	Misenheimer	NC
907	Philander Smith College	philander	Little Rock	AR
908	Piedmont College	piedmont	Demorest	GA
909	Piedmont International University	piedmontu	Winston-Salem	NC
910	Pine Manor College	pmc	Chestnut Hill	MA
911	Pittsburg State University	pittstate	Pittsburg	KS
912	Pitzer College	pitzer	Claremont	CA
913	Plymouth State University	plymouth	Plymouth	NH
914	Point Loma Nazarene University	pointloma	San Diego	CA
915	Point Park University	pointpark	Pittsburgh	PA
916	Point University	point	East Point	GA
917	Polk State College	polk	Winter Haven	FL
918	Polytechnic University Of Puerto Rico	pupr	Hato Rey	PR
919	Pomona College	pomona	Claremont	CA
920	Pontifical Catholic University Of Puerto Rico Ponce	pucpr	Ponce	PR
921	Pontifical College Josephinum	pcj	Columbus	OH
922	Portland State University	pdx	Portland	OR
923	Potomac University Of The	potomac	Washington	DC
924	Prairie View Am University	pvamu	Prairie View	TX
925	Pratt Institute	pratt	Brooklyn	NY
926	Presbyterian College	presby	Clinton	SC
927	Prescott College	prescott	Prescott	AZ
928	Presentation College	presentation	Aberdeen	SD
929	Princeton University	princeton	Princeton	NJ
930	Principia College	principia	Elsah	IL
931	Providence College	providence	Providence	RI
932	Purdue University Fort Wayne	pfw	\N	\N
934	Queens University Canada	queensu	\N	\N
935	Queens University Charlotte	queens	Charlotte	NC
936	Quest University Canada	questu	\N	\N
937	Quincy University	quincy	Quincy	IL
938	Quinnipiac University	qu	Hamden	CT
939	Radford University	radford	Radford	VA
940	Ramapo College New Jersey	ramapo	Mahwah	NJ
941	Randolph College	randolphcollege	Lynchburg	VA
942	Randolph Macon College	rmc	Ashland	VA
943	Reed College	reed	Portland	OR
944	Regent University	regent	Virginia Beach	VA
945	Regis College	regiscollege	Weston	MA
946	Regis University	regis	Denver	CO
947	Reinhardt University	reinhardt	Waleska	GA
948	Rensselaer Polytechnic Institute	rpi	Troy	NY
949	Research College Of Nursing	researchcollege	Kansas City	MO
950	Resurrection University	resu	Chicago	IL
951	Rhode Island College	ric	Providence	RI
952	Rhode Island School Design	risd	Providence	RI
953	Rhodes College	rhodes	Memphis	TN
954	Rice University	rice	Houston	TX
955	Rider University	rider	Lawrenceville	NJ
956	Riga Business School	rbs	\N	\N
957	Ringling College Art And Design	ringling	\N	\N
958	Ripon College	ripon	Ripon	WI
959	Rivier University	rivier	Nashua	NH
960	Roanoke College	roanoke	Salem	VA
961	Robert Morris University	robertmorris	Moon Township	PA
962	Robert Morris University Pa	rmu	Moon Township	PA
963	Roberts Wesleyan College	roberts	Rochester	NY
964	Rochester College	rc	Rochester Hills	MI
965	Rochester Institute Technology	rit	Rochester	NY
966	Rockford University	rockford	Rockford	IL
967	Rockhurst University	rockhurst	Kansas City	MO
968	Rocky Mountain College	rocky	Billings	MT
969	Rocky Mountain College Of Art And Design	rmcad	Denver	CO
970	Roger Williams University	rwu	Bristol	RI
971	Rogers State University	rsu	Claremore	OK
972	Rollins College	rollins	Winter Park	FL
973	Roosevelt University	roosevelt	Chicago	IL
974	Rose Hulman Institute Technology	rose-hulman	\N	\N
975	Rosemont College	rosemont	Rosemont	PA
976	Rowan University	rowan	Glassboro	NJ
977	Rush University	rush	Chicago	IL
978	Rust College	rustcollege	Holly Springs	MS
979	Rutgers The State University Of New Jersey New Brunswick	rutgers	New Brunswick	NJ
980	Ryerson University	ryerson	\N	\N
981	Sacred Heart Major Seminary	shms	Detroit	MI
982	Sacred Heart University	sacredheart	Fairfield	CT
983	Saginaw Valley State University	svsu	University Center	MI
984	Saint Anselm College	anselm	Manchester	NH
985	Saint Augustines University	st-aug	\N	\N
986	Saint Francis University	francis	Loretto	PA
987	Saint Josephs College Maine	sjcme	Standish	ME
988	Saint Josephs University	sju	Philadelphia	PA
989	Saint Leo University	saintleo	Saint Leo	FL
990	Saint Louis University	slu	Saint Louis	MO
991	Saint Martins University	stmartin	Lacey	WA
992	Saint Mary Woods College	smwc	Saint Mary-Of-The-Woods	IN
993	Saint Marys College	saintmarys	Notre Dame	IN
994	Saint Marys College California	stmarys-ca	\N	\N
995	Saint Marys University Minnesota	smumn	Winona	MN
996	Saint Michaels College	smcvt	Colchester	VT
997	Saint Peters University	saintpeters	\N	\N
998	Saint Vincent College	stvincent	Latrobe	PA
999	Saint Xavier University	sxu	Chicago	IL
1000	Salem College	salem	Winston Salem	NC
1001	Salem State University	salemstate	Salem	MA
1002	Salisbury University	salisbury	Salisbury	MD
1003	Salve Regina University	salve	Newport	RI
1004	Sam Houston State University	shsu	Huntsville	TX
1005	Samford University	samford	Birmingham	AL
1006	San Diego Christian College	sdcc	El Cajon	CA
1007	San Diego State University	sdsu	San Diego	CA
1008	San Francisco Art Institute	sfai	San Francisco	CA
1009	San Francisco Conservatory Of Music	sfcm	San Francisco	CA
1010	San Francisco State University	sfsu	San Francisco	CA
1011	San Jose State University	sjsu	San Jose	CA
1012	Santa Clara University	scu	Santa Clara	CA
1013	Sarah Lawrence College	sarahlawrence	Bronxville	NY
1014	Savannah College Art And Design	scad	Savannah	GA
1015	Savannah State University	savannahstate	Savannah	GA
1016	School Art Institute Chicago	saic	\N	\N
1017	School Of Visual Arts	sva	\N	\N
1018	Schreiner University	schreiner	Kerrville	TX
1019	Scripps College	scrippscollege	Claremont	CA
1020	Seattle Pacific University	spu	Seattle	WA
1021	Seattle University	seattleu	Seattle	WA
1022	Seton Hall University	shu	South Orange	NJ
1023	Seton Hill University	setonhill	Greensburg	PA
1024	Sewanee	sewanee	Sewanee	TN
1025	Shasta Bible College And Graduate School	shasta	Redding	CA
1026	Shaw University	shawu	Raleigh	NC
1027	Shawnee State University	shawnee	Portsmouth	OH
1028	Shenandoah University	su	Winchester	VA
1029	Shepherd University	shepherd	Shepherdstown	WV
1030	Shippensburg University Of Pennsylvania	ship	Shippensburg	PA
1031	Shorter University	shorter	Rome	GA
1032	Siena College	siena	Loudonville	NY
1033	Siena Heights University	sienaheights	Adrian	MI
1034	Sierra Nevada College	sierranevada	Incline Village	NV
1035	Silver Lake College	sl	Manitowoc	WI
1036	Simmons University	simmons	Boston	MA
1037	Simon Fraser University	sfu	\N	\N
1038	Simpson College	simpson	Indianola	IA
1039	Simpson University	simpsonu	Redding	CA
1040	Skidmore College	skidmore	Saratoga Springs	NY
1041	Slippery Rock University Of Pennsylvania	sru	Slippery Rock	PA
1042	Smith College	smith	Northampton	MA
1043	Soka University of America	soka	Aliso Viejo	CA
1044	Sonoma State University	sonoma	Rohnert Park	CA
1045	South Carolina State University	scsu	Orangeburg	SC
1046	South Dakota School Of Mines And Technology	sdsmt	Rapid City	SD
1047	South Dakota State University	sdstate	Brookings	SD
1048	Southeast Missouri State University	semo	Cape Girardeau	MO
1049	Southeastern Baptist Theological Seminary	sebts	Wake Forest	NC
1050	Southeastern Louisiana University	southeastern	Hammond	LA
1051	Southeastern Oklahoma State University	se	Durant	OK
1052	Southeastern University	seu	Washington	DC
1053	Southern Adventist University	southern	Collegedale	TN
1054	Southern Arkansas University	saumag	\N	\N
1055	Southern California Institute of Architecture	sciarc	Los Angeles	CA
1056	Southern Connecticut State University	southernct	New Haven	CT
1057	Southern Illinois University Carbondale	siu	Carbondale	IL
1058	Southern Illinois University Edwardsville	siue	Edwardsville	IL
1059	Southern Methodist University	smu	Dallas	TX
1060	Southern Nazarene University	snu	Bethany	OK
1061	Southern New Hampshire University	snhu	Manchester	NH
1062	Southern Oregon University	sou	Ashland	OR
1063	Southern University And Am College	subr	Baton Rouge	LA
1064	Southern University At New Orleans	suno	New Orleans	LA
1065	Southern Utah University	suu	Cedar City	UT
1066	Southern Vermont College	svc	Bennington	VT
1067	Southern Virginia University	svu	Buena Vista	VA
1068	Southern Wesleyan University	swu	Central	SC
1069	Southwest Baptist University	sbuniv	Bolivar	MO
1070	Southwest Minnesota State University	smsu	Marshall	MN
1071	Southwest University Of Visual Arts	suva	\N	\N
1072	Southwestern Adventist University	swau	Keene	TX
1073	Southwestern Christian University	swcu	Bethany	OK
1074	Southwestern College	sckans	Chula Vista	CA
1075	Southwestern Oklahoma State University	swosu	Weatherford	OK
1076	Southwestern University	southwestern	Georgetown	TX
1077	Spalding University	spalding	Louisville	KY
1078	Spelman College	spelman	Atlanta	GA
1079	Spring Arbor University	arbor	Spring Arbor	MI
1080	Spring Hill College	shc	Mobile	AL
1081	Springfield College	springfieldcollege	Springfield	MA
1082	St Ambrose University	sau	Davenport	IA
1083	St Andrews University	sa	\N	\N
1084	St Anthony College Of Nursing	sacn	Rockford	IL
1085	St Bonaventure University	sbu	St. Bonaventure	NY
1086	St Catherine University	stkate	St. Paul	MN
1087	St Cloud State University	stcloudstate	Saint Cloud	MN
1088	St Edwards University	stedwards	Austin	TX
1089	St Francis College	sfc	Bradenton	FL
1090	St Francis Medical Center College Of Nursing	osfhealthcare	\N	\N
1091	St John Fisher College	sjfc	Rochester	NY
1092	St Johns College	sjc	Springfield	IL
1093	St Johns University	stjohns	Queens	NY
1094	St Josephs College Brooklyn	sjcny	Brooklyn	NY
1095	St Lawrence University	stlawu	Canton	NY
1096	St Louis Christian College	stlchristian	\N	\N
1097	St Louis College Pharmacy	stlcop	Saint Louis	MO
1098	St Marys College	smcm	Saint Mary's City	MD
1099	St Marys University Of San Antonio	stmarytx	San Antonio	TX
1100	St Norbert College	snc	De Pere	WI
1101	St Olaf College	stolaf	Northfield	MN
1102	St Petersburg College	spcollege	Clearwater	FL
1103	St Thomas Aquinas College	stac	Sparkill	NY
1104	St Thomas University	stu	Miami Gardens	FL
1105	Stanford University	stanford	Stanford	CA
1106	Stephen F Austin State University	sfasu	Nacogdoches	TX
1107	Stephens College	stephens	Columbia	MO
1108	Sterling College	sterlingcollege	Sterling	KS
1109	Stetson University	stetson	DeLand	FL
1110	Stevens Institute Technology	stevens	\N	\N
1111	Stevenson University	stevenson	Stevenson	MD
1112	Stillman College	stillman	Tuscaloosa	AL
1113	Stockton University	stockton	Galloway	NJ
1114	Stonehill College	stonehill	Easton	MA
1115	Suffolk University	suffolk	Boston	MA
1116	Sul Ross State University	sulross	Alpine	TX
1117	Sungkyunkwan University	skku	\N	\N
1118	Suny Alfred State College	alfredstate	Alfred	NY
1119	Suny Binghamton University	binghamton	Binghamton	NY
1120	Suny Buffalo State College	buffalostate	Buffalo	NY
1121	Suny Cobleskill	cobleskill	Cobleskill	NY
1122	Suny College Brockport	brockport	Brockport	NY
1123	Suny College Environmental Science Forestry	esf	Syracuse	NY
1124	Suny College Geneseo	geneseo	Geneseo	NY
1125	Suny College Old Westbury	oldwestbury	\N	\N
1126	Suny College Oneonta	oneonta	Oneonta	NY
1127	Suny College Technology Canton	canton	Canton	NY
1128	Suny Cortland	cortland	Cortland	NY
1129	Suny Delhi	delhi	Delhi	NY
1130	Suny Empire State College	esc	Saratoga Springs	NY
1131	Suny Farmingdale State College	farmingdale	Farmingdale	NY
1132	Suny Fredonia	fredonia	Fredonia	NY
1133	Suny Maritime College	sunymaritime	Bronx	NY
1134	Suny Morrisville State College	morrisville	Morrisville	NY
1135	Suny New Paltz	newpaltz	New Paltz	NY
1136	Suny Oswego	oswego	Oswego	NY
1137	Suny Plattsburgh	plattsburgh	Plattsburgh	NY
1138	Suny Polytechnic Institute	sunyit	Utica	NY
1139	Suny Potsdam	potsdam	Potsdam	NY
1140	Suny Purchase College	purchase	Purchase	NY
1141	Suny Stony Brook University	stonybrook	\N	\N
1142	Suny University Albany	albany	Albany	NY
1143	Suny University Buffalo	buffalo	Buffalo	NY
1144	Susquehanna University	susqu	Selinsgrove	PA
1145	Swarthmore College	swarthmore	Swarthmore	PA
1146	Sweet Briar College	sbc	Sweet Briar	VA
1147	Syracuse University	syr	Syracuse	NY
1148	Tabor College	tabor	Hillsboro	KS
1149	Talladega College	talladega	Talladega	AL
1150	Tarleton State University	tarleton	Stephenville	TX
1151	Taylor University	taylor	Upland	IN
1152	Temple University	temple	Philadelphia	PA
1153	Tennessee State University	tnstate	Nashville	TN
1154	Tennessee Technological University	tntech	Cookeville	TN
1155	Tennessee Wesleyan University	tnwesleyan	\N	\N
1156	Texas Am International University	tamiu	Laredo	TX
1157	Texas Am University College Station	tamu	College Station	TX
1158	Texas Am University Commerce	tamuc	Commerce	TX
1159	Texas Am University Corpus Christi	tamucc	Corpus Christi	TX
1160	Texas Am University Kingsville	tamuk	Kingsville	TX
1161	Texas Am University Texarkana	tamut	Texarkana	TX
1162	Texas Christian University	tcu	Fort Worth	TX
1163	Texas College	texascollege	Tyler	TX
1164	Texas Lutheran University	tlu	Seguin	TX
1165	Texas Southern University	tsu	Houston	TX
1166	Texas State University	txstate	San Marcos	TX
1167	Texas Tech University	ttu	Lubbock	TX
1168	Texas University Of The Rio Grande Valley	utrgv	\N	\N
1169	Texas Wesleyan University	txwes	Fort Worth	TX
1170	Texas Womans University	twu	Denton	TX
1171	The American College Of Greece	acg	\N	\N
1172	The American University In Cairo	aucegypt	\N	\N
1173	The Citadel	citadel	Charleston	SC
1174	The College of Idaho	collegeofidaho	Caldwell	ID
1175	The Kings College	tkc	New York	NY
1176	The Masters University And Seminary	masters	Santa Clarita	CA
1177	The University Of Alabama	ua	Tuscaloosa	AL
1178	The University Of Alabama Huntsville	uah	Huntsville	AL
1179	The University Of British Columbia	ubc	\N	\N
1180	The University Of Montana	umontana	\N	\N
1181	The University Of Montana Western	umwestern	Dillon	MT
1182	The University Of Mount Olive	umo	\N	\N
1183	The University Of New Mexico	unm	Albuquerque	NM
1184	The University Of Texas Of The Permian Basin	utpb	Odessa	TX
1185	The University Of The Arts	uarts	Philadelphia	PA
1186	The University Of Utah	utah	Salt Lake City	UT
1187	Thiel College	thiel	Greenville	PA
1188	Thomas Aquinas College	thomasaquinas	Santa Paula	CA
1189	Thomas College	thomas	Waterville	ME
1190	Thomas Edison State University	tesu	Trenton	NJ
1191	Thomas More College	thomasmore	Crestview Hills	KY
1192	Thomas University	thomasu	Thomasville	GA
1193	Tiffin University	tiffin	Tiffin	OH
1194	Toccoa Falls College	tfc	Toccoa Falls	GA
1195	Tougaloo College	tougaloo	Tougaloo	MS
1196	Touro College	touro	New York	NY
1197	Towson University	towson	Towson	MD
1198	Transylvania University	transy	Lexington	KY
1199	Trevecca Nazarene University	trevecca	Nashville	TN
1200	Trine University	trine	Angola	IN
1201	Trinity Baptist College	tbc	Jacksonville	FL
1202	Trinity Christian College	trnty	Palos Heights	IL
1203	Trinity College	trincoll	\N	CT
1204	Trinity College Of Florida	trinitycollege	Trinity	FL
1205	Trinity College Of Nursing Health Sciences	trinitycollegeqc	Rock Island	IL
1206	Trinity International University	tiu	Deerfield	IL
1207	Trinity University	trinity	San Antonio	TX
1208	Trinity Washington University	trinitydc	Washington	DC
1209	Troy University	troy	Troy	AL
1210	Truett Mcconnell University	truett	Cleveland	GA
1211	Truman State University	truman	Kirksville	MO
1212	Tufts University	tufts	Medford	MA
1213	Tulane University	tulane	New Orleans	LA
1214	Tuskegee University	tuskegee	Tuskegee	AL
1215	Union College	union	Barbourville	KY
1216	Union Institute University	myunion	\N	\N
1217	Union University	uu	Jackson	TN
1218	United States Air Force Academy	usafa	USAF Academy	CO
1219	United States Coast Guard Academy	uscga	New London	CT
1220	United States Merchant Marine Academy	usmma	Kings Point	NY
1221	United States Military Academy	usma	West  Point	NY
1222	United States Naval Academy	usna	Annapolis	MD
1223	Unity College	unity	Unity	ME
1224	Universidad Adventista De Las Antillas	uaa	Mayaguez	PR
1225	Universidad Carlos Iii De Madrid	uc3m	\N	\N
1226	Universidad Del Sagrado Corazon	sagrado	San Juan	PR
1227	University Of Advancing Technology	uat	Tempe	AZ
1228	University Of Akron Main Campus	uakron	Akron	OH
1229	University Of Alabama Birmingham Uab	uab	Birmingham	AL
1230	University Of Alaska Anchorage	alaska	Anchorage	AK
1231	University Of Alaska Fairbanks	uaf	Fairbanks	AK
1232	University Of Alaska Southeast	uas.alaska	\N	\N
1233	University Of Alberta	ualberta	\N	\N
1234	University Of Arizona	arizona	Tucson	AZ
1235	University Of Arkansas	uark	Fayetteville	AR
1236	University Of Arkansas At Fort Smith	uafs	\N	\N
1237	University Of Arkansas At Little Rock	ualr	Little Rock	AR
1238	University Of Arkansas At Monticello	uamont	Monticello	AR
1239	University Of Arkansas At Pine Bluff	uapb	Pine Bluff	AR
1240	University Of Baltimore	ubalt	Baltimore	MD
1241	University Of Bridgeport	bridgeport	Bridgeport	CT
1242	University Of Calgary	ucalgary	\N	\N
1243	University Of California At Merced	ucmerced	\N	\N
1244	University Of California Davis	ucdavis	Davis	CA
1245	University Of California Irvine	uci	Irvine	CA
1246	University Of California Riverside	ucr	\N	\N
1247	University Of California Santa Barbara	ucsb	Santa Barbara	CA
1248	University Of California Santa Cruz	ucsc	Santa Cruz	CA
1249	University Of Central Arkansas	uca	Conway	AR
1250	University Of Central Florida	ucf	Orlando	FL
1251	University Of Central Missouri	ucmo	Warrensburg	MO
1252	University Of Central Oklahoma	uco	Edmond	OK
1253	University Of Charleston	ucwv	Charleston	WV
1254	University Of Chicago	uchicago	\N	\N
1255	University Of Cincinnati	uc	Cincinnati	OH
1256	University Of Cincinnati Blue Ash College And Clermont College	ucblueash	\N	\N
1257	University Of College Dublin	ucd	\N	\N
1258	University Of Colorado Boulder	colorado	Boulder	CO
1259	University Of Colorado Colorado Springs	uccs	Colorado Springs	CO
1260	University Of Colorado Denver	ucdenver	\N	\N
1261	University Of Connecticut	uconn	Storrs	CT
1262	University Of Dallas	udallas	Irving	TX
1263	University Of Dayton	udayton	Dayton	OH
1264	University Of Delaware	udel	Newark	DE
1265	University Of Denver	du	Denver	CO
1266	University Of Detroit Mercy	udmercy	Detroit	MI
1267	University Of Dubuque	dbq	Dubuque	IA
1268	University Of Evansville	evansville	Evansville	IN
1269	University Of Findlay	findlay	Findlay	OH
1270	University Of Florida	ufl	Gainesville	FL
1271	University Of Georgia	uga	Athens	GA
1272	University Of Guam	uog	Mangilao	GU
1273	University Of Guelph	uoguelph	\N	\N
1274	University Of Hartford	hartford	West Hartford	CT
1275	University Of Hawaii At Manoa	hawaii	Hilo	HI
1276	University Of Holy Cross	uhcno	\N	\N
1277	University Of Hong Kong	hku	\N	\N
1278	University Of Houston	uh	Houston	TX
1279	University Of Houston Clear Lake	uhcl	Houston	TX
1280	University Of Houston Downtown	uhd	Houston	TX
1281	University Of Houston Victoria	uhv	Victoria	TX
1282	University Of Idaho	uidaho	Moscow	ID
1283	University Of Illinois Chicago	uic	Chicago	IL
1284	University Of Illinois Springfield	uis	Springfield	IL
1285	University Of Indianapolis	uindy	Indianapolis	IN
1286	University Of Iowa	uiowa	Iowa City	IA
1287	University Of Jamestown	uj	Los Angeles	CA
1288	University Of Kansas	ku	Lawrence	KS
1289	University Of Kentucky	uky	Lexington	KY
1290	University Of La Verne	laverne	\N	\N
1291	University Of Lethbridge	uleth	\N	\N
1292	University Of Louisiana At Lafayette	louisiana	Lafayette	LA
1293	University Of Louisiana At Monroe	ulm	Monroe	LA
1294	University Of Louisville	louisville	Louisville	KY
1295	University Of Lynchburg	lynchburg	Lynchburg	VA
1296	University Of Maine	maine	Augusta	ME
1297	University Of Mary	umary	Bismarck	ND
1298	University Of Mary Hardin Baylor	umhb	Belton	TX
1299	University Of Mary Washington	umw	Fredericksburg	VA
1300	University Of Maryland Baltimore County	umbc	Baltimore	MD
1301	University Of Maryland Eastern Shore	umes	Princess Anne	MD
1302	University Of Maryland University College	umuc	Adelphi	MD
1303	University Of Massachusetts Boston	umb	Boston	MA
1304	University Of Massachusetts Dartmouth	umassd	North Dartmouth	MA
1305	University Of Massachusetts Lowell	uml	\N	\N
1306	University Of Memphis	memphis	Memphis	TN
1307	University Of Miami	miami	Coral Gables	FL
1308	University Of Michigan Dearborn	umich	Ann Arbor	MI
1309	University Of Michigan Flint	umflint	Flint	MI
1310	University Of Michigan Shanghai Jiao Tong University Of Joint Institute	sjtu	\N	\N
1311	University Of Minnesota Twin Cities	umn	Minneapolis	MN
1312	University Of Missouri	missouri	Columbia	MO
1313	University Of Missouri Kansas City	umkc	Kansas City	MO
1314	University Of Missouri St Louis	umsl	Saint Louis	MO
1315	University Of Mobile	umobile	Mobile	AL
1316	University Of Montevallo	montevallo	Montevallo	AL
1317	University Of Mount Union	mountunion	Alliance	OH
1318	University Of Nebraska Kearney	unk	Kearney	NE
1319	University Of Nebraska Lincoln	unl	Lincoln	NE
1320	University Of Nebraska Omaha	unomaha	Omaha	NE
1321	University Of Nevada Las Vegas Unlv	unlv	Las Vegas	NV
1322	University Of Nevada Reno	unr	Reno	NV
1323	University Of New England	une	\N	\N
1324	University Of New Hampshire	unh	Durham	NH
1325	University Of New Haven	newhaven	West Haven	CT
1326	University Of New Orleans	uno	New Orleans	LA
1327	University Of North Alabama	una	Florence	AL
1328	University Of North Carolina Asheville	unca	Asheville	NC
1329	University Of North Carolina At Pembroke	uncp	Pembroke	NC
1330	University Of North Carolina Chapel Hill	unc	Chapel Hill	NC
1331	University Of North Carolina Charlotte	uncc	Charlotte	NC
1332	University Of North Carolina Greensboro	uncg	Greensboro	NC
1333	University Of North Carolina School Of The Arts	uncsa	Winston-Salem	NC
1334	University Of North Carolina Wilmington	uncw	Wilmington	NC
1335	University Of North Dakota	und	Grand Forks	ND
1336	University Of North Florida	unf	Jacksonville	FL
1337	University Of North Georgia	ung	\N	\N
1338	University Of North Texas	unt	Denton	TX
1339	University Of Northern Colorado	unco	Greeley	CO
1340	University Of Northern Iowa	uni	Cedar Falls	IA
1441	Virginia Wesleyan University	vwu	\N	\N
1341	University Of Northwestern St Paul	unwsp	\N	\N
1342	University Of Notre Dame	nd	Notre Dame	IN
1343	University Of Oklahoma	ou	Norman	OK
1344	University Of Oregon	uoregon	Eugene	OR
1345	University Of Pennsylvania	upenn	Philadelphia	PA
1346	University Of Pikeville	upike	\N	\N
1347	University Of Pittsburgh	pitt	Bradford	PA
1348	University Of Portland	up	Portland	OR
1349	University Of Providence	uprovidence	\N	\N
1350	University Of Puget Sound	pugetsound	\N	\N
1351	University Of Redlands	redlands	Redlands	CA
1352	University Of Rhode Island	uri	Kingston	RI
1353	University Of Richmond	richmond	Richmond	VA
1354	University Of Rio Grande	rio	Rio Grande	OH
1355	University Of Rochester	rochester	Rochester	NY
1356	University Of Saint Francis Fort Wayne Indiana	sf	Fort Wayne	IN
1357	University Of Saint Joseph	usj	\N	\N
1358	University Of San Diego	sandiego	San Diego	CA
1359	University Of San Francisco	usfca	San Francisco	CA
1360	University Of Saskatchewan	usask	\N	\N
1361	University Of Science And Arts Of Oklahoma	usao	Chickasha	OK
1362	University Of Sciences	usciences	\N	\N
1363	University Of Scranton	scranton	Scranton	PA
1364	University Of Sioux Falls	usiouxfalls	Sioux Falls	SD
1365	University Of South Alabama	southalabama	\N	\N
1366	University Of South Carolina Aiken	usca	Aiken	SC
1367	University Of South Carolina Beaufort	uscb	Bluffton	SC
1368	University Of South Carolina Columbia	sc	Columbia	SC
1369	University Of South Carolina Upstate	uscupstate	Spartanburg	SC
1370	University Of South Dakota	usd	\N	\N
1371	University Of South Florida	usf	Tampa	FL
1372	University Of Southern Indiana	usi	Evansville	IN
1373	University Of Southern Mississippi	usm	Hattiesburg	MS
1374	University Of St Francis Il	stfrancis	Joliet	IL
1375	University Of St Mary	stmary	Leavenworth	KS
1376	University Of St Thomas	stthom	Houston	TX
1377	University Of St Thomas Mn	stthomas	Saint Paul	MN
1378	University Of Tampa	ut	Tampa	FL
1379	University Of Tennessee At Chattanooga	utc	Chattanooga	TN
1380	University Of Tennessee At Martin	utm	Martin	TN
1381	University Of Tennessee Knoxville	utk	\N	\N
1382	University Of Texas At Arlington	uta	Arlington	TX
1383	University Of Texas At Dallas	utdallas	Richardson	TX
1384	University Of Texas At El Paso	utep	El Paso	TX
1385	University Of Texas At San Antonio	utsa	San Antonio	TX
1386	University Of Texas At Tyler	uttyler	Tyler	TX
1387	University Of The Cumberlands	ucumberlands	Williamsburg	KY
1388	University Of The District Of Columbia	udc	Washington	DC
1389	University Of The Incarnate Word	uiwtx	\N	\N
1390	University Of The Ozarks	ozarks	Clarksville	AR
1391	University Of The Pacific	pacific	Stockton	CA
1392	University Of The Southwest	usw	Hobbs	NM
1393	University Of The Virgin Islands	uvi	Charlotte Amalie	VI
1394	University Of Toledo	utoledo	Toledo	OH
1395	University Of Toronto	utoronto	\N	\N
1396	University Of Tulsa	utulsa	Tulsa	OK
1397	University Of Vermont	uvm	Burlington	VT
1398	University Of Virginia	virginia	Charlottesville	VA
1399	University Of Virginias College Wise	uvawise	Wise	VA
1400	University Of West	uwest	\N	\N
1401	University Of West Alabama	uwa	Livingston	AL
1402	University Of West Florida	uwf	Pensacola	FL
1403	University Of West Georgia	westga	Carrollton	GA
1404	University Of Windsor	uwindsor	\N	\N
1405	University Of Wisconsin Eau Claire	uwec	Eau Claire	WI
1406	University Of Wisconsin Green Bay	uwgb	\N	\N
1407	University Of Wisconsin La Crosse	uwlax	La Crosse	WI
1408	University Of Wisconsin Milwaukee	uwm	Milwaukee	WI
1409	University Of Wisconsin Oshkosh	uwosh	Oshkosh	WI
1410	University Of Wisconsin Parkside	uwp	Kenosha	WI
1411	University Of Wisconsin Platteville	uwplatt	Platteville	WI
1412	University Of Wisconsin River Falls	uwrf	River Falls	WI
1413	University Of Wisconsin Stevens Point	uwsp	Stevens Point	WI
1414	University Of Wisconsin Stout	uwstout	Menomonie	WI
1415	University Of Wisconsin Superior	uwsuper	Superior	WI
1416	University Of Wisconsin Whitewater	uww	Whitewater	WI
1417	University Of Wyoming	uwyo	Laramie	WY
1418	Upper Iowa University	uiu	Fayette	IA
1419	Urbana University 	urbana	Urbana	OH
1420	Ursinus College	ursinus	Collegeville	PA
1421	Ursuline College	ursuline	Pepper Pike	OH
1422	Utah State University	usu	Logan	UT
1423	Utah Valley University	uvu	Orem	UT
1424	Utica College	utica	Utica	NY
1425	Valdosta State University	valdosta	Valdosta	GA
1426	Valley City State University	vcsu	Valley City	ND
1427	Valparaiso University	valpo	Valparaiso	IN
1428	Vanderbilt University	vanderbilt	Nashville	TN
1429	Vandercook College Of Music	vandercook	Chicago	IL
1430	Vanguard University Of Southern California	vanguard	Costa Mesa	CA
1431	Vassar College	vassar	Poughkeepsie	NY
1432	Vaughn College Of Aeronautics And Technology	vaughn	Flushing	NY
1433	Vermont Technical College	vtc	Randolph Center	VT
1434	Villanova University	villanova	Villanova	PA
1435	Virginia Commonwealth University	vcu	Richmond	VA
1436	Virginia Military Institute	vmi	Lexington	VA
1437	Virginia Polytechnic Institute And State University	vt	Blacksburg	VA
1438	Virginia State University	vsu	Petersburg	VA
1439	Virginia Union University	vuu	Richmond	VA
1440	Virginia University Of Lynchburg	vul	Lynchburg	VA
1442	Viterbo University	viterbo	La Crosse	WI
1443	Voorhees College	voorhees	Denmark	SC
1444	Wabash College	wabash	Crawfordsville	IN
1445	Wagner College	wagner	Staten Island	NY
1446	Wake Forest University	wfu	Winston Salem	NC
1447	Waldorf University	waldorf	Forest City	IA
1448	Walla Walla University	wallawalla	College Place	WA
1449	Walsh University	walsh	North Canton	OH
1450	Warner Pacific University	warnerpacific	Portland	OR
1451	Warner University	warner	Lake Wales	FL
1452	Warren Wilson College	warren-wilson	Swannanoa	NC
1453	Wartburg College	wartburg	Waverly	IA
1454	Washburn University	washburn	Topeka	KS
1455	Washington Adventist University	wau	Takoma Park	MD
1456	Washington And Lee University	wlu	Lexington	VA
1457	Washington College	washcoll	Chestertown	MD
1458	Washington Jefferson College	washjeff	Washington	PA
1459	Washington State University	wsu	Pullman	WA
1460	Washington University of St Louis	wustl	Saint Louis	MO
1461	Watkins College Art Design Film	watkins	Nashville	TN
1462	Wayland Baptist University	wbu	Plainview	TX
1463	Wayne State College	wsc	Wayne	NE
1464	Wayne State University	wayne	Detroit	MI
1465	Waynesburg University	waynesburg	Waynesburg	PA
1466	Webb Institute	webb	Glen Cove	NY
1467	Webber International University	webber	Babson Park	FL
1468	Weber State University	weber	Ogden	UT
1469	Webster University	webster	Saint Louis	MO
1470	Welch College	welch	Nashville	TN
1471	Wellesley College	wellesley	Wellesley	MA
1472	Wells College	wells	Aurora	NY
1473	Wentworth Institute Technology	wit	\N	\N
1474	Wesley College	wesley	Dover	DE
1475	Wesleyan College	wesleyancollege	Macon	GA
1476	Wesleyan University	wesleyan	Middletown	CT
1477	West Chester University	wcupa	West Chester	PA
1478	West Liberty University	westliberty	West Liberty	WV
1479	West Texas Am University	wtamu	Canyon	TX
1480	West Virginia State University	wvstateu	Institute	WV
1481	West Virginia University	wvu	Morgantown	WV
1482	West Virginia University Parkersburg	wvup	Parkersburg	WV
1483	West Virginia Wesleyan College	wvwc	Buckhannon	WV
1484	Western Carolina University	wcu	Cullowhee	NC
1485	Western Connecticut State University	wcsu	Danbury	CT
1486	Western Illinois University	wiu	Macomb	IL
1487	Western Kentucky University	wku	Bowling Green	KY
1488	Western Michigan University	wmich	Kalamazoo	MI
1489	Western New England University	wne	\N	\N
1490	Western New Mexico University	wnmu	Silver City	NM
1491	Western Oregon University	wou	Monmouth	OR
1492	Western State Colorado University	western	Gunnison	CO
1493	Western University	uwo	\N	\N
1494	Western Washington University	wwu	Bellingham	WA
1495	Westfield State University	ma	Westfield	MA
1496	Westminster College	westminster	Fulton	MO
1497	Westminster College Missouri	westminster-mo	\N	\N
1498	Westminster College Utah	westminstercollege	Salt Lake City	UT
1499	Westmont College	westmont	Santa Barbara	CA
1500	Wheaton College Il	wheaton	Wheaton	IL
1501	Wheaton College Massachusetts	wheatoncollege	Norton	MA
1502	Wheeling Jesuit University	wju	Wheeling	WV
1503	Whitman College	whitman	Walla Walla	WA
1504	Whittier College	whittier	Whittier	CA
1505	Whitworth University	whitworth	Spokane	WA
1506	Wichita State University	wichita	Wichita	KS
1507	Widener University	widener	Chester	PA
1508	Wilberforce University	wilberforce	Wilberforce	OH
1509	Wilkes University	wilkes	Wilkes-Barre	PA
1510	Willamette University	willamette	Salem	OR
1511	William Carey University	wmcarey	Hattiesburg	MS
1512	William Jessup University	jessup	Rocklin	CA
1513	William Jewell College	jewell	Liberty	MO
1514	William Paterson University Nj	wpunj	Wayne	NJ
1515	William Peace University	peace	Raleigh	NC
1516	William Penn University	wmpenn	Oskaloosa	IA
1517	William Woods University	williamwoods	Fulton	MO
1518	Williams Baptist College	wbcoll	Walnut Ridge	AR
1519	Williams College	williams	Williamstown	MA
1520	Wilmington College	wilmington	Wilmington	OH
1521	Wilmington University	wilmu	New Castle	DE
1522	Wilson College	wilson	Chambersburg	PA
1523	Wingate University	wingate	Wingate	NC
1524	Winona State University	winona	Winona	MN
1525	Winston Salem State University	wssu	Winston-Salem	NC
1526	Winthrop University	winthrop	Rock Hill	SC
1527	Wisconsin Lutheran College	wlc	Milwaukee	WI
1528	Wittenberg University	wittenberg	Springfield	OH
1529	Wofford College	wofford	Spartanburg	SC
1530	Woodbury University	woodbury	Burbank	CA
1531	Worcester Polytechnic Institute	wpi	Worcester	MA
1532	Worcester State University	worcester	Worcester	MA
1533	Wright State University	wright	Dayton	OH
1534	Wyoming Catholic College	wyomingcatholiccollege	Lander	WY
1535	Xavier University	xavier	Cincinnati	OH
1536	Xavier University Of Louisiana	xula	New Orleans	LA
1537	Yale Nus College	yale-nus	\N	\N
1538	Yale University	yale	New Haven	CT
1539	Yeshiva University	yu	New York	NY
1540	York College	ycp	York	NE
1541	York University	yorku	\N	\N
1542	Young Harris College	yhc	Young Harris	GA
1543	Youngstown State University	ysu	Youngstown	OH
\.


--
-- Data for Name: Suggestions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Suggestions" ("id", "created_at", "content", "college_domain") FROM stdin;
2	2025-02-09 07:32:21.654+00	"{\\"1\\":{\\"id\\":1,\\"question\\":\\"Other information\\",\\"response\\":\\"First off, all residents of any state that borders Kentucky actually receive in-state tuition here at WKU through the Border State Scholarship. You can learn more at www.wku.edu/border. This is guaranteed to any student accepted to WKU regardless of documentation status.\\\\r\\\\n\\\\r\\\\n\\\\r\\\\n\\\\r\\\\nUndocumented students apply as domestic students at WKU. We will never share their information with ICE or any immigration officials and they are not allowed on campus without a warrant. Students should answer directly on the application that they are undocumented, however it will not affect their application process at all. As long as an undocumented students meets our admission requirements they will be admitted to WKU. Students are admitted to WKU with at least a 2.5 unweighted GPA (no ACT is required for admission). If the student is between a 2.0-2.49 unweighted GPA they can be admitted but at that point their ACT score would determine their admission eligibility.\\\\r\\\\n\\\\r\\\\n\\\\r\\\\n\\\\r\\\\nUndocumented students are eligible for our merit scholarships here at WKU. You can view a list of our merit opportunities at https://www.wku.edu/financialaid/scholarships/freshmen-2122-academicyear.php. There are no applications for the scholarships on that page (except the Cherry Presidential) and they will be applied to the students account automatically as long as they meet the minimum requirements for the awards. They are renewable and stackable. We also have a minority scholarship called the Cornelius A Martin Award that the majority of undocumented students that I work with receive. Any other questions regarding financial aid at WKU should be directed to their office at fa.help@wku.edu.\\\\r\\\\n\\\\r\\\\n\\\\r\\\\n\\\\r\\\\nI work with undocumented quite regularly and many of those students choose to enroll at WKU for our campus community. We are a mid-sized institution that prides itself on the strong relationships between our faculty and students. They truly go above and beyond to help our students succeed, and as an institution we provide every resource possible to ensure that our students achieve their academic, career, and personal goals. WKU is located in Bowling Green which was voted the best city to live in Kentucky as well as a top college town in America. WKU is proud of our diverse student body, and our Intercultural Student Engagement Center works directly with any underrepresented student to provide them with additional academic, social, and professional support. You can learn more about their programs and initiatives at https://www.wku.edu/isec/.\\"},\\"2\\":{\\"id\\":2,\\"question\\":\\"Does your school allow Immigration and Customs Enforcement (ICE) officers onto campus without a warrant?\\",\\"response\\":\\"\\"},\\"3\\":{\\"id\\":3,\\"question\\":\\"If need-based aid is not available, is there a feasible path undocumented students can take to pay for their education with stackable merit scholarships, loans and/or grants from your school?\\",\\"response\\":\\"\\"},\\"4\\":{\\"id\\":4,\\"question\\":\\"Other student life information\\",\\"response\\":\\"\\"},\\"5\\":{\\"id\\":5,\\"question\\":\\"Does your school provide merit aid specially for undocumented students?\\",\\"response\\":\\"\\"},\\"6\\":{\\"id\\":6,\\"question\\":\\"How often does your office receive applications from undocumented students?\\",\\"response\\":\\"\\"},\\"7\\":{\\"id\\":7,\\"question\\":\\"Other financial aid information\\",\\"response\\":\\"\\"},\\"8\\":{\\"id\\":8,\\"question\\":\\"Has undocu-student webpage\\",\\"response\\":\\"\\"},\\"9\\":{\\"id\\":9,\\"question\\":\\"What would be the requirements for such scholarships and what would a student's chances of getting them?\\",\\"response\\":\\"\\"},\\"10\\":{\\"id\\":10,\\"question\\":\\"Are you need-blind for undocumented students?\\",\\"response\\":\\"\\"},\\"11\\":{\\"id\\":11,\\"question\\":\\"Are undocumented students considered international or domestic?\\",\\"response\\":\\"\\"},\\"12\\":{\\"id\\":12,\\"question\\":\\"Gives aid?\\",\\"response\\":\\"false\\"},\\"13\\":{\\"id\\":13,\\"question\\":\\"Are undocumented students eligible for need-based aid?\\",\\"response\\":\\"\\"},\\"14\\":{\\"id\\":14,\\"question\\":\\"Does the campus police enforce immigration law?\\",\\"response\\":\\"\\"},\\"15\\":{\\"id\\":15,\\"question\\":\\"Are there organized groups or clubs comprised of or advocating for undocumented students in your school?\\",\\"response\\":\\"\\"},\\"16\\":{\\"id\\":16,\\"question\\":\\"Does your school provide distance-learning options for deported students to complete their degrees?\\",\\"response\\":\\"\\"},\\"17\\":{\\"id\\":17,\\"question\\":\\"Does your school share student immigration status with ICE?\\",\\"response\\":\\"\\"},\\"18\\":{\\"id\\":18,\\"question\\":\\"What other piece of advice would you give an undocumented student hoping for admission at your school?\\",\\"response\\":\\"\\"},\\"19\\":{\\"id\\":19,\\"question\\":\\"Other admissions information\\",\\"response\\":\\"\\"},\\"20\\":{\\"id\\":20,\\"question\\":\\"Does your school provide confidential legal support to students with immigration law questions and issues?\\",\\"response\\":\\"\\"},\\"21\\":{\\"id\\":21,\\"question\\":\\"Special contact\\",\\"response\\":\\"\\"},\\"22\\":{\\"id\\":22,\\"question\\":\\"How would their status affect their application?\\",\\"response\\":\\"\\"},\\"23\\":{\\"id\\":23,\\"question\\":\\"Are there any restrictions on merit aid for undocumented students at your school?\\",\\"response\\":\\"\\"},\\"24\\":{\\"id\\":24,\\"question\\":\\"Is there a special contact point for undocumented students?\\",\\"response\\":\\"\\"}}"	wku
3	2025-02-09 07:37:08.805+00	"{\\"1\\":{\\"id\\":1,\\"question\\":\\"Other information\\",\\"response\\":\\"\\"},\\"2\\":{\\"id\\":2,\\"question\\":\\"Does your school allow Immigration and Customs Enforcement (ICE) officers onto campus without a warrant?\\",\\"response\\":\\"\\"},\\"3\\":{\\"id\\":3,\\"question\\":\\"If need-based aid is not available, is there a feasible path undocumented students can take to pay for their education with stackable merit scholarships, loans and/or grants from your school?\\",\\"response\\":\\"\\"},\\"4\\":{\\"id\\":4,\\"question\\":\\"Other student life information\\",\\"response\\":\\"\\"},\\"5\\":{\\"id\\":5,\\"question\\":\\"Does your school provide merit aid specially for undocumented students?\\",\\"response\\":\\"\\"},\\"6\\":{\\"id\\":6,\\"question\\":\\"How often does your office receive applications from undocumented students?\\",\\"response\\":\\"\\"},\\"7\\":{\\"id\\":7,\\"question\\":\\"Other financial aid information\\",\\"response\\":\\"They do not qualify for financial aid.\\\\r\\\\nThey can apply for academic or athletic scholarships.\\\\r\\\\nRemaining balances must be paid in four portions throughout the year\\"},\\"8\\":{\\"id\\":8,\\"question\\":\\"Has undocu-student webpage\\",\\"response\\":\\"\\"},\\"9\\":{\\"id\\":9,\\"question\\":\\"What would be the requirements for such scholarships and what would a student's chances of getting them?\\",\\"response\\":\\"\\"},\\"10\\":{\\"id\\":10,\\"question\\":\\"Are you need-blind for undocumented students?\\",\\"response\\":\\"\\"},\\"11\\":{\\"id\\":11,\\"question\\":\\"Are undocumented students considered international or domestic?\\",\\"response\\":\\"\\"},\\"12\\":{\\"id\\":12,\\"question\\":\\"Gives aid?\\",\\"response\\":\\"false\\"},\\"13\\":{\\"id\\":13,\\"question\\":\\"Are undocumented students eligible for need-based aid?\\",\\"response\\":\\"\\"},\\"14\\":{\\"id\\":14,\\"question\\":\\"Does the campus police enforce immigration law?\\",\\"response\\":\\"\\"},\\"15\\":{\\"id\\":15,\\"question\\":\\"Are there organized groups or clubs comprised of or advocating for undocumented students in your school?\\",\\"response\\":\\"\\"},\\"16\\":{\\"id\\":16,\\"question\\":\\"Does your school provide distance-learning options for deported students to complete their degrees?\\",\\"response\\":\\"\\"},\\"17\\":{\\"id\\":17,\\"question\\":\\"Does your school share student immigration status with ICE?\\",\\"response\\":\\"\\"},\\"18\\":{\\"id\\":18,\\"question\\":\\"What other piece of advice would you give an undocumented student hoping for admission at your school?\\",\\"response\\":\\"\\"},\\"19\\":{\\"id\\":19,\\"question\\":\\"Other admissions information\\",\\"response\\":\\"We accept undocumended students at our institution.\\\\r\\\\nUndocumented students are classified as non traditional students\\"},\\"20\\":{\\"id\\":20,\\"question\\":\\"Does your school provide confidential legal support to students with immigration law questions and issues?\\",\\"response\\":\\"\\"},\\"21\\":{\\"id\\":21,\\"question\\":\\"Special contact\\",\\"response\\":\\"\\"},\\"22\\":{\\"id\\":22,\\"question\\":\\"How would their status affect their application?\\",\\"response\\":\\"\\"},\\"23\\":{\\"id\\":23,\\"question\\":\\"Are there any restrictions on merit aid for undocumented students at your school?\\",\\"response\\":\\"\\"},\\"24\\":{\\"id\\":24,\\"question\\":\\"Is there a special contact point for undocumented students?\\",\\"response\\":\\"\\"}}"	talladega
4	2025-02-09 07:37:39.462+00	"{\\"1\\":{\\"id\\":1,\\"question\\":\\"Other information\\",\\"response\\":\\"Counselling resources for undocu students\\\\r\\\\nhttps://sites.udel.edu/counseling/daca/\\"},\\"2\\":{\\"id\\":2,\\"question\\":\\"Does your school allow Immigration and Customs Enforcement (ICE) officers onto campus without a warrant?\\",\\"response\\":\\"\\"},\\"3\\":{\\"id\\":3,\\"question\\":\\"If need-based aid is not available, is there a feasible path undocumented students can take to pay for their education with stackable merit scholarships, loans and/or grants from your school?\\",\\"response\\":\\"\\"},\\"4\\":{\\"id\\":4,\\"question\\":\\"Other student life information\\",\\"response\\":\\"Find more information here:\\\\r\\\\nhttps://sites.udel.edu/studentlife/daca/\\"},\\"5\\":{\\"id\\":5,\\"question\\":\\"Does your school provide merit aid specially for undocumented students?\\",\\"response\\":\\"No merit aid specifically for undocumented students.\\"},\\"6\\":{\\"id\\":6,\\"question\\":\\"How often does your office receive applications from undocumented students?\\",\\"response\\":\\"\\"},\\"7\\":{\\"id\\":7,\\"question\\":\\"Other financial aid information\\",\\"response\\":\\"\\"},\\"8\\":{\\"id\\":8,\\"question\\":\\"Has undocu-student webpage\\",\\"response\\":\\"\\"},\\"9\\":{\\"id\\":9,\\"question\\":\\"What would be the requirements for such scholarships and what would a student's chances of getting them?\\",\\"response\\":\\"\\"},\\"10\\":{\\"id\\":10,\\"question\\":\\"Are you need-blind for undocumented students?\\",\\"response\\":\\"Yes, we are need-blind for undocumented students\\"},\\"11\\":{\\"id\\":11,\\"question\\":\\"Are undocumented students considered international or domestic?\\",\\"response\\":\\"International students\\"},\\"12\\":{\\"id\\":12,\\"question\\":\\"Gives aid?\\",\\"response\\":\\"true\\"},\\"13\\":{\\"id\\":13,\\"question\\":\\"Are undocumented students eligible for need-based aid?\\",\\"response\\":\\"\\"},\\"14\\":{\\"id\\":14,\\"question\\":\\"Does the campus police enforce immigration law?\\",\\"response\\":\\"\\"},\\"15\\":{\\"id\\":15,\\"question\\":\\"Are there organized groups or clubs comprised of or advocating for undocumented students in your school?\\",\\"response\\":\\"\\"},\\"16\\":{\\"id\\":16,\\"question\\":\\"Does your school provide distance-learning options for deported students to complete their degrees?\\",\\"response\\":\\"\\"},\\"17\\":{\\"id\\":17,\\"question\\":\\"Does your school share student immigration status with ICE?\\",\\"response\\":\\"\\"},\\"18\\":{\\"id\\":18,\\"question\\":\\"What other piece of advice would you give an undocumented student hoping for admission at your school?\\",\\"response\\":\\"\\"},\\"19\\":{\\"id\\":19,\\"question\\":\\"Other admissions information\\",\\"response\\":\\"Revealing status is one of the only ways a student will ever know if an institution offers financial assistance for undocumented students, but ultimately, it is up to the student whether or not to disclose. Once you have let us know about this status, we will seek discounted fee structure with our student financial services.\\"},\\"20\\":{\\"id\\":20,\\"question\\":\\"Does your school provide confidential legal support to students with immigration law questions and issues?\\",\\"response\\":\\"\\"},\\"21\\":{\\"id\\":21,\\"question\\":\\"Special contact\\",\\"response\\":\\"\\"},\\"22\\":{\\"id\\":22,\\"question\\":\\"How would their status affect their application?\\",\\"response\\":\\"Status will not affect how we review an applicant, although status will dictate how we code a student: In state, out of state, or international student.\\"},\\"23\\":{\\"id\\":23,\\"question\\":\\"Are there any restrictions on merit aid for undocumented students at your school?\\",\\"response\\":\\"No restrictions on merit scholarships.\\"},\\"24\\":{\\"id\\":24,\\"question\\":\\"Is there a special contact point for undocumented students?\\",\\"response\\":\\"If not on a universities’ front facing web pages, students can contact an institutions financial aid office to inquire whether or not an institution has funding for undocumented students.\\"}}"	udel
\.


--
-- Data for Name: emailaddresses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."emailaddresses" ("emailaddress", "collegeid") FROM stdin;
info@admissions.acu.edu	8
admissions@academyart.edu	9
admissions@acadiau.ca	10
admissions@adams.edu	11
admissions@adelphi.edu	12
admissions@adrian.edu	13
admission@agnesscott.edu	14
admissions@aamu.edu	15
admissions@alasu.edu	16
info@akbible.edu	17
admissions@alaskapacific.edu	18
admissions@acphs.edu	19
admissions@asurams.edu	20
admissions@albertus.edu	21
admission@albion.edu	22
admission@alb.edu	23
ksampson@alcorn.edu	24
admissions@ab.edu	25
admissions@alfred.edu	26
admissions@alc.edu	27
admissions@allegheny.edu	28
admissions@allencollege.edu	29
admissions@allenuniversity.edu	30
admissions@alma.edu	31
admissions@alvernia.edu	32
admissions@alverno.edu	33
atrice@abcnash.edu	34
admissions@aic.edu	35
admissions@aju.edu	36
admissions@american.edu	37
admissions@aub.edu.lb	38
admissions@aubg.edu	39
admissions@aup.edu	40
admissions@aur.edu	41
admission@amherst.edu	42
info@anderson.edu	43
enroll@andrews.edu	44
admissions@angelo.edu	45
admission@annamaria.edu	46
admission@antiochcollege.edu	47
admissions@abc.edu	48
admissions@appstate.edu	49
admissions@aquinas.edu	50
admissions@aquinascollege.edu	50
admiss@arcadia.edu	51
admissions@arizonachristian.edu	52
admissions@asu.edu	53
admissions@arkansasbaptist.edu	54
admissions@astate.edu	55
tech.enroll@atu.edu	56
kmarvin@arlingtonbaptistcollege.edu	57
admissions@artacademy.edu	58
admissions@artcenter.edu	59
admissions@asbury.edu	60
enrollme@ashland.edu	61
admiss@assumption.edu	62
admissions@athens.edu	63
admissions@auburn.edu	64
admissions@aum.edu	65
admissions@augsburg.edu	66
admissions@augusta.edu	67
admissions@augustana.edu	68
admission@augie.edu	69
admission@aurora.edu	70
admission@austincollege.edu	71
admissions@austingrad.edu	72
admissions@apsu.edu	73
admissions@avemaria.edu	74
admit@averett.edu	75
admissions@avila.edu	76
admissions@apu.edu	77
ugradadmission@babson.edu	78
admission@bakeru.edu	79
admission@bw.edu	80
askus@bsu.edu	81
admissions@baptistcollege.edu	82
admissions@bchs.edu	83
admissions@barclaycollege.edu	84
admission@bard.edu	85
admissions@berlin.bard.edu	86
admit@simons-rock.edu	87
admissions@barnard.edu	88
admissions@barry.edu	89
enroll@barton.edu	90
admissions@bastyr.edu	91
admission@bates.edu	92
admiss@baypath.edu	93
admissions@baylor.edu	94
admissions@beaconcollege.edu	95
admissions@becker.edu	96
admission@belhaven.edu	97
admission@bellarmine.edu	98
admissions@bellarmine.edu	98
admissions@bac.edu	99
admissions@belmont.edu	100
buadmission@belmont.edu	100
admiss@beloit.edu	101
admissions@bemidjistate.edu	102
admissions@benedict.edu	103
bcaudle@benedictine.edu	104
bcadmiss@benedictine.edu	104
admissions@ben.edu	105
admiss@bennett.edu	106
admissions@bennington.edu	107
ugadmission@bentley.edu	108
admissions@berea.edu	109
admissions@berklee.edu	110
admissions@berry.edu	111
enrollment@bethanywv.edu	112
admissions@bethanylb.edu	112
admissions@blc.edu	113
admissions@bethelcollege.edu	114
admissions@bethelks.edu	114
admissions@bethelu.edu	115
buadmissions-cas@bethel.edu	115
admissions@cookman.edu	116
admissions@beulah.edu	117
admissions@biola.edu	118
admiss@bsc.edu	119
admission@bsc.edu	119
admissions@ubishops.ca	120
admissions@bhsu.edu	121
admit@blackburn.edu	122
admissions@brcn.edu	123
admission@bloomfield.edu	124
buadmiss@bloomu.edu	125
admissions@bmc.edu	126
admissions@bluefield.edu	127
jschlimmer@bluefieldstate.edu	128
admissions@bluffton.edu	129
admission@bju.edu	130
admissions@boisestate.edu	131
bcapplicant@bc.edu	132
studentservices@bc.edu	132
admissions@bu.edu	133
admissions@bowdoin.edu	134
ugradadmissions@bowiestate.edu	135
choosebgsu@bgsu.edu	136
admissions@bradley.edu	137
admissions@brandeis.edu	138
admissions@brenau.edu	139
admissions@brescia.edu	140
admissions@brevard.edu	141
admissions@bpc.edu	142
admissions@briarcliff.edu	143
admissions@bridgewater.edu	144
admission@bridgew.edu	145
admissions@byuh.edu	146
admissions@byui.edu	147
admissions@byu.edu	148
admiss@bryan.edu	149
admission@bryant.edu	150
admissions@brynathyn.edu	151
admissions@brynmawr.edu	152
admissions@bucknell.edu	153
admissions@bvu.edu	154
admission@butler.edu	155
admissions@cabarruscollege.edu	156
admit@cabrini.edu	157
admissions@cairn.edu	158
admissions@caldwell.edu	159
admissions@calbaptist.edu	160
enroll@cca.edu	161
admissions@calarts.edu	162
ugadmissions@caltech.edu	163
admissions@callutheran.edu	164
admissions@csum.edu	165
admissions@cpp.edu	166
admissions@csub.edu	167
info@csuchico.edu	168
info@csudh.edu	169
admissions@csueastbay.edu	170
admissions@csufresno.edu	171
admissions@fullerton.edu	172
eslb@csulb.edu	173
admission@calstatela.edu	174
admissions@csumb.edu	175
admissions.records@csun.edu	176
admissions@csus.edu	177
moreinfo@csusb.edu	178
apply@csusm.edu	179
outreach_help_desk@csustan.edu	180
inquiry@calu.edu	181
admissions@calu.edu	181
admissions@ccsj.edu	182
admissions@calvary.edu	183
admissions@calvin.edu	184
admissions@cambridgecollege.edu	185
admissions@cameron.edu	186
admissions@campbellsville.edu	187
admissions@canisius.edu	188
admission@capital.edu	189
admissions@captechu.edu	190
admissions@stritch.edu	191
admisiones@caribbean.edu	192
admissions@carleton.edu	193
admissions@carlow.edu	194
enroll@carroll.edu	195
admission@carroll.edu	195
info@carrollu.edu	196
admitme@cn.edu	197
admissions@carthage.edu	198
admission@case.edu	199
info@castleton.edu	200
admission@catawba.edu	201
admissions@catawba.edu	201
cua-admissions@cua.edu	202
admission@cazenovia.edu	203
admissions@cedarcrest.edu	204
admiss@cedarville.edu	205
admission@centenary.edu	206
admissions@centenaryuniversity.edu	207
centuadmissions@centenaryuniversity.edu	207
admissions@centralchristian.edu	208
admission@central.edu	209
admissions@ccsu.edu	210
admissions@centralmethodist.edu	211
cmuadmit@cmich.edu	212
admissions@centralpenn.edu	213
admissions@centralstate.edu	214
admissions@cwu.edu	215
admission@centre.edu	216
cscadmissions@csc.edu	217
admissions@chaminade.edu	218
admission@champlain.edu	219
admit@chapman.edu	220
admissionsinfo@cdrewu.edu	221
enroll@csuniv.edu	222
admissions@charteroak.edu	223
admissions@chatham.edu	224
admissions@chc.edu	225
admissions@cheyney.edu	226
ug-admissions@csu.edu	227
hambrightb@chipola.edu	228
enroll@chowan.edu	229
admissions@christendom.edu	230
admissions@cbu.edu	231
admit@cnu.edu	232
ccuadmissions@ccuniversity.edu	233
admissions@claflin.edu	234
admission@cmc.edu	235
admissions@clarion.edu	236
admissions@cau.edu	237
admissions@clarku.edu	238
admissions@clarke.edu	239
admissions@clarkssummitu.edu	240
admissions@clarksoncollege.edu	241
admission@clarkson.edu	242
ccsu-info@clayton.edu	243
admissions@ccbbc.edu	244
admissions@cleary.edu	245
cuadmissions@clemson.edu	246
admission@cim.edu	247
admissions@csuohio.edu	248
admissions@coastal.edu	249
admission@coe.edu	250
info@cogswell.edu	251
admissions@coker.edu	252
admissions@colby.edu	253
admissions@colby-sawyer.edu	254
admission@colgate.edu	255
admissions@cofc.edu	256
admissions.office@mountsaintvincent.edu	257
admissions@csbsju.edu	258
enroll@csm.edu	259
admissions@csi.cuny.edu	260
admissions@cofo.edu	261
admissions@csj.edu	262
admissions@css.edu	263
admissions@wooster.edu	264
tcnjinfo@tcnj.edu	265
admission@cnr.edu	266
apply@cse.edu	267
admission@wm.edu	268
inquiry@coa.edu	269
admissions@holycross.edu	270
ccuadmissions@ccu.edu	271
admission@coloradocollege.edu	272
admissions@coloradomesa.edu	273
admit@mines.edu	274
admissions@colostate.edu	275
info@csupueblo.edu	276
admissions@ccis.edu	277
admissions@columbiasc.edu	277
admissions@colum.edu	278
yesciu@ciu.edu	279
admissions@ccad.edu	280
admissions@columbusstate.edu	281
admissions@concord.edu	282
admission@concordia-ny.edu	283
admissions@cord.edu	284
Admission@CUChicago.edu	285
admissions@cui.edu	286
admission@cui.edu	286
admiss@cune.edu	287
admission@cu-portland.edu	288
admissions@csp.edu	289
admission@csp.edu	289
admissions@concordia.edu	290
admissions@cuw.edu	291
admission@conncoll.edu	292
admisiones@cmpr.edu	293
admissions@converse.edu	294
admissions@cooper.edu	295
admissions@coppin.edu	296
admissions@corban.edu	297
admission@cornellcollege.edu	298
admissions@cornerstone.edu	299
admission@cornish.edu	300
admissions@covenant.edu	301
admissions@creighton.edu	302
enrollment@criswell.edu	303
admissions@crown.edu	304
admissions@culinary.edu	305
admission@culver.edu	306
admissions@cumberland.edu	307
admissions@baruch.cuny.edu	308
admissions@ccny.cuny.edu	309
admissions@hunter.cuny.edu	310
admissions@jjay.cuny.edu	311
enroll@lehman.cuny.edu	312
applytomec@mec.cuny.edu	313
admissions@citytech.cuny.edu	314
admissions@qc.cuny.edu	315
admissions@york.cuny.edu	316
adm@curry.edu	317
admissions@daemen.edu	318
admissions@dsu.edu	319
admissions@dwu.edu	320
admiss@dbu.edu	321
admissions@dallas.edu	322
admissions@daltonstate.edu	323
admissions.office@dartmouth.edu	324
info@davenport.edu	325
admission@davidson.edu	326
summersm@dewv.edu	327
admissions@dean.edu	328
admission@dean.edu	328
admissions@defiance.edu	329
admissions@desu.edu	330
admitme@delval.edu	331
admissions@deltastate.edu	332
admissions@denison.edu	333
admission@denison.edu	333
admission@depaul.edu	334
admission@depauw.edu	335
admiss@desales.edu	336
admissions@dickinson.edu	337
dsu.hawks@dickinsonstate.edu	338
admissions@digipen.edu	339
admissions@dillard.edu	340
admissions@dixie.edu	341
admissions@doane.edu	342
admissions@dc.edu	343
domadmis@dom.edu	344
enroll@dominican.edu	345
admissions@dordt.edu	346
admission@drake.edu	347
cadm@drew.edu	348
enroll@drexel.edu	349
druryad@drury.edu	350
undergrad-admissions@dukekunshan.edu.cn	351
undergrad-admissions@duke.edu	352
admissions@duq.edu	353
admissons@dyc.edu	354
admission@earlham.edu	355
admissions@earlham.edu	355
admis@ecu.edu	356
admissions@ecok.edu	357
undergrads@esu.edu	358
go2etsu@etsu.edu	359
admissions@etbu.edu	360
admissions@eastwest.edu	361
admissions@easternct.edu	362
admissions@eiu.edu	363
admissions@eku.edu	364
admiss@emu.edu	365
admissions@emich.edu	366
admissions@enc.edu	367
enrollment.services@enmu.edu	368
admissions@eou.edu	369
ugadm@eastern.edu	370
admissions@ewu.edu	371
admissions@eckerd.edu	372
admissions@edgewood.edu	373
admissions@edinboro.edu	374
admissions@ewc.edu	375
admissions@ecsu.edu	376
admissions@etown.edu	377
admit@elmhurst.edu	378
admissions@elmira.edu	379
admissions@elms.edu	380
admissions@elon.edu	381
dbadmit@erau.edu	382
admission@emerson.edu	383
admissions@ecuad.ca	384
enroll@emmanuel.edu	385
admissions@ec.edu	386
admissions@emmaus.edu	387
ehadmiss@ehc.edu	388
admission@emory.edu	389
go2esu@emporia.edu	390
admission@endicott.edu	391
admissions@erskine.edu	392
bachelorlondon@escpeurope.eu	393
admissions@eureka.edu	394
admissions@evangel.edu	395
admissions@evergreen.edu	396
admis@fairfield.edu	397
admissions@fdu.edu	398
admit@fairmontstate.edu	399
admissions@faith.edu	400
fitinfo@fitnyc.edu	401
admissions@faulkner.edu	402
admissions@uncfsu.edu	403
admissions@felician.edu	404
admissions@ferris.edu	405
admissions@ferrum.edu	406
admissions@fisher.edu	407
admit@fisk.edu	408
admissions@fitchburgstate.edu	409
admissions@ftc.edu	410
admissions@flagler.edu	411
ugrdadmissions@famu.edu	412
admissions@fau.edu	413
admissions@floridacollege.edu	414
admissions@fgcu.edu	415
admission@fit.edu	416
admiss@fiu.edu	417
admit@fmuniv.edu	418
admissions@fnu.edu	419
admissions@flpoly.org	420
fscadm@flsouthern.edu	421
admissions@fsu.edu	422
fbyou@fontbonne.edu	423
enroll@fordham.edu	424
tigers@fhsu.edu	425
admission@fortlewis.edu	426
admissions@fvsu.edu	427
admissions@framingham.edu	428
admissions@fmarion.edu	429
ololcinfo@ololcollege.edu	430
admissions@franciscan.edu	431
admissions@franklincollege.edu	432
admission@fandm.edu	433
admissions@franklinpierce.edu	434
info@fus.edu	435
apply@olin.edu	436
admissions@fhu.edu	437
admissions@fresno.edu	438
admission@friends.edu	439
fsuadmissions@frostburg.edu	440
admission@furman.edu	441
admissions.office@gallaudet.edu	442
admissions@gannon.edu	443
admissions@gardner-webb.edu	444
admissions@georgefox.edu	445
admissions@gmu.edu	446
gwadm@gwu.edu	447
admissions@georgetowncollege.edu	448
guadmiss@georgetown.edu	449
admissions@gcsu.edu	450
ggcadmissions@ggc.edu	451
admissions@georgiasouthern.edu	452
admissions@gsw.edu	453
admissions@gsu.edu	454
admissions@georgian.edu	455
admiss@gettysburg.edu	456
admissions@glenville.edu	457
admissions@goddard.edu	458
gbc@gbc.edu	459
gson-admissions@bjc.org	460
admissions@gonzaga.edu	461
admissions@gordon.edu	462
gordon@gordonstate.edu	463
admission@goshen.edu	464
admissions@goucher.edu	465
admissions@govst.edu	466
graceadmissions@gbcol.edu	467
admissions@grace.edu	468
admissions@graceland.edu	469
admissions@gram.edu	470
facouns@gcu.edu	471
go2gvsu@gvsu.edu	472
admissions@grandview.edu	473
ask.granite@granite.edu	474
admissions@gbcnv.edu	475
admissions@greenmtn.edu	476
admissions@greensboro.edu	477
admissions@greenville.edu	478
admission@grinnell.edu	479
admissions@gcc.edu	480
admission@guilford.edu	481
admission@gustavus.edu	482
admissions@gmercyu.edu	483
admission@hamilton.edu	484
admission@hamline.edu	485
admissions@hsc.edu	486
hsapp@hsc.edu	486
admissions@hampshire.edu	487
admit@hamptonu.edu	488
admissions@hlg.edu	489
admission@hanover.edu	490
enroll@hsutx.edu	491
admissions@harding.edu	492
admissions@hssu.edu	493
UndergraduateAdmissions@HarrisburgU.edu	494
admissions@hartwick.edu	495
college@fas.harvard.edu	496
admission@hmc.edu	497
hcadmissions@hastings.edu	498
admission@haverford.edu	499
admissions@hpu.edu	500
admission@heidelberg.edu	501
admissions@hchc.edu	502
admissions@hsu.edu	503
adm@hendrix.edu	504
admiss@highpoint.edu	505
admissions@hilbert.edu	506
admissions@hillsdale.edu	507
admission@hiram.edu	508
admissions@hws.edu	509
admit@hodges.edu	510
admission@hofstra.edu	511
huadm@hollins.edu	512
admissions@hcc-nd.edu	513
admissions@holyfamily.edu	514
admissions@hnu.edu	515
admissions@hood.edu	516
admission@hood.edu	516
admissions@hope.edu	517
admission@houghton.edu	518
admissions@hbu.edu	519
enroll@hputx.edu	520
admission@howard.edu	521
undergraduate.info@hult.edu	522
hsuinfo@humboldt.edu	523
admiss@hawks.huntingdon.edu	524
admissions@hchs.edu	525
admissions@huntington.edu	526
admit@husson.edu	527
admission@htu.edu	528
ask@ipfw.edu	529
apply@iupui.edu	530
admiss@isu.edu	531
university@ie.edu	532
admissions@mail.ic.edu	533
admission@iit.edu	534
admissions@illinoisstate.edu	535
iwuadmit@iwu.edu	536
Admiss@immaculata.edu	537
admissions@indianatech.edu	538
admissions@indstate.edu	539
iuadmit@indiana.edu	540
applynow@iue.edu	541
iuadmis@iuk.edu	542
admit@iun.edu	543
admissions-inquiry@iup.edu	544
admissions@iusb.edu	545
admissions@ius.edu	546
admissions@indwes.edu	547
admissions@iaia.edu	548
milcama@intersg.edu	549
admissions@iona.edu	550
admissions@iastate.edu	551
admit@iw.edu	552
admission@ithaca.edu	553
admappl@jsums.edu	554
info@jsu.edu	555
admissions@ju.edu	556
admiss@ju.edu	556
admission@jacobs-university.de	557
admissions@jmu.edu	558
recruitment@jarvis.edu	559
admissions@jchs.edu	560
admissions@philau.edu	561
jbuinfo@jbu.edu	562
admissions@johncabot.edu	563
enrollment@jcu.edu	564
mharold@jpcatholic.com	565
admissions@johnwesley.edu	566
gotojhu@jhu.edu	567
admissions@jcsu.edu	568
admissions@johnsonu.edu	569
mia@admissions.jwu.edu	570
pvd@admissions.jwu.edu	570
den@admissions.jwu.edu	570
clt@admissions.jwu.edu	570
admissions@judson.edu	571
admissions@judsonu.edu	572
admissions@juilliard.edu	573
applications@juniata.edu	574
admissions@juniata.edu	574
admission.records@kzoo.edu	575
admission@kzoo.edu	575
admiss@kcai.edu	576
k-state@k-state.edu	577
admitme@kean.edu	578
kscadmissions@keene.edu	579
info@kendall.edu	580
ksuadmit@kennesaw.edu	581
admissions@kent.edu	582
knights@kcu.edu	583
kmbc@kmbc.edu	584
admissions@kysu.edu	585
admissions@kwc.edu	586
admissions@kenyon.edu	587
admissions@kettering.edu	588
admissions@keuka.edu	589
admissions@keystone.edu	590
admission@king.edu	591
admissions@kings.edu	592
admission@knox.edu	593
admissions@kutztown.edu	594
admissions@kuyper.edu	595
admissions@laroche.edu	596
admiss@lasalle.edu	597
admissions@lasierra.edu	598
admissions@lafayette.edu	599
admission@lagrange.edu	600
admissions@lcad.edu	601
admissions@lec.edu	602
admissions@lakeforest.edu	603
admissions@lssu.edu	604
admissions@lakeland.edu	605
admissions@lamar.edu	606
admissions@lander.edu	607
admissions@lanecollege.edu	608
admissions@langston.edu	609
info@lasell.edu	610
admissions@ltu.edu	611
admissions@lawrence.edu	612
admission@lemoyne.edu	613
leavelladmissions@nobts.edu	614
admission@lvc.edu	615
admissions@leeuniversity.edu	616
admissions@lmc.edu	617
admissions@lehigh.edu	618
admission@loc.edu	619
admission@lr.edu	620
admissions@lesley.edu	621
admissions@letu.edu	622
admissions@lclark.edu	623
admissions@lcsc.edu	624
admissions@lewisu.edu	625
admissions@liberty.edu	626
info@lifepacific.edu	627
admission@life.edu	628
admissions@limcollege.edu	629
admiss@limestone.edu	630
enroll@lincolnchristian.edu	631
admissions@lmunet.edu	632
admissions@lincolnuca.edu	633
admissions@lincoln.edu	633
admissions@lincolnu.edu	633
Admissions@lindenwood.edu	634
admissions@lindsey.edu	635
admission@linfield.edu	636
admissions@lipscomb.edu	637
lcadmissions@jtsa.edu	638
admissions@livingstone.edu	639
admissions@lockhaven.edu	640
bkln-admissions@liu.edu	641
admissions@longwood.edu	642
admissions@loras.edu	643
admissions@lacollege.edu	644
admissions@lsu.edu	645
admissions@lsus.edu	646
bulldog@latech.edu	647
luadmits@lourdes.edu	648
admissions@lmu.edu	649
admission@lmu.edu	649
admission@luc.edu	650
admission@loyola.edu	651
admissions@loyola.edu	651
admit@loyno.edu	652
admissions@lcu.edu	653
admissions@luther.edu	654
admissions@lutherrice.edu	655
admissions@lycoming.edu	656
admission@lynn.edu	657
admissions@lyon.edu	658
admissions@macalester.edu	659
admissions@mac.edu	660
admissions@madonna.edu	661
admissions@mum.edu	662
admissions@meca.edu	663
admissions@mma.edu	664
admissions@malone.edu	665
admitinfo@manchester.edu	666
admit@mccks.edu	667
admit@manhattan.edu	668
admission@msmnyc.edu	669
admissions@mville.edu	670
admissions@mansfield.edu	671
admissions@mbu.edu	672
admissions@marian.edu	673
admissions@marianuniversity.edu	674
wardens@marietta.edu	675
admission@marist.edu	676
admissions@marlboro.edu	677
admissions@mu.edu	678
admissions@marquette.edu	678
admissions@mhu.edu	679
admissions@marshall.edu	680
bauermd@mlc-wels.edu	681
admit@martinmethodist.edu	682
admissions@martin.edu	683
admit@marybaldwin.edu	684
info@marygrove.edu	685
admissions@mica.edu	686
admissions@marylhurst.edu	687
admission@marymountcalifornia.edu	688
admissions@mmm.edu	689
admissions@marymount.edu	690
admissions@maryvillecollege.edu	691
admissions@maryville.edu	692
yourfuture@marywood.edu	693
admissions@massart.edu	694
admissions@mcla.edu	695
admissions@mcphs.edu	696
admissions@mit.edu	697
admissions@maritime.edu	698
masu.admissions@mayvillestate.edu	699
admissions@mcdaniel.edu	700
inquiry@mckendree.edu	701
admissions@mcm.edu	702
admissions@mcneese.edu	703
admissions@mcpherson.edu	704
admissionsug@medaille.edu	705
oesadmis@musc.edu	706
info@mca.edu	707
admissions@menlo.edu	708
admissions@mercer.edu	709
admissions@mercy.edu	710
admissions@mchs.edu	711
admissions@mercyhurst.edu	712
admissions@meredith.edu	713
admission@merrimack.edu	714
admissions@messiah.edu	715
admissions@methodist.edu	716
admissions@mcny.edu	717
admission.metro@metrostate.edu	718
askmetro@msudenver.edu	719
admission@miamioh.edu	720
admis@msu.edu	721
mtu4u@mtu.edu	722
admissions@macu.edu	723
admissions@macuniversity.edu	724
admissions@mnu.edu	725
admissions@mga.edu	726
admissions@mtsu.edu	727
admissions@middlebury.edu	728
admissions@midlandu.edu	729
admissions@midway.edu	730
admissions@mwsu.edu	731
admissions@miles.edu	732
admissions@millersville.edu	733
admissions@milligan.edu	734
admis@millikin.edu	735
admission@mills.edu	736
admissions@millsaps.edu	737
admissions@miad.edu	738
explore@msoe.edu	739
admissions@minerva.kgi.edu	740
admissions@mcad.edu	741
admissions@mnsu.edu	742
admissions@mnstate.edu	743
askmsu@minotstateu.edu	744
admiss@misericordia.edu	745
admissions@mc.edu	746
admit@msstate.edu	747
admissions@muw.edu	748
admsn@mvsu.edu	749
admissions@mobap.edu	750
admissions@mssu.edu	751
info@missouristate.edu	752
admissions@mst.edu	753
admissions@moval.edu	754
admissions@missouriwestern.edu	755
admissions@mitchell.edu	756
admissions@molloy.edu	757
scenquiries@monash.edu	758
admissions@monmouthcollege.edu	759
admission@monmouth.edu	760
admissions@msubillings.edu	761
admissions@montana.edu	762
admissions@msun.edu	763
enrollment@mtech.edu	764
msuadm@montclair.edu	765
admissions@montreat.edu	766
admissions@montserrat.edu	767
admissions@moravian.edu	768
admissions@moreheadstate.edu	769
admissions@morehouse.edu	770
admissions@morgan.edu	771
admissions@morningside.edu	772
dcalhoun@morris.edu	773
admissions@mtaloy.edu	774
mccnadmissions@mccn.edu	775
admission@mtholyoke.edu	776
mmcadmit@mtmc.edu	777
mmu-admiss@mtmary.edu	778
admission@mtmercy.edu	779
admissions@msmc.edu	780
admissions@msmu.edu	781
admission@msj.edu	782
admissions@msmary.edu	783
admissions@mvnu.edu	784
admissions@muhlenberg.edu	785
admiss@multnomah.edu	786
msu.admissions@murraystate.edu	787
adminfo@muskingum.edu	788
admissions@naropa.edu	789
admissions@nl.edu	790
admision@unav.es	791
info@nbc.edu	792
admissions@naz.edu	793
admissions@nechristian.edu	794
admissions@methodistcollege.edu	795
admissions@nebrwesleyan.edu	796
neumann@neumann.edu	797
admissions@neumont.edu	798
admissions@nsc.edu	799
admissions@ncf.edu	800
admission@nec.edu	801
admission@necmusic.edu	802
admissions@neit.edu	803
admissions@nhia.edu	804
admissions@newhope.edu	805
admissions@njcu.edu	806
admissions@njit.edu	807
admission@nmhu.edu	808
admission@nmt.edu	809
admissions@nmsu.edu	810
admission@newschool.edu	811
bcharbonneau@newschoolarch.edu	812
admissions@nyit.edu	813
admissions@nysid.edu	814
admissions@nyu.edu	815
admission@newberry.edu	816
admissions@newberry.edu	816
admissions@newbury.edu	817
admissions@newmanu.edu	818
admissions@niagara.edu	819
nicholls@nicholls.edu	820
admissions@nichols.edu	821
admissions@nsu.edu	822
admissions@nccu.edu	823
undergrad-admissions@ncsu.edu	824
uadmit@ncat.edu	824
adm@ncwc.edu	825
admissions@noctrl.edu	826
admissions@northcentral.edu	827
ndsu.admission@ndsu.edu	828
admissions@ngu.edu	829
admissions@northpark.edu	830
admrec@neiu.edu	831
nsuinfo@nsuok.edu	832
admissions@nau.edu	833
admissions@niu.edu	834
beanorse@nku.edu	835
admissions@nmu.edu	836
admissions@northern.edu	837
Admissions@NorthernVermont.edu	838
jscadmissions@jsc.edu	839
admit@northland.edu	840
admissions@nwcu.edu	841
admissions@nwmissouri.edu	842
admissions@nnu.edu	843
admissions@northwestu.edu	844
admissions@nwciowa.edu	845
recruit@nwosu.edu	846
applications@nsula.edu	847
ug-admission@northwestern.edu	848
admit@northwood.edu	849
nuadm@norwich.edu	850
admiss@ndnu.edu	851
admiss@ndm.edu	852
admissions@nscad.ca	853
admissions@nova.edu	854
admissions@nyack.edu	855
admissions@oakhills.edu	856
admission@oak.edu	857
visit@oakland.edu	858
admission@oakwood.edu	859
college.admissions@oberlin.edu	860
admission@oxy.edu	861
admission@oglethorpe.edu	862
admissions@ohiodominican.edu	863
admissions-ug@onu.edu	864
admissions@ohio.edu	865
admissions@ovu.edu	866
owuadmit@owu.edu	867
admissions@okbu.edu	868
admissions@oc.edu	869
admissions@okcu.edu	870
uadmissions@okcu.edu	870
opsu@opsu.edu	871
admissions@okstate.edu	872
admissions@okwu.edu	873
admissions@odu.edu	874
admissions@olemiss.edu	875
admissions@olivetcollege.edu	876
admissions@olivet.edu	877
admissions@oru.edu	878
admissions@ocac.edu	879
oit@oit.edu	880
osuadmit@oregonstate.edu	881
admissions@otis.edu	882
admiss@ottawa.edu	883
uotterb@otterbein.edu	884
admissions@obu.edu	885
admission@ollusa.edu	886
appprocessing@pace.edu	887
admission@plu.edu	888
admissions@pnca.edu	889
admissions@pacificoaks.edu	890
admissions@puc.edu	891
admissions@pacificu.edu	892
paier.admission@snet.net	893
admissions@paine.edu	894
admit@pba.edu	895
parkvilleadmissions@park.edu	896
admissions@phc.edu	897
apply@pqc.edu	898
admissions@paulsmiths.edu	899
admissions@peirce.edu	900
admissions@psu.edu	901
admissions@pafa.edu	902
admissions@pct.edu	903
admission-seaver@pepperdine.edu	904
admissions@peru.edu	905
admissions@pfeiffer.edu	906
admissions@philander.edu	907
ugrad@piedmont.edu	908
admissions@piedmontu.edu	909
admissions@pmc.edu	910
psuadmit@pittstate.edu	911
admission@pitzer.edu	912
admissions@plymouth.edu	913
plymouthadmit@plymouth.edu	913
admissions@pointloma.edu	914
enroll@pointpark.edu	915
admissions@point.edu	916
studentservices@polk.edu	917
tcardona@pupr.edu	918
admissions@pomona.edu	919
admisiones@pucpr.edu	920
admissions@pcj.edu	921
admissions@pdx.edu	922
admissions@potomac.edu	923
admissions@pvamu.edu	924
admissions@pratt.edu	925
admissions@presby.edu	926
admissions@prescott.edu	927
admit@presentation.edu	928
uaoffice@princeton.edu	929
collegeadmissions@principia.edu	930
pcadmiss@providence.edu	931
ask@pfw.edu	932
admissions@pnw.edu	933
admission@queensu.ca	934
admissions@queens.edu	935
admissions@questu.ca	936
admissions@quincy.edu	937
admissions@qu.edu	938
admissions@radford.edu	939
admissions@ramapo.edu	940
admissions@randolphcollege.edu	941
admissions@rmc.edu	942
admission@reed.edu	943
admissions@regent.edu	944
admission@regiscollege.edu	945
ruadmissions@regis.edu	946
admissions@reinhardt.edu	947
admissions@rpi.edu	948
leslie.burry@researchcollege.edu	949
admissions@resu.edu	950
admissions@ric.edu	951
admissions@risd.edu	952
dataservices@rhodes.edu	953
adminfo@rhodes.edu	953
admi@rice.edu	954
admissions@rider.edu	955
info@rbs.lv	956
admissions@ringling.edu	957
adminfo@ripon.edu	958
admissions@rivier.edu	959
admissions@roanoke.edu	960
enroll@robertmorris.edu	961
admissions@rmu.edu	962
admissions@roberts.edu	963
admissions@rc.edu	964
admissions@rit.edu	965
admissions@rockford.edu	966
admissions@rockhurst.edu	967
admissions@rocky.edu	968
admissions@rmcad.edu	969
admit@rwu.edu	970
admissions@rsu.edu	971
admission@rollins.edu	972
admission@roosevelt.edu	973
admissions@rose-hulman.edu	974
admissions@rosemont.edu	975
admissions@rowan.edu	976
rmc_admissions@rush.edu	977
admissions@rustcollege.edu	978
admissions@ugadm.rutgers.edu	979
international@ryerson.ca	980
admissions@shms.edu	981
enroll@sacredheart.edu	982
admissions@svsu.edu	983
admission@anselm.edu	984
admissions@st-aug.edu	985
admissions@francis.edu	986
admissions@sjcme.edu	987
admit@sju.edu	988
admissions@saintleo.edu	989
admission@slu.edu	990
admissions@stmartin.edu	991
admission@smwc.edu	992
admission@saintmarys.edu	993
smcadmit@stmarys-ca.edu	994
admission@smumn.edu	995
admission@smcvt.edu	996
admissions@saintpeters.edu	997
admission@stvincent.edu	998
admission@sxu.edu	999
admissions@salem.edu	1000
admissions@salemstate.edu	1001
admissions@salisbury.edu	1002
sruadmis@salve.edu	1003
admissions@shsu.edu	1004
admission@samford.edu	1005
admissions@sdcc.edu	1006
admissions@sdsu.edu	1007
admissions@sfai.edu	1008
admit@sfcm.edu	1009
ugadmit@sfsu.edu	1010
admissions@sjsu.edu	1011
admission@scu.edu	1012
slcadmit@sarahlawrence.edu	1013
admission@scad.edu	1014
admissions@savannahstate.edu	1015
admiss@saic.edu	1016
admissions@sva.edu	1017
admissions@schreiner.edu	1018
admission@scrippscollege.edu	1019
admissions@spu.edu	1020
admissions@seattleu.edu	1021
thehall@shu.edu	1022
admit@setonhill.edu	1023
admiss@sewanee.edu	1024
admissions@shasta.edu	1025
admissions@shawu.edu	1026
to_ssu@shawnee.edu	1027
admit@su.edu	1028
admission@shepherd.edu	1029
admiss@ship.edu	1030
admissions@shorter.edu	1031
admissions@siena.edu	1032
admissions@sienaheights.edu	1033
admissions@sierranevada.edu	1034
admslc@sl.edu	1035
ugadm@simmons.edu	1036
admissionsteam@sfu.ca	1037
admiss@simpson.edu	1038
admissions@simpsonu.edu	1039
admissions@skidmore.edu	1040
asktherock@sru.edu	1041
admission@smith.edu	1042
admission@soka.edu	1043
student.outreach@sonoma.edu	1044
admissions@scsu.edu	1045
admissions@sdsmt.edu	1046
sdsu.admissions@sdstate.edu	1047
admissions@semo.edu	1048
admissions@sebts.edu	1049
admissions@southeastern.edu	1050
admissions@se.edu	1051
admission@seu.edu	1052
admissions@southern.edu	1053
muleriders@saumag.edu	1054
admissions@sciarc.edu	1055
admissions@southernct.edu	1056
leeg1@southernct.edu	1056
admissions@siu.edu	1057
admissions@siue.edu	1058
ugadmission@smu.edu	1059
admissions@snu.edu	1060
admission@snhu.edu	1061
admissions@sou.edu	1062
admit@subr.edu	1063
lgarrett@suno.edu	1064
adminfo@suu.edu	1065
admissions@svc.edu	1066
admissions@svu.edu	1067
admissions@swu.edu	1068
admissions@sbuniv.edu	1069
smsu.admissions@smsu.edu	1070
admissions@suva.edu	1071
admissions@swau.edu	1072
admissions@swcu.edu	1073
scadmit@sckans.edu	1074
admissions@swosu.edu	1075
admission@southwestern.edu	1076
admissions@spalding.edu	1077
admissions@spelman.edu	1078
admissions@arbor.edu	1079
admit@shc.edu	1080
admissions@springfieldcollege.edu	1081
admit@sau.edu	1082
admissions@sa.edu	1083
admissions@sacn.edu	1084
admissions@sbu.edu	1085
admissions@stkate.edu	1086
scsu4u@stcloudstate.edu	1087
seu.admit@stedwards.edu	1088
admissions@sfc.edu	1089
conadmissions@osfhealthcare.org	1090
admissions@sjfc.edu	1091
annapolis.admissions@sjc.edu	1092
santafe.admissions@sjc.edu	1092
admhelp@stjohns.edu	1093
brooklynas@sjcny.edu	1094
admissions@stlawu.edu	1095
admissions@stlchristian.edu	1096
admissions@stlcop.edu	1097
admissions@smcm.edu	1098
uadm@stmarytx.edu	1099
admit@snc.edu	1100
admissions@stolaf.edu	1101
information@spcollege.edu	1102
admissions@stac.edu	1103
signup@stu.edu	1104
international@stu.ca	1104
admissions@stu.ca	1104
admission@stanford.edu	1105
admissions@sfasu.edu	1106
apply@stephens.edu	1107
admission@sterlingcollege.edu	1108
admissions@sterling.edu	1108
admissions@stetson.edu	1109
admissions@stevens.edu	1110
admissions@stevenson.edu	1111
admissions@stillman.edu	1112
admissions@stockton.edu	1113
admission@stonehill.edu	1114
admission@suffolk.edu	1115
admissions@sulross.edu	1116
undergrad@skku.edu	1117
admissions@alfredstate.edu	1118
admit@binghamton.edu	1119
admissions@buffalostate.edu	1120
admissions@cobleskill.edu	1121
admit@brockport.edu	1122
esfinfo@esf.edu	1123
admissions@geneseo.edu	1124
enroll@oldwestbury.edu	1125
admissions@oneonta.edu	1126
admissions@canton.edu	1127
admissions@cortland.edu	1128
enroll@delhi.edu	1129
admissions@esc.edu	1130
admissions@farmingdale.edu	1131
admissions@fredonia.edu	1132
admissions@sunymaritime.edu	1133
admissions@morrisville.edu	1134
admissions@newpaltz.edu	1135
admiss@oswego.edu	1136
admissions@plattsburgh.edu	1137
admissions@sunyit.edu	1138
admissions@potsdam.edu	1139
admissions@purchase.edu	1140
enroll@stonybrook.edu	1141
ugadmissions@albany.edu	1142
ub-admissions@buffalo.edu	1143
suadmiss@susqu.edu	1144
admissions@swarthmore.edu	1145
admissions@sbc.edu	1146
orange@syr.edu	1147
admissions@tabor.edu	1148
admissions@talladega.edu	1149
uadm@tarleton.edu	1150
admissions@taylor.edu	1151
tuadm@temple.edu	1152
admissions@tnstate.edu	1153
admissions@tntech.edu	1154
admissions@tnwesleyan.edu	1155
adms@tamiu.edu	1156
admissions@tamu.edu	1157
admissions@tamuc.edu	1158
admiss@tamucc.edu	1159
admissions@tamuk.edu	1160
admissions@tamut.edu	1161
frogmail@tcu.edu	1162
admissions@texascollege.edu	1163
applicant@tlu.edu	1164
admissions@tlu.edu	1164
admissions@tsu.edu	1165
admissions@txstate.edu	1166
admissions@ttu.edu	1167
admissions@utrgv.edu	1168
admissions@txwes.edu	1169
admissions@twu.edu	1170
admissions@acg.edu	1171
enrolauc@aucegypt.edu	1172
admissions@citadel.edu	1173
admission@collegeofidaho.edu	1174
admissions@collegeofidaho.edu	1174
admissions@tkc.edu	1175
admissions@masters.edu	1176
admissions@ua.edu	1177
uahadmissions@uah.edu	1178
admissions.inquiry@ubc.ca	1179
admiss@umontana.edu	1180
admissions@umwestern.edu	1181
admissions@umo.edu	1182
apply@unm.edu	1183
admissions@utpb.edu	1184
admissions@uarts.edu	1185
admissions@utah.edu	1186
admissions@thiel.edu	1187
admissions@thomasaquinas.edu	1188
admiss@thomas.edu	1189
admissions@tesu.edu	1190
admissions@thomasmore.edu	1191
rgagliano@thomasu.edu	1192
admiss@tiffin.edu	1193
admissions@tfc.edu	1194
admissions@tougaloo.edu	1195
lasadmit@adminm.touro.edu	1196
admissions@towson.edu	1197
admissions@transy.edu	1198
admissions_und@trevecca.edu	1199
admit@trine.edu	1200
admissions@tbc.edu	1201
admissions@trnty.edu	1202
admissions.office@trincoll.edu	1203
admissions@trinitycollege.edu	1204
lori.perez@trinitycollegeqc.edu	1205
admissions@tiu.edu	1206
admissions@trinity.edu	1207
admissions@trinitydc.edu	1208
admit@troy.edu	1209
admissions@truett.edu	1210
admissions@truman.edu	1211
undergraduate.admissions@tufts.edu	1212
undergrad.admission@tulane.edu	1213
admissions@mytu.tuskegee.edu	1214
admissions@union.edu	1215
enrollme@unionky.edu	1215
ucenroll@ucollege.edu	1215
admissions@myunion.edu	1216
info@uu.edu	1217
rr_webmail@usafa.edu	1218
admissions@uscga.edu	1219
admissions@usmma.edu	1220
admissions-info@usma.edu	1221
inquire@usna.edu	1222
admissions@unity.edu	1223
admissions@uaa.edu	1224
prospectivestudents@uc3m.es	1225
kcastillo@sagrado.edu	1226
admissions@uat.edu	1227
admissions@uakron.edu	1228
chooseuab@uab.edu	1229
admissions@alaska.edu	1230
admissions@uaf.edu	1231
admissions@uas.alaska.edu	1232
ian.reade@ualberta.ca	1233
admissions@arizona.edu	1234
uofa@uark.edu	1235
admissions@uafs.edu	1236
admissions@ualr.edu	1237
admissions@uamont.edu	1238
owasoyop@uapb.edu	1239
admissions@ubalt.edu	1240
admit@bridgeport.edu	1241
future.students@ucalgary.ca	1242
admissions@ucmerced.edu	1243
undergraduateadmissions@ucdavis.edu	1244
admissions@uci.edu	1245
admissions@ucr.edu	1246
admissions@sa.ucsb.edu	1247
admissions@ucsc.edu	1248
admissions@uca.edu	1249
admissions@ucf.edu	1250
admit@ucmo.edu	1251
onestop@uco.edu	1252
admissions@ucwv.edu	1253
collegeadmissions@uchicago.edu	1254
admissions@uc.edu	1255
admissions@ucblueash.edu	1256
northamerica@ucd.ie	1257
admissions@colorado.edu	1258
go@uccs.edu	1259
admissions@ucdenver.edu	1260
beahusky@uconn.edu	1261
crusasder@udallas.edu	1262
ugadmis@udallas.edu	1262
admission@udayton.edu	1263
admissions@udel.edu	1264
admission@du.edu	1265
admissions@udmercy.edu	1266
admssns@dbq.edu	1267
admission@evansville.edu	1268
admissions@findlay.edu	1269
webrequests@admissions.ufl.edu	1270
adm-info@uga.edu	1271
admitme@triton.uog.edu	1272
intapps@uoguelph.ca	1273
admission@hartford.edu	1274
manoa.admissions@hawaii.edu	1275
admissions@uhcno.edu	1276
admissions@hku.hk	1277
admissions@uh.edu	1278
admissions@uhcl.edu	1279
uhdadmit@uhd.edu	1280
admissions@uhv.edu	1281
admissions@uidaho.edu	1282
admappl@uidaho.edu	1282
admissions@uic.edu	1283
admissions@uis.edu	1284
admissions@uindy.edu	1285
admissions@uiowa.edu	1286
admissions@uj.edu	1287
admissions@ku.edu	1288
admissions@uky.edu	1289
admission@laverne.edu	1290
admissions@uleth.ca	1291
admissions@louisiana.edu	1292
admissions@ulm.edu	1293
admitme@louisville.edu	1294
admissions@lynchburg.edu	1295
umaineadmissions@maine.edu	1296
enroll@umary.edu	1297
admission@umhb.edu	1298
admit@umw.edu	1299
admissions@umbc.edu	1300
umesadmissions@umes.edu	1301
admissions@umuc.edu	1302
enrollment.info@umb.edu	1303
undergrad.admissions@umb.edu	1303
admissions@umassd.edu	1304
admissions@uml.edu	1305
recruitment@memphis.edu	1306
admission@miami.edu	1307
umd-admissions@umich.edu	1308
admissions@umflint.edu	1309
ji-intadm@sjtu.edu.cn	1310
admissions@umn.edu	1311
askmizzou@missouri.edu	1312
admit@umkc.edu	1313
admissions@umsl.edu	1314
umenrollment@umobile.edu	1315
admissions@montevallo.edu	1316
admission@mountunion.edu	1317
admissionsug@unk.edu	1318
admissions@unl.edu	1319
unoadmissions@unomaha.edu	1320
admissions@unlv.edu	1321
asknevada@unr.edu	1322
admissions@une.edu	1323
admissions@unh.edu	1324
manchester@unh.edu	1324
admissions@newhaven.edu	1325
admission@uno.edu	1326
admissions@una.edu	1327
admissions@unca.edu	1328
admissions@uncp.edu	1329
unchelp@admissions.unc.edu	1330
admissions@uncc.edu	1331
admissions@uncg.edu	1332
admissions@uncsa.edu	1333
admissions@uncw.edu	1334
admissions@und.edu	1335
admissions@unf.edu	1336
admissions-dah@ung.edu	1337
unt.freshman@unt.edu	1338
admissions@unco.edu	1339
admissions@uni.edu	1340
admissions@unwsp.edu	1341
admissions@nd.edu	1342
admissions@ou.edu	1343
uoadmit@uoregon.edu	1344
info@admissions.upenn.edu	1345
wewantyou@upike.edu	1346
oafa@pitt.edu	1347
admissions@up.edu	1348
admissions@uprovidence.edu	1349
admission@pugetsound.edu	1350
admissions@redlands.edu	1351
admission@uri.edu	1352
admission@richmond.edu	1353
admissions@rio.edu	1354
admit@admissions.rochester.edu	1355
admis@sf.edu	1356
admissions@usj.edu	1357
admissions@sandiego.edu	1358
admissions@usfca.edu	1359
admissions@usask.ca	1360
usao-admissions@usao.edu	1361
admit@usciences.edu	1362
admissions@scranton.edu	1363
admissions@usiouxfalls.edu	1364
admiss@southalabama.edu	1365
admit@usca.edu	1366
admissions@uscb.edu	1367
admissions-ugrad@sc.edu	1368
admissions@uscupstate.edu	1369
admissions@usd.edu	1370
admissions@usf.edu	1371
enroll@usi.edu	1372
admissions@usm.edu	1373
admissions@stfrancis.edu	1374
admiss@stmary.edu	1375
admissions@stthom.edu	1376
admissions@stthomas.edu	1377
admissions@ut.edu	1378
utcmocs@utc.edu	1379
admitme@utm.edu	1380
admissions@utk.edu	1381
admissions@uta.edu	1382
interest@utdallas.edu	1383
futureminer@utep.edu 	1384
prospects@utsa.edu	1385
admissions@uttyler.edu	1386
admiss@ucumberlands.edu	1387
udcadmissions@udc.edu	1388
admis@uiwtx.edu	1389
admiss@ozarks.edu	1390
admissions@pacific.edu	1391
admission@usw.edu	1392
admissions@uvi.edu	1393
enroll@utoledo.edu	1394
admissions.help@utoronto.ca	1395
admission@utulsa.edu	1396
admissions@uvm.edu	1397
undergradadmission@virginia.edu	1398
admissions@uvawise.edu	1399
admission@uwest.edu	1400
admissions@uwa.edu	1401
admissions@uwf.edu	1402
admiss@westga.edu	1403
admissions@uwindsor.ca	1404
admissions@uwec.edu	1405
admissions@uwgb.edu	1406
admissions@uwlax.edu	1407
uwmlook@uwm.edu	1408
admissions@uwosh.edu	1409
admissions@uwp.edu	1410
admit@uwplatt.edu	1411
admissions@uwrf.edu	1412
admiss@uwsp.edu	1413
admissions@uwstout.edu	1414
admissions@uwsuper.edu	1415
uwwadmit@uww.edu	1416
admissions@uwyo.edu	1417
ADMISSION@uiu.edu	1418
admissions@urbana.edu	1419
admission@ursinus.edu	1420
admission@ursuline.edu	1421
admit@usu.edu	1422
admissions@uvu.edu	1423
admiss@utica.edu	1424
admissions@valdosta.edu	1425
enrollment.services@vcsu.edu	1426
undergrad.admission@valpo.edu	1427
admissions@vanderbilt.edu	1428
admissions@vandercook.edu	1429
admissions@vanguard.edu	1430
admissions@vassar.edu	1431
admitme@vaughn.edu	1432
admissions@vtc.edu	1433
gotovu@villanova.edu	1434
ugrad@vcu.edu	1435
admissions@vmi.edu	1436
admissions@vt.edu	1437
admiss@vsu.edu	1438
admissions@vuu.edu	1439
admissions@vul.edu	1440
admissions@vwu.edu	1441
admission@viterbo.edu	1442
admissions@voorhees.edu	1443
admissions@wabash.edu	1444
admissions@wagner.edu	1445
admissions@wfu.edu	1446
admissions@waldorf.edu	1447
admiss1@wallawalla.edu	1448
admissions@walsh.edu	1449
admission@warnerpacific.edu	1450
admissions@warnerpacific.edu	1450
admissions@warner.edu	1451
admit@warren-wilson.edu	1452
admissions@wartburg.edu	1453
admissions@washburn.edu	1454
enroll@wau.edu	1455
admissions@wlu.edu	1456
wc_inquiries@washcoll.edu	1457
wc_admissions@washcoll.edu	1457
admission@washjeff.edu	1458
admissions@wsu.edu	1459
admissions@wustl.edu	1460
admissions@watkins.edu	1461
admityou@wbu.edu	1462
admit1@wsc.edu	1463
admissions@wayne.edu	1464
admissions@waynesburg.edu	1465
admissions@webb.edu	1466
admissions@webber.edu	1467
admissions@weber.edu	1468
admit@webster.edu	1469
recruit@welch.edu	1470
admissions@wellesley.edu	1471
admissions@wells.edu	1472
admissions@wit.edu	1473
admissions@wesley.edu	1474
admissions@wesleyancollege.edu	1475
admission@wesleyan.edu	1476
ugadmiss@wcupa.edu	1477
admissions@westliberty.edu	1478
admissions@wtamu.edu	1479
admissions@wvstateu.edu	1480
wvuadmissions@mail.wvu.edu	1481
go2wvu@mail.wvu.edu	1481
admissions@wvup.edu	1482
admissions@wvwc.edu	1483
admiss@wcu.edu	1484
admissions@wcsu.edu	1485
admissions@wiu.edu	1486
admission@wku.edu	1487
admissions-info@wmich.edu	1488
ask-wmu@wmich.edu	1488
cwystepe@wne.edu	1489
admissions@wnmu.edu	1490
worlfgram@wou.edu	1491
admissions@western.edu	1492
discover@western.edu	1492
reg-admissions@uwo.ca	1493
admit@wwu.edu	1494
admissions@westfield.ma.edu	1495
admis@westminster.edu	1496
admissions@westminster-mo.edu	1497
admission@westminstercollege.edu	1498
admissions@westmont.edu	1499
admissions@wheaton.edu	1500
admission@wheatoncollege.edu	1501
admiss@wju.edu	1502
admission@whitman.edu	1503
admission@whittier.edu	1504
admissions@whitworth.edu	1505
admissions@wichita.edu	1506
admissions.office@widener.edu	1507
admission@wilberforce.edu	1508
admissions@wilkes.edu	1509
bearcat@willamette.edu	1510
admissions@wmcarey.edu	1511
admissions@jessup.edu	1512
admission@william.jewell.edu	1513
admissions@wpunj.edu	1514
admissions@peace.edu	1515
admissions@wmpenn.edu	1516
admissions@williamwoods.edu	1517
admissions@wbcoll.edu	1518
admission@williams.edu	1519
admissions@wilmington.edu	1520
infocenter@wilmu.edu	1521
admissions@wilson.edu	1522
admit@wingate.edu	1523
admissions@winona.edu	1524
admissions@wssu.edu	1525
admissions@winthrop.edu	1526
admissions@wlc.edu	1527
admission@wittenberg.edu	1528
admission@wofford.edu	1529
info@woodbury.edu	1530
admissions@wpi.edu	1531
admissions@worcester.edu	1532
admissions@wright.edu	1533
admissions@wyomingcatholiccollege.com	1534
xuadmit@xavier.edu	1535
admissions@xula.edu	1535
apply@xula.edu	1536
admissions@yale-nus.edu.sg	1537
student.questions@yale.edu	1538
yuadmit@yu.edu	1539
admissions@ycp.edu	1540
enroll@york.edu	1540
intlenq@yorku.ca	1541
admissions@yhc.edu	1542
enroll@ysu.edu	1543
\.


--
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."questions" ("id", "question", "category") FROM stdin;
1	Other information	other
2	Does your school allow Immigration and Customs Enforcement (ICE) officers onto campus without a warrant?	life
3	If need-based aid is not available, is there a feasible path undocumented students can take to pay for their education with stackable merit scholarships, loans and/or grants from your school?	financial
4	Other student life information	life
5	Does your school provide merit aid specially for undocumented students?	admission
6	How often does your office receive applications from undocumented students?	life
7	Other financial aid information	financial
9	What would be the requirements for such scholarships and what would a student's chances of getting them?	financial
10	Are you need-blind for undocumented students?	admission
11	Are undocumented students considered international or domestic?	admission
12	Gives aid?	other
13	Are undocumented students eligible for need-based aid?	financial
14	Does the campus police enforce immigration law?	life
15	Are there organized groups or clubs comprised of or advocating for undocumented students in your school?	life
16	Does your school provide distance-learning options for deported students to complete their degrees?	life
17	Does your school share student immigration status with ICE?	life
18	What other piece of advice would you give an undocumented student hoping for admission at your school?	admission
19	Other admissions information	admission
20	Does your school provide confidential legal support to students with immigration law questions and issues?	life
21	Special contact	other
22	How would their status affect their application?	admission
23	Are there any restrictions on merit aid for undocumented students at your school?	admission
24	Is there a special contact point for undocumented students?	admission
8	Undocumented Student Information Page	other
\.


--
-- Data for Name: responses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."responses" ("id", "collegeid", "response", "questionid") FROM stdin;
19	25	All admissions decisions regarding undocumented applicants are made on a case-by-case basis. Any interested student must first apply at www.ab.edu and check "international".	19
20	25	false	12
32	37	Our policies are very clearly laid out on this URL:\r\n\r\nhttps://www.american.edu/ocl/cdi/undocumented-students.cfm	1
33	37	false	12
35	39	AUBG doesn’t make a distinction between international and domestic students at all for the admission process (aside from calculating the GPA).	11
36	39	AUBG is need blind for all students regarding Admissions.	10
37	39	None. However we do have donor scholarships for students with certain citizenships (here)(https://www.aubg.edu/admissions/scholarships).	23
38	39	Not specifically for undocumented students.	5
39	39	Students applying from North America (regardless of status or citizenship) work with me (sharvey@aubg.edu).	24
41	39	Yes.	13
52	39	sharvey@aubg.edu	21
40	39	Reach out to your Admission Counselor to schedule an in-depth call with the team (including our Visa Coordinator).	18
42	39	Need-based aid would be available and is stackable with merit scholarships.	3
43	39	Scholarships are awarded on a competitive basis at AUBG. We cannot determine the requirements or chances of being awarded since we cannot predict our applicant pool for the next cycle. However it is strongly recommended for students to complete their application by March 1st so they can be considered for priority scholarships.	9
44	39	We have our own Application for Financial Aid form (here)(https://www.aubg.edu/apply/aid).	7
45	39	No\r\n\r\nHow often does your office receive applications from undocumented students\r\nTo my knowledge, we haven’t receive any applications from undocumented students (this is a status that AUBG doesn’t need to recognize since we are in Bulgaria).	15
46	39	ICE doesn’t operate in Bulgaria.	2
47	39	AUBG students apply for a Bulgarian Student Visa with the help of our Visa Coordinator.	14
48	39	ICE doesn’t operate in Bulgaria, so no.	17
62	42	Yes	13
63	42	CSS Profile	7
49	39	For Fall 2021, students who cannot travel to Bulgaria due to covid related issues or visa issues may complete the semester online.	16
50	39	To my knowledge, AUBG cannot provide legal support to students.	20
51	39	I can answer some of your questions, but many do not apply to AUBG since we are located in Bulgaria	1
53	39	false	12
56	42	Domestic.	11
57	42	Yes.	10
58	42	Amherst College does not offer merit aid. all aid is need-based. We provide aid to meet 100% of a student's demonstrated financial need with grants and student employment. student loans are not part of our institutional financial aid packages.	23
59	42	Amherst College does not offer merit aid at all, to anyone.	5
60	42	A student's undocumented status would not have a detrimental effect on our admission decision. Because Amherst practices holistic evaluation, we encourage applicants to share with us any information that they believe will provide useful context for our understanding of them as students and people.	22
133	87	We are need-blind for all applicants.	10
134	87	There are no restrictions on merit aid.	23
137	87	Yes, April Shandor. She can be reached at ashandor@simons-rock.edu and 413-528-7385.	19
149	87	false	12
61	42	There is no special contact for undocumented students in the Amherst Admission Office. Because Amherst College is committed to increased access to higher education as part of our institutional mission, all Admission deans are attuned to the needs of undocumented students.	24
64	42	Yes	15
65	42	Regularly, every year.	6
66	42	No	14
67	42	No, not voluntarily.	17
68	42	We have no established policy on this issue.	16
69	42	Yes	20
70	42	I encourage you to review our College website, including especially the following pages that are specifically related to undocumented and DACA students:\r\nAdmission: https://www.amherst.edu/admission/apply/firstyear/undoc\r\nFinancial Aid: https://www.amherst.edu/offices/financialaid/firstyear_transfer/canadian_intl\r\nResources: https://www.amherst.edu/offices/immigration-services/daca-and-undocumented\r\nStatements: https://www.amherst.edu/offices/immigration-services/immigration/statements-from-president-martin	1
71	42	true	12
88	59	Undocumented students can apply as domestic students.	11
89	59	We are need-blind for undocumented students. In addition to merit-based scholarships, you may be eligible for financial aid through the Dream-Act.	10
90	59	Merit-Aid is based on your portfolio and academic record.	23
91	59	no	5
92	59	A student's status will have no bearing on an admissions decision.	22
93	59	no	24
94	59	We recommend scheduling an appointment to speak with a counselor for specific advice on your portfolio.	18
95	59	We will reach out to you if we have questions about your status.	19
96	59	Yes, through the FAFSA if you are Dream Act eligible.	13
97	59	Although we do our best to provide aid for students, we are unable to match all students' need.	3
98	59	All admitted students will be considered for financial aid if they choose to apply. The most important component of our consideration is your portfolio.	7
99	59	Our DEI office and Financial Aid Offices have staff focused on undocumented student needs.	15
100	59	We do not have campus police	14
101	59	We do not share student statuses with ICE	17
293	169	false	12
102	59	ArtCenter is offering full-time online classes at this time, but during most times of the year, we only offer in-person classes.	16
103	59	No	4
104	59	true	12
130	85	you can learn more about Bard's policies for undocumented applicants at our website here: (https://www.bard.edu/admission/daca-undocumented), and you can learn more about the Bard Sanctuary Fund here: (https://cce.bard.edu/community/sanctuary-fund).	19
131	85	false	12
243	147	false	12
135	87	We do not have specific merit scholarships for undocumented students. All of our merit scholarships are open to all applicants. Applicants are considered for any merit aid they are eligible for. Most merit aid is based on the strength of the admission application but some merit aid also takes other factors into consideration, like leadership, location, etc.	5
136	87	If you do not have a Social Security Number (SSN), you do not need to enter anything in the Social Security Number field in the admission application (it is not required). This field refers to U.S. citizens only.\r\nEquity and inclusion are central to Simon’s Rock’s mission and values, and we welcome all students, regardless of citizenship status or national origin to apply to the College. This includes students who are undocumented, and students who hold DACA (Deferred Action for Childhood Arrivals) status.	18
138	87	Yes, they are eligible for need-based aid.	13
139	87	Not applicable, as need-based aid is available.	9
140	87	Not applicable, as need-based aid is available.	7
389	249	false	12
397	255	false	12
141	87	We are a very small college (400 students) so we receive fewer applications in general than a larger school. The small size means we receive fewer applications from all groups. We don't receive many applications from undocumented students. I would say at most a couple or a few per year.	6
142	87	Bard College at Simon’s Rock will not release information about students and employees regarding citizenship or immigration status unless required by law.	2
143	87	Bard College at Simon’s Rock will not release information about students and employees regarding citizenship or immigration status unless required by law.	14
144	87	Bard College at Simon’s Rock will not release information about students and employees regarding citizenship or immigration status unless required by law.	17
145	87	We currently have some students studying remotely due to COVID but expect all of our classes and students will be in person next year.	16
436	272	false	12
146	87	We provide free legal consultation to students who are concerned about whether they can visit their countries of origin or who are concerned about their status when traveling internationally.	20
147	87	Equity and inclusion are central to Simon’s Rock’s mission and values, and we welcome all students, regardless of citizenship status or national origin to apply to the College. This includes students who are undocumented, and students who hold DACA (Deferred Action for Childhood Arrivals) status.	1
148	87	April Shandor ashandor@simons-rock.edu 413-528-7385	21
154	92	https://www.bates.edu/admission/undocumented-daca-applicants/	8
155	92	false	12
177	114	The Director of diversity, equity and inclusion	21
178	114	false	12
490	302	Yes, because then we can help you with the need-based aid process and connect you with various support services on campus.	19
501	302	false	12
182	118	Biola considers all undocumented students as domestic students and ask that they follow the admissions guidelines for First-time College Students: https://www.biola.edu/admissions/undergrad/first-time or Transfer Students: https://www.biola.edu/admissions/undergrad/transfer. Their application is reviewed under the same standard as any other domestic student.	19
183	118	As for Financial Aid, please refer to #2 in Steps: https://www.biola.edu/financial-aid/process/apply for forms that undocumented students should fill out to receive aid.	7
184	118	false	12
198	132	They are considered to be undocumented students who attend high school in the U.S.	11
199	132	Technically, BC is need-blind for all applicants. However, we attempt to reach out to undocumented applicants to share policies regarding financial aid. (Further details below).	10
200	132	No.	22
201	132	No.	24
202	132	Please do your research regarding the financial aid policies, if that will be a consideration for students.	19
203	132	Generally, BC requires all applicants for need-based aid to be eligible for federal funding. In order to receive BC institutional aid, a student must also be eligible to receive federal need-based aid. At this time, federal funding is available to U.S. citizens, Permanent Residents, and students with asylee or refugee status.	13
204	132	BC is now a partner with QuestBridge, and we will consider undocumented students who are applying through this program.	3
205	132	false	12
211	138	Brandeis welcomes all applicants, regardless of citizenship status, to apply for admission.\r\nJust like our other applicants, undocumented/out-of-status students, with or without Deferred Action for Childhood Arrival (DACA) status, Temporary Protected Status (TPS) students, and those with Asylum Status are considered for merit-based scholarships automatically. There is no additional application process or form in order to be considered for merit aid.\r\nThe other application requirements remain consistent with our other first year students, and you can find more information about first-year applicants and undocumented applicants at https://bit.ly/2SeWIhd. It is also important to mention that out-of-status/undocumented students are not considered international, and our application process for them will reflect that.	19
212	138	In order to be considered for need-based aid, they need only submit a CSS profile. Brandeis is a need-aware school for all applicants.	7
213	138	true	12
216	141	Domestic	11
217	141	We are need blind for everyone	10
218	141	All institutional aid not associated with the FAFSA is available.	23
219	141	No, but they have access to all merit and half tuition scholarships like any other student.	5
658	409	false	12
220	141	We have counselors who cover geographic regions based on where the student lives.	24
221	141	Apply early and visit often!	18
222	141	Not need based from FAFSA- but we do offer institutional aid	13
223	141	They will have some out of pocket expenses but we can help them with up to a large portion.	3
224	141	GPA and test or test optional score eligibility along with interviewing at Scholarship Day.	9
225	141	Application for admission and a meeting with their Admissions Counselor.	7
687	421	true	12
226	141	None specifically at the moment.	15
227	141	Often	6
228	141	We abide by all federal regulations	2
229	141	Campus Security maintains safety on campus as their primary function.	14
230	141	For students who hold I-20s and Student Visas only, to my knowledge.	17
231	141	We do not.	16
232	141	Confidential counseling is available to all students but legal support is typically up to the student.	20
233	141	The best way for your students to learn more is to visit our campus! During the visit a member of the Admissions team will sit down and talk more in depth about their personal situation and questions.	1
234	141	false	12
240	147	We unfortunately cannot give specific council about how to fill out the application, but we recommend that you speak with our international services office so they can go over some important information and requirements with you. You may be able to be admitted to BYU-Idaho. Here is the information for our international services office\r\nhttps://www.byui.edu/international-services.\r\nHowever, international services cannot go over a lot of information with you unless you are admitted as a student already. Our admissions office recommends that you just fill out the application as accurately as possible if you choose to apply.	19
241	147	Undocumented students are not eligible for federal financial aid, employment, or some internships.\r\nFor your financial aid questions, international services can give you more information about what applications you can fill out if you are admitted	7
742	447	false	12
242	147	BYU-Idaho enrollment will not prevent deportation if you are apprehended	4
246	150	We are need blind in the application review for all students.	10
247	150	All applicants to Bryant University are eligible for the same level of merit scholarships.	23
248	150	There is not a specific merit award designated for undocumented students. Undocumented students are eligible for the same scholarship as all other applications.	5
249	150	A undocumented status will have no impact on the review of the application. We review international, domestic and undocumented students using the same evaluation techniques.	22
250	150	I would give you the same advice I would give to any applicant to Bryant. The admission process is designed to evaluate your ability and do you have the skill set to be successful in a Bryant curriculum. We are focused on your past academic performance but also are evaluating all pieces of your application. Throughout the application I would try to give insight into how you past experiences have prepared you, a look in to your personality, what your are passionate about and why you are interested in studying at Bryant.	18
251	150	To my understanding there is not a specific person on campus but between the admission office, financial aid office and student support offices there a people on campus that can help support undocumented students.	19
252	150	Undocumented students are not eligible for need-based aid.	13
253	150	All applicants to Bryant are automatically considered for merit based scholarship upon completion of their application. Not all students receive scholarship but it is fair to say a healthy majority will receive some form of a merit based award.	9
805	497	No	2
254	150	This is really dependent on you individual circumstances and the level of scholarship you receive if you are to receive scholarship. Finances do become more challenging for many undocumented students because of the lack of access to need-based aid. For some students there is a feasible path to study at Bryant. The best way to judge this is to go through the admission process to find out the options for you and then make a decision that works best for you and your personal circumstances.	7
255	150	false	12
273	168	They all vary on what each scholarship needs, you will need to do your research.	9
274	168	The Dream Center – Ms. Teresita Curiel	21
275	168	true	12
276	169	As a public institution in California, we do have students complete either the FAFSA or CA Dream Act in order to package students’ financial aid based on financial need	10
277	169	Besides scholarships federal aid and state aid are not based on merit but based on financial need	23
278	169	CSUDH has a Toro Dreamers Success Center and they do have a yearly scholarship specifically for our undocumented students.	5
279	169	Undocumented status does not affect a students’ application on tuition purposes	22
875	545	false	12
280	169	Since status does not actually affect admissions, my only advice for an undocumented student is to seek out all the resources that is available on campus.	18
281	169	Yes, we have our Ana who is the Director for that program is a wonderful contact	19
282	169	Undocumented students in CA should apply for the California Dream Act (https://dream.csac.ca.gov/) They follow the same timeline as FAFSA. Our undocumented students may qualify for certain grants through the CA Dream Act. Also, look for undocumented specific scholarships.	13
283	169	See answer above. Scholarships are typically personal funding so their requirements are going to vary drastically from one to another.	9
284	169	Need based aid is CA Dream Act, all other aids like scholarships will be more based on merit, but with so many different scholarship opportunities out there I cannot speak for them all and a student would need to sift through the ones they feel most confident in obtaining.	7
285	169	Every year we receive applications from undocumented students.	6
286	169	By federal law, any ICE agent is allowed on public spaces, however, the Office of the Chancellor has made a commitment not to break FERPA and share information with ICE agents who do not have a warrant.	2
287	169	No, by California law, no police officer has the authority to act as an immigration agent.	14
288	169	No, this would be a violation of FERPA. However, we cannot stop a detention if the officers have a federal warrant.	17
289	169	While we have online classes, and more now due to Covid restrictions, I cannot say that once we return back to in person classes if every major will offer an entirely online option. We do have majors that are entirely online, however, not all programs are online.	16
290	169	Yes, CSUDH students, faculty, staff and their immediate family members have access to free immigration legal services. They can make an appointment here: https://www.csudh.edu/dream-center/legal-services/	20
291	169	Yes, not only is there the TDSC, but we also have a organization on campus called ENF: Immigrant Student Alliance (Espíritu de Nuestro Futuro: Immigrant Student Alliance). They are a student organization that advocates, protects and supports the rights of undocumented students’ access to higher education. Their email is enf.csudh@gmail.com	4
292	169	Toro Dreamers Success center. tdsc@csudh.edu	21
309	185	Domestic.	11
310	185	The status does not matter to us. We do not ask the status of the student.	10
311	185	We do not ask for their status.	22
312	185	No. For information about the degree program, call (800) 829-4723	24
313	185	We are nonprofit. our tuition is affordable. Learn more here: https://www.cambridgecollege.edu/about-cambridge-college	19
314	185	No, they are not eligible for aid.	13
315	185	None. They are responsible for payment.	3
316	185	No	15
317	185	No	14
318	185	No	17
319	185	No	4
320	185	false	12
717	445	A student is welcome to share information to the level they are comfortable. Current status is not required during the admissions process. If a student decides to move forward, connected information may be needed for aid eligibility purposes.	19
718	445	DACA students are eligible for all aid including need-based internal aid.	13
960	607	false	12
719	445	Need-based aid is available but students are additionally encouraged to apply to external scholarships as well.	3
720	445	The percentage of getting a specific scholarship, as well as, the amounts received varies by scholarship. For many of our internal scholarships, the student does not need to apply each year as they are awarded for all four years.	9
1072	700	Admissions Counselor	21
721	445	Undocumented students in Oregon would be encouraged to complete the ORSAA.	7
739	447	Until the pandemic majority of classes were on campus. Going forward there will be a mix of classes available.	16
328	193	We consider applications from all students, regardless of citizenship. This includes students living in the United States who are not U.S. citizens or legal permanent residents. We are able to fully support undocumented students with DACA status: https://www.uscis.gov/humanitarian/consideration-deferred-action-childhood-arrivals-daca. These students are not considered among our international applicants.\r\nBecause we have limited financial resources, we consider undocumented students without DACA status with international applicants who apply for financial aid. These undocumented students are eligible for Carleton-based grants and loans.\r\nApplying for Admission.\r\nUndocumented students should follow the same admissions application procedures: http://www.carleton.edu/admissions/apply/steps/ as U.S. citizens and U.S. permanent residents.	19
1109	716	From institutional funds, yes.	13
329	193	Applying for Financial Aid\r\nUndocumented students who need financial assistance must complete just one frm:\r\nCollege Scholarship Service (CSS) Financial Aid PROFILE: https://cssprofile.collegeboard.org/.\r\nAwards for undocumented students come in the form of grants, scholarships, student loan, and a campus employment opportunity. Financial aid is applied to academic-year expenses and generally is not available for travel or summer expenses. Scholarship amounts vary and are based on the need of the individual student. It is important to note that if we cannot meet your demonstrated financial need, we will not offer you admission.	7
330	193	https://www.carleton.edu/dean-of-students/student-support/daca-support/\r\n\r\nDACA FAQ: https://www.carleton.edu/dean-of-students/student-support/daca-support/daca-faq/	4
331	193	false	12
358	220	https://www.chapman.edu/admission/undergraduate/how-to-apply/undocumented-students.aspx	8
359	220	false	12
722	445	We have a number of multicultural organizations and clubs but currently there is not one specific group comprised for undocumented students.\r\nhttps://www.georgefox.edu/offices/intercultural/multicultural-student-development/organizations.html\r\nhttps://www.georgefox.edu/offices/student-life/student-involvement/clubs/index.html	15
1056	700	No, merit aid is looked at the same for all students.	5
388	249	As a public university in South Carolina, Coastal Carolina University must abide by state laws when considering applicants for admission:\r\n\r\nSECTION 59-101-430. Unlawful aliens. eligibility to attend public institution of higher learning. development of process for verifying lawful presence. eligibility for public benefits on basis of residence.\r\n\r\n(A) An alien unlawfully present in the United States is not eligible to attend a public institution of higher learning in this State, as defined in Section 59-103-5. The trustees of a public institution of higher learning in this State shall develop and institute a process by which lawful presence in the United States is verified. In doing so, institution personnel shall not attempt to independently verify the immigration status of any alien, but shall verify any alien's immigration status with the federal government pursuant to 8 USC Section 1373(c).\r\n\r\n(B) An alien unlawfully present in the United States is not eligible on the basis of residence for a public higher education benefit including, but not limited to, scholarships, financial aid, grants, or resident tuition.\r\n\r\nHISTORY: 2008 Act No. 280, Section 17, eff June 4, 2008.\r\n\r\nThis excerpt is from South Carolina’s code of laws. A complete, unannotated Title 59 – Education resource can be accessed here: https://www.scstatehouse.gov/code/t59c101.php	1
723	445	Our institution has an online learning platform that is designed to host a student's first year online with the three remaining years on-campus through George Fox Digital.\r\nhttps://www.georgefox.edu/college-admissions/academics/online/index.html	16
724	445	true	12
395	255	Because of the nature of our financial aid award packages, undocumented students are considered international students in the application process. Colgate is need-aware for all applicants but meets 100% of demonstrated financial need, which is based on the CSS Profile. This means that there are some students who are receiving full financial aid packages on our campus. Colgate does not offer any academic merit aid or scholarships.	7
396	255	It is up to each student whether they feel comfortable sharing that they are an undocumented student. Colgate does not publish how many undocumented students apply or how many enroll due to protect our students. Undocumented students can reach out to our Office of International Student Services so they can learn more about how Colgate supports their individual needs. They can be contacted at 315-228-6131 or oiss@colgate.edu.	1
398	256	At this time, College of Charleston is unable to enroll or accept applications from undocumented students due to our status as a South Carolina public university: https://admissions.cofc.edu/enroll/lawful-presence/index.php	19
399	256	false	12
403	260	Domestic	11
404	260	We are not	10
405	260	No restrictions	23
406	260	We do not for a majority of these cases.	5
407	260	No specific counselor.	24
408	260	Student is treated like everyone else. They just need to do their best!	18
409	260	Jose Peralta Dream Act for NY residents	13
410	260	https://ww2.hunter.cuny.edu/students/student-life/clubs/	15
411	260	Every year	6
412	260	https://ww2.hunter.cuny.edu/students/student-life/emergency-support-and-resources/emergency-funding/	20
413	260	false	12
425	272	Undocumented students are considered domestic students, not international, if they will graduate from a US secondary (high school) institution.	11
426	272	As with our general applicant pool, we are not need-blind for undocumented students.	10
427	272	The college will consider merit aid as part of our wholistic review process, as we do for ALL applicants to CC.	23
428	272	Financial Aid to fully meet 100% of demonstrated need for undocumented students are pulled from special funds, which include grants and merit aid special for undocumented students.	5
429	272	Citizenship status would have no bearing on their application/candidacy to Colorado College.	22
430	272	Apply with confidence to Colorado College, and now we are affirmative for undocumented students! We are committed to serving all students in the application process, regardless of citizenship status.	18
431	272	We want students to feel comfortable disclosing their status to us, so that we can provide the necessary resources to apply for financial aid, skip any unnecessary steps in the financial aid process and admission process.	19
1448	895	false	12
432	272	Please contact the Office of Financial Aid for any additional financial related questions:\r\n\r\nPhone: (719) 389-6651\r\nToll-free: (800) 260-6458\r\nEmail:financialaid@coloradocollege.edu	7
433	272	Often. Each year we received dozens of applications from undocumented students to Colorado College.	6
434	272	No.\r\n\r\nThere are multiple student life offices across campus that have resources for undocumented and DACA students:\r\n-Career Center: https://www.coloradocollege.edu/offices/careercenter/begin-your-search/resources-for-undocumented-and-daca-students.html\r\n\r\n-The Butler Center: https://www.coloradocollege.edu/offices/butlercenter/education-resources/index.html\r\n\r\nThe Global Education and Field Study (https://www.coloradocollege.edu/offices/globalandfieldstudy/international-students/index.html) office supports international students (immigration law questions, campus support and resources, etc.). You can contact their office directly at: isss@coloradocollege.edu	2
435	272	Pedro Ramirez, Associated Director of Outreach & Access | pramirez@coloradocollege.edu | 719-389-6944	21
439	275	For students living in the US, domestic.	11
440	275	No.	10
441	275	No.	23
442	275	All of our merit aid is open to our undocumented domestic students.	5
443	275	It does not affect their admissions decision.	22
444	275	Be in touch with our office to answer your questions during every step of the way.	18
445	275	In their application. It is an option in common app.	19
446	275	Yes.	13
447	275	Use the one unique to the state of Colorado, the CASFA.	7
1486	914	true	12
448	275	Yes, UndocUnited is our student clubb.	15
449	275	No.	2
450	275	No.	14
451	275	No.	17
452	275	Potentially.	16
453	275	Yes.	20
454	275	Every year.	4
455	275	Priscilla Gardea. Priscilla.Gardea@colostate.edu	21
456	275	false	12
483	302	Domestic	11
1568	968	false	12
484	302	We are need-blind all applications.	10
485	302	Merit scholarships are solely based on merit, nothing else.	23
486	302	There are no scholarships specific to undocumented students. There are additional scholarships available for special programs. To be eligible, you need to complete your application by December 1.	5
487	302	Citizenship status plays no factor in the admissions process.	22
488	302	Nope! You'll work with your admissions counselor for your high school.	24
642	401	https://www.suny.edu/attend/get-started/undocumented/	8
643	401	false	12
489	302	Do not stress about your status in the admissions process. When we review your application, we want to see that you'll be a good fit on our campus and a successful student.	18
491	302	Yes and we will help you with this process.	13
1611	990	false	12
492	302	You can stack scholarships with need-based aid.	3
493	302	Scholarships are based on merit: grades, extra-curricular and leadership activities, any test scores you decide to submit, etc. Most students qualify for some level of scholarship.	9
494	302	We have our own version of the FAFSA that we will have you complete for need-based aid.	7
495	302	We do have a committee of staff and faculty who discuss needs of undocumented students, to make sure they are supported on campus. We have various departments that advocate for and offer support services for undocumented students.	15
496	302	We get many applications every year from undocumented students.	6
1529	951	No effect	22
497	302	No, we would not.	2
498	302	Nope, our campus safety is a security team, not the police.	14
1744	1058	false	12
499	302	We only share the information that we legally have to, such as student visa information.	17
500	302	I'm not sure we've run into this in the past, but we may be able to support a student who needs to be virtual for a short time.	16
518	319	As for admissions. Undocumented students will follow our regular university admission requirements. You can find those requirements here: https://dsu.edu/admissions/undergraduate/how-to-apply/undergraduate-admissions-requirements.html. Their status does not affect admission decisions.	19
519	319	As for financial aid, undocumented students do not qualify for aid at DSU as our financial aid office primarily offers state and federal aid options. Because of that, they will not qualify as they are not US citizens. They may qualify for scholarships if they meet the merit based qualifications.	7
520	319	Our clubs at DSU are student developed and ran, and we currently do not have any clubs based on status. I am currently unaware of our institution having to provide information about immigration.	4
521	319	false	12
525	323	Regarding Admissions- Undocumented students are able to apply and take classes at Dalton State College. We do not deny students based on their residency. Our application has a section where you can claim residency. If a student does not have legal residency, they can simply not claim residency which will eliminate the need to submit any lawful presence documents. The student will just need to submit transcripts and an immunization record. Once the student is accepted, they can freely take classes.	19
526	323	Regarding Financial Aid- Unfortunately, undocumented students are not eligible for any federal funding as you need a SSN number to apply for FAFSA. FAFSA is what allows all schools in the country to verify a student's financial aid eligibility. Each school may have independent help in regards to offering students additional aid that does not fall under federal funding. At Dalton State, we have the Dalton State Foundation Scholarship. These are scholarships that all Dalton State students can apply for regardless of residency. The scholarships within the foundation have various requirements based on different things like GPA, major, and demographical information. Undocumented students do have to pay the out-of-state tuition rate as there is no way to verify residency for in-state tuition. There are some private loan lenders that allow students under the DACA status to apply for loans with a US resident/Citizen Co-signer such as SoFi. https://www.sofi.com/private-student-loans/	7
527	323	Regarding student life-There are no requirements for residency to be involved in any of our student life functions. All our students are welcomed and encouraged to join organizations and be a part of all our campus events. Our campus police are exceptionally friendly and never will legal residency be asked of students from our public safety department. At Dalton State, we are Georgia's first and only HSI institution. This stands for Hispanic Serving Institution. Over 25% of our student population identifies as Hispanic.	4
528	323	I highly recommend contacting our Dean of Students, Dr. Jami Hall, for further questions regarding our policies that may affect undocumented students. Her email is jhall@daltonstate.edu	21
529	323	false	12
726	447	Undocumented students are considered domestic students.	11
727	447	We still require students to submit CSS profile, as we are need-aware intuitions.	10
1841	1142	false	12
530	324	Undocumented (https://admissions.dartmouth.edu/glossary-term/undocumented-students) and DACA students receive Dartmouth’s need-based financial aid (https://admissions.dartmouth.edu/glossary-term/need-based-financial-aid) in the same way that U.S. citizens or permanent residents do. We will meet 100% of your demonstrated need (https://admissions.dartmouth.edu/glossary-term/demonstrated-financial-need), using Dartmouth's financial aid.\r\nPlease visit our website, by clicking here (https://admissions.dartmouth.edu/afford/apply-financial-aid#filter-1571), for more information regarding how to apply for aid as an undocumented applicant.	13
728	447	All students can receive merit aid.	23
1057	700	It would not affect their application.	22
531	324	Financial Aid funds may include need-based financial aid (https://admissions.dartmouth.edu/glossary-term/need-based-financial-aid), campus employment, and if appropriate, a loan.\r\n\r\nYou will find many answers to your questions right on our website. A few of our pages you may find particularly helpful are the following:\r\nUndocumented students: https://admissions.dartmouth.edu/glossary-term/undocumented-students\r\nApply for financial aid: https://admissions.dartmouth.edu/afford/apply-financial-aid#filter-1571\r\nTypes of Aid: https://admissions.dartmouth.edu/afford/types-financial-aid\r\nHow Aid Works: https://admissions.dartmouth.edu/afford/how-aid-works	3
532	324	Undocumented students should complete and submit the CSS Profile and IDOC. Because federal funds (https://admissions.dartmouth.edu/glossary-term/federal-financial-aid) are not available to undocumented students, you will not fill out the FAFSA. More information can be found here (https://admissions.dartmouth.edu/afford/apply-financial-aid#filter-1571).	7
533	324	Please visit our Undocumented Students page: https://admissions.dartmouth.edu/glossary-term/undocumented-students.\r\n\r\nWe do not offer merit aid we only offer need-based aid, which isn't impacted by status. We do not have a point person for undocumented students, but any admissions officer should be able to answer your questions. The choice to reveal your status is completely yours. CoFIRED (dartmouth.cofired@dartmouth.edu) is a student organization that advocates for undocumented students and more humane immigration policies. They're a great resource for you as you begin to ask those more specific questions about student life as an undocumented student.	1
534	324	false	12
543	333	Undocumented students are considered international in our admission/financial aid process	11
544	333	We are need-aware when reviewing international applicants, but if admitted, we meet full demonstrated need	10
1933	1183	false	12
545	333	No, there are no restrictions	23
546	333	All of our applicants are eligible for merit aid, but we don't have merit programs specifically for undocumented students	5
547	333	It would not change how we review the application.	22
548	333	I would suggest all interested applicants engage with our office by attending events, either in person or virtual, and to complete an admission interview (virtual is available).	18
549	333	Yes, I would encourage disclosure of undocumented status on the application, or in a separate email. We keep all applicant information private.	19
550	333	Yes	13
729	447	We do not offer any special merit aid for undocumented students.	5
1058	700	We do it based off of where their school is located just like US citizens, and this determines who their Admissions Counselor would be.	24
551	333	In addition to need-based aid, we also offer scholarships and work-study to undocumented students, and we meet the full demonstrated need of every student we admit. Unfortunately we do not offer institutional loans to non-US citizens.	3
552	333	We have our own unique form, which is the Denison COF: https://connect.denison.edu/checklist/cof.pdf	7
553	333	Yes there are groups that advocate for undocumented students and immigrants generally speaking. You can see a recent example here: https://denisonian.com/2021/03/features/denison-students-introduce-new-organization-immigrants-without-borders/	15
2060	1258	false	12
554	333	We receive applications for undocumented students every admission cycle.	6
555	333	No	2
556	333	No	14
557	333	No	17
558	333	No, unfortunately we do not offer distance learning, all of our instruction is on campus. Keep in mind we're a small, residential campus. We're just not set up to support remote learning (outside of the pandemic, that is).	16
559	333	Yes, we have services here that students can use, including access to immigration attorneys	20
560	333	false	12
651	409	- Domestic and we bill them as "in-state" students.	11
652	409	- Since undocumented students cannot file a FAFSA or receive institutional aid, we offer foundational aid to this population.	10
653	409	- See question above.	23
1108	716	Makes no difference in the admissions process	19
730	447	It would depend on what the student is comfortable with. If they want to put it on their application, they can. If they rather email or call, they can do that as well. We truly want to make sure the student is comfortable in letting us know.	19
731	447	No. Need-based aid is given out based on the FAFSA.	13
732	447	Students can bring in outside scholarships and loans to cover the cost.	3
2199	1322	false	12
566	339	Given recent reports and concerns related to immigration around the country, the Office of Admissions wanted share our concern and support to students affected by recent increased Immigration and Customs Enforcement activity nationwide. Regardless of immigration status, we want all applicants to know that you are welcome here. You and your family are welcome to become an integral part of the DigiPen Dragon community.\r\n\r\nGenerally, DACA and other undocumented students are not eligible for federal, state, or institutional need-based financial aid due to eligibility criteria that requires either U.S. citizenship or other eligible noncitizen status (e.g., permanent residents of the U.S.) and/or the submission of the Free Application for Federal Student Aid (FAFSA). DACA students are not eligible to complete the FAFSA due to these federal regulations.\r\n\r\nDue to the complexity and uncertainty (e.g., potential changes in admission criteria) caused by the global pandemic, you are strongly encouraged to apply to DigiPen and send required documents to us first. Once you have decided to apply to DigiPen, we can discuss further via Zoom, phone, or in person. As a reminder, you can submit your online application via https://management.digipen.edu/srs-app/applicationmenu.aspx.	1
567	339	false	12
569	341	Domestic. Undocumented students do not work with DSU International Student Services to apply.	11
570	341	It ensures that they get the correct application checklist (same as for our domestic applicants) and ensures that they are not fraudulent in certifying that all of the information on their initial application is accurate.	22
571	341	No, undocumented students are treated the same as domestic applicants and work through the same contact email address: admissions@dixie.edu	24
572	341	We are an open enrollment institution that does not have a GPA minimum required for admission.\r\nUndocumented students who have attended high school in Utah for at least 3 years may qualify for a tuition waiver to receive the equivalent of resident tuition under Utah State House Bill 144.	18
573	341	We ask explicitly in the application and advise that students reveal their status while applying. They need to do so in order to receive the correct application checklist following application submission and for their application to avoid being put on hold in a review bin.	19
574	341	false	12
2228	1339	false	12
577	344	Yes, the most notable: Undocumented & Immigrant Allyance.	15
578	344	All the time about 10% of our application pool identifies as such.	6
579	344	No, we are a sanctuary campus and have policies/procedures to follow if that occurs.	2
2300	1397	false	12
580	344	It would depend on the program, we do offer a few online degrees.	16
581	344	Yes, we work with local partners to provide resources to students and their families.	20
582	344	false	12
733	447	We require the FAFSA and CSS profile. If a student cannot submit a FAFSA then they will just submit the CSS profile.	7
734	447	Yes GW Undocu https://www.instagram.com/undocugw/	15
627	389	Undocumented students are considered domestic students, which means that they are evaluated for financial aid on a need-blind basis, like other domestic students.\r\n\r\nUndocumented students are eligible to receive merit aid.\r\n\r\nIf the student does not indicate their status, they will likely be mis-labeled as an international student, so it is advisable to make our office aware.	19
628	389	https://apply.emory.edu/apply/other/undocumented.html	1
629	389	William Segura, william.segura@emory.edu	21
630	389	false	12
654	409	- Foundational aid.	5
655	409	- Undocumented students can contact their direct admission counselor, myself or anyone that they feel comfortable with on the admissions team. All of the Admission Office team members information can be found here: https://www.fitchburgstate.edu/admissions-aid/connect-admissions	24
735	447	Every year.	6
736	447	No	2
656	409	- Do not think that your undocumented status will hold you back from admission, reach out to a member of our team to learn all that the University has to offer for your unique circumstances.	18
657	409	It is important to note that many of the processes for our undocumented students are on a case by case basis rather than a standardized practice.	1
670	421	They are evaluated within the context of a domestic applicant from their place of residence, but they will be assigned to an admissions counselor who works with undocumented and international students. This is to help connect them with a counselor who has a stronger background on immigration concerns, but they are admitted as a “domestic” student for the purposes of application review.	11
671	421	We don’t admissions decisions based off of economic/financial situations. Our admissions is more based off of academic history.	10
672	421	All students are eligible for FSC’s standard merit scholarships regardless of documentation status. There are a few specific scholarships that have a citizenship requirement, but most of FSC’s merit aid will not factor status into the scholarship award.	23
673	421	No but our academic merit aid is offered to all students regardless of citizenship status.	5
674	421	You would use the international admissions counselors.	24
675	421	Yes - please contact us so that we can help direct you to resources and ensure that we’re giving you accurate information. It will not be used in your application or decision process in any way and will only be shared to ensure that you are receiving relevant support. If you are uncomfortable disclosing your status in your application, you’re welcome to call us.	19
737	447	No	14
676	421	Yes, on a case-by-case basis. They are not eligible for federal student aid by federal policy, but they can still submit the FAFSA for us to potentially award institutional need-based aid. FSC does not currently offer full need.	13
677	421	All merit scholarships are stackable at FSC, but most students will not receive aid that completely covers the cost of attendance and would need to seek out private loans or outside scholarships to cover full cost if their families can’t pay out of pocket. The average financial aid award at FSC covers approximately half of the cost of attendance (tuition, room, meals and medical insurance). FSC does not work directly with any loans besides the Federal Direct and Parent PLUS loans, which undocumented students are generally not eligible to take.	3
678	421	Merit scholarships are determined based on academic record and most students are awarded a scholarship at time of admission. The Prestige and Premier Scholarships typically have rough GPA and SAT/ACT scores as a guideline, but were test-optional last year. The Prestige and Premier Scholarships typically receive about 500 applications, interview around 120 students, and award 8 to 10 Hollingsworth Scholarships (full-ride/full-cost) or McClurg Scholarships (full tuition). Other applicants and interviewees may receive Christoverson Scholarships of varying amounts.\r\n\r\n\r\n\r\nAn example of a student with stacked scholarships:\r\n\r\nHigh academic achieving, graphic design, swimmer:\r\n\r\nThis student received a merit based, christoverson (prestige), talent scholarship (graphic design) and swim scholarship for athletics.	9
679	421	FAFSA. Refer here for additional information on undocumented students and federal aid: https://studentaid.gov/sites/default/files/financial-aid-and-undocumented-students.pdf	7
680	421	Multicultural Student Council isn’t directly advocating for undocumented students solely but this is a club that has done so in the past. https://www.flsouthern.edu/campus-offices/multicultural-center/multicultural-student-council.aspx	15
681	421	The state of Florida has a large sum of undocumented students compared to other states and so we do get a fair amount. However, we are a private institution so we don’t get as many as a public school where some of those students may be offered in state tuition.	6
682	421	I have never witnessed this happened in my time as an admissions counselor. I took this from ACLU:\r\n“ICE and CBP maintain a policy which provides that they will not engage in immigration enforcement in sensitive locations like schools absent prior approval by a supervisor or exigent circumstances. This policy has recently been reaffirmed by the Department of Homeland Security. This means that ICE and CBP generally will not arrest, interview, search, or surveil a person for immigration enforcement purposes while at a school, a known school bus stop, or an educational activity.”	2
683	421	That is not their primary focus. Their focus is campus safety. I will say that the FSC police on our campus are part of the Lakeland Police and because of this, they would have to enforce their laws if the situation arises, but again, this is not their focus while on campus.	14
684	421	We do not have to share this information. We only share the F-1 student visa information to them.	17
685	421	Fundamentally, FSC is an in-person institution and does not offer much in the way of fully remote coursework for undergraduate programs. This would be handled on a case-by-case basis and would likely depend on the individual student’s particular situation.	16
686	421	No - while FSC may be able to help direct students to outside legal counsel on a case-by-case basis, FSC does not retain an immigration lawyer on staff.	20
711	445	Students do not need to hold a particular status to apply to George Fox. As we do not have in-state or out-of-state tuition, status would not change cost between an international or domestic student.\r\nhttps://www.georgefox.edu/college-admissions/scholarships/index.html	11
712	445	No, undocumented students have access to the merit scholarship opportunity.\r\nhttps://www.georgefox.edu/college-admissions/scholarships/index.html	23
713	445	No, however, undocumented students have access to some institutional aid scholarships.	5
714	445	It would not impact as we practice a holistic review with one of the main determinants being academics and overall GPA.\r\nhttps://www.georgefox.edu/college-admissions/apply/index.html	22
715	445	No, there are various point-people across departments for different resources and stages of the student experience.	24
716	445	Focus on your academic success, stay connected, apply to scholarships, and ask questions.	18
738	447	We do not share the immigration status of undocumented students.	17
2562	1523	false	12
740	447	Yes.\r\nGW Law -- Immigration Law Clinic\r\nPlease call between 9 a.m. and 5 p.m. on Tuesdays or Wednesdays. no walk-ins please: 202-994-7463\r\nWebsite: https://www.law.gwu.edu/immigration-clinic	20
741	447	Mr. Lowe at jdlowe@gwu.edu	21
744	449	We have a holistic review process and will consider all aspects of the application when evaluating a student for admissions at Georgetown University. You can read more about our suggested high school curriculum online: https://uadmissions.georgetown.edu/applying/preparation-process/. We generally look for students who are competitive in their classes and excel in those upper-level courses but will evaluate a student based on all aspects of their application. For statistics on the average scores of our admitted students please review the student profile here: https://georgetown.app.box.com/s/z4tgwmps28jo4hd83i1migipgjw43uuo. We strongly recommend you also review our preparation process page (https://uadmissions.georgetown.edu/applying/preparation-process/) and general information page (https://uadmissions.georgetown.edu/applying/first-year/) for more details on how to prepare to apply to Georgetown University. We have specific information about applying as an international applicant here: https://uadmissions.georgetown.edu/applying/international/.\r\n\r\nWe only offer need-based financial aid. We do not offer any merit-based scholarships. We are committed to meeting 100% of a student's demonstrated need and practice need-blind review for all US citizens, undocumented and DACA. Please contact the Office of Student Financial Services: (http://finaid.georgetown.edu/) with any specific questions. We would recommend that you contact them via their suggested methods posted on their website and if need, contact them via email at finfront@georgetown.edu.\r\n\r\nWe strongly recommend that you connect with a current student to learn more about the programs that you've asked about. There are a few options for you and then please do not hesitate to call our office if you have any questions about the application process or life at Georgetown. Through GAAP you can email a state or regional chair (https://gaap.georgetown.edu/state-chairs/) or request a virtual coffee & chat: https://gaap.georgetown.edu/coffee-chat/. You can also contact a tour guide (https://www.georgetowntourguides.com/) who is well versed in various programs, activities, and campus culture.\r\n\r\nFor more information we suggest attending a virtual information session, sign-ups can be found here: https://uapply.georgetown.edu/portal/virtualsession.\r\n\r\nPlease feel free to call our office at 202-687-3600 should you have any further questions or concerns that require immediate assistance.	1
745	449	false	12
793	497	international students	11
794	497	No	10
795	497	yes, one of our merit award programs is only open to US citizens and US permanent residents. By contrast, we have two merit award programs that are only open to international students and the undocumented students can (and has been) awarded these funds.	23
796	497	No	5
797	497	No	24
798	497	Contact us directly.	18
799	497	Yes, but the budget is very small and that limits our ability to offer admission. Those we do offer admission we meet 100% of calculated need.	13
800	497	We do meet 100% of demonstrated need for those we would admit who are undocumented students (or international students, generally)	3
801	497	It is super competitive to gain admission as an international student who needs aid (and undocumented students fall into this category. We generally can offer admission to about 5 people out of perhaps 400 candidates.	9
802	497	Those exact 4.	7
803	497	not one dedicated solely to undocumented students but this would be a component of at least two support programs here.	15
804	497	Probably fewer than a dozen per year.	6
806	497	We do not have campus police. campus safety is not allowed to enforce any laws.	14
807	497	No	17
808	497	No	16
809	497	false	12
833	521	Undocumented students who reside in the US may complete the domestic admission requirements as applicable.	19
834	521	For financial aid consideration, for students who may not submit the FAFSA, students may complete the HU ISFAA for need and merit-based consideration. All consideration is done equitably. For more information, visit https://admission.howard.edu/financialsupport.	7
835	521	To learn more about the university's support for dreamers, please see: https://www2.howard.edu/about/president/statements/defending-dreamers.	4
836	521	false	12
849	534	Undocumented students would apply as domestic, not international.	11
850	534	We are need-blind for all students	10
851	534	No restrictions on merit aid	23
852	534	No we do not have specific scholarships for undocumented students	5
853	534	We would still review an undocumented student in the same way we review any student and it would not hurt their chances of admission to be undocumented	22
854	534	The point of contact would be the student's assigned admission counselor which they are notified about after submitting their app.	24
855	534	If a student feels comfortable sharing their undocumented status, then they are welcome to do so with their admission counselor	19
856	534	Yes, undocumented students are eligible for need-based aid. For complete information about the financial aid process for undocumented students, I recommend you contact our Financial Aid office: finaid@iit.edu.	13
857	534	We don't have specific clubs for undocumented students, but any student is encouraged to join all clubs/organizations that they might be interested in. Students can also start their own club if they would like.	15
858	534	We consider our campus a safe space for our students, as well as the fact that Chicago is designated as a safe city. As such, we would not allow unauthorized individuals on our campus	2
859	534	I am not sure how our campus safety officers operate and if they are responsible for enforcing immigration law	14
860	534	Due to FERPA laws, we cannot share the personal information of current students unless they authorize us to do so.	17
861	534	Currently, we do not offer fully online programs at the undergraduate level	16
862	534	We can recommend immigration law firms that students can choose to consult for legal advice if those so choose, but we are not partnered with a specific law firm.	4
863	534	false	12
874	545	This page is specifically meant for DACA and undocumented students at IUSB: https://daca.iu.edu/campus-resources/iusb.html. This page is for undocumented student at all IU schools https://ois.iu.edu/visas/daca-resources.html	1
876	546	For admission into our university, we do ask students to be honest on their application. Being undocumented or a DACA student will not affect a student's admission. Typically, students are first seen as international. If they complete and turn in certain paperwork showing they are a DACA student, we can then switch them to domestic and if they live in Indiana or our reciprocal counties, they can receive in state tuition. You can visit daca.iu.edu for more information about DACA @ IU.	19
877	546	false	12
884	553	For admission purposes, we don’t separate students into international or domestic. You submit the same application which includes citizenship/residency information.	11
885	553	Yes.	10
886	553	Non US citizens/residents are eligible for general merit based scholarships. There are a couple of scholarship programs (Park Scholar, MLK Scholar) that are limited to US citizens/residents.	23
887	553	No	5
888	553	No we do not have a separate process or contact for undocumented students.	24
889	553	I can’t think of any additional advice.	18
890	553	Undocumented students are eligible for Ithaca College scholarships and need based financial aid. The challenge is that we may not be able to meet full need since you would not be eligible for federal and state need based aid.	13
891	553	Scholarships and need based aid is stackable but we may not be able to provide all the aid that is needed.	3
892	553	Scholarships are based on academic achievement so getting good grades has the biggest impact (For Music or Theatre applicants, there is a component from the auditions).	9
893	553	Right now, we require the CSS Profile. however, we may change this requirement in the future so, if you decide to apply, you should verify what is required.	7
894	553	At this time, no. However, you could start one.	15
895	553	To be honest, it is not something that we track.	6
896	553	I believe this statement addresses your question, https://www.ithaca.edu/intercom/article.php/20170125111336452	2
897	553	See link above	14
898	553	See link above	17
899	553	No	16
900	553	We provide some guidance but we do not have an immigration law specialist.	20
901	553	false	12
906	558	James Madison University operates under SCHEV guidelines. Please see the following link:\r\nhttps://schev.edu/index/tuition-aid/in-state-residency	1
907	558	false	12
923	574	Yes they are.	13
924	574	Need-based funding would be available (we treat this application similar to a FAFSA as far as determining aid). Unfortunately this doesn’t cover full tuition and students must look into obtaining a loan (generally this is where the snag occurs as Parent Plus Loans aren’t permitted and private loans must have valid U.S. cosigners).	3
925	574	Regular students must obtain a 2.0 GPA or higher as well as 24 credit hours. The Admissions Dept. handles these qualifications as well.	7
926	574	true	12
959	607	Unfortunately, as a state supported university in South Carolina, we are not allowed, by law, to offer admission to undocumented students.	19
1053	700	They are considered international students.	11
1054	700	Yes, the scholarship and merit based are the same for undocumented students.	10
1055	700	There are no restrictions on merit aid for undocumented students.	23
1059	700	Start process as soon as they can and be very proactive in things like higher level scholarship that are competition based and be very attentive for additional opportunities because some opportunities are not as plentiful when it comes to need based aid for undocumented students and maximizing that potential.	18
1060	700	On our application, we ask for a student citizenship status.	19
1061	700	Yes, but a limited amount of need-based aid for undocumented students.	13
1062	700	Undocumented students can use merit aid and limited need based as means for paying for education. If a student gets outside scholarships, they could bring them, and it would not reduce what McDaniel is giving them.	3
1063	700	If a student is looking to maximize on all scholarships, they need to complete the application no later than Dec 15 of their senior year. If they are considered for additional scholarships, we would reach out to student and let them know and this process is the same for US Students.	9
1064	700	It is not required. students are automatically considered for need based aid.	7
1065	700	Nothing specific but we do have out Office of Diversity Equite and Inclusion as well as Global Bridge for students who identify from being from countries other than the United States where they come together and share cultural experiences. Also, students can start their own clubs if they have at least 5 students interested and a professor who would act as the advisor. This is through our Office of Student Engagement.	15
1066	700	Every year. There is not data collected from individual Counselors, but every year, each Counselor gets at least one.	6
1067	700	It has never happened to my knowledge.	2
1068	700	No, the campus police do not enforce immigration law.	14
1069	700	No, we are private institution.	17
1070	700	No, we do not offer distance learning for anyone. We are an on campus and in person institution.	16
1071	700	We do not offer legal support for any of our students.	20
1073	700	false	12
1081	708	Undocumented students are considered domestic, unless they are from a country outside of the US.	11
1082	708	No. We give merit based scholarships solely based off of the students' GPA.	23
1083	708	Menlo offers merit based scholarships to all students who get accepted.	5
1084	708	Yes!	24
1085	708	Here at Menlo College, each counselor gets to know their students individually so I would advise students to be open and reveal their status to their counselor so the counselor can help them with the next steps.	19
1086	708	Yes, I believe undocumented students are eligible for need-based aid.	13
1087	708	We have all students fill out a FAFSA (if they qualify) and also a CSS Profile.	7
1088	708	Yes, we have about 40+ clubs on campus. Many students have created their own clubs due to our size of school. We really want our students voices to be heard and appreciated, so we let them express their thoughts and concerns.	15
1089	708	We have many undocumented students who apply. About 20% of our students are international students. We are the third most diverse college in California!	6
1090	708	No we do not.	2
1091	708	I don't think we do.	16
1092	708	Yes we do!	20
1093	708	false	12
1101	716	Domestic	11
1102	716	Yes	10
1103	716	No	23
1104	716	No	5
1105	716	Makes no difference in the admissions process	22
1106	716	No	24
1107	716	Take the most rigorous high school courses you can and do well in those courses!	18
1110	716	Realistically, no - unless there is willingness to pay out of pocket for the remaining balance. Without eligibility for federal or state grants and federal loan funds, the path to having enough aid to cover is very steep.	3
1111	716	Merit and/or financial need – over 90% of all students get something.	9
1530	951	This is up to the student entirely	19
1112	716	If eligible, the FAFSA…if not eligible to complete the FAFSA we can provide a unique institutional form.	7
1113	716	We typically do not have any clubs like this, but students are free to attempt to start any club that they desire.	15
1114	716	false	12
1117	719	Undocumented students are considered domestic students. Only students who intend to apply for F1 status are considered international students	11
1118	719	MSU Denver only considers factors that are academic related (GPA, test scores, letters of recommendation, personal statements). We do not based our admission decision on the student’s financial status, however, if a student has economic hardship for paying the application fee we will waive it.	10
1119	719	Undocumented students who are residents of Colorado can qualify for in-state tuition, institutional aid, and state financial aid.	23
1120	719	Yes, but the student must be a resident of Colorado to qualify for any institutional scholarships.	5
1121	719	If the student selects ‘No Visa’ on their application, their status will not be questioned, and we will not be asking for further documentation pertaining the student’s immigration status.	22
1122	719	MSU Denver has the largest population of undocumented students in the state of Colorado and therefore, all our admissions counselors are trained to help you meeting the needs of an undocumented student. Also consider contacting our Immigrant Services program at MSU Denver who can also provide one on one assistance with any process at MSU Denver.	24
1123	719	When it comes to admissions criteria, we consider undocumented students as a domestic student and therefore, the criteria are the same as a US Citizen so I would give the same recommendation as to any other domestic student.\r\nKeep your GPA above 2.6 (although we will still consider you if your GPA is below 2.6)\r\nStudy hard on your ACT test. If you didn’t do good on it, still consider applying\r\nWe don’t require letters of recommendation or personal statements but if your GPA is less than 2.6 then I recommend you to submit them anyways.\r\nStart the process early! Most colleges and universities have an early scholarship deadline. Ours is in March 1 so try to be admitted to your desired institution ahead of time to avoid any problems with deadlines\r\nApply for scholarships early. Visit our financial aid website for additional information on financial aid and scholarships www.msudenver.edu/financialaid/	18
1124	719	Students have the option of selecting the ‘No Visa’ as an option for immigration status. If you contact our university, you may feel safe in disclosing your status. The privacy of your student records are protected by federal law.	19
1125	719	Yes	13
1126	719	That depends on the scholarship. Students are only required to fill out the general MSU Denver application for be eligible for our foundation scholarships\r\nScholarships | Financial Aid | MSU Denver	9
1127	719	The state of Colorado has a specialized application called CASFA. We use the information form CASFA for institutional scholarships eligibility\r\nIn addition, MSU Denver has a general scholarship application that students can apply for any of our privately funded scholarships. Scholarships | Financial Aid | MSU Denver	7
1128	719	Yes, we have the Immigrant Services program Immigrant Services | Immigrant Services | MSU Denver	15
1129	719	Every year	6
1130	719	MSU Denver is housed on the Auraria campus which is a commuter campus that is controlled by the state.	2
1131	719	No, Auraria campus police does not enforce immigration law.	14
1132	719	No, this is illegal because students’ records are protected by FERPA.	17
1133	719	For a list of our fully online programs go to www.msudenvere.du/online/	16
1134	719	Yes, our immigrant series programs offer free legal sessions with immigration lawyers from time to time where students can ask questions on a group setting.	20
1135	719	true	12
1137	721	MSU application types are based on citizenship or residency. If you are not a citizen or have a permanent resident card, you are considered international. Application instructions and requirements are posted on our website. Undocumented students who live in the U.S. can apply for a fee classification change if they qualify. The regulations are managed by MSUs' Office of the Registrar. It does not change their status as an interntional but it does allow for residency tuition fee classification if they qualify. Applicants should be directed to contact our office as each applicant is responsible to provide the required material.	1
1138	721	false	12
1144	727	International Admissions	24
1145	727	Be transparent. Assure the undocumented student that he/she is welcome. Let them know it might take more time to complete a degree.	18
1146	727	Possibly, but I don’t know of an instance where this happens.	16
1147	727	Not to my knowledge.	20
1148	727	International Admissions	21
1149	727	false	12
1861	1147	false	12
1155	733	Depends. Typically, they are considered domestic if they attended High School in Pennsylvania and can demonstrate a Pennsylvania high school diploma. If they have a high school diploma from another State, we typically consider them a domestic out-of-state student.	11
1156	733	Our merit process changes from year-to-year but all students are treated as admitted students once admitted and go through the same process regardless of legal status.	10
1157	733	Yes, we are a federal grant recipient for Migrant Education and sometimes our undocumented students are able to take advantage of federal funding through that program.	23
1158	733	No, but an undocumented student would be welcome to apply to the same endowed scholarships as US Citizens.	5
1159	733	It wouldn’t.	22
1160	733	Going to college as someone without legal status is difficult but is possible.	18
1161	733	Yes, this would be helpful so that we can start strategizing on how best to help the student moving forward. We also understand that putting this in writing can be difficult so a phone call or Zoom session would also be okay.	19
1162	733	No, undocumented students are not eligible for Federal or State need-based aid.	13
1163	733	It would be difficult, but it is possible. Having a plan early on is a must.	3
1164	733	This varies by student and by year. It would be best to have the student connect with us directly once they apply.	9
1165	733	Any of these documents would be fine to send, but they would not help the student secure aid.	7
1166	733	We have groups that would advocate but are not specifically chartered to do so. We would also allow the creation of a specific group if the interest arose.	15
1167	733	Regularly. I typically have 1-2 students who self-identify as undocumented each recruitment cycle and several more who I suspect would identify the same way but choose not to disclose.	6
1168	733	Double-checking on this with our Chief of Police to be sure	2
1169	733	Double-checking on this with our Chief of Police to be sure	14
1170	733	Double-checking on this with our Chief of Police to be sure	17
1171	733	Students would need to work with faculty on making accommodations.	16
1172	733	Our school does not provide specific confidential legal support services to students, but there are resources in our community like the PBA’s Pro Bono Services here: https://www.pabar.org/site/For-Lawyers/Pro-Bono-Services/Map/Lancaster.	20
1173	733	false	12
1184	744	Undocumented students would be considered ‘International’ as their citizenship country would not be the United States. Our state policy requires financial support to be documented for all international students, but undocumented students do not need to apply for a visa unless they wish to be on the F-1 student visa	11
1185	744	International students are not eligible for our automatic incoming awards. They are eligible to apply for other Minot State Scholarships (the application for general Minot State scholarships is due February 15 of each year).	10
1186	744	Our incoming, automatic merit awards are restricted to US and Canadian citizens only, but other merit awards may be available, depending on the academic program and success of our students.	23
1187	744	Minot State does not provide any specific aid for undocumented students.	5
1188	744	Anyone in our admissions/recruiting team is equipped to help any student!	24
1189	744	Minot State is proud to offer one rate of tuition to all students, regardless of residency. We provide a quality education at an affordable price.	18
1190	744	It is helpful if we know a students status so we can collect the appropriate information from the student. It will NOT impact the admission decision of the student if they reveal an undocumented status.	19
1191	744	Minot State offers some general scholarships to students, including those who have demonstrated financial need. However, that is determined by the FAFSA, so only students eligible to apply for federal aid can submit that.	13
1192	744	As the third most affordable institution in the US, we are proud to keep our costs as low as we can. There are not Minot State specific loans/grants.	3
1193	744	The general Minot State scholarship application deadline is February 15 of each year. A number of awards are granted to students based on academic program and success at Minot State.	9
1194	744	The FAFSA is used to determine financial need.	7
1301	818	No	23
1195	744	There is currently not an active undocumented student club, but there is an active international student club.	15
1196	744	There are undocumented student applications each term.	6
1197	744	We do not have campus police, just campus security officers.	14
1198	744	Minot State offers online degree programs for students around the world to complete.	16
1199	744	No, Minot State does not offer legal support for students.	20
1200	744	false	12
1216	760	Domestic	11
1217	760	Admission decisions are solely based on the student’s academic profile.	10
1218	760	Status has no impact on their admission review.	22
1219	760	Learn about the admission process and what aid you are eligible for.	18
1220	760	New Jersey allows students to apply for state aid.	13
1221	760	Every cycle we have undocumented students applying.	6
1222	760	false	12
1238	776	Not so simple. They are read by territory which is assigned by where you go to high school. For aid awarding purposes, regardless of territory, they are treated as international citizens unless they have DACA status.	11
1239	776	We are need aware for all applicants.	10
1240	776	Their status would impact the way we are able or unable to award aid, and this may impact the final admission decision as we are need aware.	22
1241	776	Not in the office of Admission, no.	24
1242	776	Do the very best you can in your high school classes.	18
1243	776	Not without DACA status.	13
1244	776	I am unsure.	15
1245	776	Through the Common or Coalition App Sites	6
1246	776	Not to my knowledge.	2
1247	776	This is unclear for me. When the federal government gives us directives, we follow.	14
1248	776	Mount Holyoke allows women, non-binary and transgender males and females to apply. If you identify as a cis-gender male, you will not be eligible to apply.	1
1249	776	false	12
1263	790	We also partner with our local community organizations to assure that our students can receive support both in the school and within their community. More information can be found on our website https://nl.edu/student-services/diversity-and-inclusion/immigration-resources/	19
1264	790	https://www.thedream.us/scholarships/national-scholarship/guidelines/\r\n\r\nOur institutional based scholarships, the Eagle Dream along with the others that undocumented students can also apply for, is below:\r\n\r\nhttps://nl.edu/undergraduate-college/programs/first-time-freshman/scholarship/	7
1265	790	Students are able to contact their enrollment specialist or they can reach out to me at jperez43@nl.edu	21
1266	790	true	12
1286	810	My name is David Cota, Sr. Admissions Advisor at NMSU. I will be providing you a link to our undocumented students and the types resources (financial, student life, etc…) they get at New Mexico State University.\r\n\r\nHere’s information in a PDF on the admissions process:\r\nhttps://chicano.nmsu.edu/files/2016/08/ISI-Website-Slides-Aug-2016.pdf\r\n\r\nResources for undocumented/daca students:\r\nhttps://chicano.nmsu.edu/undocumented-daca-students/\r\n\r\nAll this information could be found at NMSU Chicano Programs website:\r\nhttps://home-p.nmsu.edu/search_results.html?cx=003174599515884405122%3Aa7gnjdfior4&ie=utf-8&hl=en&q=Chicano+&sa=Go\r\n\r\nIf you would like to meet with me, go over this information and provide you any updates. Here’s a link to schedule a 1on1 video chat with me. I would be more than happy to assist you.\r\nhttps://apply.nmsu.edu/portal/1on1videochat	1
1287	810	https://apply.nmsu.edu/portal/1on1videochat	21
1288	810	false	12
1291	813	New York Tech welcomes students without regard to their immigration status, and does not request information regarding immigration status from applicants, except for certain health professions programs where government licensure is at issue.	19
1292	813	New York Tech offers institutional scholarships to students without regard to immigration status.	7
1293	813	New York Tech maintains a strong commitment to the privacy of student records for all students, consistent with state and federal laws. We do not provide information on immigration status to anyone except when required by law.\r\nNew York Tech complies with federal law regarding reporting in connection with student F-1 and J-1 visas.\r\nCampus security staff do not inquire about or record immigration status when performing their duties.\r\nIn accordance with federal law, the enforcement of immigration law rests with Immigration and Customs Enforcement and Customs and Border Protection. New York Tech will not proactively seek to enforce federal immigration law except when required to do so by law.\r\nNew York Tech offers confidential counseling services to all students.	4
1294	813	false	12
1299	818	Domestic	11
1300	818	Yes	10
1302	818	It allows our staff to recommend scholarships and grants available to undocumented students.	22
1303	818	You are welcome here!  We will do our best to make Newman University a possibility.	18
1304	818	Yes	19
1305	818	Yes	13
1306	818	Merit scholarships (Music, Art/Theatre, Academic, Honors, Community Service, Athletics, etc.), DREAM Grant, no loans	3
1307	818	Details here: NewmanU.edu/Scholarship	9
1308	818	DREAM Grant application – unique form	7
1309	818	Not specifically, but we do have groups that typically welcome a lot of undocumented students, i.e. Asian Student Association, HALO, Multicultural Leadership Organization, Black Student Union, etc.	15
1310	818	Frequently	6
1311	818	Yes.	16
1312	818	No.	20
1313	818	Georgia Drewes, Associate Director of Admissions, DrewesG@NewmanU.edu	21
1314	818	true	12
1318	822	Undocumented students are not eligible for aid and there isn't a separate application for them. The options are to pay out of pocket or try to obtain a private loan.	7
1319	822	false	12
1328	831	For tuition purposes, an undocumented student, then tuition is assessed as a non-resident of Illinois. If the student meets the requirements of the Acevedo Bill (IL Public Act 93-0007) which was passed in 2003, the student may qualify for in-state tuition.	11
1329	831	ONLY Illinois students can apply for state aid but are still not eligible to apply for FAFSA.	10
1330	831	95% of our scholarships are open to undocumented students, however, they must be Illinois high school graduates.	23
1331	831	It does not affect their application status, but it is used to determine resident/non-resident tuition.	22
1332	831	The University does have an office that works with providing students with resources: The Undocumented Student Resources Office but anyone in the Admissions Office can answer students' questions.	24
1333	831	Look at your state's resources for undocumented students. Some states may be more welcoming than others and states may only have resources for the students that have graduated from high schools in those states.	19
1334	831	ONLY state aid if the student has graduated from an Illinois high school.	13
1335	831	The scholarships all have different requirements. Again, many of these scholarships may require that students be considered Illinois residents.	9
1336	831	Private loans, savings, private scholarships, payment plans. Paying for college information for undocumented students: https://www.neiu.edu/university-life/undocumented-student-resources/students/paying-college.	7
1337	831	It’s hard to determine that information since the University receives about 3000-4000 applications a year from different student classifications.	6
1338	831	false	12
1340	833	The Office of Inclusion can be reached at inclusion@nau.edu or at 928-523-5656	21
1341	833	false	12
1342	834	https://www.niu.edu/undocumented/index.shtml	19
1343	834	false	12
1357	848	Northwestern does not offer merit aid to any students. We offer only need-based financial aid. When completing the biographic and citizenship sections of the Common or Coalition App, you should provide all required information truthfully and correctly. Your Northwestern application would be at no disadvantage as a result of your undocumented status. In terms of application requirements, yours would be the same as all U.S. citizen and Permanent Resident undergraduate applicants.\r\n\r\nWe encourage you to view our Undocumented Student FAQs: https://admissions.northwestern.edu/faqs/undocumented-students/index.html\r\n\r\nIf you have questions regarding financial aid, please contact the Undergraduate Financial Aid Office at undergradaid@u.northwestern.edu	1
1358	848	false	12
1360	850	Undocumented students are considered domestic.	11
1361	850	Yes, Norwich University is need-blind for all students.	10
1362	850	No. All students qualify for our academic scholarships.	23
1363	850	No. The academic scholarships awarded are not based on citizenship status.	5
1364	850	No. Students would work with their assigned Admissions Counselor based on their state of residence.	24
1365	850	Not for undocumented students, specifically.	15
1366	850	Yearly. Typically 5-10 undocumented students each year.	6
1367	850	false	12
1377	860	Undocumented students are considered domestic students at Oberlin.	11
1378	860	As an institution, we are need-aware, but all undocumented students can and are encouraged to apply for need-based institutional financial aid through the CSS Profile	10
1379	860	All students, including undocumented students are eligible for our scholarships: music merit scholarships for conservatory applicants based on the audition, academic merit scholarships based on high school grades/academic achievement, and our $10k Commitment Scholarship (https://www.oberlin.edu/admissions-and-aid/financial-aid/applying-aid-prospective-students/oberlins-10000-commitment).	23
1380	860	Undocumented status does not affect their acceptance into Oberlin. DACA status is not required for admission to Oberlin.	22
1381	860	College applicants should be in contact with the counselor for the state the student lives in. conservatory applicants should be in touch with the Conservatory Admissions Office.	24
1382	860	Don't be afraid of reaching out with questions! Oberlin is partnered with Golden Scholars and has many resources on campus for undocumented students, including student organizations and a scholarship fund to help support students on campus. In addition, Oberlin is considered a sanctuary city.	18
1383	860	Undocumented students do not need to share their status, though it may be necessary to inform either the College or Conservatory Admissions Office to adjust any requirements typically asked of international students when applying.	19
1384	860	Yes! Oberlin is committed to meeting 100% of demonstrated need for admitted students.	13
1385	860	As mentioned above, admissions scholarships are available for undocumented students who apply, dependent on the division they apply for (College of Arts & Sciences or Conservatory of Music). Virtually all conservatory applicants receive some amount of scholarships and all students who enroll receive the commitment scholarship. We also have funds on campus to support our current students.	3
1386	860	The CSS Profile is the application to send to Oberlin, our code is 1587.	7
1387	860	Yes! Obies for Undocumented Inclusion is a student group that organizes events related to concerns of undocumented students. the El Centro Volunteer Initiative sponsor a variety of events to teach residents English & help prepare for the US Citizenship exam, and the Multicultural Resource Center (MRC) acts as a hub to support undocumented (and other marginalized/BIPOC) students.	15
1388	860	This varies year to year.	6
1389	860	Any ICE or CBP officers should first be in contact with our director of Campus Safety if they do not have a warrant. Matters such as this are also handled with our Office of the Vice President, General Counsel and Secretary for legal purposes.	2
1390	860	Our campus safety officers are not charged with enforcing federal immigration law and do not make inquiries into individual citizenship status. Formal requests by other law enforcement agencies are first reviewed by the Director of Safety & Security in consultation with the General Counsel and Security to ensure that the privacy interests of campus community members are fully protected. Similarly, the City of Oberlin, per its sanctuary status, will not seek to assist immigration authorities unless required by federal law.	14
1391	860	Oberlin must comply with federal requirements associated with managing its authorized international student and scholar programs. it otherwise does not share sensitive information such as immigration status. We do not provide information on immigration status to anyone except when required by law.	17
1392	860	There is no clear answer on this at the time, though this year has introduced virtual/remote learning in new ways for our faculty and students which may be utilized for students who are not on campus for reasons outside of their control. In any regard, our faculty and staff are also extremely willing to work with students to ensure their success.	16
1393	860	No. However, the Multicultural Resource Center is the designated office to connect undocumented and DACA students to community and legal resources designed to serve the particular needs of this population. It is in the best interest that members of this vulnerable population be advised by immigration legal experts who can provide attorney-client privileged consultation to meet the unique needs of individual community members. The MRC has compiled a list of legal resources on their website.	20
1394	860	The information you are looking for is available on our website (sites listed below).\r\n\r\nAdmissions & Financial Aid Process: https://www.oberlin.edu/admissions-and-aid/arts-and-sciences/first-year-applicants#app-step-4\r\nStudent Life: https://www.oberlin.edu/mrc/student-resources/undocumented-daca-resources	1
1395	860	false	12
1430	895	International	11
1431	895	Undocumented students are not eligible to file the FAFSA, but they are still eligible for merit-based scholarships and any scholarships that PBA offers!	10
1432	895	Merit Scholarships for all students range from $8,000 to $18,000 for Florida students and to $20,000 for out of state students	23
1433	895	We offer merit aid to all students: undocumented, citizens, and international students	5
1434	895	Kat_Rumell@pba.edu	24
1528	951	Not as far as I am aware	5
1435	895	We recommend keeping us informed on your situation, and looking into outside financial aid opportunities to help as well.	18
1436	895	Yes, but mostly merit based aid	13
1437	895	We offer merit scholarships and other PBA scholarships which are stackable, and we recommend researching outside scholarships and provide links to those pages.	3
1438	895	Variable depending on availability	9
1439	895	none	7
1440	895	No, but we do have several clubs to support and encourage diversity such as Black Student Union, Mosaic, & Café con Leche.	15
1441	895	Yes, regularly throughout the recruiting cycle.	6
1442	895	Yes, as an SEVP certified school that advises F-1 students, we are required by law to permit ICE officers on-campus.	2
1443	895	Yes, in regards to F-1 students.	14
1444	895	No.	17
1445	895	No.	16
1446	895	No.	20
1447	895	Kat_Rumell@pba.edu	21
1467	914	Technically classified as international in our system, but not required to submit English proficiency exams like our other international students.	11
1468	914	We are "need aware" for every student.	10
1469	914	None.	23
1470	914	We don't - merit aid is open to any student who qualifies.	5
1471	914	It doesn't affect their admissions application at all.	22
1472	914	We've had a number of undocumented students excel here - we hope you consider us!	18
1473	914	It's completely up to the student.	19
1474	914	Yes	13
1475	914	Need aid is available, but students can also stack aid—merit awards, need grants, performance awards, loans, etc - are all stackable.	3
1476	914	100% depends on the award and the student.	9
1477	914	CA resident students can submit Dream Act paperwork to be considered for need aid.   Out of state students can submit the Application for Aid for International Students.	7
1478	914	Not specifically, as we don't require undocumented student to disclose their status.	15
1479	914	Annually.	6
1480	914	No.	2
1481	914	No.	14
1482	914	No.	17
1483	914	We haven't had a student in this situation, so we'd have to evaluate!	16
1484	914	Confidential support is available to students, but we don't have campus attorneys, so it would be handled on a case by case basis.	20
1485	914	All undocumented students work with our Assistant Director, Nicole Munden.	21
1491	919	In admissions and financial aid, Pomona considers undocumented and DACAmented students who graduate from a U.S. high school to be domestic applicants, and we review their applications for admission and financial aid by the same criteria.\r\n\r\nFor more information regarding admissions, please email admissions@pomona.edu.\r\n\r\nFor questions about financial aid, please contact the Office of Financial Aid.	19
1492	919	Legal Resources\r\nCurrent Pomona students and alumni may contact the Sagehen Pro Bono immigration legal resources network (primarily composed of alumni) via email at any time for immigration issues or concerns that may arise. The Sagehen network is for current students, alumni and their immediate family members.\r\n\r\nCurrent students may also contact the Sagehen network to arrange a consultation with a lawyer regarding legal representation resources in case of detention (including a signed G28 form).\r\n\r\nEmergency Grants\r\nStudents may request funding related to immigration-related costs. Students may also apply for emergency funding for immigration-related fees for them, parents or close family members.\r\n\r\nThe College may provide up to $1,000 in legal support for immigration-related cases. These requests are reviewed with our alumni lawyers who are part of a pro bono legal resource network for students, alumni, as well as students who are citizens or legal permanent residents but whose parents or siblings are undocumented.\r\n\r\nOn-Campus Resources\r\nA variety of resources are available to undocumented and DACAmented students who need support:\r\n\r\nStaff Support\r\nStudent affairs staff provide support for undocumented students. In the Office of Student Leadership and Mentoring, Daniel Caballero serves as Assistant Director, First-Generation & Undocumented Student Programs and works closely with the IDEAS (Improving Dreams, Equality, Access and Success) Club of The Claremont Colleges as well as the Pomona IDEAS mentoring program for undocumented students and FLI (First-Generation, Low-Income Scholars Mentorship). Dean Ric Townes oversees the student leadership and mentoring program. Associate Dean of Students and Director of the Draper Center for Community Partnerships Sefa Aina. Draper Center Assistant Director, Stephanie Rios. and Associate Dean of Students and Director of the Asian American Resource Center Mike Manalo-Pedro provide additional program support.\r\n\r\nStudent Groups\r\nStudent-led groups such as IDEAS offer cross campus support for undocumented students and allies. The Pomona IDEAS peer mentoring program provides personalized support for undocumented students in their transition to Pomona.\r\n\r\nCounseling Services\r\nTo supplement the resources of Monsour Counseling Center, the Dean of Students Office also offers access to therapists off campus with whom the office and Monsour counseling have developed local partnerships, including therapists with expertise in working with undocumented students. On-campus as well as off-site counseling services are available for all students. Students can email wellness@pomona.edu  to find out more. Monsour counseling is also open for counseling appointments, and encourages students to contact them at (909) 621-8202 if they need to see a counselor immediately. Students can also contact the on-call dean 24/7 via Campus Safety (909-607-2000).\r\n\r\nCareer Development and Post-graduation Support\r\nThe Career Development Office (CDO) empowers students and alumni to utilize their liberal arts education to gain self-understanding, identify their interests, and formulate a career plan.  Through the programs, resources and services, the CDO strives to inspire, educate, and equip Sagehens for a purposeful and rewarding life.  The CDO offers three distinguished programs: The Pomona College Internship Program (PCIP Semester), Summer Experience (PCIP Summer Experience) and Campus Fellowships for Experiential Learning. These programs aid students in the process of exploring & determining a career path, gaining a rich understanding of a particular field and/or organization, building & growing their professional networks, and enhancing the understanding of how their liberal arts education will be applied in a professional work environment\r\n\r\nStudents may request funding through the Office of Financial Aid to replace a reasonable amount of the expected work study funding and/or the student contribution if a student is not able to work due to an expiring DACA work authorization or other extenuating circumstances. Students may submit the Work-Study Replacement Request [pdf] form to the Office of Financial Aid. We also welcome students to meet with their financial aid counselor at any time if they encounter financial challenges or if there are changing financial circumstances at home. Each student’s financial circumstances are different and we work individually with each student to address any changes if issues emerge.	4
1493	919	true	12
1523	949	Research College of Nursing is a junior/senior nursing school offering a Bachelor of Science in Nursing degree program. Our students must complete 60 hours of pre-requisite coursework at an accredited college or university and then apply to transfer. We are not approved to admit international students. Students must be Permanent residents or US Citizens to receive financial aid from RCoN.	19
1524	949	false	12
1526	951	This may depend on how long the student has been living in the USA. It also depends on the address that the student lists in their application to the college. Obviously, if the student’s address is international then they will be considered an international student. If the student is applying internationally, we do need to start visa paperwork, but Dr. Mascorro knows way more about this than me.	11
1527	951	I do not believe there is any merit aid for undocumented students, but Dr. Mascorro can best answer this question	23
1531	951	Dr. Karina Mascorro. Advisor for international students. kmascorro@ric.edu	21
1532	951	false	12
1535	954	Rice University welcomes all applicants and considers candidates for undergraduate admission without regard to nationality or citizenship, including undocumented students with Deferred Action for Childhood Arrivals (DACA) status at the time of admission and those without DACA status who have studied in the us for a minimum of 5 years, who have or will graduate from a U.S. high school and who have lived in the U.S. for an extended period of time.\r\nUndocumented students who have been granted DACA status at the time of admission and undocumented students who do not hold DACA status but have or will graduate from a U.S. high school and who have lived in the U.S. for an extended period of time are considered domestic students. For domestic students, Rice University practices need-blind admissions and meets the full demonstrated financial need of admitted students through a combination of scholarship awards, work study and available loans.\r\nWe have some well developed resources for DACA and Undocumented Students on our website - much of the information is in bullet form, so hopefully you can find whatever information you are looking for:\r\n\r\nhttps://daca.rice.edu/\r\n\r\nhttps://daca.rice.edu/undocumented-students-faq\r\n\r\nhttps://daca.rice.edu/support\r\n\r\nhttps://daca.rice.edu/campus-resources	1
1536	954	true	12
1550	968	Undocumented students are considered domestic students.	11
1551	968	Admission consideration for all students is need-blind.	10
1552	968	There are no restrictions on merit aid for undocumented students. However, should a student be receiving military or full athletic aid, the student would no longer be eligible for an academic merit award.	23
1553	968	There is not a specific merit scholarship for undocumented students. All students, regardless of status, are eligible for merit aid.	5
1554	968	The Vice President for Enrollment: mapstona@rocky.edu	24
1555	968	I advise all students to visit and work directly with the enrollment staff to ensure a smooth transition.	18
1556	968	Yes and no. There are specific endowed scholarships available specifically for undocumented students as well as appeal based aid.	13
1557	968	Outside of institutional and any available Federal aid, RMC offers payment plan options to help cover remaining balances.	3
1558	968	Payment plans are available to all students.	9
1559	968	If able, we recommend all students file and submit the FAFSA. RMC's school code 002534	7
1560	968	Student clubs and organizations vary from year to year depending on the makeup and interests of the student body.	15
1561	968	We receive a number of applications from undocumented students every year.	6
1562	968	ICE would not be invited onto campus without a warrant.	2
1563	968	RMC does not employ campus police but does maintain a campus safety office. Their role is to enact personal safety protocols across campus.	14
1564	968	The institution does not provide legal or immigration status with any outside entity unless legally compelled to do so.	17
1565	968	RMC does not provide distance learning in general as instruction is primarily focused on one-on-one interactions.	16
1566	968	The institution would assist students in finding appropriate legal support but would not incur any expense on behalf of the student.	20
1567	968	mapstona@rocky.edu	21
1585	985	International students	11
1586	985	All international students must summit a Financial Affidavit of Support from their Bank that will cover 4 years or/ 8 semester at our University.	10
1587	985	They cannot receive federal or state funds	23
1588	985	NO	5
1589	985	Very little	22
1590	985	Apply	18
1591	985	The Office of Admissions is the contact point for all student's c/o Mr. Coley	19
1592	985	Not at this Point	13
1593	985	See answer 3 under Admission Process	3
1594	985	We support all our students!	15
1595	985	Our campus enforces the LAW	14
1596	985	false	12
1601	990	We are need blind for admission	10
1602	990	no	23
1603	990	all students when they apply are reviewed for scholarships as we review their application for admission	5
1604	990	Their admission counselor assigned to where they live would be their admission counselor	24
1605	990	We will help them in any way we can.	18
1606	990	Students can do a paper fafsa. We can download it and send it to us through a paper option.	13
1607	990	They can apply for any of the additional scholarships we have available too (there are two of them)	3
1608	990	(requirements are listed here and if they meet qualifications they will be fully considered: https://www.slu.edu/financial-aid/types-of-aid/scholarships.php)	9
1609	990	FAFSA, paper only	7
1610	990	We receive many of them each year	6
1627	1006	Yes, we do not have scholarships specifically for undocumented students	10
1628	1006	It would make sure an admissions counselor who has knowledge on undocumented students gets to work with the student.	22
1629	1006	If you live in California, please apply for the California dream act BEFORE march 2nd.	18
1630	1006	N/A but we do have other non-merit and non-need-based scholarships available	3
1631	1006	Ability to write an essay or connect with leadership in your community	9
1632	1006	Its actually more a matter of conversation with a financial aid advisor.	7
1633	1006	false	12
1634	1007	They can be considered domestic and qualify for resident tuition prices if they qualify for AB-540.	11
1635	1007	I recommend that you contact the Office of Financial Aid and Scholarships for this inquiry: https://sacd.sdsu.edu/financial-aid	10
1636	1007	I recommend that you contact the Office of Financial Aid and Scholarships for this inquiry: https://sacd.sdsu.edu/financial-aid	23
1637	1007	I recommend that you contact the Office of Financial Aid and Scholarships for this inquiry: https://sacd.sdsu.edu/financial-aid	5
1638	1007	You can find the contact information for our Undocumented Resource Center here: https://sacd.sdsu.edu/undocumented-resource	24
1639	1007	One thing to keep in mind is that the application process is not that different from a documented student. I recommend they fill out the application as accurately as possible and if we need further information, we will contact the student. In addition, residency is not determined for undergraduate students unless they are admitted. If they have an "X" as their residency status after they apply, just know it will be determined if they are admitted.	18
1640	1007	true	12
1650	1017	SVA does not discriminate against potential applicants by their background or immigration status. This will not be considered for your application, and you have no need to worry about that. Your status will not be revealed or marked anywhere if you wish to be so, as we do not record statuses unless we are helping to support that status, such as an F1 student studying with SVA that we must record their status since we are supporting them to maintain it.	1
1651	1017	false	12
1656	1022	-Domestic	11
1657	1022	-We are need-blind for all students	10
1658	1022	-No! Merit based scholarship is purely based on high school GPA and test scores (if applicable), undocumented students can apply test-optional	23
1659	1022	-No, since they can receive the same level of merit-aid as every other student.	5
1660	1022	-No, they will be assigned a counselor based on their address	24
1661	1022	-Feel comfortable asking questions, we are here to help and do not report status to ICE or any other immigration enforcement agency.	18
1662	1022	-If in New Jersey, they may be eligible by filing the NJ Alternative Financial Aid Application found here https://www.hesaa.org/Pages/NJAlternativeApplication.aspx	13
1663	1022	-Every student is welcome to apply for our range of stackable scholarships found here https://www.shu.edu/undergraduate-admissions/scholarships.cfm	3
1664	1022	-The University Scholarship is the main merit-based scholarship and reviewed automatically. If accepted to Seton Hall, it is very likely they will receive a University Scholarship. The other scholarships are more competitive and their requirements can be found at the link above.	9
1665	1022	-We only use the FAFSA for need based aid	7
1666	1022	-I am not aware of a specific club solely focusing on this issue, but some of our cultural, political and social justice clubs do advocate for undocumented students. A full list of our clubs and organizations can be found here https://www.shu.edu/student-organizations/student-organizations-a-z.cfm.	15
1667	1022	-Through the Seton Hall application or Common App, like every other student. Those can be found here https://www.shu.edu/undergraduate-admissions/applying.cfm.	6
1668	1022	-No	2
1669	1022	-No	14
1670	1022	-No	17
1671	1022	-Not traditionally, but more options may become available as a result of the pandemic	16
1672	1022	-Not that I am aware of	20
1673	1022	false	12
1674	1023	Undocumented students are considered international students, but there are scholarships for these students (it's not specific to undocumented students, but all international students)	11
1675	1023	We are need blind and do not consider financial aid for admission into the university	10
1676	1023	The only aid available is merit, and it's one scholarship. however, you could apply to other scholarships like Honors	5
1677	1023	There is no specific contact for undocumented students, but you can contact me directly since I handle international students	24
1678	1023	You can reveal your undocumented status and it will not affect anything	19
1679	1023	Everyone is awarded a merit scholarship, but we do not award more than that	7
1680	1023	We have student run clubs - MISO (Multicultural and International Student Organization) is one, they focus on various causes. It is student led.	15
1681	1023	We don't track how many undocumented student applications	6
1682	1023	ICE can come to campus anytime. It is not up to the college/university.	2
1683	1023	The campus police question isn't applicable to ICE.	14
1684	1023	We use SEVIS and sharing immigration status hasn't happened.	17
1685	1023	We are mostly an on-campus school. During COVID we offer more online learning, but that will likely go away in the future. We do have Adult Degree Program degrees which can be done fully online.	16
1686	1023	We do not offer legal services for students, and this hasn't happened, but we would likely refer students to legal counsel.	20
1687	1023	false	12
1706	1042	Undocumented and Deferred Action for Childhood Arrivals (DACA) students follow the procedures and requirements for first-year or transfer admission. They are evaluated in the same way as U.S. citizens and U.S. permanent residents. SAT I or ACT and SAT II scores are optional. Undocumented and DACA students should indicate “Non-citizen” or “Other” in the citizenship field on the Common Application. Because we want to obtain a comprehensive picture of the student’s background and experiences in the context of her school and community, we encourage undocumented and DACA applicants to disclose their citizenship status in the application. Undocumented and DACA students may apply under any admission plan, including Early Decision.	19
1707	1042	Smith meets 100 percent of the demonstrated need of all admitted students who apply for financial aid by the published deadlines. Because federal financial aid is not available for undocumented and DACA students, Smith provides institutional, need-based financial aid in its place.	7
1708	1042	Find more information regarding Smith's policies on undocumented students here: https://www.smith.edu/sites/default/files/media/Undocumented%20Students%20Handout.pdf	1
1709	1042	false	12
1725	1058	Undocumented students go through the domestic admission process.\r\nAn affidavit is required (not for admission) to ensure that undocumented students are assessed the domestic tuition rate. This form can be accessed at www.siue.edu/undocumented. Students are encouraged to submit this completed form with their admission documents. SIUE offers in-state tuition to all domestic undergraduate students including undocumented students. The tuition rate assessed for the first semester is locked in for four years. Fees also include basic textbooks as SIUE offers a textbook rental system. Cost of attendance is available at www.siue.edu/payingforcollege.	11
1726	1058	All admission decisions for domestic students including undocumented are based solely on academic criteria (i.e. cumulative GPA). No finances are requested, reviewed, or considered.	10
1727	1058	Undocumented students can be considered for all merit based awards offered by Undergraduate Admissions. Visit www.siue.edu/scholarships for more specific information on scholarships.\r\nScholarships currently are available for fall entry only. December 1 is the priority deadline for freshmen and March 1 for transfer students.	23
1728	1058	No, but undocumented students can be considered for all merit based awards offered by Undergraduate Admissions.	5
1863	1149	We accept undocumended students at our institution.\r\nUndocumented students are classified as non traditional students	19
1729	1058	Undocumented students go through the same admission process as domestic students. The only additional item that needs to be submitted is the affidavit as described above. This simply is to ensure they receive the domestic tuition rate and this can be received post admission, but we recommend submitting it with admission documents.	22
1730	1058	Our entire team serves undocumented students, so I encourage visiting our website at www.siue.edu/undergraduate/counselor/index.shtml to determine the admission counselor for the student’s school as that is the individual that they will work closely with through the enrollment process. Direct contact information for all team members is included on our website.	24
1731	1058	Reach out to us early and often with any questions that you have. We are here for you and more than happy to help in any way possible. We are part of your support system!\r\nOur admission application for fall launches June 1 (i.e. June 1, 2021 for fall 2022), so this gives you the summer prior to your senior year to apply. For transfer students, the application goes live one year prior to the start of the semester. Apply early to ensure scholarship consideration. Our application is available online at www.siue.edu/apply.\r\nUtilize our website designed especially for undocumented students at www.siue.edu/undocumented as this is a great resource.	18
1732	1058	Students must answer on the admission application whether they are a U.S. citizen. We do recommend specifying undocumented as that helps us know what additional items (if any) are required. For example, students that are permanent residents must provide a copy of their permanent residency card for admission. This would not apply to undocumented students, so communicating the student’s status will ensure we do not add this as a required item to their admission checklist.	19
1733	1058	Students living in Illinois can complete the Alternative Application for Illinois Financial Aid. This allows undocumented students to be reviewed for the Illinois Monetary Award Program (MAP) grant. Visit www.siue.edu/undocumented (bottom of the page).	13
1734	1058	As noted in the Admissions section, undocumented students can be considered for all merit based awards offered by Undergraduate Admissions. More details are available at www.siue.edu/scholarships. At the bottom of this website, there are resources that can be utilized to find additional internal and external awards.	3
1735	1058	The website (www.siue.edu/scholarships) is the best resource to reference in case any requirements change from year to year. If students meet the criteria for the Cougar Pride and Johnetta Haley Scholarships, this will be awarded at the time of admission. The Meridian Scholarship (freshmen only) is very competitive and requires a holistic review. For fall 2021, we had close to 1,200 applicants for this award. 210 were invited to interview and 20 scholarships were awarded.	9
1736	1058	The form noted above is what students must submit if they reside in Illinois.	7
1737	1058	The Center for Student Diversity and Inclusion (CSDI) is a key resource on our campus and serves as a tremendous advocate for students. CSDI offers a variety of events and programming throughout the academic year. More information can be found on their website at www.siue.edu/csdi/.	15
1738	1058	We received applications for undocumented students every year.	6
1739	1058	ICE officers are allowed on campus, but we would need a valid warrant to provide any information.	2
1740	1058	No. Campus Police serve to provide a safe community for all individuals on campus.	14
1741	1058	SIUE provides SEVP, through SEVIS, with updated information on students with an F or J visa.	17
1742	1058	SIUE offers online degree completion programs for any student that meets the admission requirements. This is a new initiative and only four programs are offered in this format at this time. However, we hope to grow to include additional programs. Details on online degree completion is available at www.siue.edu/academics/bachelors-degree-completion/.	16
1743	1058	No. We would recommend an external resource.	20
1795	1109	Every year we receive applications from undocumented students.	6
1796	1109	false	12
1812	1125	Undocumented students who have been living in New York, attended a New York high school for two years, graduated and applied to SUNY Old Westbury within five years of graduation from that New York State high school could be eligible for in-state tuition. They would be given a residency form, and the Residency Committee, would determine their in-state tuition eligibility.	11
1813	1125	The decision to admit students for regular admissions and admission into the Honors College, etc. is the same, regardless of status.	10
1814	1125	There are no restrictions when a student is awarded study abroad scholarships, residence hall scholarships, etc. Although we do not offer many merit- based scholarships, one's status does not factor into the decision.	23
1815	1125	Scholarship awards vary from year to year. Specific scholarships have certain criteria and are sent, usually through email, to all students. If the student feels they are eligible, they should apply.	5
1816	1125	Status does not affect a student's application, unless they are applying to programs that are for New York State residents and permanent residents of U.S. citizens.	22
1913	1166	https://www.sdi.txstate.edu/ProgramsResources/Immigrants.html	21
1914	1166	true	12
1817	1125	For admissions questions, you could contact anyone in our office. The requirements for regular admission are the same, regardless of a student's status.	24
1818	1125	Our advice would be the same for all students wishing to gain admission to SUNY Old Westbury. Take the most challenging courses you could handle and do well in them. Your letters of recommendation should come from people who know you well. Your personal statement should give us insight into why you'd like to come to SUNY Old Westbury.	18
1819	1125	A student only needs to reveal their status so we could determine tuition charges (in-state residency or not).	19
1820	1125	For answers to questions about financial aid, the following could assist you:\r\nwww.fafsa.ed.gov\r\nwww.hesc.ny.gov\r\nwww.financialaid@oldwestbury.edu	7
1821	1125	The answers to your questions for student life could be found here:\r\nhttps://www.oldwestbury.edu/diversity-inclusion/FAQ	4
1822	1125	false	12
1839	1142	We will eventually know through the application process as you will not be able to provide us with a SSN or visa.\r\n\r\nGiven that the admissions process does not take citizenship status into account, I do not have any special advice specific to undocumented students. If you have questions specific to you, we are happy to help.	19
1840	1142	To my knowledge we do not have any clubs specifically for undocumented students. That said we have hundreds of clubs and we are constantly adding. We have a number of cultural and social clubs which may be of interest.\r\nhttps://myinvolvement.org/\r\n\r\nWe do not provide distance-learning options for any student, unless they are enrolled in our online Informatics program.\r\n\r\nRegarding your questions surrounding campus police and ICE, please see below:\r\n\r\n“It is department policy that we will not allow ICE officials access to a student or their information without a judicial warrant. UPD officers do not enforce Federal Immigration Law as exercised by Federal Officials.”	4
1844	1145	Not specifically, but all are eligible.	5
1845	1145	Students can reach out to any of our admissions deans or financial aid officers. Natalie Gainer in the Admissions office works with our undocumented students closely.	24
1846	1145	I see more and more students who decide not to apply because of their status. I hope students see our policies and understand that Swarthmore College welcomes undocumented and DACAmented students each year with the same considerations we give to domestic applicants.	18
1847	1145	The CSS and accompanying materials and documents as required on the financial aid checklist (accessible after a student applies).	7
1848	1145	Yes, there's an organized student group for undocumented students, as well as students with undocumented family members. All are welcome. We also have a professional staff member who serves as an advisor to our undocumented students.	15
1849	1145	Please find more information here:\r\n\r\nhttps://www.swarthmore.edu/admissions-aid/undocumented-students\r\nhttps://www.swarthmore.edu/news-events/swarthmore-board-pledges-sanctuary-undocumented-students-all-community-members	1
1850	1145	Natalie Gainer	21
1851	1145	false	12
1853	1147	Because undocumented students do not hold US citizenship or permanent residency, they are technically considered international applicants at Syracuse. We will manually waive the financial documentation, however, as undocumented students are not required to submit this for the purposes of obtaining an F1 visa. In most cases we waive the English proficiency requirement, but this is not automatic (it depends on how long students have been in the US and studying in English).	11
1854	1147	We have a limited amount of institutional funding available for undocumented students (as they are not able to apply for federal need-based financial aid). We typically admit a small number of undocumented students per year, then ask them to complete the CSS Profile so that we can assist them with this institutional funding.	10
1855	1147	See above – we don’t offer scholarships per se, rather institutional funding to assist accepted undocumented students in attending Syracuse University.	23
1856	1147	You are welcome to work with any member of our international admissions team! Jennifer Mathews is the Director of International Admissions (jmmathew@syr.edu). She is out of the office right now but again, you are welcome to connect with anyone on our team for further assistance.	24
1857	1147	Please be sure to visit https://diversity.syr.edu/resources/dacaundocumented-students/ for comprehensive resources for undocumented students at Syracuse.	18
1858	1147	Yes, you should disclose your status in your application. It will help us to understand what documentation you need to submit (and don’t need to submit), and will allow our team to advise you throughout the admissions process.	19
1859	1147	As noted above, undocumented students are eligible for institutional financial aid, but are not able to file the FAFSA to be considered for federal financial aid. We ask accepted undocumented students to complete the CSS profile (as it is available to non-US citizens) to determine how much institutional aid is appropriate. You wouldn’t need to submit any financial documentation at the time of application (see above – accepted students are asked to complete the CSS Profile).	7
1860	1147	Again, I would refer you to https://diversity.syr.edu/resources/dacaundocumented-students/ for a comprehensive look at all of the services available to undocumented students at Syracuse. I can tell you that we have a relatively small number of undocumented students on campus, along with a larger number of students who are from mixed-status families. I am not the best person to answer some of these questions on this topic, but I will be happy to forward your email to some of my colleagues who will be better able to assist you.	4
1864	1149	They do not qualify for financial aid.\r\nThey can apply for academic or athletic scholarships.\r\nRemaining balances must be paid in four portions throughout the year	7
1865	1149	false	12
1870	1154	None are available for any non-USA citizen	13
1871	1154	Some departments have endowed scholarships which would be eligible.	9
1872	1154	They can apply for non-state / federal scholarships, they are very few	7
1873	1154	no	15
1874	1154	few	6
1875	1154	No, must do such request via Tech attorney	2
1876	1154	no	14
1877	1154	Only F-1 and J-1 visa holders, under their jurisdiction	17
1878	1154	Never happened	16
1879	1154	We cannot provide immigration law information-as we do not have any immigration attorney on staff or retainer.	20
1880	1154	Tennessee Tech University is a STATE FUNDED institution and with that comes many Federally mandated items which we must follow. i.e. we cannot employ or support anyone who is undocumented is one of those items.\r\n\r\n\r\n\r\nUndocumented students, have 100% the legal right to study like all residents of the USA, but as a State funded institution, we are not allowed to use State or Federal funds to cover the cost of tuition for any undocumented student.	1
1881	1154	false	12
1884	1157	It depends on where they live. If they live in Texas and graduated from a Texas High School, They can be considered domestic. All other undocumented students are intl	11
1885	1157	Yes	10
1886	1157	There are restrictions on few merit aid awards	23
1887	1157	Yes	5
1888	1157	It does not, as far as admission goes. It will affect their student life, however.	22
1889	1157	There is not within the admissions office. Most students reach out to the intl admissions office with questions.	24
1890	1157	To complete their application in its entirety.	18
1891	1157	Yes. Undoc students should reveal their status to receive appropriate help.	19
1892	1157	Yes, state and institutional if they are meeting requirements. You must submit a financial aid application. https://financialaid.tamu.edu/Apply	13
1893	1157	You can still be reviewed for scholarships by completing a scholarship application. For a list of available scholarships please see the link below. https://scholarships.tamu.edu/	3
1894	1157	Please see the above bullet point.\r\nScholarships are usually based on need, GPA, High School rank, and test scores if you choose to submit. When reviewing students for scholarships we look at the whole student (academically and non-academically) when awarding our scholarships. Some of the criteria we look at includes but is not limited to test scores, GPA, academic achievement, rigorous course load, extracurricular activities, leadership, community service, honor, and awards (academic and non-academic), commitment and longevity, special talent, employment, achievement under difficult circumstance, and/or financial need.	9
1895	1157	You will complete the TASFA.	7
1896	1157	true	12
1905	1166	Not specifically for undocumented all students in the top 35% of their graduating class with an 1160 SAT or 24 ACT get merit scholarships.	5
1906	1166	It won’t we have undocumented students in our student body.	22
1907	1166	Use the resources that Texas State has and contact us if you have any questions!	18
1908	1166	All our support services are in this link https://www.sdi.txstate.edu/ProgramsResources/Immigrants.html	19
1909	1166	Yes! You will need to fill a TASFA for that information on that can be found here https://www.finaid.txstate.edu/undergraduate/how/TASFA.html	13
1910	1166	Merit based scholarships are based off of the top 35% of your graduating class with an 1160 SAT or 24 ACT. We also have scholarships for students to apply for in the bobcat online scholarship system that deadline is December 15th every year and students have to be accepted first in order for them to apply to those scholarships. BOSS scholarships can be found here https://www.finaid.txstate.edu/scholarships/boss/	7
1911	1166	You can find our resources and clubs for students here! https://www.sdi.txstate.edu/ProgramsResources/Immigrants.html	15
1912	1166	All students undocumented or not need to follow our application steps for freshman laid out here. https://www.admissions.txstate.edu/future-students/apply-for-admission.html\r\n\r\nAny more questions you have regarding student life and legal situations should be sent to excellence@txstate.edu. they’ll be able to give you more in-depth answers!	6
1931	1183	Yes	3
1932	1183	https://scholarship.unm.edu/	9
1947	1197	What other piece of advice would you give an undocumented student hoping	19
1948	1197	What would be the requirements for such scholarships and what would a	7
1949	1197	In accordance with University System of Maryland guidance, Towson University is committed to the following:\r\n\r\n1. Towson University will not permit immigration enforcement authorities to enter campus for an enforcement action without a warrant unless there is an exigent circumstance (national security or terrorist matter, risk of death or physical harm, etc.) necessitating immediate action.\r\n\r\n2. Towson University will not voluntarily partner with immigration authorities to assist with enforcement activities.\r\n\r\n3. Towson University will not detain an immigrant at the request of immigration enforcement authorities.\r\n\r\n4. Towson University will not request nor share immigration information obtained in connection with a campus arrest.\r\n\r\n5. Towson University will not provide immigration enforcement authorities with student records without a lawfully issued subpoena or court order.	4
1950	1197	englprof@towson.edu	21
1951	1197	false	12
1957	1203	Undocumented students will be technically classified as international in our process, particularly for need-based financial aid consideration. However, we understand and review the application in the context of an undocumented student growing up and living in the US.	11
1958	1203	We are need-aware for all students. We meet full demonstrated need with financial aid packages for any students who are admitted, including undocumented students.	10
1959	1203	No.	23
1960	1203	No. Undocumented students are eligible for the same offering of merit scholarships as all other students.	5
1961	1203	Not at the moment – all our counselors can serve to answer questions from undocumented students.	24
1962	1203	Taking advantage of an interview (in person or virtual) can be very helpful to your application. We are supportive of students from all backgrounds, and have advisors and a community that can support the needs of undocumented students on our campus.	18
1963	1203	Yes, though it is very competitive.	13
1964	1203	CSS Profile. Students may connect with our Office of Financial Aid to see if the FAFSA would be helpful to submit depending on personal circumstances (some states will use the FAFSA to award state grants to undocumented students).	7
1965	1203	We have many social justice advocacy groups on campus, not sure we have one specific for undocumented student advocacy.	15
1966	1203	Several every year.	6
1967	1203	No. Additional guidance on our policy for interactions with federal agents: https://www.trincoll.edu/dean-of-students/daca-undocumented-students/federal-immigration-agents/	2
1968	1203	No.	14
1969	1203	No, unless compelled by court order: https://www.trincoll.edu/dean-of-students/daca-undocumented-students/	17
1970	1203	We have not yet encountered this situation.	16
1971	1203	Yes.	20
1972	1203	true	12
2016	1247	It's wonderful to hear that you are helping undocumented students with college access. At the University of California we too hope to have undocumented students feel like they are able to ask for help, apply and enroll on our campuses. Many of your questions are answered on our webpage for UC - https://undoc.universityofcalifornia.edu/.\r\n\r\nIn addition UCSB hosts application workshops and pre-recorded sessions for undocumented students - https://youtu.be/xfYEoUsQFJk. This page resides on our YouTube channel and is updated every summer prior to the application being posted. https://youtube.com/ucsb4me	19
2017	1247	The financial aid page includes a link for "dream scholars" which is our term for UCSB undocumented students. https://www.finaid.ucsb.edu/dream-scholars. The process to apply for financial aid will depend on the undocumented student status we see from the UC application. California undocumented students who apply for AB 540 might have a California Dream Act application and financial aid awards. Undocumented students from outside of California might not see that same aid award. But we do have a link to our current student scholarships on the UCSB Dream Scholars resource page - http://www.sa.ucsb.edu/dreamscholars/home	7
2018	1247	When students arrive at UCSB they have access to a full time staff member who is our Undocumented Student Services Coordinatro. Students can apply to be interns in this office too and be awarded stipends for their work. See the workshops, legal resources and more on the Undocumented Student Services page - http://www.sa.ucsb.edu/dreamscholars/home.	4
2019	1247	false	12
2021	1249	Domestic students	11
2022	1249	We are need blind for all domestic undergraduate students.	10
2023	1249	There is no institutional, state or federal need-based aid for undocumented students	23
2024	1249	There is no institutional, state or federal need-based aid for undocumented students	5
2025	1249	Students' undocumented status does not affect their application for admission	22
2026	1249	No	24
2027	1249	UCA is welcoming to all students	18
2028	1249	This status would not hurt their admission.	19
2029	1249	There is no institutional, state or federal need-based aid for undocumented students	13
2030	1249	Private Scholarships and or the institutional payment plan is available to the undocumented student.	3
2031	1249	Varies depending upon the scholarship. Undocumented students are eligible to set up a payment plan.	9
2032	1249	This is not information specifically tracked by this institution.	6
2033	1249	We allow all federal and state agencies, as well as visitors, on campus without a warrant.	2
2034	1249	UCA PD does not proactively enforce immigration such as a random checking of student documentation, but is required to notify ICE if a student that has been arrested as an illegal status.	14
2035	1249	No	17
2036	1249	Academic advisors assist any student who is not able to physically participate in classes on campus.	16
2037	1249	No	20
2038	1249	false	12
2044	1255	https://www.uc.edu/about/international/admissions/apply/DACA.html	1
2045	1255	false	12
2048	1258	Domestic	11
2049	1258	We are need-blind for all students, regardless of classification, residency, or citizenship.	10
2050	1258	No.	23
2051	1258	Yes.	5
2052	1258	It will not. If a student reveals this information, it can provide additional context for us to understand the unique challenges they have experienced. But, it’s not a factor we consider when making an admissions decision.	22
2053	1258	As a prospective applicant, students should work with their region-specific admissions counselor. Each counselor is trained to support undocumented students. This website might also be helpful - https://www.colorado.edu/admissions/apply/undocumented-students	24
2054	1258	The website above is helpful to guide students through the process.	18
2055	1258	The only time a student may need to provide further documentation is if they are trying to provide evidence of their ASSET eligibility - https://www.colorado.edu/financialaid/apply-aid/asset	19
2056	1258	We provide need-based aid for undocumented students who qualify for CO in-state tuition under the Colorado ASSET bill: https://www.colorado.edu/financialaid/apply-aid/asset. Undocumented students who are not residents of CO, are not eligible for need-based aid.	13
2057	1258	https://www.colorado.edu/undocumentedstudentresources/student-resources. there are merit scholarships available to all students and we recommend students search for private banks who offer loans to undocumented or international students. Here are just a couple that we’re aware of:\r\n\r\n· Citizens Bank requires that international student borrowers have a creditworthy cosigner who is a U.S. citizen or permanent resident: https://studentloanhero.com/featured/citizens-bank-student-loans-review/\r\n\r\n· MPOWER Financing is one lender that doesn’t require DACA students to have a cosigner: https://studentloanhero.com/featured/mpower-financing-review/	3
2058	1258	Requirements are listed on the webpages mentioned in the previous questions, but of course important to note that scholarship are highly competitive.	9
2059	1258	We accept the new CO state application: https://cdhesnapprod.regenteducation.net/	7
2061	1259	https://mosaic.uccs.edu/dreamer-student-resources-0	1
2062	1259	true	12
2067	1264	International students	11
2068	1264	Yes, we are need-blind for undocumented students	10
2069	1264	No restrictions on merit scholarships.	23
2070	1264	No merit aid specifically for undocumented students.	5
2071	1264	Status will not affect how we review an applicant, although status will dictate how we code a student: In state, out of state, or international student.	22
2072	1264	If not on a universities’ front facing web pages, students can contact an institutions financial aid office to inquire whether or not an institution has funding for undocumented students.	24
2128	1292	You can find information on our international scholarship opportunities here: https://scholarships.louisiana.edu/international	5
2073	1264	Revealing status is one of the only ways a student will ever know if an institution offers financial assistance for undocumented students, but ultimately, it is up to the student whether or not to disclose. Once you have let us know about this status, we will seek discounted fee structure with our student financial services.	19
2074	1264	Find more information here:\r\nhttps://sites.udel.edu/studentlife/daca/	4
2075	1264	Counselling resources for undocu students\r\nhttps://sites.udel.edu/counseling/daca/	1
2076	1264	true	12
2077	1265	I would recommend connecting with an admission counselor and setting up a virtual appointment or a phone call to discuss. This way all your questions can be addressed either on a zoom or phone call. Undocumented students are considered international applicants at the University of Denver, but the admission counselor is determined by where a student’s high school is located. I have also included links below that may be beneficial to you:\r\n<a href=”https://www.du.edu/admission-aid/undergraduate/visit”>Virtual Visit – Chat with an Admission Counselor</a> – this is where you can determine the admission counselor. We do a lot of our undocumented student information over the phone for privacy purposes.\r\n<a href=”https://www.du.edu/admission-aid/undergraduate/undocumented-students”>Undergraduate Admission - Undocumented Students</a>\r\n<a href=”https://www.du.edu/admission-aid/undergraduate/undocumented-students”>Undocumented Student Financial Aid</a>	1
2078	1265	false	12
2091	1278	Undocumented students apply as domestic students. Please see the following link for more information on admissions:\r\nhttps://www.uh.edu/caps/resources/undocumented-students/daca-information/index\r\n\r\nPlease visit the following links for more information:\r\nCougarSAFE: https://uh.edu/cougarsafe/\r\nSenate Bill 4 Information: https://www.uh.edu/caps/resources/senate-bill-4/\r\nDistance Learning Information: https://uh.edu/online/students/student-types.php	19
2092	1278	false	12
2095	1281	I see that you have listed many questions that you wish to have answers prior to applying to UHV. The questions are in different areas, such as Admissions, International Programs, Financial Aid, Student Life, Title IX, Housing and Campus Police. I can totally relate to complexities of the application process for U.S. colleges/ Universities as I was or still am an International student myself. I was 16 when I started the research on universities, the admissions, financial aid, and lot similar questions which you are asking below. Coming from a different academic background, all the information was a puzzle to me.\r\n\r\nWhat we can do is, we can arrange a virtual meeting for you and possibly a workshop to assist you how to complete the application, how apply for TAFSA, Financial Aid and grants as well as answer all of your questions which you stated below. We can answer yours, your family’s questions in English, Spanish or both or check if we can host in other languages. We can arrange this meeting in less than 24 hours or the virtual meeting can be on the same day.\r\n\r\nIt is absolutely easy to answer your questions in an email. It will be a long email with multiple pages and paragraphs. Reading the answers in an email and reading the information on a website is the same. Some questions cannot be answered in one sentence with a bullet point. UHV strives in providing one-on-one attention to all of our students. This is why UHV is unique and why students selects UHV. Meeting and talking to you will give us an opportunity to meet with you and help you to navigate the complex application and possibly connect you with other DACA/ Undocumented students (with their permission) for you to ask questions yourself and build a network prior to enrolling at UHV. You can visit our Virtual Lobby online or schedule a virtual meeting, all you have to do is follow the links mentioned. If you wish to talk to an official at each of the departments which I mentioned above then let me know few dates/ and times and I can coordinate the meeting (herathl@uhv.edu). You may have many friends who are also DACA/ Undocumented students. You are welcome to invite your friends who are DACA/ Undocumented, parents and families and we can host a workshop either virtually or face-2-face. We can host the meeting in English, Spanish or both. If there are other language preferences we can check if we have faculty members to assist with other languages. We have faculty and students from Bangladesh, China, India, Jordan, Lebanon, Brazil, Mexico, Nigeria, Sierra Leon, Kenya, Japan, South Korea, Sri Lanka, Pakistan, and many more. Before COVID, International Programs and UHV Admissions hosted numerous workshops for DACA/ Undocumented students and their families as well as mentored undocumented students for work related experience or in other words job shadow experience.\r\n\r\nI encourage you to complete your research among other Texas institutions as well as out-of-state institutions to get a comprehensive knowledge of how the application, financial aid and student life works at U.S. colleges and institutions as well as to check the best package you can receive for your academic, and professional credentials to pursue your academic endeavors.\r\n\r\nI am looking forward to hearing from you. Please follow the link mentioned below to visit the Virtual Zoom Lobby or to schedule a virtual or face-2-face meeting or let me know (herathl@uhv.edu) a few dates/ and times and I can schedule a meeting with other staff members for you get all of your questions answered the same time.\r\n\r\nThe International Virtual Lobby (https://uhv.zoom.us/j/99837658466) is open Monday to Friday between 8 a.m. to 5 p.m. Central Standard Time. Face-2-face meetings are available by appointment only. To schedule a face-2-face or virtual appointment visit Bookings (https://outlook.office365.com/owa/calendar/InternationalProgramsAdmissionsandInternationalStudentServices@student.uhv.edu/bookings/).	1
2096	1281	false	12
2099	1284	If you are interested in information and resources we provide our undocumented students please see our website Resources on Immigration: https://www.uis.edu/diversitycenter/resources/immigration/	1
2100	1284	Daniel Aguilar, Coordinator for Hispanic/LantinX outreach at diversity@uis.edu?	21
2101	1284	false	12
2102	1285	Domestic	11
2103	1285	We are able to reward you a merit scholarship: https://uindy.edu/financial-aid-for-new-students/grants-and-scholarships	10
2104	1285	No	23
2105	1285	No	5
2106	1285	Your Admissions Counselor is happy to help! -Your admissions counselor is assigned based on where you live and what high school you attend. All admissions counselors are able to assist you.	24
2107	1285	We accept admissions application from undocumented students.	18
2108	1285	Not for any federal or state aid. Here's the link to learn more about it: https://studentaid.gov/sites/default/files/financial-aid-and-undocumented-students.pdf	13
2109	1285	Merit Scholarships and Supplemental Aid requests	3
2110	1285	All students who apply are eligible for merit scholarships based on High School GPA. Your Admissions Counselor is able to submit a Supplemental Aid Request if needed.	9
2111	1285	We have some cultural clubs and support groups.	15
2112	1285	Pretty Often	6
2113	1285	No	2
2114	1285	Not that we are aware of	14
2115	1285	Not that we are aware of	17
2116	1285	We do offer some online courses but not enough to complete a degree. We would need to work with our Advising Office on this.	16
2117	1285	false	12
2120	1288	Under the umbrella of the Office of Multicultural Affairs, the Support Services for Undocumented Students (SSUS) provides supports to ensure the retention and graduation of undocumented students at the University of Kansas. We are committed to serving our undocumented, DACAmented students and students from mixed-status families through a holistic approach and connecting them to resources such as professional guidance, academic support, legal services, counseling and psychological services, and other forms of individualized support. We strongly advocate generating a sense of community for all students that are undocumented or come from mixed immigration-status families. In partnership with university and community partners, we promote the accessibility and advancement for these students to reach their personal, academic and professional goals.\r\nhttps://undocumented.ku.edu/	1
2121	1288	false	12
2125	1292	They are considered international students for admission purposes, but we do offer out of state tuition waivers	11
2126	1292	We do not take a student's financial decision into account when determine eligibility for admission. Only a student's academics are considered.	10
2127	1292	You can find information on our international scholarship opportunities here: https://scholarships.louisiana.edu/international	23
2129	1292	Admissions decisions are based solely on academics provided. The point of contact is Kristina Bernard, email intladmissions@louisiana.edu.	24
2130	1292	We do not hold any bias on any applicants, if a student is not meeting admission to the university, we discuss what the options are to meet eligibility via email or letter in the mail.	18
2131	1292	Federal funding is not available to international nor undocumented students unless they hold a citizenship status that have been approved by the federal government to receive aid	13
2132	1292	Feel free to email finaid@louisiana.edu for additional information on this. Also visit: https://financialaid.louisiana.edu/content/eligibility-policies/citizenship-selective-service. We do offer payment plans to allow students to pay their tuition throughout the semester: https://bursar.louisiana.edu/payment-options/payment-plan-option.	3
2133	1292	We offer academic scholarships (a student can only meeting eligibility for one scholarship): https://scholarships.louisiana.edu/international.\r\nAs well as the payment plan option: https://bursar.louisiana.edu/payment-options/payment-plan-option	9
2134	1292	We do not have specific group for undocumented students, but we do try our best to assist students in acclimating to the university and try to pair them with other international students if that is needed: https://internationalaffairs.louisiana.edu/prospective-students/prospective-students.	15
2135	1292	Each semester we receive undocumented student applications, and they are processed accordingly.	6
2136	1292	This is a question for our Division of Global Engagement/ Office of International Affairs: https://globalengagement.louisiana.edu/. You can email them at ioa@louisiana.edu.	2
2137	1292	Again, this would be best suited for the OIA staff to answer.	14
2138	1292	This one as well is for OIA	17
2139	1292	We do offer several academic programs that are completed solely online. Please keep in mind these programs have a flat tuition rate and not all programs are for first time college students. You can email online@louisiana.edu to find out exactly which ones are for first time and or transferring college students. https://online.louisiana.edu/programs	16
2140	1292	We do not have an immigration attorney on campus for students , we do our best to support students and if asked specifically for recommendations we point them in the direction of finding someone to best suit the student's needs.	20
2141	1292	intladmissions@louisiana.edu Kristina Bernard	21
2142	1292	false	12
2145	1295	International	11
2146	1295	Yes	10
2147	1295	Merit aid is the funding provided for students based upon GPA.	23
2148	1295	yes	5
2149	1295	No effect - admitted based upon academic preparation	22
2150	1295	No	24
2151	1295	No	13
2152	1295	Students who have a US co-signer on a loan would be eligible for loan in addition to merit scholarships. University of Lynchburg is private so the [average] cost after scholarship is $30,500 annually.	3
2153	1295	Not specifically.	15
2154	1295	A few each year	6
2155	1295	No	2
2156	1295	No	14
2157	1295	No	17
2158	1295	No	16
2159	1295	No	20
2160	1295	false	12
2165	1300	https://enrollment.umbc.edu/undocumented/	8
2166	1300	false	12
2211	1331	Please refer to two links below that have documentation on our admissions policies\r\n<a href="https://admissions.uncc.edu/counselors/high-school-counselors/undocumented-students#:~:text=Undocumented%20students%20often%20learn%20more,applicants%20regardless%20of%20citizenship%20status">Admissions</a>\r\n<a href="https://dso.uncc.edu/advocacy-support/daca-unc-charlotte">Dean of Students</a>	1
2212	1331	false	12
2218	1337	Leri Argueta, Leri.Argueta@ung.edu, Associate Director for Diversity Recruitment	21
2219	1337	false	12
2221	1339	When filling out our Bear App and come to the citizen question, students will select “Nonresident/non-citizen” and then select yes for the “ I am a DREAMer, undocumented or DACA student…” portion.	11
2169	1303	Undocumented students can certainly apply for admission and you will submit the regular application requirements. Meaning you will need to submit, application form, official transcripts, essay, letter of recommendation, and any necessary test results. You can also find some information on undocumented students admission on our website by https://www.umb.edu/life_on_campus/multiculturalaffairs/isp/undocumentedsupport.\r\nIf you want to apply, please visit https://admissions.umb.edu/apply. You will need to submit your application form, essay, letter of recommendation, and official transcripts. We do allow students to apply with or without SAT results. As you move through the application process, please let us know if we can be of further assistance. We can be reached at 617-287-6100 or by scheduling an appointment virtually https://admissions.umb.edu/freshman-students/events.\r\nIn regard to financial aid. Unfortunately, we cannot offer in-state tuition and you would not be eligible for federal financial aid funding. However, there may be other forms of merit-based aid that you would be eligible for, so we encourage you to also work with our Financial Aid Office if you have questions about available merit-based aid: finaid@umb.edu.	1
2170	1303	false	12
2179	1312	Missouri state statutes require all public universities in the state to charge undocumented students, and those with DACA status, the non-resident tuition rate and prohibit students with either of those statuses from receiving any state or institutional aid. You can see the <a href="https://legiscan.com/MO/text/HB3/id/1213659">language of the statute here</a>, with the relevant part to this topic appearing in the first paragraph on the first page.	1
2180	1312	false	12
2190	1322	- If the student has been living in the US for more than 1 year or is graduating from a high school here in the US, the student would be considered a domestic student.	11
2191	1322	- We are not officially a need-blind institution, however, every student is admitted as long as the admission requirements are met. You can learn more about our Admission Requirements at https://www.unr.edu/admissions/undergraduate/freshman/requirements\r\n\r\nAre there any restrictions on merit aid for undocumented students at your	10
2192	1322	- We do not have specific scholarships for undocumented students but as mentioned before, students can qualify for our general institutional scholarships\r\n\r\nWould you advise an undocumented student to reveal their status in their	5
2193	1322	- It would not at all as long as they meet the admission requirements.	22
2194	1322	- We have a website available full of resources available for our undocumented and DACA students. https://www.unr.edu/equal-opportunity-title-ix/resources/daca\r\n\r\nWhat other piece of advice would you give an undocumented student hoping	24
2195	1322	- Worry about your academics and not your undocumented status. Your status will have zero impact in the admission decision with us.	19
2196	1322	- Yes. Instead of submitting a FAFSA, students can submit an Institutional Methodology Form which acts like an in house FAFSA application for those students that do not have a social security number and are unable to submit a FAFSA. We will look into family income and determine aid need from that.	13
2197	1322	- Requirements for our institutional scholarships can be found at https://www.unr.edu/financial-aid/scholarships/first-year-scholarships . Questions should be directed to the Financial Aid office.	7
2198	1322	If you have additional questions about resources for undocumented and DACA students, we recommend reaching out to our Equal Opportunity & Title IX office. Please visit https://www.unr.edu/equal-opportunity-title-ix/resources/daca for more information.	1
2207	1330	The application does ask students to disclose citizenship status. Students who do not hold U.S. citizenship or permanent resident status would be considered international students at Carolina. More information on the international student application process may be found at: https://admissions.unc.edu/apply/international-students/. When reviewing applications for admission, we do review need-blind.\r\n\r\nWe understand that students travel many different roads to get to Carolina, and we celebrate the variety of interests, backgrounds, and aspirations that they bring with them. At the same time, it's fair to say that we seek excellence. We focus first on academic excellence, using a variety of information-courses, grades, test scores, recommendations, essays-to help us assess performance and potential. Because of the holistic nature of our review, there is no formula for admission--no one is automatically admitted or denied because of a single number or factor. We read applications in a thoughtful manner, as we work to understand each student individually. In seeking students who will contribute to our community and benefit from the Carolina experience, we need to know much more than just grades or test scores.\r\n\r\nWe're committed to a safe and welcoming environment for students and we want to see students thrive and complete their education at Carolina.	19
2208	1330	We are committed to access and affordability for all of our students and our tuition and fees are among the lowest in the nation. International students (those who do not hold US citizenship or permanent resident status) should understand, however, that they are not eligible to receive need-based financial aid and should be prepared to pay the full cost of attendance. We are able to consider international students for a very limited number of scholarships. There is no separate application for these scholarships as students are automatically considered when they apply. More information about the financial aid process for international students may found here https://studentaid.unc.edu/special-circumstances/international-students/.	7
2209	1330	Thank you for your interest in learning more about Carolina. We know that students manage a lot of nuance and detail as they're applying to colleges and we want to be a resource that helps make the process more approachable. We welcome and encourage students to reach out to us directly so we can help with their specific questions. Anyone on our team would be able to speak with students and families about the admissions process by phone or email at 919-966-3621 or unchelp@admissions.unc.edu.	1
2210	1330	false	12
2222	1339	Yes! Rudy Vargas is an amazing resource. Rudy is UNC’S Coordinator of Undocumented Student Services and the DREAMer Engagement program. He helps provide DREAMers with the tools to enroll and be successful students while at UNC.	24
2297	1397	Undocumented students are considered international students for admissions purposes here at the University of Vermont. You can view our admissions process for international applicants here: https://www.uvm.edu/admissions/undergraduate/international-students-how-apply	19
2223	1339	How to Apply to UNC:\r\nWhen you apply to UNC as a DREAMer, Undocumented, or DACA student:\r\na. Apply to UNC online by starting a Bear App, and select the undergraduate or graduate option to begin.\r\nb. Fill out the application and when prompted to select citizenship status, choose "Nonresident/non-citizen."\r\nc. Then select yes for the "I am a DREAMer, undocumented or DACA student..." portion.\r\nd. If you have questions while completing your application email Rudy Vargas.\r\n\r\nLearn more: https://www.unco.edu/equity-inclusion/dreamers.aspx	19
2224	1339	Yes, undocumented students are encouraged to complete the CASFA form to be considered for campus-based aid.	13
2225	1339	We highly encourage DREAMers to also fill out UNC’S Universal Scholarship Application by the priority deadline to take advantage of the 600+ foundation-based scholarships.\r\nChegg.com is also a great resource searching for scholarships as they offer over 25,000 scholarships.\r\nUndocumented students are welcome to apply for scholarships as well.	3
2226	1339	It would depend on what type of scholarship it is and whether or not they require additional requirements. Unfortunately, scholarships are not guaranteed, but we always recommend students fill out scholarship applications.	9
2227	1339	You will only need to complete the CASFA form linked in the previous question.	7
2229	1340	https://admissions.uni.edu/dacamented-and-undocumented-students	8
2230	1340	false	12
2233	1343	On the link below you will be able to see our Undocumented admission website. It should answer all your questions about admissions.\r\nhttps://www.ou.edu/admissions/apply/undocumented	19
2234	1343	For questions about Student Life, please contact Juan Cabrera:\r\nhttps://www.ou.edu/studentlife/diverse_communities/latino_student_life	4
2235	1343	false	12
2240	1348	https://www.up.edu/inclusion/undocumented-students/index.html	1
2241	1348	Yuri Hernández Osorio: hernandy@up.edu Casandra Esparza: esparza@up.edu	21
2242	1348	false	12
2244	1350	This page has information on policies and protection: https://www.pugetsound.edu/student-life/resources-for-undocumented-persons/.\r\n\r\nAnd this webpage has information on admission and financial aid: https://www.pugetsound.edu/admission/policies-on-undocumented-students/.	1
2245	1350	false	12
2257	1362	We consider undocumented students domestic students. We do not consider status as a deciding factor for admission. USciences is also need-blind. We consider every student that applies for an academic or merit-based scholarship.	19
2258	1362	Unfortunately, undocumented students are not eligible for need-based aid as we consider the FAFSA application which requires an SSN. However, our tuition ($27,500) is dramatically lower than many other schools.	7
2259	1362	At this time we do not have any organizations for undocumented students specifically but we have a welcoming campus environment.	4
2260	1362	false	12
2261	1363	Stacey Urgento stacey.urgento@scranton.edu Admissions and Robert Perhacs reobert.perhacs@scranton.edu Financial Aid	21
2262	1363	false	12
2267	1368	Unfortunately, South Carolina is one of the few states that do not allow undocumented students to attend public institutions of higher education in the state.	1
2268	1368	false	12
2298	1397	Undocumented students are considered for the same amount of merit scholarship as all other students, up to $20,000 per year. Students interested in discussing their individual financial situation and tuition costs would need to contact our office of Student Financial Services: https://www.uvm.edu/studentfinancialservices	7
2299	1397	For students admitted to UVM, we would be happy to discuss all other questions in further detail.	1
2303	1400	Domestic students	11
2304	1400	Yes, we are need blind for all students. We highly encourage financial aid counseling appointments to inform students and families of the financial responsibilities, and to help them apply for scholarships & aid.	10
2305	1400	UWest offers 2 scholarships for undocumented students, <a href="Dream_Scholarship_Policy_2122.pdf">the Dream Scholarship</a> & <a href="AJ_Wang_Scholarship.pdf">the AJ Wang Scholarship</a>– scholarships can also be combined.	5
2306	1400	A student’s undocumented status would not affect their application. UWest review all applications as a holistic application, as long as academic requirements are met the application will be reviewed by the Admission committee.	22
2307	1400	We are a small school of about 300 students, and our population consists of 50% International students. We aid every single to student from the moment they apply all the way through graduation. We encourage undocumented student to keep pursuing your goals, to look for a school that best fits your needs & continue to achieve your goals.	18
2308	1400	No but financial aid or enrollment will reach out for financial aid & scholarship opportunities.	19
2309	1400	Otherwise we can provide resources for outside immigration law questions and issues.	4
2507	1504	We regularly receive applications from undocumented students.	6
2310	1400	Undocumented students can reach out to: <p>Student Services Director: Vanessa R. Karam<p><a href="tel:(626) 571- 8811"><b>Call</b></a><p><a href="mailto:vanessak@UWEST.EDU"><b>Email</b></a><p>Student Affairs Committee:<p><a href="mailto: student_affairs@UWEST.EDU"><b>Email</b></a>	21
2311	1400	false	12
2320	1409	They are considered international depending if the qualify for the following:\r\n• If you are a Wisconsin Resident and meet our Tuition Remission Criteria\r\n• If you are part of our Midwest Student Exchange Program (MSEP)\r\n• Otherwise you would be considered non-resident and pay the cost of tuition our non-resident would pay	11
2321	1409	Once you are admitted you are a student and you get all the same privileges a students get regardless of your status using your school id	10
2322	1409	There are some scholarships that require FAFSA app filled to determine need while others only require proof of enrollment so there are some restrictions	23
2323	1409	No we do not offer any scholarships specifically for undocumented students but are looking to see if we can establish one.	5
2324	1409	It would only determine their status to determine their cost	22
2325	1409	If students have questions, they can contact me directly (delgadoe@uwosh.edu) to determine what status they are eligible	24
2326	1409	Their status is kept confidential and only 2-3 people on campus will know their status for eligibility of tuition remission and will not disclose without consent or authorization from the student	18
2327	1409	It is up to the comfort level of the student but we may follow up to clarify if we have questions	19
2328	1409	There may be some scholarships they can apply that do not require proof of citizenship or FAFSA on file	13
2329	1409	No there are no feasible paths but students have been able to find ways to through scholarships, other community scholarships and working on campus.	3
2330	1409	We do not offer additional aid other than scholarships they can apply for	7
2331	1409	At this moment no. We have a small population of students but we are looking into setting something up in the future	15
2332	1409	We get a handful every year	6
2333	1409	No it does not, we were in the process of setting something up but everything goes through our university police and they do not check or ask students their status	2
2334	1409	No	14
2335	1409	No	17
2336	1409	I am not sure, we have not had something like this happen	16
2337	1409	Our school does have access to a lawyer and they will refer students to local lawyers if students would need legal advice or support	20
2338	1409	false	12
2343	1414	International students do not qualify for financial aid.\r\nInternational students could contact the International office on campus to see if they qualify for a waiver.\r\n715-232-2132.	7
2344	1414	false	12
2346	1416	Undocumented students are considered domestic, but can be considered as either a resident or non resident for tuition purposes. After applying, an admissions counselor will reach out asking for the necessary documents to determine if the student qualifies for in-state or out-of-state tuition.	11
2347	1416	We do not take financial need into consideration when reviewing applicants. Admissions decisions are based on academic achievement only.	10
2348	1416	There are no restrictions preventing undocumented students from receiving aid.	23
2349	1416	Through the Admissions office, there are no scholarships available only to undocumented students. Since most undocumented students will be considered non-resident, they are eligible to receive our merit based Non-Resident Scholarships. Details on these scholarships can be found on the PDF attached below.	5
2350	1416	Having an undocumented status does not negatively affect your application. You will not be denied simply because you are undocumented. Your status will only affect your residency for tuition purposes.	22
2351	1416	One of the questions the application asks is about your Citizenship status. Disclose here that the student is undocumented.	19
2352	1416	Anne Stinson <a href="mailto:StinsonA@uww.edu"><strong>Email</strong></a> or <a href="tel:(262) 472-1973"><strong>Call</strong></a>	21
2353	1416	false	12
2358	1421	Since we are private and do not have in-state/out of state tuition students are not required to provide proof of residency. An undocumented student is treated as any other applicant, but may still be required to complete some international student application requirements, such as proof of funding.	11
2359	1421	We do review applications need-blind, but we may require admitted international and undocumented students to provide proof of funding for the first year.	10
2556	1523	Yes.	13
2360	1421	All students, including international students, undocumented students, and those who choose not to disclose their immigration status, are eligible for merit based aid. The highest merit scholarship amount is $22,500/year.	23
2361	1421	We do not have any specific scholarships for undocumented students. Those students are eligible for the same merit-based aid as other students.	5
2362	1421	We encourage students to do whatever they are most comfortable with.	19
2363	1421	No, we do not have need-based aid for undocumented students, but we do offer merit aid.	13
2364	1421	Ursuline only offers merit-based aid for international and undocumented students and does not offer full-tuition scholarships to any students, including domestic students. We encourage international students and undocumented students to seek out third-party scholarships and grants, which they can stack with Ursuline offered aid.	3
2365	1421	Students can see our scholarship grid for domestic undergraduate students here and for international students here.	9
2366	1421	We don’t currently have any organized groups like this on campus.	15
2367	1421	We do not track that information. Since we are private and do not have in-state/out of state tuition students are not required to provide proof of residency. An undocumented student is treated as any other applicant.	6
2368	1421	There is no designated contact point for undocumented students, but the student’s Admission Counselor would be able to connect them to any resources they may need. If they do disclose their status as an undocumented student, they could also be in touch wi	21
2369	1421	false	12
2370	1422	https://www.usu.edu/admissions/apply/	19
2371	1422	https://www.usu.edu/scholarships/undocumented-student-resources	7
2372	1422	https://www.usu.edu/inclusion/advocacy/index	4
2373	1422	false	12
2374	1423	https://www.uvu.edu/studentaffairs/initiatives/	1
2375	1423	false	12
2425	1460	We receive applications from students who are undocumented every application cycle.	6
2426	1460	No, WashU does not allow Immigration and Customs Enforcement (ICE) officers on to campus without a warrant.	2
2513	1504	We only accept the California Dream Act Application from CA residents. Out-of-state applicants don’t qualify for need-based aid through Whittier College.	1
2514	1504	false	12
2383	1431	At Vassar, we welcome undocumented students to apply for admission. Undocumented students are considered international students in our applicant pool. As it relates to financial aid, Vassar is committed to meeting the full demonstrated need of all admitted students. Vassar is need-aware for international students.\r\n\r\nWe have a program here called the Transitions program which is specifically geared to support undocumented students, first-generation and students who come from low-income households. I've provided you the link to a few different websites below that talk about the application process for international students, an opportunity to attend an information session and a link to an article about the transitions program here. I encourage you to visit the websites and sign up for the session. If you still have questions after utilizing those resources, feel free to <a href="mailto:ddurham@vassar.edu">email me</a>.\r\n\r\n<a href="https://www.vassar.edu/admissions/visit-us/">Information Session & Visit Options</a>\r\n<a href="https://www.vassar.edu/admissions/financial-aid/">Financial Aid</a>\r\n<a href="https://www.vassar.edu/admissions/student-faqs/international-students.html">International Student FAQs</a>\r\n<a href="https://stories.vassar.edu/2016/transitions.html">Transitions Program</a>	1
2384	1431	false	12
2412	1459	A lot of your questions can be answered through the links below:\r\nhttps://www.undocumented.wsu.edu\r\nhttps://admission.wsu.edu/apply/undocumented-students/\r\nhttps://financialaid.wsu.edu/wasfa/\r\nOn the very first link, I would try to connect with someone listed in that office. Every student is evaluated independently as it pertains to our admission requirements. The best thing to do is to work with their assigned admissions counselor that can be found at https://www.rep.wsu.edu to assist the student in the process. Every department has their respective processes and resources to assist students that need assistance in the process of enrolling.	1
2413	1459	false	12
2414	1460	Students who are undocumented will be considered as international students but the review process both domestic and international student is holistic and a students citizenship status will never be used as a measure of a students "worthiness" of admission.	11
2415	1460	We are need-aware for all applicants but we are an institution that is committed to meeting 100% of demonstrated financial need for every student, including our undocumented students. Being need aware does not prevent us from making offers of admission to students who we feel would be great contributors to our community.	10
2416	1460	Yes, Undocumented students are eligible for our Academic Divisional Scholarships as well as our Signature Scholarships. We do not have a specific scholarship exclusively for undocumented students.	5
2417	1460	WashU students have an assigned admissions officer who is their point of contact and we value getting to know students name and story. A students admissions officer is their point of contact and will be their advocate in the committee review process.	24
2418	1460	I would share that students should feel comfortable sharing a bit of themselves with us. We take tremendous pride in the stories student share with us and build our class one student at a time. While we know that we cant admit every applicant, we appreciate the diversity that every story has as we build our community. The story telling aspect of the application process can look many different ways and we want students to know that their story is theirs to share and we value the time and effort they put into the process.	18
2419	1460	Students are free to disclose their status in a way that is comfortable for them. We care and respect their privacy and will never do anything to jeopardize a student in any way. Please refer to our policies toward undocumented students.	19
2420	1460	Undocumented students are eligible for need-based aid and can complete the CSS Profile (waivers are available if cost is a prohibitive).	13
2421	1460	Students are able to stack their outside scholarships up to the cost of attendance at at WashU.	3
2422	1460	Students are automatically considered for our academic scholarships at the time they submit their application for admission (based on the academic division that they select). Students can also apply for our three signature scholarships once a student has submitted their application for admission and received access to their WashU pathway (system that allows students to track their application status).	9
2423	1460	To be considered for aid, students will need to apply using the CSS Profile which will help us get a sense of their family's financial circumstances.	7
2424	1460	With more than 400+ student clubs and organizations for students to participate in, there may be a club that exists but students are able to create their own clubs and organizations for students to join.	15
2427	1460	The primary role and responsibility of the Washington University Police Department (WUPD) is to maintain a safe learning environment. WUPD officers are visible, accessible and dedicated to their primary goal: making sure that every member of our community and our visitors feel safe on and around our campuses. As a matter of course, WUPD officers do not inquire about immigration status in carrying out their day-to-day responsibilities. they only will do so if related to criminal violations or threats of violent behavior. Further, WUPD does not detain individuals solely because of their immigration status. It is neither the university’s practice nor expectation that WUPD will function as an agent of the federal government in the enforcement of federal immigration laws. WUPD will of course comply with lawful subpoenas or other legal requirements.	14
2428	1460	The university will zealously protect the privacy of confidential student information and will adhere to the privacy protections granted to our students by federal law. The university will not release information about immigration or citizenship status to third parties unless required by court order or other legal requirement.	17
2429	1460	The COVID-19 crisis has greatly improved the University's ability to provide various instruction modes to students, including virtual. I am not sure what our current policies are but I do know that we have several resources that may provide deeper insight into our policies: Center for Diversity & Inclusion (314-935-7535) the Office for International Students and Scholars, (314-935-5910), and the Office of Scholar Programs (contact Julia Macias or call 314-935-8379).	16
2430	1460	Through the Office of International Students and Scholars (OISS), the university will provide information and referral resources for undocumented students needing legal assistance.	20
2431	1460	false	12
2435	1464	(Please note that WSU now offers a test optional admissions path which will continue to be an option for students applying to college for the 2021-2022 application cycle). We understand that many undocumented students have very specific and unique circumstances and we are committed to supporting undocumented students who are interested in attending WSU.	19
2436	1464	The Center for Latino/a and Latin American Studies supports DACA and undocumented students with personalized advising and resources.	15
2437	1464	We do not keep a record of or information related to a student’s undocumented status.	6
2438	1464	Not that I am aware of.	2
2439	1464	No.	14
2440	1464	No.	17
2441	1464	WSU now offers more virtual learning and degree options for students as a result of the COVID-19 pandemic. Prior to the pandemic there were very few options for any students to complete their degrees through distance learning options.	16
2442	1464	The Wayne State University Law School has an established Immigration Law Clinic where students and/or members of the community can receive free and confidential legal assistance related to immigration law matters.	20
2443	1464	Ericka M. Jackson, Senior Director Office of Undergraduate Admissions, 313-577-2100, admissions@wayne.edu. Catherine Kay, Senior Director Office of Student Financial Aid, 313-577-2100, studentservice@wayne.edu. Melissa Miranda Morse, Assistant Director, S	21
2444	1464	false	12
2452	1472	It depends on the student. A college has no way of knowing if a student currently present in the USA has official status or not except if a student informs the school or if a school official figures it out based on lack of abilty to declare a specific status like US citizen or PR or a visa-holder of some sort. A lot depends on where they most recently attended college (if any) or high school prior to applying to Wells.	11
2453	1472	We don’t know of a student’s need until they submit a FAFSA. Not submitting a FAFSA is another sign that the student is on a non-immigrant visa or undocumented, in which case they don’t qualify for state/federal financial aid programs. So, by default, the answer is “no”.	10
2454	1472	Don’t be afraid to state the truth about your situation. Nobody can assist you if you hide it but make sure you have a relationship with your admissions counselor for the best service and the most help.	18
2455	1472	international admissions person or whichever admissions counselor reaches out to you	21
2456	1472	false	12
2460	1476	Information for DACA/undocumented applicants can be found here on the Office of Admission website\r\n\r\nhttps://www.wesleyan.edu/admission/apply/undocdaca.html\r\n\r\nAdditionally, you can find information regarding financial aid for undocumented students here:\r\n\r\nhttps://www.wesleyan.edu/finaid/applyingforaid/prospectiveapplicants/firsttimestudent-daca_undoc.html\r\n\r\nFor the questions regarding student life, you will need to reach out to Student Affairs directly. Their website can be found here:\r\n\r\nhttps://www.wesleyan.edu/studentaffairs/	1
2461	1476	false	12
2472	1487	First off, all residents of any state that borders Kentucky actually receive in-state tuition here at WKU through the Border State Scholarship. You can learn more at www.wku.edu/border. This is guaranteed to any student accepted to WKU regardless of documentation status.\r\n\r\n\r\n\r\nUndocumented students apply as domestic students at WKU. We will never share their information with ICE or any immigration officials and they are not allowed on campus without a warrant. Students should answer directly on the application that they are undocumented, however it will not affect their application process at all. As long as an undocumented students meets our admission requirements they will be admitted to WKU. Students are admitted to WKU with at least a 2.5 unweighted GPA (no ACT is required for admission). If the student is between a 2.0-2.49 unweighted GPA they can be admitted but at that point their ACT score would determine their admission eligibility.\r\n\r\n\r\n\r\nUndocumented students are eligible for our merit scholarships here at WKU. You can view a list of our merit opportunities at https://www.wku.edu/financialaid/scholarships/freshmen-2122-academicyear.php. There are no applications for the scholarships on that page (except the Cherry Presidential) and they will be applied to the students account automatically as long as they meet the minimum requirements for the awards. They are renewable and stackable. We also have a minority scholarship called the Cornelius A Martin Award that the majority of undocumented students that I work with receive. Any other questions regarding financial aid at WKU should be directed to their office at fa.help@wku.edu.\r\n\r\n\r\n\r\nI work with undocumented quite regularly and many of those students choose to enroll at WKU for our campus community. We are a mid-sized institution that prides itself on the strong relationships between our faculty and students. They truly go above and beyond to help our students succeed, and as an institution we provide every resource possible to ensure that our students achieve their academic, career, and personal goals. WKU is located in Bowling Green which was voted the best city to live in Kentucky as well as a top college town in America. WKU is proud of our diverse student body, and our Intercultural Student Engagement Center works directly with any underrepresented student to provide them with additional academic, social, and professional support. You can learn more about their programs and initiatives at https://www.wku.edu/isec/.	1
2473	1487	false	12
2480	1494	International	11
2481	1494	Our admissions process is need blind for all students	10
2482	1494	Their status wouldn’t affect our review process	22
2483	1494	They can if they feel comfortable and we will protect their status, but don’t require them to do so	19
2484	1494	More information and resources can be found here:\r\nScholarship Center\r\nhttps://www.finaid.wwu.edu/scholarships/pages/\r\nUndocumented Students Resource Page\r\nhttps://www.wwu.edu/undocumented-students\r\nBlue Resource Group\r\nhttps://as.wwu.edu/sairc/blue/	1
2485	1494	Admissions.counselors@wwu.edu	21
2486	1494	false	12
2496	1504	Undocumented students are considered domestic. As a sanctuary campus, we don’t automatically differentiate between international and undocumented, so some additional requirements may populate in their application portal. All they have to do is email us to let us know their status and we will waive the additional requirements.	11
2497	1504	We are need-blind for all domestic students, yes.	10
2498	1504	No, there are no scholarship restrictions for domestic students. All scholarship awards are based on merit and strength of the applicant.	23
2499	1504	We do not provide scholarships specifically or undocumented students.	5
2500	1504	All undocumented students are read by our International Admission Counselor, Shim Shimaz. again, as a sanctuary campus, we do not separate international students from undocumented students in our system.	24
2501	1504	We are a safe space and many of my colleagues and I have worked with both first-gen and undocumented students for several years.	18
2502	1504	Undocumented CA residents may qualify for the Cal Grant by submitting the California Dream Act Application.	13
2503	1504	We recommend seeking out outside scholarships for undocumented students or childhood arrivals.	3
2504	1504	We don’t set the requirements for outside scholarships.	9
2505	1504	We only accept the California Dream Act Application from CA residents. Out-of-state applicants don’t qualify for need-based aid through Whittier College.	7
2506	1504	The Office of Equity and Inclusion offers programming and resources to our first-gen and undocumented students.	15
2508	1504	Please click the link to read our Poet Student Sanctuary Protections Policy. In essence, should ICE come to campus we will not knowingly or willingly share information on any of our students. We also have a campus alert system in place should ICE come to our campus.	2
2509	1504	No, it does not.	14
2510	1504	No, we do not.	17
2511	1504	Currently we do because of distance-learning, however that is not a topic of discussion that has come up when considering special accommodations to this specific group.	16
2512	1504	I don’t know the answer to that question. I don’t believe we do and I’m not sure who would be the best department to ask. There are, however, law offices that specialize in immigration law within walking distance of the college.	20
2529	1519	Undocumented students are considered as domestic applicants.	11
2530	1519	Williams College is need-blind for all domestic applicants, including undocumented students.	10
2531	1519	Williams College does not award merit scholarships to any students.	23
2532	1519	Williams College does not award merit scholarships to any students.	5
2533	1519	Alejandra Moran and Courtney Oben, assistant directors of admission, are the primary contact point for undocumented prospective students and families, and for those with DACA status. You can reach Alejandra and Courtney at vam1@williams.edu and ceo3@williams.edu, respectively.	24
2534	1519	Our office is here to help and guide you through the admission process. We will be as proactive as possible to answer your questions and needs, but please don’t be afraid to give us a call or send us an email to ask further questions.	18
2535	1519	It is helpful for our admission to know of a student’s citizenship status during the application and financial aid processes to ensure we do not ask for any unnecessary documents, forms, etc. We want to streamline and ease these processes for students as much as possible.	19
2536	1519	Yes, Williams College only awards need-based financial aid packages to admitted students, including undocumented students and those with DACA status.	13
2537	1519	Williams College requires that all applicants complete the CSS Profile. Please contact our Office of Student Financial Services to inquire about submitting the FAFSA.	7
2538	1519	Yes, the Coalition for Immigrant Student Advancement (CISA) is a student organization committed to bringing awareness to and advocating for immigrant students’ on campus.	15
2539	1519	Our office is in conversations with and receives applications from undocumented students every year.	6
2540	1519	No, Williams does not allow any outside agencies onto campus without a warrant from a judge.	2
2541	1519	Williams College does not have any campus police officers.	14
2542	1519	Williams does not share student information with ICE without a warrant from a judge.	17
2543	1519	Williams would work with students on an individual basis to determine whether or not distance-learning is possible to complete their degrees.	16
2544	1519	Williams College cannot provide legal advice to students with immigrant law questions, but our Dean's Office provides connections to legal experts (i.e. attorneys or organizations).	20
2545	1519	Alejandra Moran: vam1@williams.edu Courtney Oben: ceo3@williams.edu	21
2546	1519	false	12
2550	1523	Undocumented students are considered international students, but since we are a private insitution, there is no difference in tuition for them. We do not have in-state vs. out-of-state tuition. all students pay the same amount for tuition, room and board, and fees.	11
2551	1523	Yes, we offer undocumented students with merit-based scholarships. Since undocumented students are not eligible to complete the FAFSA, we have a Financial Responsibility Form they can complete instead that will determine students' financial need and their eligibility for need-based scholarships.	10
2552	1523	No, undocumented students qualify for merit-based scholarships too.	23
2553	1523	Our school does not provide merit aid specifically for undocumented students through our own means. However, we partner with Golden Door Scholars to offer scholarships to undoumented, TPS, or DACA students that covers the full cost of tuition, room and board, and fees. Students apply for this scholarship through goldenscholars.org. Students must have a high GPA, take rigorous high school courses, and be an active member in their community or in leadership positions.	5
2554	1523	Yes! Our enrollment officer for international students is Darin Hinson (d.hinson@wingate.edu). If they were to need help in Spanish, they can also reach out to our Spanish-speaking enrollment officer, Mayra Rosales (m.rosales@wingate.edu).	24
2555	1523	Do not be discouraged by your legal status. We are welcoming to all students! If you have any questions about the college process, we are here to help whether you come here	18
2557	1523	The need-based scholarships offered through the Financial Responsibility Form are based on their parent's income information. Their chances of obtaining need-based aid is dependent on the information provided on their Financial Responsibility form and additional documentation to supplement their completion of the form.	9
2558	1523	Once admitted, students can complete the Financial Responsibility Form that is specific to our school.	7
2559	1523	Yes, our Latin American Student Association advocates for and is inclusive of undocumented students. In addition, our Office of Diversity and Inclusion also works to aid our undocumented students in their colelge experience.	15
2560	1523	We do not have any specific totals of applications from undocumented students as their applications are treated the same as our students with legal status. We do have the most Golden Door scholars.\r\n\r\nTo the three questions below, I am not aware that we do any of these things.	6
2561	1523	Darin Hinson (d.hinson@wingate.edu) Mayra Rosales (m.rosales@wingate.edu)	21
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id") FROM stdin;
campuses	campuses	\N	2025-01-25 21:56:58.561208+00	2025-01-25 21:56:58.561208+00	t	f	\N	\N	\N
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") FROM stdin;
cae2cf97-c0a6-44bb-aa1e-323744fa76fc	campuses	generic	\N	2025-02-09 18:21:12.941177+00	2025-02-09 18:21:19.180204+00	2025-02-09 18:21:12.941177+00	{"eTag": "\\"a9d2f952e277efc1d42c08e0d4e95002\\"", "size": 245754, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:21:19.174Z", "contentLength": 245754, "httpStatusCode": 200}	9e7038be-a296-428d-b522-7a7feb04b0a3	\N	\N
9483af52-c794-471d-8140-21be45cdef5e	campuses	missouri/0	\N	2025-02-09 18:10:32.247538+00	2025-02-09 18:10:32.247538+00	2025-02-09 18:10:32.247538+00	{"eTag": "\\"cafca9d3c7f04db735ac32929e414281\\"", "size": 749716, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.240Z", "contentLength": 749716, "httpStatusCode": 200}	8f365fe5-ad98-450d-a2b4-2bf7072c0be8	\N	{}
60032192-9192-4363-82ed-3b91b160ae95	campuses	missouri/1	\N	2025-02-09 18:10:32.275507+00	2025-02-09 18:10:32.275507+00	2025-02-09 18:10:32.275507+00	{"eTag": "\\"ac5d8ed3e31c1854b8ea9f4f4129551a\\"", "size": 1333646, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.262Z", "contentLength": 1333646, "httpStatusCode": 200}	4b5aae5d-db3f-46aa-8781-947946fa9f4d	\N	{}
707bb0d5-8eca-43ee-9210-ffb9fc741020	campuses	missouri/9	\N	2025-02-09 18:10:32.290275+00	2025-02-09 18:10:32.290275+00	2025-02-09 18:10:32.290275+00	{"eTag": "\\"b2208a6bc9075c0e04808867577c857d\\"", "size": 698990, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.284Z", "contentLength": 698990, "httpStatusCode": 200}	bcc357e5-fba4-40cb-97bb-cc94f886b34a	\N	{}
eca52c31-e52c-4a07-a622-cea0fce0883b	campuses	missouri/6	\N	2025-02-09 18:10:32.301668+00	2025-02-09 18:10:32.301668+00	2025-02-09 18:10:32.301668+00	{"eTag": "\\"40212dc0e2e629c0fc1ede48f8ce6b9c\\"", "size": 438543, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.299Z", "contentLength": 438543, "httpStatusCode": 200}	4804d92d-175a-44bb-a14c-c077f0d8bbb6	\N	{}
2a8b9d21-b267-498c-bb5a-c345773e2e93	campuses	missouri/7	\N	2025-02-09 18:10:32.311217+00	2025-02-09 18:10:32.311217+00	2025-02-09 18:10:32.311217+00	{"eTag": "\\"eaaac19a512a9ec1d9aec22f68b15d36\\"", "size": 338384, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.309Z", "contentLength": 338384, "httpStatusCode": 200}	4eb238ff-a016-4c38-acd9-6aecf622966d	\N	{}
3d86465d-dac3-4185-8ac0-8714c5ed24d0	campuses	missouri/8	\N	2025-02-09 18:10:32.319904+00	2025-02-09 18:10:32.319904+00	2025-02-09 18:10:32.319904+00	{"eTag": "\\"4884c461f28bbec095188e60bc8a23fe\\"", "size": 161393, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.318Z", "contentLength": 161393, "httpStatusCode": 200}	8423b11b-be45-4313-b367-9759221ca12e	\N	{}
edea0471-eaa4-4ab9-a20e-0fe6b0453931	campuses	missouri/2	\N	2025-02-09 18:10:32.334736+00	2025-02-09 18:10:32.334736+00	2025-02-09 18:10:32.334736+00	{"eTag": "\\"3d249abe921012ab56f55af6d5b12404\\"", "size": 1564244, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.328Z", "contentLength": 1564244, "httpStatusCode": 200}	ee77b2d6-8461-4c20-8435-3fcd13f60002	\N	{}
ea0a482a-ad59-4346-a8c0-1f9602469c4f	campuses	missouri/4	\N	2025-02-09 18:10:32.363419+00	2025-02-09 18:10:32.363419+00	2025-02-09 18:10:32.363419+00	{"eTag": "\\"7547fe671ceef4c98b5b174721f771b2\\"", "size": 4483069, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.347Z", "contentLength": 4483069, "httpStatusCode": 200}	1cb21981-ea0b-4e64-96a8-0422b3ba6c20	\N	{}
bdebb239-f80a-4296-a35b-b522e3b29de9	campuses	missouri/5	\N	2025-02-09 18:10:32.386492+00	2025-02-09 18:10:32.386492+00	2025-02-09 18:10:32.386492+00	{"eTag": "\\"4ee2b2e2ff2d3696c8825b06b5ad0968\\"", "size": 814701, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.379Z", "contentLength": 814701, "httpStatusCode": 200}	8bed04a3-9c99-4421-b961-efc5652d0290	\N	{}
b6f20bb4-f3d2-4e19-b418-beb5894bd4dd	campuses	missouri/3	\N	2025-02-09 18:10:32.398731+00	2025-02-09 18:10:32.398731+00	2025-02-09 18:10:32.398731+00	{"eTag": "\\"77341d35383553900ac03179031a0ceb\\"", "size": 671824, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.394Z", "contentLength": 671824, "httpStatusCode": 200}	94f36c52-d187-433e-80d3-d86a15e99f17	\N	{}
32c6a3de-8ae0-42d6-8fe6-a1a61b99b7e0	campuses	swarthmore/5	\N	2025-02-09 18:10:32.406243+00	2025-02-09 18:10:32.406243+00	2025-02-09 18:10:32.406243+00	{"eTag": "\\"bb8f534fbff5ee61a95af9c4740ae043\\"", "size": 199, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.405Z", "contentLength": 199, "httpStatusCode": 200}	df892c23-6c9c-4197-95ff-260079417fe4	\N	{}
b568949e-daa2-46f2-82ce-53d57f83643e	campuses	swarthmore/1	\N	2025-02-09 18:10:32.414052+00	2025-02-09 18:10:32.414052+00	2025-02-09 18:10:32.414052+00	{"eTag": "\\"19735cd99bd8b1899508240877537166\\"", "size": 244996, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.412Z", "contentLength": 244996, "httpStatusCode": 200}	e5e7596e-e966-4bdb-b755-963970110ef3	\N	{}
7fc99794-5e29-46ac-8058-7067a03d35da	campuses	swarthmore/8	\N	2025-02-09 18:10:32.421335+00	2025-02-09 18:10:32.421335+00	2025-02-09 18:10:32.421335+00	{"eTag": "\\"9fe3cb2b7313dc79bb477bc8fde184a7\\"", "size": 146, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.420Z", "contentLength": 146, "httpStatusCode": 200}	e97d8e31-6c14-4923-bbe6-070501603d7e	\N	{}
6c1aa27a-1191-4a5a-a3c6-8764be53787f	campuses	swarthmore/3	\N	2025-02-09 18:10:32.428096+00	2025-02-09 18:10:32.428096+00	2025-02-09 18:10:32.428096+00	{"eTag": "\\"bb8f534fbff5ee61a95af9c4740ae043\\"", "size": 199, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.427Z", "contentLength": 199, "httpStatusCode": 200}	31267612-705f-4bc2-9fb5-784b6f1c6b3a	\N	{}
663676b7-1138-4e7a-a5c1-dd9065135ced	campuses	swarthmore/6	\N	2025-02-09 18:10:32.435107+00	2025-02-09 18:10:32.435107+00	2025-02-09 18:10:32.435107+00	{"eTag": "\\"5446da9542c67ca88f6c1f3d453848cf\\"", "size": 238847, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.433Z", "contentLength": 238847, "httpStatusCode": 200}	48aef525-13fc-4fbe-b2e8-2d1dfa4fc0c2	\N	{}
b96e8156-e912-478b-a2c1-a4bf4404e39a	campuses	swarthmore/4	\N	2025-02-09 18:10:32.443253+00	2025-02-09 18:10:32.443253+00	2025-02-09 18:10:32.443253+00	{"eTag": "\\"d31b549ebf19676b389dc6026e39b069\\"", "size": 230324, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.441Z", "contentLength": 230324, "httpStatusCode": 200}	4b728ac2-5b36-4bf3-9a75-18ecc5882bef	\N	{}
00846ab6-2a5c-48c9-946d-547dd991698a	campuses	swarthmore/9	\N	2025-02-09 18:10:32.450819+00	2025-02-09 18:10:32.450819+00	2025-02-09 18:10:32.450819+00	{"eTag": "\\"09f59e4db5b32b0e1923cd9207727acb\\"", "size": 101793, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.449Z", "contentLength": 101793, "httpStatusCode": 200}	23b65e93-4d4e-49f2-adac-e78bf6306e5f	\N	{}
355a410b-00de-4696-a240-4899439e6647	campuses	swarthmore/2	\N	2025-02-09 18:10:32.458867+00	2025-02-09 18:10:32.458867+00	2025-02-09 18:10:32.458867+00	{"eTag": "\\"b81b85dfe0fd3c3d0da18191e0caded7\\"", "size": 261516, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.457Z", "contentLength": 261516, "httpStatusCode": 200}	4bc3c9cd-561e-4b5c-97a2-b4815e84334d	\N	{}
1417fddb-3807-472b-8abd-31b4985702f4	campuses	swarthmore/7	\N	2025-02-09 18:10:32.46542+00	2025-02-09 18:10:32.46542+00	2025-02-09 18:10:32.46542+00	{"eTag": "\\"bb8f534fbff5ee61a95af9c4740ae043\\"", "size": 199, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.464Z", "contentLength": 199, "httpStatusCode": 200}	3734c32c-69b8-4859-9278-30c8b5794bae	\N	{}
b532e60b-d70e-4071-8b53-4b40670435b1	campuses	swarthmore/0	\N	2025-02-09 18:10:32.477249+00	2025-02-09 18:10:32.477249+00	2025-02-09 18:10:32.477249+00	{"eTag": "\\"d0f6f737d084a3adaf8109fe369847d2\\"", "size": 1303910, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.472Z", "contentLength": 1303910, "httpStatusCode": 200}	16572d05-91dd-4002-8c5c-5d5543fd1089	\N	{}
128d3d81-9ae6-4c2e-a1f9-6ac2ea960fa5	campuses	dixie/0	\N	2025-02-09 18:10:32.484778+00	2025-02-09 18:10:32.484778+00	2025-02-09 18:10:32.484778+00	{"eTag": "\\"eef6405eb9387e92b9d1b109bec5a7e0\\"", "size": 87411, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.483Z", "contentLength": 87411, "httpStatusCode": 200}	57df0632-18f3-4bc3-acb7-0178ded13457	\N	{}
ceedbf6d-a8f1-46c9-9c7c-11672e68c6e9	campuses	dixie/1	\N	2025-02-09 18:10:32.491112+00	2025-02-09 18:10:32.491112+00	2025-02-09 18:10:32.491112+00	{"eTag": "\\"cbb87650ea6497b14d3017cb0a885e00\\"", "size": 114291, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.489Z", "contentLength": 114291, "httpStatusCode": 200}	611760a8-1228-4f84-a432-a1124ee9cc25	\N	{}
5799b9e4-0250-48cb-913b-5656b0857275	campuses	dixie/6	\N	2025-02-09 18:10:32.498281+00	2025-02-09 18:10:32.498281+00	2025-02-09 18:10:32.498281+00	{"eTag": "\\"3428a703d418607926e7b6006aa2068d\\"", "size": 151260, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.496Z", "contentLength": 151260, "httpStatusCode": 200}	fa04ab1e-d495-4e2c-9ebe-d91b32f12a7f	\N	{}
99f3861a-30fc-4e0b-a52d-7ac01dfbe26d	campuses	dixie/7	\N	2025-02-09 18:10:32.505862+00	2025-02-09 18:10:32.505862+00	2025-02-09 18:10:32.505862+00	{"eTag": "\\"2722ac8ba72e2db15bc00621645d95e8\\"", "size": 158639, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.503Z", "contentLength": 158639, "httpStatusCode": 200}	58665b32-7c03-42b6-9259-0b1a4853f628	\N	{}
e3828fea-76d8-4089-9f83-e43f2c83d0f3	campuses	dixie/8	\N	2025-02-09 18:10:32.512908+00	2025-02-09 18:10:32.512908+00	2025-02-09 18:10:32.512908+00	{"eTag": "\\"cb84c8d500cd9e0ab9fd58aa05f02924\\"", "size": 224227, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.511Z", "contentLength": 224227, "httpStatusCode": 200}	ffa926ab-ae0b-4923-980b-f4e62823c175	\N	{}
413c21d0-2f5f-45a1-8910-d5d1dec20085	campuses	dixie/4	\N	2025-02-09 18:10:32.521022+00	2025-02-09 18:10:32.521022+00	2025-02-09 18:10:32.521022+00	{"eTag": "\\"737b4b2ed3247b69bd587b5a07cbbe96\\"", "size": 454176, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.518Z", "contentLength": 454176, "httpStatusCode": 200}	3a9277dd-dfbe-4588-bb9a-52d38f6bc8a9	\N	{}
b24f5cf8-9dbc-4d5c-beba-89609f1faeeb	campuses	dixie/5	\N	2025-02-09 18:10:32.528113+00	2025-02-09 18:10:32.528113+00	2025-02-09 18:10:32.528113+00	{"eTag": "\\"9f76c7dbf6c75dd1443190c319974a15\\"", "size": 75073, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.526Z", "contentLength": 75073, "httpStatusCode": 200}	4a3c5167-c8a5-49af-b740-67ddf405fef1	\N	{}
81baa640-0553-4a28-8405-c355aa73b48a	campuses	nyit/7	\N	2025-02-09 18:10:32.980777+00	2025-02-09 18:10:32.980777+00	2025-02-09 18:10:32.980777+00	{"eTag": "\\"908376b66343e1c7e36f4674ac8b8f09\\"", "size": 73436, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.979Z", "contentLength": 73436, "httpStatusCode": 200}	d2828e30-2006-4f0b-9193-d9e96e5e5f08	\N	{}
dafae2e9-12bd-476b-a182-27dbe3dc7332	campuses	nyit/8	\N	2025-02-09 18:10:32.990156+00	2025-02-09 18:10:32.990156+00	2025-02-09 18:10:32.990156+00	{"eTag": "\\"21807479c59f1d72c736ef61fb84efea\\"", "size": 243978, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.988Z", "contentLength": 243978, "httpStatusCode": 200}	df218ea8-7f80-436d-ac48-ea046f33b4e1	\N	{}
474c0cb8-7a7a-4a32-9a01-4cb0e1afce21	campuses	nyit/4	\N	2025-02-09 18:10:33.000173+00	2025-02-09 18:10:33.000173+00	2025-02-09 18:10:33.000173+00	{"eTag": "\\"d16b4b134ad905aaf626909b9f8026a5\\"", "size": 288771, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.998Z", "contentLength": 288771, "httpStatusCode": 200}	2867ca96-b2ff-44ac-99b7-fbd0b5fd4ebb	\N	{}
39b406b6-ee82-48a0-abb8-aceae3a38eca	campuses	nyit/5	\N	2025-02-09 18:10:33.008618+00	2025-02-09 18:10:33.008618+00	2025-02-09 18:10:33.008618+00	{"eTag": "\\"0e431e5074229449c18583a0d193e4f6\\"", "size": 146082, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.007Z", "contentLength": 146082, "httpStatusCode": 200}	0c1c8866-26d5-406f-95fa-6ab6c4237548	\N	{}
cccd5d10-21bf-44a3-aabc-379fe76cfb14	campuses	nyit/0	\N	2025-02-09 18:10:33.015528+00	2025-02-09 18:10:33.015528+00	2025-02-09 18:10:33.015528+00	{"eTag": "\\"dbacfd4398e7a52fe673ef30c251ba99\\"", "size": 386, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.014Z", "contentLength": 386, "httpStatusCode": 200}	6915f49d-8e4c-4639-bc51-2c2feed451c4	\N	{}
8e3f0171-28ff-43b1-a7c3-86f62b166f54	campuses	nyit/9	\N	2025-02-09 18:10:33.024535+00	2025-02-09 18:10:33.024535+00	2025-02-09 18:10:33.024535+00	{"eTag": "\\"ebbd7cb39e78ec01e97482c386491c40\\"", "size": 375347, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.022Z", "contentLength": 375347, "httpStatusCode": 200}	a3fa7f43-aa4c-440b-bd1f-53aa89365e47	\N	{}
fc30a2fd-c07f-493d-a54e-447c31ccaee4	campuses	nyit/2	\N	2025-02-09 18:10:33.036659+00	2025-02-09 18:10:33.036659+00	2025-02-09 18:10:33.036659+00	{"eTag": "\\"4ec72285a71a1430a45ea299e0e39ab1\\"", "size": 262117, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.034Z", "contentLength": 262117, "httpStatusCode": 200}	e309db2b-ef47-4471-87d7-55091e842bf5	\N	{}
c9d25644-4130-484a-a9fa-427b7d0d1f44	campuses	nyit/3	\N	2025-02-09 18:10:33.044437+00	2025-02-09 18:10:33.044437+00	2025-02-09 18:10:33.044437+00	{"eTag": "\\"33c2bc036d37a1855969ae43e3023902\\"", "size": 63664, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.042Z", "contentLength": 63664, "httpStatusCode": 200}	f8925a90-b1f5-406c-a7a5-5d4b481fb3fe	\N	{}
709e0f48-7c2f-463f-af28-66d07159787c	campuses	mcdaniel/0	\N	2025-02-09 18:10:33.052895+00	2025-02-09 18:10:33.052895+00	2025-02-09 18:10:33.052895+00	{"eTag": "\\"0d19881da8ef1afdde521249931b7781\\"", "size": 80094, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.051Z", "contentLength": 80094, "httpStatusCode": 200}	76c79305-cccd-4ebf-970a-361b755c6f55	\N	{}
2562134b-1917-4616-9684-036fe12bea2f	campuses	mcdaniel/3	\N	2025-02-09 18:10:33.061341+00	2025-02-09 18:10:33.061341+00	2025-02-09 18:10:33.061341+00	{"eTag": "\\"61ddd45c86146850a614e53ca75f0c46\\"", "size": 4866, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.060Z", "contentLength": 4866, "httpStatusCode": 200}	539c5bcf-b02d-4bc8-bf1c-56602756b4ca	\N	{}
42395e1e-ab0c-45df-b248-c1ee4fdd18ff	campuses	mcdaniel/1	\N	2025-02-09 18:10:33.070411+00	2025-02-09 18:10:33.070411+00	2025-02-09 18:10:33.070411+00	{"eTag": "\\"c8addf518f55a1074915438bc6daafa8\\"", "size": 254416, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.068Z", "contentLength": 254416, "httpStatusCode": 200}	e13e1883-7eff-4c0e-b033-7b1af5845a7c	\N	{}
fa476176-face-4a5e-9221-d982894e364d	campuses	mcdaniel/2	\N	2025-02-09 18:10:33.078459+00	2025-02-09 18:10:33.078459+00	2025-02-09 18:10:33.078459+00	{"eTag": "\\"ad1cc5ee0eea58f784a119ccaa44ad19\\"", "size": 61440, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.077Z", "contentLength": 61440, "httpStatusCode": 200}	58f355a9-a772-4ec2-96ef-2a05a5dbf003	\N	{}
9c126595-d1be-4674-847d-316c2545dd16	campuses	simons-rock/0	\N	2025-02-09 18:10:33.088158+00	2025-02-09 18:10:33.088158+00	2025-02-09 18:10:33.088158+00	{"eTag": "\\"c3c6b91f448704ec583bb207fdb9f8ee\\"", "size": 175308, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.086Z", "contentLength": 175308, "httpStatusCode": 200}	98551991-279c-46ef-863f-b809b12d2e20	\N	{}
b92ecb6e-11ea-4228-858d-dbc9933067a9	campuses	simons-rock/1	\N	2025-02-09 18:10:33.099787+00	2025-02-09 18:10:33.099787+00	2025-02-09 18:10:33.099787+00	{"eTag": "\\"76e178ca6b457a77b4eb61303c2e07f7\\"", "size": 797319, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.096Z", "contentLength": 797319, "httpStatusCode": 200}	6311a08c-f1d6-469d-92fa-aafef002ff00	\N	{}
037c860d-8c5f-489d-b9e2-98e732907366	campuses	sva/0	\N	2025-02-09 18:10:33.434829+00	2025-02-09 18:10:33.434829+00	2025-02-09 18:10:33.434829+00	{"eTag": "\\"239fabba3809ea3d33b072d6a54ae4d6\\"", "size": 93097, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.433Z", "contentLength": 93097, "httpStatusCode": 200}	011b768a-ad59-477c-855b-65b88b5f1cd6	\N	{}
e1611ada-9a76-41a6-b281-5e377cdd3aa1	campuses	sva/1	\N	2025-02-09 18:10:33.446372+00	2025-02-09 18:10:33.446372+00	2025-02-09 18:10:33.446372+00	{"eTag": "\\"7670a34c4c3ea3498d0641657ddee3d8\\"", "size": 1562557, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.441Z", "contentLength": 1562557, "httpStatusCode": 200}	3c78ac65-635f-4f53-9244-74b2aa60cbce	\N	{}
83b03eab-a5ae-48bf-bdb7-4f0607da22be	campuses	sva/8	\N	2025-02-09 18:10:33.464634+00	2025-02-09 18:10:33.464634+00	2025-02-09 18:10:33.464634+00	{"eTag": "\\"f6fd72b594f56cf577ca3774dc04041c\\"", "size": 587118, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.456Z", "contentLength": 587118, "httpStatusCode": 200}	15faeba1-7fb2-40c9-9560-41213c7772a6	\N	{}
ce0780b8-8c67-4c4d-aa47-815375d90f33	campuses	sva/5	\N	2025-02-09 18:10:33.488011+00	2025-02-09 18:10:33.488011+00	2025-02-09 18:10:33.488011+00	{"eTag": "\\"b857ed71c38a0850dd25d40af61eb6bd\\"", "size": 3724059, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.475Z", "contentLength": 3724059, "httpStatusCode": 200}	53ba5c9c-6881-430d-9c56-7ed776c4261f	\N	{}
645ccfdf-4ca7-42d2-8bde-c4690427d8c2	campuses	sva/9	\N	2025-02-09 18:10:33.497091+00	2025-02-09 18:10:33.497091+00	2025-02-09 18:10:33.497091+00	{"eTag": "\\"a4af3302fa06992d773834ea0341b531\\"", "size": 105307, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.495Z", "contentLength": 105307, "httpStatusCode": 200}	f23f8993-1bc0-45bd-82e7-04d32bca3bc9	\N	{}
1fb645c4-1fa5-4d29-9f8d-a6d34cbcc2d5	campuses	sva/2	\N	2025-02-09 18:10:33.507377+00	2025-02-09 18:10:33.507377+00	2025-02-09 18:10:33.507377+00	{"eTag": "\\"59b0a8830c96991d7fc0468976af7eb1\\"", "size": 756439, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.504Z", "contentLength": 756439, "httpStatusCode": 200}	60d10bd2-ce49-4434-b2e9-7856919fb033	\N	{}
1142da74-846a-4ad3-8ea3-96815db73a8b	campuses	sva/4	\N	2025-02-09 18:10:33.521204+00	2025-02-09 18:10:33.521204+00	2025-02-09 18:10:33.521204+00	{"eTag": "\\"33db9db5b0f1c64d4f72405f6c0ad334\\"", "size": 1292053, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.515Z", "contentLength": 1292053, "httpStatusCode": 200}	e44236d5-4e38-46e0-be47-c52a8a7ac8a1	\N	{}
1967be4e-6857-48e8-be22-e6f4975447c9	campuses	sva/7	\N	2025-02-09 18:10:33.529974+00	2025-02-09 18:10:33.529974+00	2025-02-09 18:10:33.529974+00	{"eTag": "\\"37630363e6e50455991121ca3eca7788\\"", "size": 373156, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.527Z", "contentLength": 373156, "httpStatusCode": 200}	899ac13c-55cc-4a44-9c2f-968c4a0eaa26	\N	{}
94e532a4-d849-452e-b69d-715af6918f1a	campuses	sva/6	\N	2025-02-09 18:10:33.542122+00	2025-02-09 18:10:33.542122+00	2025-02-09 18:10:33.542122+00	{"eTag": "\\"43bfd7ffe2a32f5dca601e14916445e6\\"", "size": 214410, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.539Z", "contentLength": 214410, "httpStatusCode": 200}	9d515271-4ad7-47a7-96d8-0c8346434aeb	\N	{}
72fad6d7-cb9a-4c75-8a6e-90b30a1f4780	campuses	sva/3	\N	2025-02-09 18:10:33.554617+00	2025-02-09 18:10:33.554617+00	2025-02-09 18:10:33.554617+00	{"eTag": "\\"158d55720a1f9b9336beebfeeb85978c\\"", "size": 218971, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.552Z", "contentLength": 218971, "httpStatusCode": 200}	270c7434-bc0d-43d4-a950-3de69fc18f37	\N	{}
9d7ba970-4475-45b9-a460-f7c467ee7b62	campuses	bard/0	\N	2025-02-09 18:10:33.56421+00	2025-02-09 18:10:33.56421+00	2025-02-09 18:10:33.56421+00	{"eTag": "\\"1fba8d25819106d86be4c5934653cc24\\"", "size": 615769, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.561Z", "contentLength": 615769, "httpStatusCode": 200}	44ebb1bf-cd43-4a36-bdf5-2a3bc270a074	\N	{}
529421a9-0098-4b72-8211-2548ee7e842a	campuses	bard/1	\N	2025-02-09 18:10:33.57447+00	2025-02-09 18:10:33.57447+00	2025-02-09 18:10:33.57447+00	{"eTag": "\\"bec2f9000e961c87648596cd0a625fbf\\"", "size": 696430, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.571Z", "contentLength": 696430, "httpStatusCode": 200}	6a0ad82f-1d01-4b73-99ef-c4b2963db755	\N	{}
61c3ffb7-4c5e-42dc-aa03-8f700b1e8795	campuses	bard/6	\N	2025-02-09 18:10:33.585283+00	2025-02-09 18:10:33.585283+00	2025-02-09 18:10:33.585283+00	{"eTag": "\\"12ca791764aa73433e0f0a12c654ab74\\"", "size": 700082, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.582Z", "contentLength": 700082, "httpStatusCode": 200}	90598a97-195f-4ecc-8845-e8cdffca521b	\N	{}
d37116c8-e13a-4101-885f-3dc3c02be076	campuses	bard/8	\N	2025-02-09 18:10:33.594657+00	2025-02-09 18:10:33.594657+00	2025-02-09 18:10:33.594657+00	{"eTag": "\\"91ac1dfc29056093f45631c2b668c756\\"", "size": 633380, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.592Z", "contentLength": 633380, "httpStatusCode": 200}	4adf997a-47b1-4f2e-a92d-37829f8fb096	\N	{}
635d32db-89fe-409d-8988-9c9742b8c94d	campuses	bard/4	\N	2025-02-09 18:10:33.602447+00	2025-02-09 18:10:33.602447+00	2025-02-09 18:10:33.602447+00	{"eTag": "\\"ee1572d851e30c97d010defc4858c28e\\"", "size": 234308, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.600Z", "contentLength": 234308, "httpStatusCode": 200}	457de52c-6705-4266-9860-34679ce15e88	\N	{}
a8448084-e0be-43ab-890e-eb3c3d5d9fe1	campuses	bard/5	\N	2025-02-09 18:10:33.616859+00	2025-02-09 18:10:33.616859+00	2025-02-09 18:10:33.616859+00	{"eTag": "\\"f976cdf679bb20a056cc30321d53e76b\\"", "size": 1820599, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.610Z", "contentLength": 1820599, "httpStatusCode": 200}	ea495efa-7954-4b5f-b195-b5625bd8fc4a	\N	{}
373eff83-1921-4ab9-9062-66e858b7085c	campuses	bard/9	\N	2025-02-09 18:10:33.636814+00	2025-02-09 18:10:33.636814+00	2025-02-09 18:10:33.636814+00	{"eTag": "\\"7d6a692d201a4c339daf21f55f2d0b98\\"", "size": 120991, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.630Z", "contentLength": 120991, "httpStatusCode": 200}	eb40dbaf-f617-463e-bc88-992c30f4d7d9	\N	{}
679f1f3f-51c7-46cd-b2d0-ab1367978011	campuses	bard/2	\N	2025-02-09 18:10:33.648788+00	2025-02-09 18:10:33.648788+00	2025-02-09 18:10:33.648788+00	{"eTag": "\\"f1e83eda8ca750e3a1e1d8d58dc9566a\\"", "size": 303336, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.646Z", "contentLength": 303336, "httpStatusCode": 200}	d5ce1a3d-caff-414f-8649-5e85779009a7	\N	{}
6e996784-942c-4528-a987-7e3f2b83bd23	campuses	bard/7	\N	2025-02-09 18:10:33.658713+00	2025-02-09 18:10:33.658713+00	2025-02-09 18:10:33.658713+00	{"eTag": "\\"29714b4d83a652e82855d42b26086b37\\"", "size": 267713, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.656Z", "contentLength": 267713, "httpStatusCode": 200}	d65c0b1e-f8ed-40f3-8bf9-99b9063cb424	\N	{}
f200d7a9-90f9-4175-8ba6-a4bfde64dc10	campuses	bard/3	\N	2025-02-09 18:10:33.66839+00	2025-02-09 18:10:33.66839+00	2025-02-09 18:10:33.66839+00	{"eTag": "\\"8452b945ddf13fa1d7ac6801fdea0974\\"", "size": 466087, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.665Z", "contentLength": 466087, "httpStatusCode": 200}	6ac5c1be-077d-473c-8731-51e6b9e54b19	\N	{}
6c6a80c5-5917-4453-8147-31d9ca04405f	campuses	aubg/0	\N	2025-02-09 18:10:33.677542+00	2025-02-09 18:10:33.677542+00	2025-02-09 18:10:33.677542+00	{"eTag": "\\"4d3abc0bf5d0b3a6ddbda930240d6bda\\"", "size": 167449, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.675Z", "contentLength": 167449, "httpStatusCode": 200}	64732bf5-1bfe-44b1-b04a-0cc3f62d0251	\N	{}
504dc0b5-f896-4098-bbcc-a56502cd3e31	campuses	aubg/1	\N	2025-02-09 18:10:33.687029+00	2025-02-09 18:10:33.687029+00	2025-02-09 18:10:33.687029+00	{"eTag": "\\"fa86a0a10145f476efff6e56db635963\\"", "size": 274002, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.684Z", "contentLength": 274002, "httpStatusCode": 200}	7723eac8-77c2-4844-8975-bed1a80ae373	\N	{}
6a994bea-04f1-4f37-8002-d02f94b435be	campuses	aubg/8	\N	2025-02-09 18:10:33.702259+00	2025-02-09 18:10:33.702259+00	2025-02-09 18:10:33.702259+00	{"eTag": "\\"23302903f67fe544e2be0182d7f7a20c\\"", "size": 1316728, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.697Z", "contentLength": 1316728, "httpStatusCode": 200}	ceeca7e2-b651-411e-89c7-d8a63accdaed	\N	{}
cf074ef8-46b3-4292-b081-2e81f9f2e3cd	campuses	aubg/9	\N	2025-02-09 18:10:33.710587+00	2025-02-09 18:10:33.710587+00	2025-02-09 18:10:33.710587+00	{"eTag": "\\"4c3790edd21022ff9404ceb7364d380e\\"", "size": 147360, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.709Z", "contentLength": 147360, "httpStatusCode": 200}	9f8b2186-0c6c-49a5-abfc-8af19a7583f5	\N	{}
5b2c619f-bffc-4370-9395-cf135a2dc45c	campuses	aubg/6	\N	2025-02-09 18:10:33.718742+00	2025-02-09 18:10:33.718742+00	2025-02-09 18:10:33.718742+00	{"eTag": "\\"8276eb175161d15a3c0db8b4782c1c89\\"", "size": 322071, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.716Z", "contentLength": 322071, "httpStatusCode": 200}	8a6a3627-6267-4809-9ef7-3a48e23911a5	\N	{}
f48d176a-53c3-4efb-9c95-f1f148f78020	campuses	aubg/7	\N	2025-02-09 18:10:33.726923+00	2025-02-09 18:10:33.726923+00	2025-02-09 18:10:33.726923+00	{"eTag": "\\"e47ec959a8905ab732c54445d3cb8f55\\"", "size": 82924, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.724Z", "contentLength": 82924, "httpStatusCode": 200}	8a39212b-2513-477d-837b-2549fa6a4cd2	\N	{}
e86f0f56-9af8-4dda-b1b6-b8f3d84a78c2	campuses	aubg/4	\N	2025-02-09 18:10:33.745063+00	2025-02-09 18:10:33.745063+00	2025-02-09 18:10:33.745063+00	{"eTag": "\\"88e6a763678b1a846e544e48dd0ad764\\"", "size": 251352, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.740Z", "contentLength": 251352, "httpStatusCode": 200}	76da3e91-851c-410f-b283-1fc8204a667e	\N	{}
c04798f2-1641-427f-8a7c-9ee988617d2a	campuses	aubg/5	\N	2025-02-09 18:10:33.765426+00	2025-02-09 18:10:33.765426+00	2025-02-09 18:10:33.765426+00	{"eTag": "\\"33d1a341f35600ab03871ff0822e5ab9\\"", "size": 188384, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.759Z", "contentLength": 188384, "httpStatusCode": 200}	cb80b2a2-8369-43a7-944c-87f00931e2e5	\N	{}
c51d69bf-9c99-4fd4-94e8-45e416d7d1d6	campuses	aubg/2	\N	2025-02-09 18:10:33.785696+00	2025-02-09 18:10:33.785696+00	2025-02-09 18:10:33.785696+00	{"eTag": "\\"18e303e3b765d4eb471847686f1f9d46\\"", "size": 340029, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.782Z", "contentLength": 340029, "httpStatusCode": 200}	ccb4ede7-7ae2-4565-b43c-7d47696d5669	\N	{}
5657fd2f-d859-49d7-b01b-6f044f5c15fd	campuses	aubg/3	\N	2025-02-09 18:10:33.797027+00	2025-02-09 18:10:33.797027+00	2025-02-09 18:10:33.797027+00	{"eTag": "\\"4775e2b2182e47c62b07c55fd5ec884c\\"", "size": 42891, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.794Z", "contentLength": 42891, "httpStatusCode": 200}	c4aca120-5178-4f26-a236-b6241b9f66b1	\N	{}
9d02e1a1-c0d8-4cd6-ac62-590c01642981	campuses	mtholyoke/0	\N	2025-02-09 18:10:33.808396+00	2025-02-09 18:10:33.808396+00	2025-02-09 18:10:33.808396+00	{"eTag": "\\"662a3b06de68304a5cf5a5616c5688cb\\"", "size": 219174, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.806Z", "contentLength": 219174, "httpStatusCode": 200}	e34b93c3-0081-4ff0-9f97-73aef3d172c3	\N	{}
8e35eb58-df2c-49aa-895b-8dba681874a0	campuses	mtholyoke/5	\N	2025-02-09 18:10:33.81947+00	2025-02-09 18:10:33.81947+00	2025-02-09 18:10:33.81947+00	{"eTag": "\\"46b7196f596e57dd731a2e7ce8674562\\"", "size": 386, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.817Z", "contentLength": 386, "httpStatusCode": 200}	2a2e529d-9c0e-450b-9ee4-840e836fc60e	\N	{}
f636e6f4-2597-4da5-8334-66447afe2820	campuses	mtholyoke/8	\N	2025-02-09 18:10:33.868031+00	2025-02-09 18:10:33.868031+00	2025-02-09 18:10:33.868031+00	{"eTag": "\\"34593b2037523199fb95f5453db61648\\"", "size": 386, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.855Z", "contentLength": 386, "httpStatusCode": 200}	d95cc660-9585-4649-b1b7-2b13f996a3d0	\N	{}
c1fe0134-d57c-4727-8606-776ac4d33efc	campuses	mtholyoke/9	\N	2025-02-09 18:10:34.007118+00	2025-02-09 18:10:34.007118+00	2025-02-09 18:10:34.007118+00	{"eTag": "\\"6f9ec228b9660bf07529c9d1077fd92c\\"", "size": 790377, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.002Z", "contentLength": 790377, "httpStatusCode": 200}	1a873fb8-0507-4af3-9e98-2d26cf56968c	\N	{}
3e898f29-6ece-4679-9c77-7a4b489d7965	campuses	mtholyoke/6	\N	2025-02-09 18:10:34.044657+00	2025-02-09 18:10:34.044657+00	2025-02-09 18:10:34.044657+00	{"eTag": "\\"dd3748d5372ab1c71c12d0440492a1bd\\"", "size": 530360, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.038Z", "contentLength": 530360, "httpStatusCode": 200}	48510e4b-3edc-46dc-8b27-22c2b3f923fa	\N	{}
2266bd03-f629-4c6e-8e9d-c456a46f401c	campuses	mtholyoke/7	\N	2025-02-09 18:10:34.055179+00	2025-02-09 18:10:34.055179+00	2025-02-09 18:10:34.055179+00	{"eTag": "\\"31423605f744fe0b481ec7532a287fd8\\"", "size": 63238, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.053Z", "contentLength": 63238, "httpStatusCode": 200}	22f5a1f4-e4b1-4f46-a6ac-960a4dd67afe	\N	{}
bbf62501-a041-4418-8c14-6cddfbe92259	campuses	mtholyoke/4	\N	2025-02-09 18:10:34.064478+00	2025-02-09 18:10:34.064478+00	2025-02-09 18:10:34.064478+00	{"eTag": "\\"34250cf07678a91196116cfb140d3565\\"", "size": 146822, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.062Z", "contentLength": 146822, "httpStatusCode": 200}	3bbf4b28-cb2a-4d52-b09b-f223d7081174	\N	{}
edf81fbc-7cd4-4ecd-82c4-64e0c07a28af	campuses	mtholyoke/2	\N	2025-02-09 18:10:34.074309+00	2025-02-09 18:10:34.074309+00	2025-02-09 18:10:34.074309+00	{"eTag": "\\"8e0904257816b05d59682a465aa4fc27\\"", "size": 402898, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.072Z", "contentLength": 402898, "httpStatusCode": 200}	5e722fa0-cc69-4935-9987-7a6e39808a6b	\N	{}
43ebec93-08ec-4043-8a38-7cdd0e8eb6fb	campuses	mtholyoke/1	\N	2025-02-09 18:10:34.102854+00	2025-02-09 18:10:34.102854+00	2025-02-09 18:10:34.102854+00	{"eTag": "\\"cfe1db67adb0fdebc22f52faf1ef6dba\\"", "size": 4958214, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.086Z", "contentLength": 4958214, "httpStatusCode": 200}	b366465f-c9f7-4d4a-9afa-a55f28faa2b0	\N	{}
ac80443e-0411-4996-be8b-ce03e6f32657	campuses	mtholyoke/3	\N	2025-02-09 18:10:34.119262+00	2025-02-09 18:10:34.119262+00	2025-02-09 18:10:34.119262+00	{"eTag": "\\"883bffaba6f1f0d538bc891859dae4eb\\"", "size": 148409, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.114Z", "contentLength": 148409, "httpStatusCode": 200}	8e4b60d1-743d-473c-a852-b1c1841c79a8	\N	{}
f7bddc22-58dc-43cd-83f9-26d563b2a9ac	campuses	northwestern/0	\N	2025-02-09 18:10:34.127118+00	2025-02-09 18:10:34.127118+00	2025-02-09 18:10:34.127118+00	{"eTag": "\\"533798be48946c35c37dbfb15798930f\\"", "size": 343842, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.125Z", "contentLength": 343842, "httpStatusCode": 200}	f8ecae06-699b-48f2-8ef0-bd50ac15c28f	\N	{}
f1b625a1-6780-4c54-b51c-d919c3db668a	campuses	northwestern/1	\N	2025-02-09 18:10:34.133499+00	2025-02-09 18:10:34.133499+00	2025-02-09 18:10:34.133499+00	{"eTag": "\\"2164b3d6ea49f3d243d2b481c3067f6c\\"", "size": 205770, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.131Z", "contentLength": 205770, "httpStatusCode": 200}	28efb803-5da7-484b-842c-f1af616afde9	\N	{}
0c66968a-6914-49d0-abe6-95161f8136e7	campuses	northwestern/6	\N	2025-02-09 18:10:34.139973+00	2025-02-09 18:10:34.139973+00	2025-02-09 18:10:34.139973+00	{"eTag": "\\"22d583171865098bc095b4009b10c7de\\"", "size": 167672, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.138Z", "contentLength": 167672, "httpStatusCode": 200}	53c1a5f9-dbbb-47e2-8627-89fa8795d2da	\N	{}
4e4de19f-c40d-4317-a1f6-3717bce25660	campuses	northwestern/7	\N	2025-02-09 18:10:34.146037+00	2025-02-09 18:10:34.146037+00	2025-02-09 18:10:34.146037+00	{"eTag": "\\"1780fe2a0255e3c4b3dcbb3db1d3231e\\"", "size": 185573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.144Z", "contentLength": 185573, "httpStatusCode": 200}	a837664e-e7bb-4f8d-b2ed-f8370299affb	\N	{}
86c9abce-204c-4402-960e-a11ee6e26418	campuses	northwestern/8	\N	2025-02-09 18:10:34.15336+00	2025-02-09 18:10:34.15336+00	2025-02-09 18:10:34.15336+00	{"eTag": "\\"a568b85144a5f797d74387abf77e1f56\\"", "size": 433355, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.150Z", "contentLength": 433355, "httpStatusCode": 200}	6ac1efd1-be55-4615-8926-65794f583b4f	\N	{}
e09bcfff-5da6-445e-a9a9-d35eaffec4fa	campuses	northwestern/4	\N	2025-02-09 18:10:34.160087+00	2025-02-09 18:10:34.160087+00	2025-02-09 18:10:34.160087+00	{"eTag": "\\"8c3294e404db8a2801b094319f657006\\"", "size": 161068, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.158Z", "contentLength": 161068, "httpStatusCode": 200}	f7a2df40-2bab-4a02-abf0-9b3690182ec6	\N	{}
9e21a7f6-c5d5-499d-92d2-1f058fce1079	campuses	northwestern/5	\N	2025-02-09 18:10:34.19523+00	2025-02-09 18:10:34.19523+00	2025-02-09 18:10:34.19523+00	{"eTag": "\\"ebf6e7d5882d9deec1404e69bccc1246\\"", "size": 5380184, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.170Z", "contentLength": 5380184, "httpStatusCode": 200}	d162c92a-bf6d-4339-8b3e-b71e2e5a403c	\N	{}
5895d123-3791-4fe3-bfd6-e9c537c72f8e	campuses	northwestern/9	\N	2025-02-09 18:10:34.205656+00	2025-02-09 18:10:34.205656+00	2025-02-09 18:10:34.205656+00	{"eTag": "\\"1e1293a8026069bd7db31ea829405576\\"", "size": 560181, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.203Z", "contentLength": 560181, "httpStatusCode": 200}	42893054-866b-4bab-bf25-96e721d505e4	\N	{}
c9cdb6b9-3120-468a-af71-1a824b8cad04	campuses	northwestern/2	\N	2025-02-09 18:10:34.222194+00	2025-02-09 18:10:34.222194+00	2025-02-09 18:10:34.222194+00	{"eTag": "\\"954aa6d5a7772d67c2c1c2587f76edf9\\"", "size": 2746502, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.213Z", "contentLength": 2746502, "httpStatusCode": 200}	1a99fb16-8a05-4cec-bad0-a2a0550fb7c8	\N	{}
a02e2511-d628-4105-bd3f-953e7b56060d	campuses	northwestern/3	\N	2025-02-09 18:10:34.234942+00	2025-02-09 18:10:34.234942+00	2025-02-09 18:10:34.234942+00	{"eTag": "\\"e6f4f9d3af49847186223b9697f96d1e\\"", "size": 219064, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.231Z", "contentLength": 219064, "httpStatusCode": 200}	6e13aee0-c652-4b29-b05b-a5cad530f0fd	\N	{}
7292712d-c5ce-4566-94ca-e30ec09b2b53	campuses	ric/6	\N	2025-02-09 18:10:34.24788+00	2025-02-09 18:10:34.24788+00	2025-02-09 18:10:34.24788+00	{"eTag": "\\"001eddcab57912297ddfd57d0f4cec00\\"", "size": 1068324, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.244Z", "contentLength": 1068324, "httpStatusCode": 200}	e7d28bee-3629-4cc7-9c23-eb102673de7b	\N	{}
dc1667f7-33bd-4418-bf1f-0b9c29d051a9	campuses	ric/7	\N	2025-02-09 18:10:34.255332+00	2025-02-09 18:10:34.255332+00	2025-02-09 18:10:34.255332+00	{"eTag": "\\"e89acfddd3540955377cc961ccd7a631\\"", "size": 187102, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.253Z", "contentLength": 187102, "httpStatusCode": 200}	73e167be-90a7-4dc3-8784-62633cba4538	\N	{}
d6bffb09-36b7-47f8-bb8e-b4b9a941e693	campuses	ric/8	\N	2025-02-09 18:10:34.265342+00	2025-02-09 18:10:34.265342+00	2025-02-09 18:10:34.265342+00	{"eTag": "\\"d5f834d4003343f7553ddd58838d6150\\"", "size": 120487, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.264Z", "contentLength": 120487, "httpStatusCode": 200}	8d3d650c-ee07-423d-af36-f529e6da96aa	\N	{}
c7858c4a-f0ff-4a87-bb04-d21c8ac41f78	campuses	ric/4	\N	2025-02-09 18:10:34.271866+00	2025-02-09 18:10:34.271866+00	2025-02-09 18:10:34.271866+00	{"eTag": "\\"507d73815d3fd6cbfada6f5330a7f16d\\"", "size": 140990, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.270Z", "contentLength": 140990, "httpStatusCode": 200}	0b1a3838-7360-4915-b962-d5576fa641b8	\N	{}
0949238b-7ea9-48b7-bef5-5997400da3ee	campuses	ric/9	\N	2025-02-09 18:10:34.277406+00	2025-02-09 18:10:34.277406+00	2025-02-09 18:10:34.277406+00	{"eTag": "\\"7926e87697f4f36cd08155eec4882cc8\\"", "size": 195590, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.275Z", "contentLength": 195590, "httpStatusCode": 200}	f445c62f-d45c-4337-b0f4-1adc4468be74	\N	{}
e7dc66fa-a1b5-40dc-a7f4-a4fc0ebd1d74	campuses	ric/5	\N	2025-02-09 18:10:34.283515+00	2025-02-09 18:10:34.283515+00	2025-02-09 18:10:34.283515+00	{"eTag": "\\"c78c2a1ab01de5b5068c9e583ec5b3a4\\"", "size": 186165, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.282Z", "contentLength": 186165, "httpStatusCode": 200}	241bded0-8a0e-4556-8f1f-8d324b7525c0	\N	{}
8f534d5b-17b4-4beb-9396-93802041526c	campuses	ric/2	\N	2025-02-09 18:10:34.291986+00	2025-02-09 18:10:34.291986+00	2025-02-09 18:10:34.291986+00	{"eTag": "\\"9d36af97028c227a077b7dea2d73cf23\\"", "size": 517779, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.289Z", "contentLength": 517779, "httpStatusCode": 200}	a66111a6-6ad8-4ec8-9308-0a23483482c1	\N	{}
850d0484-3b56-4550-ae4c-1e6b0523ed79	campuses	ric/3	\N	2025-02-09 18:10:34.299026+00	2025-02-09 18:10:34.299026+00	2025-02-09 18:10:34.299026+00	{"eTag": "\\"802d3b92cc4d746259a6af3f9594b64e\\"", "size": 430097, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.296Z", "contentLength": 430097, "httpStatusCode": 200}	29f89c26-3a0d-4311-a169-a5d36b12ba7d	\N	{}
8f1e9fad-4b06-4028-bb10-6d1ce9988259	campuses	ric/1	\N	2025-02-09 18:10:34.30751+00	2025-02-09 18:10:34.30751+00	2025-02-09 18:10:34.30751+00	{"eTag": "\\"607243a8a994b0b39e550dff670422b8\\"", "size": 431515, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.305Z", "contentLength": 431515, "httpStatusCode": 200}	b0485559-0a96-47ec-8c12-a133f844c889	\N	{}
0d271e66-54c9-4537-89c4-ffccaa5709d6	campuses	ric/0	\N	2025-02-09 18:10:34.317326+00	2025-02-09 18:10:34.317326+00	2025-02-09 18:10:34.317326+00	{"eTag": "\\"a12eb8ac11725eb1fa141e1aa3c6401d\\"", "size": 367845, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.315Z", "contentLength": 367845, "httpStatusCode": 200}	e0c0a5f7-37d6-4cad-beba-d434df97562c	\N	{}
c8f3cb1b-00e0-49c0-8787-8fe37d5cd039	campuses	du/0	\N	2025-02-09 18:10:34.325856+00	2025-02-09 18:10:34.325856+00	2025-02-09 18:10:34.325856+00	{"eTag": "\\"1d18479d7cefb2db8292c08b3db9f270\\"", "size": 420076, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.323Z", "contentLength": 420076, "httpStatusCode": 200}	e3ca0f96-0abf-43ac-a85b-71b38073ca49	\N	{}
3c8f34c8-feed-412a-b0f0-1075c72a4aa5	campuses	du/8	\N	2025-02-09 18:10:34.338904+00	2025-02-09 18:10:34.338904+00	2025-02-09 18:10:34.338904+00	{"eTag": "\\"9fe3cb2b7313dc79bb477bc8fde184a7\\"", "size": 146, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.337Z", "contentLength": 146, "httpStatusCode": 200}	9810e9fa-7661-473a-bf45-3cf01190fa21	\N	{}
81c9d6c0-ef2f-439d-aaca-f5465b412432	campuses	du/9	\N	2025-02-09 18:10:34.350392+00	2025-02-09 18:10:34.350392+00	2025-02-09 18:10:34.350392+00	{"eTag": "\\"7abf416853e465365e75626ad2c107df\\"", "size": 576503, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.347Z", "contentLength": 576503, "httpStatusCode": 200}	aa64c7ca-281e-4995-afeb-d292fd26c2e9	\N	{}
d6447c99-5138-4868-9477-c2c037d8adbd	campuses	du/6	\N	2025-02-09 18:10:34.398403+00	2025-02-09 18:10:34.398403+00	2025-02-09 18:10:34.398403+00	{"eTag": "\\"d5f550caba1b4d93cec37711b226d03f\\"", "size": 123159, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.357Z", "contentLength": 123159, "httpStatusCode": 200}	a16ca486-7b24-41ac-a496-7134f27b1115	\N	{}
f0ff6c5e-9b4f-4473-a6d1-d8867d48180c	campuses	du/7	\N	2025-02-09 18:10:34.4068+00	2025-02-09 18:10:34.4068+00	2025-02-09 18:10:34.4068+00	{"eTag": "\\"03b36600e2b530226575e64185eafafd\\"", "size": 192481, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.405Z", "contentLength": 192481, "httpStatusCode": 200}	1752b65a-9180-4d45-ae87-d219f4d01643	\N	{}
506a576a-ee99-4560-8032-a67a8f241e44	campuses	du/5	\N	2025-02-09 18:10:34.415518+00	2025-02-09 18:10:34.415518+00	2025-02-09 18:10:34.415518+00	{"eTag": "\\"aa60b657093da508966c62063d992c35\\"", "size": 190779, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.413Z", "contentLength": 190779, "httpStatusCode": 200}	5325f63d-b87b-4e0e-87ca-0927a60b92da	\N	{}
e2475b4d-645e-4b3f-8fab-a568f13fb8a5	campuses	du/4	\N	2025-02-09 18:10:34.427168+00	2025-02-09 18:10:34.427168+00	2025-02-09 18:10:34.427168+00	{"eTag": "\\"394932e05e8d08796c18b97d4e65f8fd\\"", "size": 691974, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.423Z", "contentLength": 691974, "httpStatusCode": 200}	313b2b5a-7385-4ade-b806-7966533913c5	\N	{}
ec1f4da3-66e6-4b9b-b552-9955da33ff50	campuses	du/2	\N	2025-02-09 18:10:34.43949+00	2025-02-09 18:10:34.43949+00	2025-02-09 18:10:34.43949+00	{"eTag": "\\"badb416096af36294c0f8baf2d545134\\"", "size": 913534, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.435Z", "contentLength": 913534, "httpStatusCode": 200}	fd5fea35-d3de-43ed-bbc7-bc7f6bafcd58	\N	{}
d961afc9-7b2d-4240-9ed8-08687243676a	campuses	du/1	\N	2025-02-09 18:10:34.450435+00	2025-02-09 18:10:34.450435+00	2025-02-09 18:10:34.450435+00	{"eTag": "\\"7bee9dc8811e2443f03aff4636fff00c\\"", "size": 558413, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.447Z", "contentLength": 558413, "httpStatusCode": 200}	2a059f46-93b9-426c-bb5f-ae150563bb0c	\N	{}
559a6b5e-eb34-49f6-aa5f-130155fb3a59	campuses	du/3	\N	2025-02-09 18:10:34.459341+00	2025-02-09 18:10:34.459341+00	2025-02-09 18:10:34.459341+00	{"eTag": "\\"8592b036a63586e08ddd9132cb2466d5\\"", "size": 205708, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.457Z", "contentLength": 205708, "httpStatusCode": 200}	38e87537-a67b-4b1f-887e-1985e539d417	\N	{}
92e2db7c-15b9-475b-a52e-573dac3c12b9	campuses	siue/4	\N	2025-02-09 18:10:36.416863+00	2025-02-09 18:10:36.416863+00	2025-02-09 18:10:36.416863+00	{"eTag": "\\"bdf80cf6cc146b72a9b288d5d8a4a7db\\"", "size": 1008791, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.412Z", "contentLength": 1008791, "httpStatusCode": 200}	f3ff8a13-69c5-468e-970a-a8158b3402b8	\N	{}
31148674-cf7a-4749-9f02-313fa1c27d34	campuses	siue/5	\N	2025-02-09 18:10:36.432685+00	2025-02-09 18:10:36.432685+00	2025-02-09 18:10:36.432685+00	{"eTag": "\\"f86b5705059daaef6e7de44c29ed5ace\\"", "size": 84850, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.431Z", "contentLength": 84850, "httpStatusCode": 200}	251fb8ea-a2da-445a-a858-b4b693e015e2	\N	{}
d5a860e6-ebee-40e4-9e2f-7018eac41a80	campuses	siue/9	\N	2025-02-09 18:10:36.44397+00	2025-02-09 18:10:36.44397+00	2025-02-09 18:10:36.44397+00	{"eTag": "\\"3069c67df497e25763a7c454119b5bf0\\"", "size": 1027424, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.439Z", "contentLength": 1027424, "httpStatusCode": 200}	09ed6655-4141-4688-9c30-ebd18050e2ac	\N	{}
f5e7f82c-45b1-4550-8137-caf3eb76dbd6	campuses	siue/2	\N	2025-02-09 18:10:36.452981+00	2025-02-09 18:10:36.452981+00	2025-02-09 18:10:36.452981+00	{"eTag": "\\"8a7fd79b2d683c03dfafc733b081134e\\"", "size": 49797, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.451Z", "contentLength": 49797, "httpStatusCode": 200}	bd30cb23-6621-4963-866a-223dc4e87eb7	\N	{}
7c6db891-aeea-474d-b9c4-ac217f60f79f	campuses	siue/3	\N	2025-02-09 18:10:36.469852+00	2025-02-09 18:10:36.469852+00	2025-02-09 18:10:36.469852+00	{"eTag": "\\"3fee3e5c261fd4b75555a528932d9b5e\\"", "size": 1780377, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.463Z", "contentLength": 1780377, "httpStatusCode": 200}	a63f6c7a-d0c6-40b1-a49e-fb02752ed01c	\N	{}
216a838c-8ee7-41fc-8efd-eb5697a475c8	campuses	csudh/0	\N	2025-02-09 18:10:36.485448+00	2025-02-09 18:10:36.485448+00	2025-02-09 18:10:36.485448+00	{"eTag": "\\"cd0354782f636edc7bdd48c2b82e7580\\"", "size": 611990, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.481Z", "contentLength": 611990, "httpStatusCode": 200}	292f3868-eacc-40d9-8ea1-ef8233af462c	\N	{}
19593ed2-4645-4f78-8d1a-ed03a3bab4ba	campuses	csudh/5	\N	2025-02-09 18:10:36.495171+00	2025-02-09 18:10:36.495171+00	2025-02-09 18:10:36.495171+00	{"eTag": "\\"9fe3cb2b7313dc79bb477bc8fde184a7\\"", "size": 146, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.494Z", "contentLength": 146, "httpStatusCode": 200}	812dc4f0-c0a2-49c8-9ef1-ba3570a6f14b	\N	{}
f236ade7-24f6-4e9b-a95b-d2cf9a97f4c7	campuses	csudh/1	\N	2025-02-09 18:10:36.505167+00	2025-02-09 18:10:36.505167+00	2025-02-09 18:10:36.505167+00	{"eTag": "\\"73f6d7c05086244729e5e1b27bde637a\\"", "size": 529046, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.501Z", "contentLength": 529046, "httpStatusCode": 200}	be58c2c1-f461-406b-a93b-5d39f678bbf2	\N	{}
57a426a7-cb75-4911-9f63-9957d4fce9d4	campuses	csudh/3	\N	2025-02-09 18:10:36.517317+00	2025-02-09 18:10:36.517317+00	2025-02-09 18:10:36.517317+00	{"eTag": "\\"9fe3cb2b7313dc79bb477bc8fde184a7\\"", "size": 146, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.516Z", "contentLength": 146, "httpStatusCode": 200}	0fc3a089-fab9-49e6-af14-4b7c7a2b9935	\N	{}
d15e0e12-f57b-4a97-8020-392b1e6678dd	campuses	csudh/6	\N	2025-02-09 18:10:36.525552+00	2025-02-09 18:10:36.525552+00	2025-02-09 18:10:36.525552+00	{"eTag": "\\"c6575df671af2f4fb18ed2029c0d5263\\"", "size": 111285, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.524Z", "contentLength": 111285, "httpStatusCode": 200}	3ff3c7f4-0672-43d3-a663-7e9da32da09c	\N	{}
ba713a7f-0e4c-4b20-ae02-8d482f325dd1	campuses	csudh/8	\N	2025-02-09 18:10:36.533445+00	2025-02-09 18:10:36.533445+00	2025-02-09 18:10:36.533445+00	{"eTag": "\\"0dd391ae6024b431c7a9ffc510a92131\\"", "size": 124646, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.532Z", "contentLength": 124646, "httpStatusCode": 200}	9bb58cf8-cc33-476c-92c9-04d48a90d9a1	\N	{}
eb8cd620-7c3a-4e8f-a2a6-9cb2b57bceae	campuses	csudh/4	\N	2025-02-09 18:10:36.543079+00	2025-02-09 18:10:36.543079+00	2025-02-09 18:10:36.543079+00	{"eTag": "\\"5118cdf6e85321737c817c4df4d317ba\\"", "size": 547947, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.540Z", "contentLength": 547947, "httpStatusCode": 200}	157dd48c-b707-45fa-89a9-c336fbdc7ee4	\N	{}
dd49c796-d2c1-435d-9520-e852e91875b7	campuses	csudh/9	\N	2025-02-09 18:10:36.552082+00	2025-02-09 18:10:36.552082+00	2025-02-09 18:10:36.552082+00	{"eTag": "\\"2525f8aee17b51490e19641710e2f689\\"", "size": 302126, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.550Z", "contentLength": 302126, "httpStatusCode": 200}	c06c6c44-d609-486f-842e-205b7e563e2b	\N	{}
e6081d6a-0b76-462f-95e5-37252ccab78f	campuses	csudh/2	\N	2025-02-09 18:10:36.570547+00	2025-02-09 18:10:36.570547+00	2025-02-09 18:10:36.570547+00	{"eTag": "\\"c5f2a44f0643da0a243754ae038c5d2f\\"", "size": 1516329, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.565Z", "contentLength": 1516329, "httpStatusCode": 200}	25a68e3a-0e96-410f-94c0-c375dd7b3254	\N	{}
7cb476d4-3b66-434c-b26f-6a7a07be76da	campuses	csudh/7	\N	2025-02-09 18:10:36.5797+00	2025-02-09 18:10:36.5797+00	2025-02-09 18:10:36.5797+00	{"eTag": "\\"9fe3cb2b7313dc79bb477bc8fde184a7\\"", "size": 146, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.578Z", "contentLength": 146, "httpStatusCode": 200}	946fbe38-6c0e-4f8a-aa39-41aa9fdb6f20	\N	{}
4aeb358c-e5ae-41f7-ab99-dc22fd693545	campuses	colorado/0	\N	2025-02-09 18:10:36.589519+00	2025-02-09 18:10:36.589519+00	2025-02-09 18:10:36.589519+00	{"eTag": "\\"ce693e3214b9bf01028921ade69d4ce5\\"", "size": 244194, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.587Z", "contentLength": 244194, "httpStatusCode": 200}	605243ff-c283-4cf6-9b71-1ff5ebefc320	\N	{}
eccfc8dc-cffc-49cd-9ef4-2edc1a7c642c	campuses	colorado/1	\N	2025-02-09 18:10:36.598408+00	2025-02-09 18:10:36.598408+00	2025-02-09 18:10:36.598408+00	{"eTag": "\\"67a655ee13c4bafc0b5ac78654b3ed46\\"", "size": 209288, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.596Z", "contentLength": 209288, "httpStatusCode": 200}	2e07769b-6df1-4d3c-9ad6-2e9669d90f33	\N	{}
590b2b62-5136-4b5f-a362-6718d47cd609	campuses	colorado/4	\N	2025-02-09 18:10:36.606116+00	2025-02-09 18:10:36.606116+00	2025-02-09 18:10:36.606116+00	{"eTag": "\\"e8696b6b472de94679e80ba0344bd381\\"", "size": 37206, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.605Z", "contentLength": 37206, "httpStatusCode": 200}	8d6912ba-ffc2-4747-934a-e8b114f6d890	\N	{}
03fe23c1-b145-4d57-ad89-983f44a115d3	campuses	colorado/3	\N	2025-02-09 18:10:36.614041+00	2025-02-09 18:10:36.614041+00	2025-02-09 18:10:36.614041+00	{"eTag": "\\"c60e8e1474254ec5e4044658c1878f46\\"", "size": 386, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.612Z", "contentLength": 386, "httpStatusCode": 200}	6003d887-67d7-416e-9d60-ff85aaa56517	\N	{}
3401d759-f20f-47ee-a994-8f713595bbed	campuses	colorado/6	\N	2025-02-09 18:10:36.622529+00	2025-02-09 18:10:36.622529+00	2025-02-09 18:10:36.622529+00	{"eTag": "\\"6e4f321332bd9974b8ae400d4f825259\\"", "size": 179165, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.620Z", "contentLength": 179165, "httpStatusCode": 200}	23dc792b-8db4-4a13-b94e-13af5175bfc9	\N	{}
06c18dc9-0ea4-4860-809b-8bfe13bf83dd	campuses	colorado/8	\N	2025-02-09 18:10:36.635853+00	2025-02-09 18:10:36.635853+00	2025-02-09 18:10:36.635853+00	{"eTag": "\\"18deeaac0f7458cb49f89c6496e7d4e9\\"", "size": 1515776, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.630Z", "contentLength": 1515776, "httpStatusCode": 200}	76b5c3fc-1ecd-41be-ab19-5883ef49048f	\N	{}
03cc0289-b3ad-4f7d-96ed-e18c54ea27b6	campuses	colorado/7	\N	2025-02-09 18:10:36.646068+00	2025-02-09 18:10:36.646068+00	2025-02-09 18:10:36.646068+00	{"eTag": "\\"90a258aa03aac96cfd391286f46b3b06\\"", "size": 16271, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.645Z", "contentLength": 16271, "httpStatusCode": 200}	37993b57-a2a8-40a0-aafb-88a577c4caf2	\N	{}
869a461d-3b98-43ca-accd-9692b35ce1b6	campuses	colorado/5	\N	2025-02-09 18:10:36.65397+00	2025-02-09 18:10:36.65397+00	2025-02-09 18:10:36.65397+00	{"eTag": "\\"ef878d6651a0316633664acc6a0d7a13\\"", "size": 237773, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.652Z", "contentLength": 237773, "httpStatusCode": 200}	21176118-0cbe-4d3e-99f4-fe109bb08301	\N	{}
878dac07-7ea1-4600-a6bc-8f1cc2421d79	campuses	colorado/9	\N	2025-02-09 18:10:36.661377+00	2025-02-09 18:10:36.661377+00	2025-02-09 18:10:36.661377+00	{"eTag": "\\"7702176ed412f1a14c1cab71eb0f7733\\"", "size": 123689, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.660Z", "contentLength": 123689, "httpStatusCode": 200}	c00c2bab-5bcf-49ca-8fad-7933c977478d	\N	{}
f069c635-7a96-4a57-a89f-36b35a7fa3c8	campuses	colorado/2	\N	2025-02-09 18:10:36.670009+00	2025-02-09 18:10:36.670009+00	2025-02-09 18:10:36.670009+00	{"eTag": "\\"6d64c47671b38bb45529b212d4e5cc98\\"", "size": 300853, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.668Z", "contentLength": 300853, "httpStatusCode": 200}	ee0c3e28-0522-4c57-b940-0e43beab0ccc	\N	{}
84d0bc1e-9a33-454b-85a4-ee20adaec4be	campuses	sdcc/0	\N	2025-02-09 18:10:36.679321+00	2025-02-09 18:10:36.679321+00	2025-02-09 18:10:36.679321+00	{"eTag": "\\"06641dfc74fa7d748e2589986546b1d6\\"", "size": 222764, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.677Z", "contentLength": 222764, "httpStatusCode": 200}	5beb6598-f6dc-4523-b3be-48c9ed8223e1	\N	{}
b5ccc2f9-514f-4f8a-8480-5cf303e61acc	campuses	sdcc/1	\N	2025-02-09 18:10:36.690014+00	2025-02-09 18:10:36.690014+00	2025-02-09 18:10:36.690014+00	{"eTag": "\\"89cd3bf220299d06f76ca7f6a6d5dc99\\"", "size": 573397, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.687Z", "contentLength": 573397, "httpStatusCode": 200}	07e38d14-8a39-4155-9aed-dfc2fd7df0a8	\N	{}
68a63693-1df7-4967-8490-6edc5bb309c1	campuses	sdcc/6	\N	2025-02-09 18:10:36.709055+00	2025-02-09 18:10:36.709055+00	2025-02-09 18:10:36.709055+00	{"eTag": "\\"24218914498680ecc22d9b9883673d0a\\"", "size": 314367, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.702Z", "contentLength": 314367, "httpStatusCode": 200}	e633599a-1bd3-416d-b1c9-2fee029ab25c	\N	{}
b29a6239-2c1b-4ba1-834d-cf57e0738aa3	campuses	sdcc/8	\N	2025-02-09 18:10:36.720491+00	2025-02-09 18:10:36.720491+00	2025-02-09 18:10:36.720491+00	{"eTag": "\\"c9108fb49cb8702d6d404cc4796948ca\\"", "size": 528404, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.716Z", "contentLength": 528404, "httpStatusCode": 200}	0ba83f34-9a66-4d37-a338-112fcfd2216e	\N	{}
cddad13e-25f4-4c91-8484-f146641806ec	campuses	sdcc/4	\N	2025-02-09 18:10:36.73048+00	2025-02-09 18:10:36.73048+00	2025-02-09 18:10:36.73048+00	{"eTag": "\\"d8343d68f7b9cbd04524b55ca5b1274e\\"", "size": 96704, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.728Z", "contentLength": 96704, "httpStatusCode": 200}	da99f04d-b1ca-48a9-ba61-2d9e4b292b6f	\N	{}
28344f0e-c290-4729-beb5-abe354b121cd	campuses	sdcc/5	\N	2025-02-09 18:10:36.740638+00	2025-02-09 18:10:36.740638+00	2025-02-09 18:10:36.740638+00	{"eTag": "\\"f0065742899c1161ea4de6f4f2c45060\\"", "size": 171152, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.738Z", "contentLength": 171152, "httpStatusCode": 200}	61f3be8f-9f92-4c31-85cb-3b9a496308d3	\N	{}
80267100-348c-4f37-8cdf-1a75aa7a4f87	campuses	sdcc/9	\N	2025-02-09 18:10:36.750423+00	2025-02-09 18:10:36.750423+00	2025-02-09 18:10:36.750423+00	{"eTag": "\\"9a3b397398ac19672c18423b2f33b8ab\\"", "size": 82799, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.748Z", "contentLength": 82799, "httpStatusCode": 200}	878a35ee-15bb-414b-bbe4-cd94fdaafa08	\N	{}
524a51e9-4b77-46ab-8a38-b19073223c09	campuses	sdcc/2	\N	2025-02-09 18:10:36.763585+00	2025-02-09 18:10:36.763585+00	2025-02-09 18:10:36.763585+00	{"eTag": "\\"dc97d2ad9a901d47f9cfa7eade90f190\\"", "size": 326494, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.760Z", "contentLength": 326494, "httpStatusCode": 200}	8149d2a0-e1de-4ab5-95d0-16ec3c5686f1	\N	{}
eb2684a1-d250-427b-8fba-2290a3dfaa40	campuses	sdcc/7	\N	2025-02-09 18:10:36.774686+00	2025-02-09 18:10:36.774686+00	2025-02-09 18:10:36.774686+00	{"eTag": "\\"82e3f4012333d33d7f13f20894e3dc7d\\"", "size": 27407, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.773Z", "contentLength": 27407, "httpStatusCode": 200}	aa189d9a-7a1e-4fb0-9f35-a2b226ee6702	\N	{}
634805da-87a0-4a0d-875d-01782c26714e	campuses	sdcc/3	\N	2025-02-09 18:10:36.784222+00	2025-02-09 18:10:36.784222+00	2025-02-09 18:10:36.784222+00	{"eTag": "\\"0033d08804512870f1b2342ead2f09c2\\"", "size": 116629, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.782Z", "contentLength": 116629, "httpStatusCode": 200}	89cb019c-1a3c-4174-a3e4-506342c728c1	\N	{}
d68a60e9-eeb3-48b9-86c7-19cd4e163daa	campuses	smith/0	\N	2025-02-09 18:10:36.796068+00	2025-02-09 18:10:36.796068+00	2025-02-09 18:10:36.796068+00	{"eTag": "\\"162bd9748c4e3e88a62c3d19e6cd35e3\\"", "size": 160570, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.791Z", "contentLength": 160570, "httpStatusCode": 200}	8e0dde9c-58a6-4b4b-b0a0-b04d34674bfc	\N	{}
bdc77a73-99dc-45ad-8111-b12cd4e5587f	campuses	smith/8	\N	2025-02-09 18:10:36.807017+00	2025-02-09 18:10:36.807017+00	2025-02-09 18:10:36.807017+00	{"eTag": "\\"0da0e803e01207e5cc2e7223ff4fcc84\\"", "size": 97282, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.805Z", "contentLength": 97282, "httpStatusCode": 200}	50195690-6d24-4edc-a3d9-df6e9530cb6e	\N	{}
7ffc20c5-ad3e-4a4d-885d-523447570fdf	campuses	smith/1	\N	2025-02-09 18:10:36.823118+00	2025-02-09 18:10:36.823118+00	2025-02-09 18:10:36.823118+00	{"eTag": "\\"b80f01b6de9d9b7ea16a3cd572fba9f1\\"", "size": 1042155, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.817Z", "contentLength": 1042155, "httpStatusCode": 200}	bed45a49-1b11-4469-82a8-61c08a4a70ec	\N	{}
fd53ccf9-dd39-46f7-8541-6f2e7d6411bd	campuses	smith/6	\N	2025-02-09 18:10:36.833914+00	2025-02-09 18:10:36.833914+00	2025-02-09 18:10:36.833914+00	{"eTag": "\\"1bc9c231d7c228212cef1af2afe8eb65\\"", "size": 213291, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.830Z", "contentLength": 213291, "httpStatusCode": 200}	6a1c8fd3-fed4-4074-a646-7445aba79ff2	\N	{}
5cffa659-3ff9-4cc4-be8e-66ab89b1ce0e	campuses	smith/7	\N	2025-02-09 18:10:36.844254+00	2025-02-09 18:10:36.844254+00	2025-02-09 18:10:36.844254+00	{"eTag": "\\"f19f6fc637884875c3083fcf5b2bf238\\"", "size": 442615, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.841Z", "contentLength": 442615, "httpStatusCode": 200}	cd40c12f-7bc2-4265-9113-e48b107c6e17	\N	{}
b740ddf6-197b-442d-a256-71e31a8b88d1	campuses	smith/4	\N	2025-02-09 18:10:36.857112+00	2025-02-09 18:10:36.857112+00	2025-02-09 18:10:36.857112+00	{"eTag": "\\"8b09c4e0c7fe17cb88f8fd95c025c07e\\"", "size": 551413, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.852Z", "contentLength": 551413, "httpStatusCode": 200}	e9934ea7-ac2e-44ee-bb29-6905a9d08cdf	\N	{}
721dd97c-2d53-4efe-aaea-717b06cc7c80	campuses	smith/5	\N	2025-02-09 18:10:36.873579+00	2025-02-09 18:10:36.873579+00	2025-02-09 18:10:36.873579+00	{"eTag": "\\"64eb0ad06165907eea2a4e1179be13cb\\"", "size": 520075, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.866Z", "contentLength": 520075, "httpStatusCode": 200}	01bf42e0-0dac-4c6b-89c2-e35d269731a5	\N	{}
df4cb88b-22a6-439a-bb3d-3ceb5e45fef9	campuses	mtsu/8	\N	2025-02-09 18:10:37.433954+00	2025-02-09 18:10:37.433954+00	2025-02-09 18:10:37.433954+00	{"eTag": "\\"9691ddc65a7eedbcf7fae25916ce1466\\"", "size": 1170151, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.429Z", "contentLength": 1170151, "httpStatusCode": 200}	e12d04f7-4fef-474f-a09f-b95c2484e9b2	\N	{}
9006732a-a121-4f7d-b48e-9056643a7fb7	campuses	mtsu/4	\N	2025-02-09 18:10:37.444922+00	2025-02-09 18:10:37.444922+00	2025-02-09 18:10:37.444922+00	{"eTag": "\\"b16fd33c54d324c10a2e20c2146124cb\\"", "size": 716690, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.441Z", "contentLength": 716690, "httpStatusCode": 200}	62060296-b91e-4e6b-8bec-44a7491adf45	\N	{}
08d79b5d-30d0-4c1b-b041-8dd3d9dba985	campuses	mtsu/5	\N	2025-02-09 18:10:37.459084+00	2025-02-09 18:10:37.459084+00	2025-02-09 18:10:37.459084+00	{"eTag": "\\"75fcc7c5dcd0361391bf7d504638dfde\\"", "size": 1120470, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.454Z", "contentLength": 1120470, "httpStatusCode": 200}	0149d4a6-df1b-491a-968e-1b6f3da21aff	\N	{}
92c0dcb3-df0f-4e53-b828-566a7221952a	campuses	mtsu/9	\N	2025-02-09 18:10:37.467698+00	2025-02-09 18:10:37.467698+00	2025-02-09 18:10:37.467698+00	{"eTag": "\\"c16577c41d39c13b677c3467bc63ec92\\"", "size": 133826, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.466Z", "contentLength": 133826, "httpStatusCode": 200}	e4a9ec02-c51d-45fe-a7a3-7606398cd9af	\N	{}
91567af8-918d-470a-9f32-6983fd205fe5	campuses	mtsu/6	\N	2025-02-09 18:10:37.473773+00	2025-02-09 18:10:37.473773+00	2025-02-09 18:10:37.473773+00	{"eTag": "\\"9fe3cb2b7313dc79bb477bc8fde184a7\\"", "size": 146, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.472Z", "contentLength": 146, "httpStatusCode": 200}	b3804de2-ac28-4234-af2f-f69461e64427	\N	{}
69159d63-efe1-434a-9c2d-446e44844929	campuses	mtsu/3	\N	2025-02-09 18:10:37.484432+00	2025-02-09 18:10:37.484432+00	2025-02-09 18:10:37.484432+00	{"eTag": "\\"5387b5ed92f24be59b8a2daa836e1728\\"", "size": 257859, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.481Z", "contentLength": 257859, "httpStatusCode": 200}	8804ce55-2bd4-45fe-afa4-c61f0d98b86c	\N	{}
afdc1617-60b7-43fa-ab29-65497b7eff19	campuses	menlo/0	\N	2025-02-09 18:10:37.495231+00	2025-02-09 18:10:37.495231+00	2025-02-09 18:10:37.495231+00	{"eTag": "\\"95fde6fe65670669f554161a7f07598a\\"", "size": 197199, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.491Z", "contentLength": 197199, "httpStatusCode": 200}	dd38d7cc-931a-4f54-8b3c-f7d272434a09	\N	{}
53baa6fd-67bb-42bb-b04e-44f3e54585e3	campuses	dsu/1	\N	2025-02-09 18:10:37.506036+00	2025-02-09 18:10:37.506036+00	2025-02-09 18:10:37.506036+00	{"eTag": "\\"ba158c9e3360cf87efe11414ed3bd8fc\\"", "size": 51660, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.504Z", "contentLength": 51660, "httpStatusCode": 200}	b5c4f539-8804-4f8f-9a8e-afb9609804fa	\N	{}
d0d1765f-5be5-44e5-adb2-417de28d0078	campuses	dsu/6	\N	2025-02-09 18:10:37.51487+00	2025-02-09 18:10:37.51487+00	2025-02-09 18:10:37.51487+00	{"eTag": "\\"408aeac93ae245f04a5fa51267a6665f\\"", "size": 29974, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.513Z", "contentLength": 29974, "httpStatusCode": 200}	00caac19-1402-459a-a9eb-61d25d6ebf2b	\N	{}
985d9e60-8217-4877-9992-7792aa2e619e	campuses	dsu/2	\N	2025-02-09 18:10:37.523973+00	2025-02-09 18:10:37.523973+00	2025-02-09 18:10:37.523973+00	{"eTag": "\\"8f71af394af5a1f930190d7225d7f449\\"", "size": 117117, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.522Z", "contentLength": 117117, "httpStatusCode": 200}	32361b83-f996-4d42-b5e1-195b33f7836a	\N	{}
c79f71aa-edac-4051-a685-74784cbfc40e	campuses	brevard/8	\N	2025-02-09 18:10:37.532506+00	2025-02-09 18:10:37.532506+00	2025-02-09 18:10:37.532506+00	{"eTag": "\\"56fe012646501d1391065ce2ffe96cb3\\"", "size": 379722, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.530Z", "contentLength": 379722, "httpStatusCode": 200}	7ca0af7a-fb91-441d-af0f-447221714a78	\N	{}
d3d070da-a642-4cf4-a225-0fcce9fa933c	campuses	brevard/1	\N	2025-02-09 18:10:37.540688+00	2025-02-09 18:10:37.540688+00	2025-02-09 18:10:37.540688+00	{"eTag": "\\"64cc819e95764c533b992116ebfa75f5\\"", "size": 204356, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.539Z", "contentLength": 204356, "httpStatusCode": 200}	e6bedce9-e29d-4352-9d0b-158db7c76257	\N	{}
cb6b1a04-8733-4f39-9e45-6480469af2dc	campuses	brevard/3	\N	2025-02-09 18:10:37.549458+00	2025-02-09 18:10:37.549458+00	2025-02-09 18:10:37.549458+00	{"eTag": "\\"fa088fbda03fe3f55c0adb4908452814\\"", "size": 451098, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.546Z", "contentLength": 451098, "httpStatusCode": 200}	e5a98b25-904f-4416-b3b1-254c384f3116	\N	{}
ba86a9bc-8d4b-4c11-93be-adccb414ccdb	campuses	bethelcollege/0	\N	2025-02-09 18:10:37.557423+00	2025-02-09 18:10:37.557423+00	2025-02-09 18:10:37.557423+00	{"eTag": "\\"c90d3160690d8a9762befcd3a4b3a6bb\\"", "size": 18326, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.556Z", "contentLength": 18326, "httpStatusCode": 200}	747280fd-a071-41a2-9f79-bf08dc1180d3	\N	{}
c75f9d08-59e7-4607-be76-45df88f27dd5	campuses	ku/4	\N	2025-02-09 18:10:38.53547+00	2025-02-09 18:10:38.53547+00	2025-02-09 18:10:38.53547+00	{"eTag": "\\"0e22eba526f19ca82f19e2e1388f21e2\\"", "size": 133909, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.534Z", "contentLength": 133909, "httpStatusCode": 200}	068add89-24c6-4b0f-bc8b-c3b123d47eaf	\N	{}
4e902933-2acb-4e88-a452-5bc356f82f74	campuses	ku/5	\N	2025-02-09 18:10:38.546861+00	2025-02-09 18:10:38.546861+00	2025-02-09 18:10:38.546861+00	{"eTag": "\\"0200dc7af06efc500f810ea2ec9c63d1\\"", "size": 699364, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.543Z", "contentLength": 699364, "httpStatusCode": 200}	3d33866d-124f-4535-a7c9-3d95adfd2636	\N	{}
812930cf-b373-4e60-b49f-41b094a1ab42	campuses	ku/2	\N	2025-02-09 18:10:38.555819+00	2025-02-09 18:10:38.555819+00	2025-02-09 18:10:38.555819+00	{"eTag": "\\"689c8428a40cf5269588d85e0993629b\\"", "size": 118819, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.554Z", "contentLength": 118819, "httpStatusCode": 200}	6cf7b6d2-1148-48f1-8a47-e634e6009d2f	\N	{}
d9531ed6-4a25-41f6-b892-a54a02598bee	campuses	ku/3	\N	2025-02-09 18:10:38.56582+00	2025-02-09 18:10:38.56582+00	2025-02-09 18:10:38.56582+00	{"eTag": "\\"06b5cba74e28c405edc49c66a8747bb2\\"", "size": 328918, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.563Z", "contentLength": 328918, "httpStatusCode": 200}	99e60886-85eb-4f71-a7d0-1e20ff1b0649	\N	{}
1addc95e-fb82-4db9-a01e-956865aaccd4	campuses	setonhill/0	\N	2025-02-09 18:10:38.575636+00	2025-02-09 18:10:38.575636+00	2025-02-09 18:10:38.575636+00	{"eTag": "\\"7aad585a2bcae001c1dd1df2d416bac2\\"", "size": 324029, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.573Z", "contentLength": 324029, "httpStatusCode": 200}	732799c1-41d5-4df9-a76b-20d1d667482e	\N	{}
36686021-0e91-440d-80e3-479284bac248	campuses	setonhill/1	\N	2025-02-09 18:10:38.584204+00	2025-02-09 18:10:38.584204+00	2025-02-09 18:10:38.584204+00	{"eTag": "\\"f458f2bf440248028ac1128f6f5f1525\\"", "size": 465810, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.581Z", "contentLength": 465810, "httpStatusCode": 200}	527b0306-7bc2-4270-bb78-d9c268d2b387	\N	{}
48142cac-7eb2-4a37-9ad7-67e1ce9bb04c	campuses	setonhill/7	\N	2025-02-09 18:10:38.592102+00	2025-02-09 18:10:38.592102+00	2025-02-09 18:10:38.592102+00	{"eTag": "\\"a9ac51df386215347fbf94d060038cf7\\"", "size": 142785, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.590Z", "contentLength": 142785, "httpStatusCode": 200}	7a4d64f3-9d67-44ef-90f4-a6d47cc84df4	\N	{}
89e9ac87-6593-42ad-9856-29403152d991	campuses	setonhill/8	\N	2025-02-09 18:10:38.60239+00	2025-02-09 18:10:38.60239+00	2025-02-09 18:10:38.60239+00	{"eTag": "\\"1753d36a292d41f1c5b89073ba744211\\"", "size": 690063, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.599Z", "contentLength": 690063, "httpStatusCode": 200}	075f686a-abd3-44bd-aa3b-b779cccc89ce	\N	{}
1ed7a73b-b225-4bde-99f6-e050c381eb4f	campuses	setonhill/4	\N	2025-02-09 18:10:38.612593+00	2025-02-09 18:10:38.612593+00	2025-02-09 18:10:38.612593+00	{"eTag": "\\"92538c0311566f0859230dbdc0d7e2cf\\"", "size": 338318, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.610Z", "contentLength": 338318, "httpStatusCode": 200}	8139ed99-5076-4005-ace6-6f01172326f5	\N	{}
67241e15-0abe-46f7-977c-0b131a6a6568	campuses	setonhill/5	\N	2025-02-09 18:10:38.620338+00	2025-02-09 18:10:38.620338+00	2025-02-09 18:10:38.620338+00	{"eTag": "\\"99e69c80b9ecdb8c841ba65f6fd7fa4b\\"", "size": 260714, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.618Z", "contentLength": 260714, "httpStatusCode": 200}	d57bf0b5-6502-4a68-addd-5dcb965e666b	\N	{}
3816a289-97f8-4411-8abf-e87f3f62b977	campuses	setonhill/9	\N	2025-02-09 18:10:38.63494+00	2025-02-09 18:10:38.63494+00	2025-02-09 18:10:38.63494+00	{"eTag": "\\"3caeb8eb72cb2b56b8e7463995de227f\\"", "size": 304021, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.627Z", "contentLength": 304021, "httpStatusCode": 200}	be128f8d-03ad-4db6-92f8-22eb64bbb88c	\N	{}
70242396-e399-4a14-a8be-81be44b22012	campuses	setonhill/2	\N	2025-02-09 18:10:38.643807+00	2025-02-09 18:10:38.643807+00	2025-02-09 18:10:38.643807+00	{"eTag": "\\"3bc65d9a95c3f6a0d52c73146239793f\\"", "size": 291076, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.641Z", "contentLength": 291076, "httpStatusCode": 200}	4bba198a-1599-4760-bbab-a8f91fbb6785	\N	{}
07e045c7-83c0-4d39-883a-dbad293c6f98	campuses	setonhill/6	\N	2025-02-09 18:10:38.654367+00	2025-02-09 18:10:38.654367+00	2025-02-09 18:10:38.654367+00	{"eTag": "\\"2305a34e64f6157aac00fca3bbab6ef1\\"", "size": 712676, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.651Z", "contentLength": 712676, "httpStatusCode": 200}	71439f77-089e-4488-8f6d-73e9d33819e8	\N	{}
a0177dac-adee-4bd1-a6c8-a5c5dc0ed541	campuses	setonhill/3	\N	2025-02-09 18:10:38.664841+00	2025-02-09 18:10:38.664841+00	2025-02-09 18:10:38.664841+00	{"eTag": "\\"a698b97c9bf054fac6781aa7dce024dc\\"", "size": 401867, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.662Z", "contentLength": 401867, "httpStatusCode": 200}	44ae6f6d-f2f3-428f-96a4-2e2bd6372e9d	\N	{}
845a3545-d824-4310-b116-2558e9e72df8	campuses	pugetsound/0	\N	2025-02-09 18:10:38.674624+00	2025-02-09 18:10:38.674624+00	2025-02-09 18:10:38.674624+00	{"eTag": "\\"ed2852aa66ef0b7da43b969b9c938c3e\\"", "size": 590022, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.671Z", "contentLength": 590022, "httpStatusCode": 200}	e351f51a-755a-43f4-b316-8b716a0e3baa	\N	{}
2d0b525b-acda-4a96-b21c-6a90ca417abd	campuses	pugetsound/1	\N	2025-02-09 18:10:38.689484+00	2025-02-09 18:10:38.689484+00	2025-02-09 18:10:38.689484+00	{"eTag": "\\"8a0fdbd2e5842e1b8352cdd1c2987548\\"", "size": 1813309, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.683Z", "contentLength": 1813309, "httpStatusCode": 200}	db9bd413-8a34-408a-a345-89465343a818	\N	{}
c3d345d4-b196-4a78-9850-0ef1f76398c3	campuses	pugetsound/7	\N	2025-02-09 18:10:38.714411+00	2025-02-09 18:10:38.714411+00	2025-02-09 18:10:38.714411+00	{"eTag": "\\"4ad2ad11128030f439e132fc33df50b3\\"", "size": 1638163, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.698Z", "contentLength": 1638163, "httpStatusCode": 200}	79f068ec-9df9-4172-baf5-0dd4d234df29	\N	{}
7e89935b-5d9f-4d3b-a900-c841e454b6f9	campuses	pugetsound/8	\N	2025-02-09 18:10:38.732231+00	2025-02-09 18:10:38.732231+00	2025-02-09 18:10:38.732231+00	{"eTag": "\\"0ef6e1734de3cdb39233ba7961198b40\\"", "size": 1924770, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.725Z", "contentLength": 1924770, "httpStatusCode": 200}	4c9d2a27-2522-4b66-b3df-0b6d31363350	\N	{}
a5a676d3-b854-46cc-b98a-55ca042cbe70	campuses	pugetsound/4	\N	2025-02-09 18:10:38.742958+00	2025-02-09 18:10:38.742958+00	2025-02-09 18:10:38.742958+00	{"eTag": "\\"9d33f16451fcc464efe7f63c8fe045dd\\"", "size": 497109, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.740Z", "contentLength": 497109, "httpStatusCode": 200}	7e7282de-9287-4f74-bca5-2e9f2bf3e704	\N	{}
acef9c00-f82c-4427-b9cd-d02c716e2830	campuses	pugetsound/5	\N	2025-02-09 18:10:38.787918+00	2025-02-09 18:10:38.787918+00	2025-02-09 18:10:38.787918+00	{"eTag": "\\"10bec24b1ce5cb24c7b7d5e7eaae93f8\\"", "size": 6124161, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.756Z", "contentLength": 6124161, "httpStatusCode": 200}	37d99826-9cf0-4cac-bdf0-55124d30f73b	\N	{}
47eb2907-f226-4f93-8efc-4084ac812188	campuses	pugetsound/9	\N	2025-02-09 18:10:38.799805+00	2025-02-09 18:10:38.799805+00	2025-02-09 18:10:38.799805+00	{"eTag": "\\"2eb21ce698f6cf8523d58fff6621f868\\"", "size": 497651, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.797Z", "contentLength": 497651, "httpStatusCode": 200}	7d0f574f-6c10-444e-a46f-25b7439d4cff	\N	{}
3c24747b-272a-4f1c-b3e1-67a6423ad82e	campuses	pugetsound/2	\N	2025-02-09 18:10:38.807477+00	2025-02-09 18:10:38.807477+00	2025-02-09 18:10:38.807477+00	{"eTag": "\\"8ea3e9712000de73ba6f0eb1b85b1fc1\\"", "size": 71130, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.806Z", "contentLength": 71130, "httpStatusCode": 200}	94b8750f-37ea-463d-91ae-47f91c369b9c	\N	{}
f23cbc41-6a67-40ab-bd4b-03052d0b8209	campuses	pugetsound/6	\N	2025-02-09 18:10:38.819559+00	2025-02-09 18:10:38.819559+00	2025-02-09 18:10:38.819559+00	{"eTag": "\\"f0a0bc3fe7807592a3533fb630d7623e\\"", "size": 1124533, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.814Z", "contentLength": 1124533, "httpStatusCode": 200}	b04f418b-6bdc-4863-9bf0-62d8ec20c66d	\N	{}
27b639c2-aecb-4e10-ac8c-8f2bc569a974	campuses	pugetsound/3	\N	2025-02-09 18:10:38.827337+00	2025-02-09 18:10:38.827337+00	2025-02-09 18:10:38.827337+00	{"eTag": "\\"96784549dd5edc806b10144871cbe442\\"", "size": 106629, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.825Z", "contentLength": 106629, "httpStatusCode": 200}	11004706-fcae-42a1-9a65-7de4483f9633	\N	{}
5e8cb9a9-1edf-46d4-8f9b-92b16f02be67	campuses	niu/0	\N	2025-02-09 18:10:38.836747+00	2025-02-09 18:10:38.836747+00	2025-02-09 18:10:38.836747+00	{"eTag": "\\"cc7602a59599e3133db40665884b80de\\"", "size": 611893, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.833Z", "contentLength": 611893, "httpStatusCode": 200}	c6668810-ca62-45c2-9d4a-1e89abaae44b	\N	{}
46b71259-5bb4-4749-a7f4-9d99ffdd5265	campuses	niu/1	\N	2025-02-09 18:10:38.848599+00	2025-02-09 18:10:38.848599+00	2025-02-09 18:10:38.848599+00	{"eTag": "\\"2e36b191b45a9e2dee7699aaa3785abb\\"", "size": 897966, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.844Z", "contentLength": 897966, "httpStatusCode": 200}	f3aa26e0-c147-4f41-a33f-73b9131a9826	\N	{}
fabfa557-3076-4c9d-836e-d38db7cff524	campuses	niu/6	\N	2025-02-09 18:10:38.857529+00	2025-02-09 18:10:38.857529+00	2025-02-09 18:10:38.857529+00	{"eTag": "\\"53f58b63d4aecb7bf2944bc9f38604be\\"", "size": 131970, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.856Z", "contentLength": 131970, "httpStatusCode": 200}	4e3160cb-c72d-48ec-8577-7f3e8bc4637f	\N	{}
e4d83062-bc06-4482-a7a3-0e5c2a1e9267	campuses	niu/8	\N	2025-02-09 18:10:38.865638+00	2025-02-09 18:10:38.865638+00	2025-02-09 18:10:38.865638+00	{"eTag": "\\"a23f5a4531518a86d999f30b047779a6\\"", "size": 176685, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.863Z", "contentLength": 176685, "httpStatusCode": 200}	0a2cea83-8b41-4047-bf13-d140d6c7b82d	\N	{}
b64d6413-89be-4c69-b1db-365dea98b1a8	campuses	niu/4	\N	2025-02-09 18:10:38.878228+00	2025-02-09 18:10:38.878228+00	2025-02-09 18:10:38.878228+00	{"eTag": "\\"59c520dea75be8b6e891198246c55e89\\"", "size": 133470, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.871Z", "contentLength": 133470, "httpStatusCode": 200}	1a61906f-3603-4209-ae6a-3d613e89f951	\N	{}
6870d86b-e19a-47ac-84e0-8f9b104e0a93	campuses	dixie/9	\N	2025-02-09 18:10:32.53423+00	2025-02-09 18:10:32.53423+00	2025-02-09 18:10:32.53423+00	{"eTag": "\\"e7a1649246309ad8f00b486dce47eab9\\"", "size": 45528, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.533Z", "contentLength": 45528, "httpStatusCode": 200}	7eba3cb9-1db8-4e46-b538-b6df40a83783	\N	{}
c2fc9920-42b9-416b-b9ae-727759876a01	campuses	dixie/2	\N	2025-02-09 18:10:32.541793+00	2025-02-09 18:10:32.541793+00	2025-02-09 18:10:32.541793+00	{"eTag": "\\"caaf2e402cd442295afe09eb293aec2c\\"", "size": 195528, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.540Z", "contentLength": 195528, "httpStatusCode": 200}	726f5ea0-d5e4-4972-8b39-7b2609724645	\N	{}
5400dd07-edf0-4315-8ec8-86b6b9ac04af	campuses	dixie/3	\N	2025-02-09 18:10:32.549034+00	2025-02-09 18:10:32.549034+00	2025-02-09 18:10:32.549034+00	{"eTag": "\\"b118b9767c452e3337789bd58c04a18a\\"", "size": 88086, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.547Z", "contentLength": 88086, "httpStatusCode": 200}	0a997474-41f2-4990-98c5-bf2ea91cb1c7	\N	{}
b9101427-cb88-48c9-8927-d30e179b6b7f	campuses	csi.cuny/0	\N	2025-02-09 18:10:32.556229+00	2025-02-09 18:10:32.556229+00	2025-02-09 18:10:32.556229+00	{"eTag": "\\"9750db9eeec5d8d437224a607cd8b35f\\"", "size": 57278, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.555Z", "contentLength": 57278, "httpStatusCode": 200}	68dd7bc9-3ca0-4c53-90a9-10f779338628	\N	{}
39e22bd3-cd5b-45ca-b824-fa9f38a2198b	campuses	csi.cuny/1	\N	2025-02-09 18:10:32.567867+00	2025-02-09 18:10:32.567867+00	2025-02-09 18:10:32.567867+00	{"eTag": "\\"ffa8f2b8a18ec171e9ee2ef9cf4ff99c\\"", "size": 962498, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.563Z", "contentLength": 962498, "httpStatusCode": 200}	bf7c7e99-aefb-4da4-b27b-0928043c0d20	\N	{}
931917c2-c74b-4b07-8553-6aac457bb7ef	campuses	csi.cuny/6	\N	2025-02-09 18:10:32.577858+00	2025-02-09 18:10:32.577858+00	2025-02-09 18:10:32.577858+00	{"eTag": "\\"ac36741fbef8eb3793105e019bc2ea17\\"", "size": 536796, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.575Z", "contentLength": 536796, "httpStatusCode": 200}	3901c1e0-1368-4e27-8e19-53c6f66b1389	\N	{}
0bb1a437-b88d-42e5-b69b-dc5c9c7c1c18	campuses	csi.cuny/3	\N	2025-02-09 18:10:32.590059+00	2025-02-09 18:10:32.590059+00	2025-02-09 18:10:32.590059+00	{"eTag": "\\"48e7244cbe6f3e8d7a88ac5f53616bab\\"", "size": 462176, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.587Z", "contentLength": 462176, "httpStatusCode": 200}	67b061f3-abc5-4867-bfb4-4cedee0e60e9	\N	{}
42fa656a-4f35-461d-8556-590144302528	campuses	csi.cuny/8	\N	2025-02-09 18:10:32.598183+00	2025-02-09 18:10:32.598183+00	2025-02-09 18:10:32.598183+00	{"eTag": "\\"b67264b3e7500b0357309e7735bd2a0d\\"", "size": 165898, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.596Z", "contentLength": 165898, "httpStatusCode": 200}	f6234867-ba05-4c4f-9e9c-ab2932b32aff	\N	{}
469ad03c-bd74-4a2b-8c73-547906a1fd76	campuses	csi.cuny/4	\N	2025-02-09 18:10:32.606071+00	2025-02-09 18:10:32.606071+00	2025-02-09 18:10:32.606071+00	{"eTag": "\\"f72002edb0e7c2f6948b1ccdc2d914a1\\"", "size": 58186, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.605Z", "contentLength": 58186, "httpStatusCode": 200}	e50f6914-e2ab-4250-9085-b579a36e613b	\N	{}
f603224c-5baa-402a-96f8-a8b1e80a7236	campuses	csi.cuny/9	\N	2025-02-09 18:10:32.635436+00	2025-02-09 18:10:32.635436+00	2025-02-09 18:10:32.635436+00	{"eTag": "\\"676d418e06da153e3163d26efa117b28\\"", "size": 4833016, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.617Z", "contentLength": 4833016, "httpStatusCode": 200}	f364d854-e73e-44b6-9f71-6d624b5bcb27	\N	{}
c79b685c-8155-4bb3-acb0-4eb534a0820e	campuses	ithaca/0	\N	2025-02-09 18:10:32.649533+00	2025-02-09 18:10:32.649533+00	2025-02-09 18:10:32.649533+00	{"eTag": "\\"88034358ed197e65ca78adba5124b320\\"", "size": 151989, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.647Z", "contentLength": 151989, "httpStatusCode": 200}	b649427f-92ae-40dc-83ad-e49608082664	\N	{}
c2600021-890f-4e05-aab6-757629fa6d35	campuses	ithaca/1	\N	2025-02-09 18:10:32.66461+00	2025-02-09 18:10:32.66461+00	2025-02-09 18:10:32.66461+00	{"eTag": "\\"2f3f8b027f7c53b0e924005b54ab7268\\"", "size": 118319, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.662Z", "contentLength": 118319, "httpStatusCode": 200}	bfa4736e-d0fc-4056-87b9-d014f6676fd5	\N	{}
f964cf5d-2987-4732-88ab-835b215355ba	campuses	ithaca/6	\N	2025-02-09 18:10:32.673076+00	2025-02-09 18:10:32.673076+00	2025-02-09 18:10:32.673076+00	{"eTag": "\\"a53449d09ad04fd9a5cc793a0f5c6a14\\"", "size": 170435, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.671Z", "contentLength": 170435, "httpStatusCode": 200}	f6345654-cb5a-436c-80ac-2fa90edfa3f3	\N	{}
4a2ece7d-daee-4aa6-bd54-522412fa4bf0	campuses	ithaca/7	\N	2025-02-09 18:10:32.680564+00	2025-02-09 18:10:32.680564+00	2025-02-09 18:10:32.680564+00	{"eTag": "\\"e1747fd74775aa4314fa1d79743970c9\\"", "size": 89670, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.679Z", "contentLength": 89670, "httpStatusCode": 200}	8a8876f6-4f39-4ced-a4e9-550b831b9c1a	\N	{}
62398346-a0ff-4f71-8c85-6819f4273fb9	campuses	ithaca/8	\N	2025-02-09 18:10:32.688054+00	2025-02-09 18:10:32.688054+00	2025-02-09 18:10:32.688054+00	{"eTag": "\\"d72f587b7b6b155b3bd805731eb99b1c\\"", "size": 152219, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.686Z", "contentLength": 152219, "httpStatusCode": 200}	9b715e9c-9a78-4d35-aac9-f16dde28bd8b	\N	{}
746acc07-b4e2-47eb-a6e1-5b7a6f52efa9	campuses	ithaca/4	\N	2025-02-09 18:10:32.694969+00	2025-02-09 18:10:32.694969+00	2025-02-09 18:10:32.694969+00	{"eTag": "\\"6d26c86c0393db40f4a398c565c31aca\\"", "size": 119148, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.693Z", "contentLength": 119148, "httpStatusCode": 200}	f9f7d6d2-e4f0-4728-8fa0-5b0ce6caa078	\N	{}
4036c58e-ed1f-4fc3-a617-c94e61b19215	campuses	ithaca/5	\N	2025-02-09 18:10:32.704959+00	2025-02-09 18:10:32.704959+00	2025-02-09 18:10:32.704959+00	{"eTag": "\\"3523d59d0e9afe5ed3c32971989b66ab\\"", "size": 252222, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.703Z", "contentLength": 252222, "httpStatusCode": 200}	df0436fc-e990-498a-91b8-f6ff94f8a422	\N	{}
2c0a1d42-3326-4aa0-a7fc-881218935fbb	campuses	ithaca/9	\N	2025-02-09 18:10:32.713351+00	2025-02-09 18:10:32.713351+00	2025-02-09 18:10:32.713351+00	{"eTag": "\\"d5626ed422e68a2f018a9d87e2b3fb82\\"", "size": 287953, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.711Z", "contentLength": 287953, "httpStatusCode": 200}	0f6a465a-f10f-4160-8f56-ce93bbf52c66	\N	{}
89ebc532-9101-41fb-bee0-0822a9ded38d	campuses	ithaca/2	\N	2025-02-09 18:10:32.720918+00	2025-02-09 18:10:32.720918+00	2025-02-09 18:10:32.720918+00	{"eTag": "\\"cf756a58d8ecd867581263e51447faee\\"", "size": 106175, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.719Z", "contentLength": 106175, "httpStatusCode": 200}	282de313-72d4-48dc-8c87-e2ed768a44c8	\N	{}
6c877445-6e83-4fe6-be92-f2617e4b0835	campuses	ithaca/3	\N	2025-02-09 18:10:32.730572+00	2025-02-09 18:10:32.730572+00	2025-02-09 18:10:32.730572+00	{"eTag": "\\"9bc928c00cb8bd7e7880bb58cb0be2ff\\"", "size": 619756, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.727Z", "contentLength": 619756, "httpStatusCode": 200}	8e22df1e-535e-40ce-a3f6-5600721ecac5	\N	{}
12a3a999-25e1-4d93-a7d2-5bbdef4de641	campuses	georgetown/0	\N	2025-02-09 18:10:32.740073+00	2025-02-09 18:10:32.740073+00	2025-02-09 18:10:32.740073+00	{"eTag": "\\"d886f22828fb8b7fd9a0d2e2aa2cb1de\\"", "size": 482093, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.737Z", "contentLength": 482093, "httpStatusCode": 200}	d87193f0-e9a3-4912-bdac-94d1e3f528b1	\N	{}
5acb1929-bcc0-4a10-8d9a-aaa9518fc787	campuses	georgetown/1	\N	2025-02-09 18:10:32.752314+00	2025-02-09 18:10:32.752314+00	2025-02-09 18:10:32.752314+00	{"eTag": "\\"9069e42c19db05a67be10ca61fc879c7\\"", "size": 1114288, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.747Z", "contentLength": 1114288, "httpStatusCode": 200}	08683573-c9db-4d4d-bb44-2b72ef36952a	\N	{}
5a1d8427-81c8-437a-9dfc-26cc6e38dd44	campuses	georgetown/6	\N	2025-02-09 18:10:32.761497+00	2025-02-09 18:10:32.761497+00	2025-02-09 18:10:32.761497+00	{"eTag": "\\"3f96dfb69df7f9bde971650a436634b9\\"", "size": 292588, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.759Z", "contentLength": 292588, "httpStatusCode": 200}	083eb425-c698-4851-9a41-b40cb78e81b7	\N	{}
0b57a339-94a1-4dca-9901-acf9184cd556	campuses	georgetown/7	\N	2025-02-09 18:10:32.767622+00	2025-02-09 18:10:32.767622+00	2025-02-09 18:10:32.767622+00	{"eTag": "\\"96975033ec50c68eee931385a87a4504\\"", "size": 66384, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.766Z", "contentLength": 66384, "httpStatusCode": 200}	168cbfd0-1285-4ab8-8cfa-44764ba43ead	\N	{}
8d03df46-5c23-4d5a-8981-7dca819313d6	campuses	georgetown/8	\N	2025-02-09 18:10:32.77662+00	2025-02-09 18:10:32.77662+00	2025-02-09 18:10:32.77662+00	{"eTag": "\\"254a9e653cdd2595a1836b74c28d43fb\\"", "size": 571063, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.773Z", "contentLength": 571063, "httpStatusCode": 200}	c08c02f3-7bf4-4976-8d8c-fab8aef8d1f0	\N	{}
f97903c6-4490-421c-a408-9ac2a45ce2d6	campuses	georgetown/4	\N	2025-02-09 18:10:32.784289+00	2025-02-09 18:10:32.784289+00	2025-02-09 18:10:32.784289+00	{"eTag": "\\"1b10ed40403de87a9f16989c3d0c2301\\"", "size": 108649, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.782Z", "contentLength": 108649, "httpStatusCode": 200}	3659279e-9384-426e-8afe-c2ff35ab7da3	\N	{}
ae7d2c6b-c65d-4adb-8505-4b7892ed9cfc	campuses	georgetown/5	\N	2025-02-09 18:10:32.791973+00	2025-02-09 18:10:32.791973+00	2025-02-09 18:10:32.791973+00	{"eTag": "\\"9e9a1b295ffb570d6e29bef4f40cc0a2\\"", "size": 58098, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.790Z", "contentLength": 58098, "httpStatusCode": 200}	a9ec5715-2167-4c9b-8f2f-e9bf676967d2	\N	{}
d11f5ff8-f50d-48e7-8e74-c0f030feb0c5	campuses	georgetown/9	\N	2025-02-09 18:10:32.801375+00	2025-02-09 18:10:32.801375+00	2025-02-09 18:10:32.801375+00	{"eTag": "\\"e12585464d1096319e45d375a1b03341\\"", "size": 262787, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.799Z", "contentLength": 262787, "httpStatusCode": 200}	a42f162d-bc42-4d56-9ac0-c4caedeff775	\N	{}
8dfdf763-0471-47cc-b81b-b782495c5ced	campuses	georgetown/2	\N	2025-02-09 18:10:32.811226+00	2025-02-09 18:10:32.811226+00	2025-02-09 18:10:32.811226+00	{"eTag": "\\"b8033419e3de79af4367f15d9b2023bc\\"", "size": 547643, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.808Z", "contentLength": 547643, "httpStatusCode": 200}	b932ca97-b2e8-428d-bde9-3a3b14e94846	\N	{}
e30a0d44-7113-48e7-b542-a1592115bd2d	campuses	georgetown/3	\N	2025-02-09 18:10:32.819361+00	2025-02-09 18:10:32.819361+00	2025-02-09 18:10:32.819361+00	{"eTag": "\\"79cac7f6c739e31c88c24d58f8344c44\\"", "size": 173156, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.817Z", "contentLength": 173156, "httpStatusCode": 200}	e939a876-cf24-4d83-8cc7-b9f2332cdbdc	\N	{}
2107e159-4d85-45e5-8926-c075e8f41980	campuses	norwich/0	\N	2025-02-09 18:10:32.831557+00	2025-02-09 18:10:32.831557+00	2025-02-09 18:10:32.831557+00	{"eTag": "\\"7f0b00cd2370d1d1de97d18ec5e2106f\\"", "size": 499958, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.829Z", "contentLength": 499958, "httpStatusCode": 200}	b628a1d5-fa6a-4d30-87fe-ea63908d0fb9	\N	{}
14553ef4-b731-44e4-a31f-7b86a31d21b3	campuses	norwich/1	\N	2025-02-09 18:10:32.839989+00	2025-02-09 18:10:32.839989+00	2025-02-09 18:10:32.839989+00	{"eTag": "\\"4066ba1393e1e973029c281f61cee89a\\"", "size": 109633, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.838Z", "contentLength": 109633, "httpStatusCode": 200}	5e1971e3-4b33-4723-8098-c199d6cf2534	\N	{}
43796ee4-93e6-4b5a-8071-929151a15564	campuses	norwich/6	\N	2025-02-09 18:10:32.874359+00	2025-02-09 18:10:32.874359+00	2025-02-09 18:10:32.874359+00	{"eTag": "\\"6654c45df83caef78cdde29d1192a2d2\\"", "size": 5725827, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.852Z", "contentLength": 5725827, "httpStatusCode": 200}	7e6bb9d1-9230-4414-91c4-76f605654ef6	\N	{}
ee98d852-f25a-43f7-8697-41102f9c3673	campuses	norwich/7	\N	2025-02-09 18:10:32.893459+00	2025-02-09 18:10:32.893459+00	2025-02-09 18:10:32.893459+00	{"eTag": "\\"dc996da63efd97ad03096ade5c5ec977\\"", "size": 45654, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.886Z", "contentLength": 45654, "httpStatusCode": 200}	14881523-daeb-43d5-a1a9-e1b23a30bd4c	\N	{}
37a0ced3-0d0a-4b74-9c81-b524d739971a	campuses	norwich/3	\N	2025-02-09 18:10:32.90363+00	2025-02-09 18:10:32.90363+00	2025-02-09 18:10:32.90363+00	{"eTag": "\\"e96e5429d9becb8f819b4c5ccf2001e1\\"", "size": 12947, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.902Z", "contentLength": 12947, "httpStatusCode": 200}	00fe8cdf-1db7-484a-a8bd-84cc41c03431	\N	{}
20c604af-1f09-46e4-ae90-9bf32d18b39b	campuses	norwich/8	\N	2025-02-09 18:10:32.913181+00	2025-02-09 18:10:32.913181+00	2025-02-09 18:10:32.913181+00	{"eTag": "\\"d2461495e0ef33a46c88c54bae030e3d\\"", "size": 46476, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.911Z", "contentLength": 46476, "httpStatusCode": 200}	1efc38e1-ab0c-4174-9679-2387db0e3cf0	\N	{}
fad5ab9a-8b63-4c0b-b830-1637a53a9ede	campuses	norwich/4	\N	2025-02-09 18:10:32.921548+00	2025-02-09 18:10:32.921548+00	2025-02-09 18:10:32.921548+00	{"eTag": "\\"bd93a92c0a26502ae114bb88567ad478\\"", "size": 178073, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.920Z", "contentLength": 178073, "httpStatusCode": 200}	7dcbd44c-d990-4ffb-b27a-3299489f3db2	\N	{}
f3812bf9-72a9-4506-a440-cd7ea324a8a6	campuses	norwich/5	\N	2025-02-09 18:10:32.928381+00	2025-02-09 18:10:32.928381+00	2025-02-09 18:10:32.928381+00	{"eTag": "\\"c541c4fc7ddf952f1b3741e70e4338b4\\"", "size": 97708, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.927Z", "contentLength": 97708, "httpStatusCode": 200}	abd4a7de-1137-49bd-a11e-c965dc746b7e	\N	{}
6f5f5424-6dc1-44df-9d83-9bc524631b13	campuses	norwich/9	\N	2025-02-09 18:10:32.946513+00	2025-02-09 18:10:32.946513+00	2025-02-09 18:10:32.946513+00	{"eTag": "\\"47093018cca93b9f2bb560fd1d5282b6\\"", "size": 2231416, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.938Z", "contentLength": 2231416, "httpStatusCode": 200}	da94ae28-6875-403d-8eb6-f5fa811cc003	\N	{}
a18b4cf1-c358-4e10-9d1c-7dfab28dcfb0	campuses	norwich/2	\N	2025-02-09 18:10:32.955901+00	2025-02-09 18:10:32.955901+00	2025-02-09 18:10:32.955901+00	{"eTag": "\\"ac6e0d9c0768112e4b8c9a9f5411513e\\"", "size": 74445, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.954Z", "contentLength": 74445, "httpStatusCode": 200}	9c5f9b12-e0a3-43de-bf79-db8081eece9b	\N	{}
07e8e81b-825a-4e6c-9471-e941adc4e419	campuses	nyit/1	\N	2025-02-09 18:10:32.96402+00	2025-02-09 18:10:32.96402+00	2025-02-09 18:10:32.96402+00	{"eTag": "\\"deb0dc8b27c65646a3cb86dffc056b15\\"", "size": 53509, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.962Z", "contentLength": 53509, "httpStatusCode": 200}	02882aaf-d585-4b5e-b017-3d35ebafae38	\N	{}
43f8d4e6-8799-44a9-be8e-d86ab8c7b7c2	campuses	nyit/6	\N	2025-02-09 18:10:32.972184+00	2025-02-09 18:10:32.972184+00	2025-02-09 18:10:32.972184+00	{"eTag": "\\"8f500a1296cf1785d77718debd84f799\\"", "size": 248820, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:32.970Z", "contentLength": 248820, "httpStatusCode": 200}	d592f712-a3b3-4966-947e-7c382a1c45b6	\N	{}
ebd81da5-2cf6-4edc-ab89-bba70a6974b2	campuses	simons-rock/2	\N	2025-02-09 18:10:33.112853+00	2025-02-09 18:10:33.112853+00	2025-02-09 18:10:33.112853+00	{"eTag": "\\"774c233f7a04c49ad1bffdbfcab297af\\"", "size": 1344155, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.107Z", "contentLength": 1344155, "httpStatusCode": 200}	761c9b3a-faab-4e7c-ad2a-eb1fe3fccc04	\N	{}
aed489eb-c111-45da-8938-4af1e77ae361	campuses	sdsu/0	\N	2025-02-09 18:10:33.124567+00	2025-02-09 18:10:33.124567+00	2025-02-09 18:10:33.124567+00	{"eTag": "\\"33a5162e9c77b53f2665f5b35aa38535\\"", "size": 53823, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.123Z", "contentLength": 53823, "httpStatusCode": 200}	2b4578af-f89e-436c-af7b-0c48e2656c91	\N	{}
7562fbfa-8777-4a3b-a700-d7de762615bd	campuses	sdsu/1	\N	2025-02-09 18:10:33.137318+00	2025-02-09 18:10:33.137318+00	2025-02-09 18:10:33.137318+00	{"eTag": "\\"ccac7840ccf22d651c69485ef0e600ef\\"", "size": 1210697, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.132Z", "contentLength": 1210697, "httpStatusCode": 200}	9e97e51a-a728-496c-9435-3eb6b5c525fe	\N	{}
048a0075-b266-4f7b-af18-f98edc2fa75f	campuses	sdsu/6	\N	2025-02-09 18:10:33.147126+00	2025-02-09 18:10:33.147126+00	2025-02-09 18:10:33.147126+00	{"eTag": "\\"c35320079fbc309616e5caaf38611cba\\"", "size": 278072, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.144Z", "contentLength": 278072, "httpStatusCode": 200}	ab7aa6c6-1565-4d88-9a5b-9be1df70c47f	\N	{}
508e8bdf-3047-41a9-8e45-6b51d1065857	campuses	sdsu/7	\N	2025-02-09 18:10:33.162509+00	2025-02-09 18:10:33.162509+00	2025-02-09 18:10:33.162509+00	{"eTag": "\\"495aa417176cf77b3dbbfd14526bec03\\"", "size": 460790, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.159Z", "contentLength": 460790, "httpStatusCode": 200}	cbedb556-d143-47e4-91da-e55b02a9cee6	\N	{}
9973e6e9-51b9-4d9d-9f93-fa5f13a7ad05	campuses	sdsu/8	\N	2025-02-09 18:10:33.176323+00	2025-02-09 18:10:33.176323+00	2025-02-09 18:10:33.176323+00	{"eTag": "\\"fcb18dc197bc9c8911e391611cd673a3\\"", "size": 816452, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.172Z", "contentLength": 816452, "httpStatusCode": 200}	e4abb23b-18ab-409f-800d-74d479d7c47c	\N	{}
587e0868-caab-40de-8219-cfe804247e26	campuses	sdsu/9	\N	2025-02-09 18:10:33.184832+00	2025-02-09 18:10:33.184832+00	2025-02-09 18:10:33.184832+00	{"eTag": "\\"478ac1b20e5057d2603ce219c3293c04\\"", "size": 20759, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.183Z", "contentLength": 20759, "httpStatusCode": 200}	937e4b62-37c1-4686-b1b7-a2aecba150d1	\N	{}
89b1cdd7-e728-4c00-94ad-d621783fb588	campuses	sdsu/4	\N	2025-02-09 18:10:33.207146+00	2025-02-09 18:10:33.207146+00	2025-02-09 18:10:33.207146+00	{"eTag": "\\"3e1b7531574cf19ca760c6319da1c5c1\\"", "size": 3440675, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.195Z", "contentLength": 3440675, "httpStatusCode": 200}	a5c03d6e-73da-4e25-a76b-1102bbdc51dd	\N	{}
04a3a902-1ca9-4148-82b4-b8e41d17a789	campuses	sdsu/5	\N	2025-02-09 18:10:33.232765+00	2025-02-09 18:10:33.232765+00	2025-02-09 18:10:33.232765+00	{"eTag": "\\"de09fdf5d817e0a9a9a0adae24be2f00\\"", "size": 1622191, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.220Z", "contentLength": 1622191, "httpStatusCode": 200}	f89f00f7-19f1-4f49-a1ad-8c891994e947	\N	{}
764d0549-bb1b-4958-8d6e-8bc7993d2b2d	campuses	sdsu/2	\N	2025-02-09 18:10:33.246251+00	2025-02-09 18:10:33.246251+00	2025-02-09 18:10:33.246251+00	{"eTag": "\\"9a9027e56265d74bd3e0fa47e447e235\\"", "size": 641783, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.243Z", "contentLength": 641783, "httpStatusCode": 200}	cb33c3f7-e139-4385-8acc-1f217a7af1a2	\N	{}
1b188ec8-d9b5-495f-83ca-3307f488bf83	campuses	sdsu/3	\N	2025-02-09 18:10:33.257959+00	2025-02-09 18:10:33.257959+00	2025-02-09 18:10:33.257959+00	{"eTag": "\\"ce07fea4b77771c3d950ce1b7f6e0f11\\"", "size": 296487, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.256Z", "contentLength": 296487, "httpStatusCode": 200}	a9110c7c-f765-4ba0-98a6-bf6b4d31284f	\N	{}
34f2f14e-5973-4b17-a20a-22b35d69f7f0	campuses	coastal/0	\N	2025-02-09 18:10:33.267516+00	2025-02-09 18:10:33.267516+00	2025-02-09 18:10:33.267516+00	{"eTag": "\\"0b70bdaf6cd30441b8118c367cb273c6\\"", "size": 396735, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.265Z", "contentLength": 396735, "httpStatusCode": 200}	ffd0c247-3e09-4912-98e3-0fed1e8df305	\N	{}
34884c36-0462-45c5-b8d7-9e37242aa90e	campuses	coastal/1	\N	2025-02-09 18:10:33.278427+00	2025-02-09 18:10:33.278427+00	2025-02-09 18:10:33.278427+00	{"eTag": "\\"0f11317e779584b3367c69431f54e30f\\"", "size": 312338, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.274Z", "contentLength": 312338, "httpStatusCode": 200}	b7dcbdd7-300e-4db1-9f3e-48900b14d5b8	\N	{}
0b90fbda-5783-4611-833e-cdae56f9a03c	campuses	coastal/6	\N	2025-02-09 18:10:33.292568+00	2025-02-09 18:10:33.292568+00	2025-02-09 18:10:33.292568+00	{"eTag": "\\"9dc7fbcfb3a76af5f2fb71f159eba232\\"", "size": 45600, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.291Z", "contentLength": 45600, "httpStatusCode": 200}	1191dfc2-9aaa-4d31-a3b6-472ff911958c	\N	{}
11463bb6-2bcd-400f-afcf-38cb0a3b5e19	campuses	coastal/8	\N	2025-02-09 18:10:33.302568+00	2025-02-09 18:10:33.302568+00	2025-02-09 18:10:33.302568+00	{"eTag": "\\"4dbbe18369de61e6c209d7f477ab5fe5\\"", "size": 13375, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.301Z", "contentLength": 13375, "httpStatusCode": 200}	70b4cbc6-72d9-4cb0-9627-496833d0a11e	\N	{}
824e43e3-2c2f-4ede-8843-dc05a01089f6	campuses	coastal/9	\N	2025-02-09 18:10:33.312414+00	2025-02-09 18:10:33.312414+00	2025-02-09 18:10:33.312414+00	{"eTag": "\\"9431f6f71aeab73efd5a144af95c4b69\\"", "size": 43239, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.311Z", "contentLength": 43239, "httpStatusCode": 200}	3da5725a-f8ed-42c9-9b9c-bcbdd672496e	\N	{}
639a2afa-8285-4676-9710-9e91ebe72b5a	campuses	coastal/7	\N	2025-02-09 18:10:33.321538+00	2025-02-09 18:10:33.321538+00	2025-02-09 18:10:33.321538+00	{"eTag": "\\"dbafbd687051f8c1c469a707ec1667a2\\"", "size": 19131, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.320Z", "contentLength": 19131, "httpStatusCode": 200}	8c8944c3-8d8f-4f0e-bfde-954e5205c981	\N	{}
efcb94e1-476a-4648-bc45-7157e21622f2	campuses	coastal/2	\N	2025-02-09 18:10:33.331681+00	2025-02-09 18:10:33.331681+00	2025-02-09 18:10:33.331681+00	{"eTag": "\\"df778053031fb30dde2a24d2ae1494c9\\"", "size": 66419, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.330Z", "contentLength": 66419, "httpStatusCode": 200}	9278b25d-dc38-4f61-88d3-d0d98e845599	\N	{}
6a7ee0a9-2049-40ec-bd07-b67a5ae9176f	campuses	coastal/3	\N	2025-02-09 18:10:33.345578+00	2025-02-09 18:10:33.345578+00	2025-02-09 18:10:33.345578+00	{"eTag": "\\"66c3207ea68d19811e4c8ce3d11a15cb\\"", "size": 1001621, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.341Z", "contentLength": 1001621, "httpStatusCode": 200}	0431a2a2-40a3-429e-a039-006b3c19a981	\N	{}
5259012a-5c52-4594-a2ee-3375cffd65bd	campuses	sc/0	\N	2025-02-09 18:10:33.355779+00	2025-02-09 18:10:33.355779+00	2025-02-09 18:10:33.355779+00	{"eTag": "\\"d724f0097e08bb34aa9d60df933a9f22\\"", "size": 87299, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.354Z", "contentLength": 87299, "httpStatusCode": 200}	42552638-13a6-437b-9bff-65c9db9c3bb4	\N	{}
7d60a7ef-d788-4b97-82a6-14c8e72e3541	campuses	sc/1	\N	2025-02-09 18:10:33.366432+00	2025-02-09 18:10:33.366432+00	2025-02-09 18:10:33.366432+00	{"eTag": "\\"180f5859ec8c825437d49543d2eed5fa\\"", "size": 264655, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.364Z", "contentLength": 264655, "httpStatusCode": 200}	6fd2a98a-49ed-4c07-be17-73addb82037b	\N	{}
d9e42b83-9bc7-4638-8d22-de6c3b79d458	campuses	sc/6	\N	2025-02-09 18:10:33.374548+00	2025-02-09 18:10:33.374548+00	2025-02-09 18:10:33.374548+00	{"eTag": "\\"e98c2fc310cadcd9802e0b1689bb167f\\"", "size": 178542, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.373Z", "contentLength": 178542, "httpStatusCode": 200}	cc7772b6-3a09-434e-858b-9096aa26b61a	\N	{}
c29903af-8c18-4e44-a1f6-78c9aff144f5	campuses	sc/2	\N	2025-02-09 18:10:33.382318+00	2025-02-09 18:10:33.382318+00	2025-02-09 18:10:33.382318+00	{"eTag": "\\"bad2e8579dcdb79399aac2064216a37d\\"", "size": 118, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.381Z", "contentLength": 118, "httpStatusCode": 200}	c13a0c8b-b752-40b9-9b5c-f9aabc568461	\N	{}
465f972d-c06f-4844-ad1a-6b88bdb97493	campuses	sc/8	\N	2025-02-09 18:10:33.391464+00	2025-02-09 18:10:33.391464+00	2025-02-09 18:10:33.391464+00	{"eTag": "\\"178a37f8147c26d64c34e95ae9890ae6\\"", "size": 143404, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.389Z", "contentLength": 143404, "httpStatusCode": 200}	37f86268-c706-42bf-b5c6-aca4039ee366	\N	{}
fb83c4aa-2018-4ac3-8568-b17ca2342596	campuses	sc/4	\N	2025-02-09 18:10:33.399623+00	2025-02-09 18:10:33.399623+00	2025-02-09 18:10:33.399623+00	{"eTag": "\\"5b416da2e49ddd496b9cb27bbe9fc7b1\\"", "size": 301721, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.397Z", "contentLength": 301721, "httpStatusCode": 200}	32202e92-bc07-4f8b-b8f3-b0a8e94c4949	\N	{}
85963dc7-1697-4e07-b266-b7e9caa50191	campuses	sc/5	\N	2025-02-09 18:10:33.408833+00	2025-02-09 18:10:33.408833+00	2025-02-09 18:10:33.408833+00	{"eTag": "\\"dacfc07963e98a9dccb2887eb0cc6ab7\\"", "size": 235774, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.407Z", "contentLength": 235774, "httpStatusCode": 200}	dbf1438a-c704-421c-81e1-1cc76e7ab46a	\N	{}
0578294a-f2c3-4ad3-b4f5-990ab704d6fa	campuses	sc/7	\N	2025-02-09 18:10:33.419039+00	2025-02-09 18:10:33.419039+00	2025-02-09 18:10:33.419039+00	{"eTag": "\\"66e20c6b000a0c95c86cded3379ca8e1\\"", "size": 1134447, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.415Z", "contentLength": 1134447, "httpStatusCode": 200}	9a8bee81-bf15-4d30-8ad5-2ec7b10ef213	\N	{}
b89f295f-2e89-4692-9a15-725ff06544cd	campuses	sc/3	\N	2025-02-09 18:10:33.427844+00	2025-02-09 18:10:33.427844+00	2025-02-09 18:10:33.427844+00	{"eTag": "\\"311ce1e76ea0001ec297cf220a89640d\\"", "size": 433394, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:33.425Z", "contentLength": 433394, "httpStatusCode": 200}	5506d76a-67f2-4581-97c6-001c715e42fc	\N	{}
dcbf10f0-8f73-49a8-ac25-1d8a91eb869d	campuses	lander/0	\N	2025-02-09 18:10:34.478454+00	2025-02-09 18:10:34.478454+00	2025-02-09 18:10:34.478454+00	{"eTag": "\\"05f6010aae14f6b9846eb5e04423615c\\"", "size": 171917, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.475Z", "contentLength": 171917, "httpStatusCode": 200}	fe07104e-b8ba-433d-924e-9c4db2fee740	\N	{}
15614bc1-c824-4aed-a998-ff9ce6e18441	campuses	lander/9	\N	2025-02-09 18:10:34.491378+00	2025-02-09 18:10:34.491378+00	2025-02-09 18:10:34.491378+00	{"eTag": "\\"057cfd744596cec821f2205c53a7da5a\\"", "size": 26610, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.490Z", "contentLength": 26610, "httpStatusCode": 200}	f6b247c1-6ca5-4841-8d10-ffae437df9ca	\N	{}
b6dc7d75-7612-4902-9070-89b70212a7ef	campuses	msudenver/0	\N	2025-02-09 18:10:34.50052+00	2025-02-09 18:10:34.50052+00	2025-02-09 18:10:34.50052+00	{"eTag": "\\"8941bf99ddfb4e06f5f3cb14cd1125a9\\"", "size": 98819, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.499Z", "contentLength": 98819, "httpStatusCode": 200}	1b994402-8e9e-44e6-a2dd-d3c1decc8a8d	\N	{}
cb849847-8fa2-4710-9b8f-5f5d5b20fd5b	campuses	msudenver/4	\N	2025-02-09 18:10:34.509871+00	2025-02-09 18:10:34.509871+00	2025-02-09 18:10:34.509871+00	{"eTag": "\\"5ce05d99a7062ae9b2fde9ed1e863b8a\\"", "size": 280243, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.508Z", "contentLength": 280243, "httpStatusCode": 200}	862d1db4-f4cb-464e-8061-efc2cc58a78b	\N	{}
6e096be7-fe84-4722-b76e-1974e193b65d	campuses	msudenver/5	\N	2025-02-09 18:10:34.518021+00	2025-02-09 18:10:34.518021+00	2025-02-09 18:10:34.518021+00	{"eTag": "\\"28a41f553e72a4db037ddb936bb24dc5\\"", "size": 204330, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.516Z", "contentLength": 204330, "httpStatusCode": 200}	8b6545a8-6c5b-4731-8007-1d5a490b98a6	\N	{}
aa4a2072-f645-4afd-ace4-8b2273d9db9c	campuses	msudenver/2	\N	2025-02-09 18:10:34.526435+00	2025-02-09 18:10:34.526435+00	2025-02-09 18:10:34.526435+00	{"eTag": "\\"24a7e3c94c16bb75324848a3fcb8d06b\\"", "size": 174068, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.524Z", "contentLength": 174068, "httpStatusCode": 200}	9bf34b07-a41d-4bf2-82b8-b4be5f245d85	\N	{}
17ac4a4f-3dcb-465a-95d5-ddd3ebe31b8a	campuses	msudenver/3	\N	2025-02-09 18:10:34.535839+00	2025-02-09 18:10:34.535839+00	2025-02-09 18:10:34.535839+00	{"eTag": "\\"9b9b853dd6e43f82c3eae312196a5107\\"", "size": 277532, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.534Z", "contentLength": 277532, "httpStatusCode": 200}	8ade9459-4b02-49f8-b748-97c825efc560	\N	{}
66eaf2c1-e122-4900-bdb4-bd2ca26c3fd7	campuses	msudenver/1	\N	2025-02-09 18:10:34.546538+00	2025-02-09 18:10:34.546538+00	2025-02-09 18:10:34.546538+00	{"eTag": "\\"86e075356000051f3b5dcf22206e2fd4\\"", "size": 689438, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.543Z", "contentLength": 689438, "httpStatusCode": 200}	e377fe84-59d1-4f0d-98a8-03c8b60bb69a	\N	{}
7d6813be-bb04-4909-87e8-8375a96935f5	campuses	neiu/0	\N	2025-02-09 18:10:34.555114+00	2025-02-09 18:10:34.555114+00	2025-02-09 18:10:34.555114+00	{"eTag": "\\"3f7c9cd3e2c53c5e3c22b6c8a2918dea\\"", "size": 117098, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.553Z", "contentLength": 117098, "httpStatusCode": 200}	b2b0c2c8-8734-416a-8723-702eed247bcf	\N	{}
b77c3974-ea01-4b6b-9cdf-b2c84c8c5516	campuses	neiu/1	\N	2025-02-09 18:10:34.563661+00	2025-02-09 18:10:34.563661+00	2025-02-09 18:10:34.563661+00	{"eTag": "\\"4a513fe17290d088037de9791663e24a\\"", "size": 276023, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.561Z", "contentLength": 276023, "httpStatusCode": 200}	c68bb94c-4226-4f9f-89d7-86079eaf7c76	\N	{}
0b1b35a4-d267-4436-9db0-9dd2c9c88bd7	campuses	neiu/6	\N	2025-02-09 18:10:34.572278+00	2025-02-09 18:10:34.572278+00	2025-02-09 18:10:34.572278+00	{"eTag": "\\"b168210f7846fb5b78c6fb8d261fcaec\\"", "size": 56766, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.571Z", "contentLength": 56766, "httpStatusCode": 200}	08516e12-7beb-4d78-91f8-2f152b8c2e1b	\N	{}
c692e77e-be38-4e83-b02a-c8a7994546f0	campuses	neiu/7	\N	2025-02-09 18:10:34.581273+00	2025-02-09 18:10:34.581273+00	2025-02-09 18:10:34.581273+00	{"eTag": "\\"d95e3382aa003ef69637d2bbd5e7bad2\\"", "size": 251212, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.579Z", "contentLength": 251212, "httpStatusCode": 200}	0e1aff81-a165-4e17-b89c-ab9865a7b6a3	\N	{}
7b7c5ffe-5e03-4ca8-81e9-2451b2035a25	campuses	neiu/5	\N	2025-02-09 18:10:34.589597+00	2025-02-09 18:10:34.589597+00	2025-02-09 18:10:34.589597+00	{"eTag": "\\"3473ef95d9700015ca9168c0e737b593\\"", "size": 104654, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.588Z", "contentLength": 104654, "httpStatusCode": 200}	2b10143e-2e01-40d1-83fc-571e1e81486a	\N	{}
13922946-993d-4a2d-83f4-4e74644ea472	campuses	neiu/9	\N	2025-02-09 18:10:34.600303+00	2025-02-09 18:10:34.600303+00	2025-02-09 18:10:34.600303+00	{"eTag": "\\"3c7fa8eba5ae2ef050a242180cfc4ab4\\"", "size": 103867, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.597Z", "contentLength": 103867, "httpStatusCode": 200}	e8983907-e38d-40c9-aefc-fb09978f6ac2	\N	{}
dcc6f502-edde-4340-999f-d133e797bbe6	campuses	neiu/2	\N	2025-02-09 18:10:34.61157+00	2025-02-09 18:10:34.61157+00	2025-02-09 18:10:34.61157+00	{"eTag": "\\"0320d6a6c2f574909879b3a4b429037d\\"", "size": 107826, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.609Z", "contentLength": 107826, "httpStatusCode": 200}	abe186bc-262d-41a3-9a74-16a6a04f5170	\N	{}
6458d3fb-de26-4cb9-9927-e892151f139f	campuses	neiu/3	\N	2025-02-09 18:10:34.62035+00	2025-02-09 18:10:34.62035+00	2025-02-09 18:10:34.62035+00	{"eTag": "\\"90301d4f20486a6a04b0b580c45af49f\\"", "size": 112449, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.619Z", "contentLength": 112449, "httpStatusCode": 200}	0e8bd8aa-d1bd-42b7-94ff-eb3c92d77e35	\N	{}
f6fea6af-3748-451c-bc2f-1ff24a792779	campuses	fitchburgstate/1	\N	2025-02-09 18:10:34.630207+00	2025-02-09 18:10:34.630207+00	2025-02-09 18:10:34.630207+00	{"eTag": "\\"75072e62d83dbea4d4fbe298d8fec858\\"", "size": 148773, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.628Z", "contentLength": 148773, "httpStatusCode": 200}	e8775008-1dc5-4092-b83b-9e0f418862f5	\N	{}
5876062b-896c-467f-9ebe-4f079e8e56c8	campuses	fitchburgstate/6	\N	2025-02-09 18:10:34.641111+00	2025-02-09 18:10:34.641111+00	2025-02-09 18:10:34.641111+00	{"eTag": "\\"4f67e096078c1e6bafe1905e69512448\\"", "size": 189551, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.639Z", "contentLength": 189551, "httpStatusCode": 200}	aa360737-d89d-4e2d-9e97-4be593cefb3f	\N	{}
a4795e8b-6291-47cb-b92b-ac186a7ee427	campuses	fitchburgstate/7	\N	2025-02-09 18:10:34.649945+00	2025-02-09 18:10:34.649945+00	2025-02-09 18:10:34.649945+00	{"eTag": "\\"0e451939e6956e51efab9ba38bce6665\\"", "size": 142457, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.648Z", "contentLength": 142457, "httpStatusCode": 200}	ef2429dd-a5e6-4788-a776-53c2c39c4998	\N	{}
34518a0e-a157-4ad4-b238-4077741d5711	campuses	fitchburgstate/8	\N	2025-02-09 18:10:34.658234+00	2025-02-09 18:10:34.658234+00	2025-02-09 18:10:34.658234+00	{"eTag": "\\"4883d663c9c8d1455f00043ee23ca12d\\"", "size": 226032, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.656Z", "contentLength": 226032, "httpStatusCode": 200}	3eff7575-4cbd-4a71-bdae-2563ba65b401	\N	{}
d374877d-12dc-44f9-8066-b763e3289a66	campuses	fitchburgstate/4	\N	2025-02-09 18:10:34.667058+00	2025-02-09 18:10:34.667058+00	2025-02-09 18:10:34.667058+00	{"eTag": "\\"7cb5c73ee8312096a9e480b884e9bcfb\\"", "size": 171336, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.665Z", "contentLength": 171336, "httpStatusCode": 200}	59992299-6488-466a-a224-3c345e286e4d	\N	{}
7a585983-6790-4d89-83b4-765212361ca3	campuses	fitchburgstate/5	\N	2025-02-09 18:10:34.675217+00	2025-02-09 18:10:34.675217+00	2025-02-09 18:10:34.675217+00	{"eTag": "\\"85fa8cb60b5d0136e5ffb8eb8757e72c\\"", "size": 177571, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.673Z", "contentLength": 177571, "httpStatusCode": 200}	dc18f559-3ea4-4de4-9e9e-4e8218fc6470	\N	{}
1772fe5e-7980-4201-aebf-3ebca7c089ac	campuses	fitchburgstate/9	\N	2025-02-09 18:10:34.682462+00	2025-02-09 18:10:34.682462+00	2025-02-09 18:10:34.682462+00	{"eTag": "\\"d47f3a7be3601441d79241709851883d\\"", "size": 131027, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.681Z", "contentLength": 131027, "httpStatusCode": 200}	a8a1f4d8-d098-43bb-9490-4dbfcf6d1042	\N	{}
720a1398-e923-407a-88ed-e8a62e493ea3	campuses	fitchburgstate/2	\N	2025-02-09 18:10:34.690238+00	2025-02-09 18:10:34.690238+00	2025-02-09 18:10:34.690238+00	{"eTag": "\\"2ac526003ee0a0fad417438ff23afcec\\"", "size": 122568, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.688Z", "contentLength": 122568, "httpStatusCode": 200}	0c0e6c16-2792-4e15-9bca-5a58f915f610	\N	{}
c03e57be-4353-4ba0-a1b7-8aa39f5d3c79	campuses	fitchburgstate/0	\N	2025-02-09 18:10:34.698983+00	2025-02-09 18:10:34.698983+00	2025-02-09 18:10:34.698983+00	{"eTag": "\\"28b0e0cf62974d6db127b0fef731bafe\\"", "size": 574615, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.696Z", "contentLength": 574615, "httpStatusCode": 200}	f4b951b6-4c69-4b93-ab4d-6135af852672	\N	{}
d82614d9-8107-4986-b4bb-2a321ea8772d	campuses	fitchburgstate/3	\N	2025-02-09 18:10:34.707231+00	2025-02-09 18:10:34.707231+00	2025-02-09 18:10:34.707231+00	{"eTag": "\\"7aa3d28d8a834aeedd85fe4ea080fe81\\"", "size": 254740, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.705Z", "contentLength": 254740, "httpStatusCode": 200}	b4a412b0-2bcc-4e07-b716-f14c51ff025d	\N	{}
be0fa86c-2aae-4889-9fe3-252d012a4750	campuses	stetson/0	\N	2025-02-09 18:10:34.716221+00	2025-02-09 18:10:34.716221+00	2025-02-09 18:10:34.716221+00	{"eTag": "\\"ca8c95b614c391b29d2d6bdebefad2fe\\"", "size": 83736, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.714Z", "contentLength": 83736, "httpStatusCode": 200}	4d98c78e-3237-476c-9cd1-d1caa234c9df	\N	{}
d9d339c4-867e-4356-b17e-ff3129f9c255	campuses	stetson/1	\N	2025-02-09 18:10:34.729177+00	2025-02-09 18:10:34.729177+00	2025-02-09 18:10:34.729177+00	{"eTag": "\\"7602dc8730b5b399f8906ca8ff3edb85\\"", "size": 988208, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.724Z", "contentLength": 988208, "httpStatusCode": 200}	c86e4149-fdef-42f1-9742-b4cac695c983	\N	{}
5db56a30-94ac-46da-9925-0cdd2d77f1cf	campuses	stetson/6	\N	2025-02-09 18:10:34.73735+00	2025-02-09 18:10:34.73735+00	2025-02-09 18:10:34.73735+00	{"eTag": "\\"279b828a3005a149e4bdbea049783f42\\"", "size": 38177, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.736Z", "contentLength": 38177, "httpStatusCode": 200}	218e738f-5a79-4637-8f2e-3f674e057ad4	\N	{}
38a52044-5ee9-4360-ae63-04e215bed501	campuses	stetson/7	\N	2025-02-09 18:10:34.749046+00	2025-02-09 18:10:34.749046+00	2025-02-09 18:10:34.749046+00	{"eTag": "\\"43f2fa2a3c8b88ed6e846001098aad6c\\"", "size": 859662, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.745Z", "contentLength": 859662, "httpStatusCode": 200}	cbb027a6-7053-4f5f-908a-f21a7ea42fb8	\N	{}
1859a1b0-97e4-4178-81dd-38522e8834aa	campuses	stetson/8	\N	2025-02-09 18:10:34.758084+00	2025-02-09 18:10:34.758084+00	2025-02-09 18:10:34.758084+00	{"eTag": "\\"ccead1adf45eb0418cf076231a7907a3\\"", "size": 132233, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.756Z", "contentLength": 132233, "httpStatusCode": 200}	40768725-c05d-4283-be73-6ce842dbfce6	\N	{}
2cffdcda-7f30-413a-b4cd-79c99e4c9cc1	campuses	stetson/4	\N	2025-02-09 18:10:34.766782+00	2025-02-09 18:10:34.766782+00	2025-02-09 18:10:34.766782+00	{"eTag": "\\"8ebb504326a47038d53ae58d11e9a831\\"", "size": 21276, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.765Z", "contentLength": 21276, "httpStatusCode": 200}	d5c8e612-e941-4bf6-afe6-4f2e04b65016	\N	{}
e73274d0-4c0a-41e0-a545-6977e0aabae7	campuses	stetson/5	\N	2025-02-09 18:10:34.776312+00	2025-02-09 18:10:34.776312+00	2025-02-09 18:10:34.776312+00	{"eTag": "\\"9003d8c4c96d880a1f31c934d1f9334b\\"", "size": 262368, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.774Z", "contentLength": 262368, "httpStatusCode": 200}	158f1481-6da2-4634-9fe8-d01fbe31718f	\N	{}
45d85319-217b-4f5f-9570-4f2f5aa794fc	campuses	stetson/9	\N	2025-02-09 18:10:34.792673+00	2025-02-09 18:10:34.792673+00	2025-02-09 18:10:34.792673+00	{"eTag": "\\"e327481b60eb7d13baf6ffb0c1a0d471\\"", "size": 36114, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.789Z", "contentLength": 36114, "httpStatusCode": 200}	970450c6-39ba-4efd-8087-c10cb9a5ac74	\N	{}
86f7a564-d1c3-48cb-9d0f-5a28b9c06e50	campuses	stetson/2	\N	2025-02-09 18:10:34.802917+00	2025-02-09 18:10:34.802917+00	2025-02-09 18:10:34.802917+00	{"eTag": "\\"44edf028e3cd33cc0baaa421c4b9afe3\\"", "size": 276208, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.800Z", "contentLength": 276208, "httpStatusCode": 200}	bead6106-e8e1-49b0-a9b8-2f30e59a5927	\N	{}
63cdb71b-faa9-4483-9b24-3523e5cb8806	campuses	stetson/3	\N	2025-02-09 18:10:34.812897+00	2025-02-09 18:10:34.812897+00	2025-02-09 18:10:34.812897+00	{"eTag": "\\"43f49af9dbe382e6afd0b28880e0ead6\\"", "size": 333847, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.810Z", "contentLength": 333847, "httpStatusCode": 200}	13fc6b99-c5b9-4c66-ae45-11db4b8bacf8	\N	{}
012eb80e-cf25-45fd-abd1-2ed9817f08f8	campuses	carleton/0	\N	2025-02-09 18:10:34.822271+00	2025-02-09 18:10:34.822271+00	2025-02-09 18:10:34.822271+00	{"eTag": "\\"c3271f1e3d35d0ed1d1b4a891c592714\\"", "size": 246739, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.820Z", "contentLength": 246739, "httpStatusCode": 200}	3a6e4838-34ee-4607-a780-37e3c15ca6a4	\N	{}
45a07808-a1f0-494e-a841-df39080df72d	campuses	carleton/1	\N	2025-02-09 18:10:34.838161+00	2025-02-09 18:10:34.838161+00	2025-02-09 18:10:34.838161+00	{"eTag": "\\"6a6cd423e5b5f862092ed0ea47661f49\\"", "size": 1081224, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.830Z", "contentLength": 1081224, "httpStatusCode": 200}	7fef6592-67ef-4969-b031-9a708310df6e	\N	{}
6b9ddf0b-0902-46a1-8577-bfd3ee957348	campuses	carleton/6	\N	2025-02-09 18:10:34.846676+00	2025-02-09 18:10:34.846676+00	2025-02-09 18:10:34.846676+00	{"eTag": "\\"11f169ad75aae90a23d1cbbb8633fffd\\"", "size": 246002, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.845Z", "contentLength": 246002, "httpStatusCode": 200}	9e2342e6-e3b0-44c4-85df-6c8a40ad8043	\N	{}
fc98a871-e227-4702-b9ad-d632726f1aff	campuses	carleton/7	\N	2025-02-09 18:10:34.854661+00	2025-02-09 18:10:34.854661+00	2025-02-09 18:10:34.854661+00	{"eTag": "\\"9f15e2def1282b12379b81ae7e641c28\\"", "size": 125343, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.853Z", "contentLength": 125343, "httpStatusCode": 200}	04c610ab-22ed-4348-9df2-3e015e5af6e0	\N	{}
7b51611d-bb87-4691-a7ed-e751adfc7e4f	campuses	carleton/8	\N	2025-02-09 18:10:34.86232+00	2025-02-09 18:10:34.86232+00	2025-02-09 18:10:34.86232+00	{"eTag": "\\"7d7ec08fd4fe8ef9498992b800e28975\\"", "size": 121961, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.861Z", "contentLength": 121961, "httpStatusCode": 200}	60058863-da6f-4828-991d-7b1504ebd19a	\N	{}
2cf5bfb7-610a-41c9-860b-31c191fea381	campuses	carleton/4	\N	2025-02-09 18:10:34.879437+00	2025-02-09 18:10:34.879437+00	2025-02-09 18:10:34.879437+00	{"eTag": "\\"bd641a2e7ba0227b648355c5d3045894\\"", "size": 2194749, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.871Z", "contentLength": 2194749, "httpStatusCode": 200}	992bf23d-13d1-4fa0-8bca-d2c880d42200	\N	{}
f5bff6a1-e3bb-4926-8266-3edd726ef8ef	campuses	carleton/5	\N	2025-02-09 18:10:34.892265+00	2025-02-09 18:10:34.892265+00	2025-02-09 18:10:34.892265+00	{"eTag": "\\"630c0479a6727dea2a231b574ddf0c33\\"", "size": 192103, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.887Z", "contentLength": 192103, "httpStatusCode": 200}	89c6748f-5dc2-4460-ac92-f5f69c013b05	\N	{}
09d0333e-1064-4a00-ab0b-841b865f0722	campuses	carleton/9	\N	2025-02-09 18:10:34.904027+00	2025-02-09 18:10:34.904027+00	2025-02-09 18:10:34.904027+00	{"eTag": "\\"f3f56781a37637c59de2145833fa334d\\"", "size": 124805, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.902Z", "contentLength": 124805, "httpStatusCode": 200}	934629d6-0e3d-41f7-b1c1-baca276dda0e	\N	{}
5063b1c5-4f7a-4f4a-9096-b9482d6a2af2	campuses	carleton/2	\N	2025-02-09 18:10:34.910767+00	2025-02-09 18:10:34.910767+00	2025-02-09 18:10:34.910767+00	{"eTag": "\\"8f9572f47b9f4f6ce4d5cf5baa320b75\\"", "size": 122104, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.909Z", "contentLength": 122104, "httpStatusCode": 200}	55e96250-91f2-49ae-a81c-26ac9c27a99e	\N	{}
0d6736cd-ca02-4f43-9ff1-c26370f0f71a	campuses	carleton/3	\N	2025-02-09 18:10:34.918546+00	2025-02-09 18:10:34.918546+00	2025-02-09 18:10:34.918546+00	{"eTag": "\\"d05920e940f446d4384e38b5218ab0ab\\"", "size": 371684, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.916Z", "contentLength": 371684, "httpStatusCode": 200}	703a1ca0-285f-4aae-987d-a3e3a6cecb73	\N	{}
e2d41676-8edf-4139-99f4-d9cc03b2b0a6	campuses	dartmouth/0	\N	2025-02-09 18:10:34.926115+00	2025-02-09 18:10:34.926115+00	2025-02-09 18:10:34.926115+00	{"eTag": "\\"8d8a4e65822b4c47ed1a470409a31635\\"", "size": 287454, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.924Z", "contentLength": 287454, "httpStatusCode": 200}	b2c42535-686b-4fe3-8241-c756e8aa9132	\N	{}
eb585259-567c-4d88-8f21-15e0fc9dc529	campuses	dartmouth/6	\N	2025-02-09 18:10:34.933717+00	2025-02-09 18:10:34.933717+00	2025-02-09 18:10:34.933717+00	{"eTag": "\\"84f9a9ec0d1ed067826cb2fa1730ef6b\\"", "size": 329340, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.931Z", "contentLength": 329340, "httpStatusCode": 200}	447758ee-628d-4a39-bfd8-babc1cb194a8	\N	{}
6c37b65e-809a-43b2-80e3-482022ef28d6	campuses	dartmouth/7	\N	2025-02-09 18:10:34.940729+00	2025-02-09 18:10:34.940729+00	2025-02-09 18:10:34.940729+00	{"eTag": "\\"b5d33137746c1e7c0a1044f6a3172d77\\"", "size": 216208, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.939Z", "contentLength": 216208, "httpStatusCode": 200}	e3e98008-12da-4835-a685-627982808cb9	\N	{}
0293ff8e-d866-473d-ba81-4d291b677ebc	campuses	dartmouth/8	\N	2025-02-09 18:10:34.948201+00	2025-02-09 18:10:34.948201+00	2025-02-09 18:10:34.948201+00	{"eTag": "\\"5072964a028e41227b062c26d1f93d26\\"", "size": 312911, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.946Z", "contentLength": 312911, "httpStatusCode": 200}	c9c00ae3-66ea-41d6-8a71-38dae5ce6821	\N	{}
3f9b06b4-d068-47ef-ab8b-b2f4600fdf83	campuses	dartmouth/4	\N	2025-02-09 18:10:34.956559+00	2025-02-09 18:10:34.956559+00	2025-02-09 18:10:34.956559+00	{"eTag": "\\"6dc97dc720d105d9ea4a7e5bebbbbe79\\"", "size": 68764, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.955Z", "contentLength": 68764, "httpStatusCode": 200}	6bcbdec5-b928-4e1f-8e11-44921d74b26b	\N	{}
4de0fc10-d8dc-45bb-999a-0303661f2eb2	campuses	dartmouth/5	\N	2025-02-09 18:10:34.964193+00	2025-02-09 18:10:34.964193+00	2025-02-09 18:10:34.964193+00	{"eTag": "\\"62e156a4bdb582a4f584058bb8d84fc9\\"", "size": 447350, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.961Z", "contentLength": 447350, "httpStatusCode": 200}	26c2075f-b10f-44dc-99af-82303cca71f1	\N	{}
c494b2c6-7219-4736-8349-c933261c0240	campuses	dartmouth/9	\N	2025-02-09 18:10:34.975632+00	2025-02-09 18:10:34.975632+00	2025-02-09 18:10:34.975632+00	{"eTag": "\\"96df0bcda96002bc242e31123b9eb3bd\\"", "size": 543684, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.972Z", "contentLength": 543684, "httpStatusCode": 200}	3020ee84-d894-476b-9bb5-f8dc3b02dd1b	\N	{}
9fb55b02-abca-44bf-a92a-8ef1d769d167	campuses	dartmouth/2	\N	2025-02-09 18:10:34.984461+00	2025-02-09 18:10:34.984461+00	2025-02-09 18:10:34.984461+00	{"eTag": "\\"b3659b6460059d682dea4d5586c5cec8\\"", "size": 100988, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.983Z", "contentLength": 100988, "httpStatusCode": 200}	0076488a-5ba9-4450-87e5-d44038466dd6	\N	{}
0c93d6cf-a533-4180-a72f-66dd27cd7862	campuses	dartmouth/3	\N	2025-02-09 18:10:35.002228+00	2025-02-09 18:10:35.002228+00	2025-02-09 18:10:35.002228+00	{"eTag": "\\"8d94761e09a967d88a80432311561b06\\"", "size": 2701006, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:34.992Z", "contentLength": 2701006, "httpStatusCode": 200}	42e5e356-c451-4ef4-abe8-2c176f574887	\N	{}
04484d6a-d431-429f-b089-e421e874f811	campuses	dartmouth/1	\N	2025-02-09 18:10:35.011409+00	2025-02-09 18:10:35.011409+00	2025-02-09 18:10:35.011409+00	{"eTag": "\\"23d059d2d7d89faa758c040e5dada6a5\\"", "size": 147238, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.010Z", "contentLength": 147238, "httpStatusCode": 200}	d33d66d9-188a-43bb-89d7-c929fd0f8808	\N	{}
3ec23eec-ef3b-410b-891e-c4e2add801e3	campuses	msu/4	\N	2025-02-09 18:10:35.019428+00	2025-02-09 18:10:35.019428+00	2025-02-09 18:10:35.019428+00	{"eTag": "\\"185dd5ec503c683da355a50e70f25c68\\"", "size": 212, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.018Z", "contentLength": 212, "httpStatusCode": 200}	032c8cd4-bfe5-43e2-b007-c0df4e35644e	\N	{}
2466326d-e143-48d0-a68f-2197afa3465d	campuses	msu/1	\N	2025-02-09 18:10:35.091099+00	2025-02-09 18:10:35.091099+00	2025-02-09 18:10:35.091099+00	{"eTag": "\\"926640cdfd31f9a58e466410643ea93f\\"", "size": 12302456, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.037Z", "contentLength": 12302456, "httpStatusCode": 200}	4c750282-e1f2-49e4-b34f-4a9b3ccea9fb	\N	{}
39423017-c3f7-4b00-92dc-561b084fd20c	campuses	msu/6	\N	2025-02-09 18:10:35.10658+00	2025-02-09 18:10:35.10658+00	2025-02-09 18:10:35.10658+00	{"eTag": "\\"7ef579031c45289b13ca42f7bc593d21\\"", "size": 569297, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.103Z", "contentLength": 569297, "httpStatusCode": 200}	a26a7074-506d-4e2d-854c-209455751d4c	\N	{}
a1fa4f0b-d543-436b-acc0-6d3363532624	campuses	msu/8	\N	2025-02-09 18:10:35.115949+00	2025-02-09 18:10:35.115949+00	2025-02-09 18:10:35.115949+00	{"eTag": "\\"f26679ed340e3de430879e1e67245001\\"", "size": 301626, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.114Z", "contentLength": 301626, "httpStatusCode": 200}	4b71d55b-46de-4d1e-b0cc-d5a5be37966d	\N	{}
54298e3b-8c2b-4083-9d04-bc9b9826830b	campuses	msu/5	\N	2025-02-09 18:10:35.129213+00	2025-02-09 18:10:35.129213+00	2025-02-09 18:10:35.129213+00	{"eTag": "\\"e66ee31f87bc8801724df82c792a9554\\"", "size": 1370544, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.124Z", "contentLength": 1370544, "httpStatusCode": 200}	adbd135a-1cd9-46a9-8314-a01a4f7388dd	\N	{}
ecff4dbf-198e-4e70-9533-f250c923fd3d	campuses	msu/7	\N	2025-02-09 18:10:35.145286+00	2025-02-09 18:10:35.145286+00	2025-02-09 18:10:35.145286+00	{"eTag": "\\"2d5bffd961805261349a36424ca94efb\\"", "size": 1570110, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.139Z", "contentLength": 1570110, "httpStatusCode": 200}	86b393e8-d929-44c7-bd87-a59062bfdfba	\N	{}
fdb6883d-1539-43f7-8bf3-1ab55b3e02e2	campuses	msu/2	\N	2025-02-09 18:10:35.161141+00	2025-02-09 18:10:35.161141+00	2025-02-09 18:10:35.161141+00	{"eTag": "\\"8b241c2234ed12f633d91967f9ca54c1\\"", "size": 1440691, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.155Z", "contentLength": 1440691, "httpStatusCode": 200}	b7f08138-cf1c-4f0e-8188-0331ae1acc77	\N	{}
586dfe03-6eea-47c0-99c1-c5d64d9ec4e3	campuses	msu/0	\N	2025-02-09 18:10:35.192752+00	2025-02-09 18:10:35.192752+00	2025-02-09 18:10:35.192752+00	{"eTag": "\\"f1fc4c9de1ae9a15e339e273cb73d17c\\"", "size": 2860116, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.174Z", "contentLength": 2860116, "httpStatusCode": 200}	f7155b14-f1d6-4579-81b3-4a12fffc25ca	\N	{}
8f858455-b329-4091-842a-193a6c6bb496	campuses	msu/3	\N	2025-02-09 18:10:35.210721+00	2025-02-09 18:10:35.210721+00	2025-02-09 18:10:35.210721+00	{"eTag": "\\"f2dd0bc566c36bfd60c71727dbbd5b96\\"", "size": 2169980, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.203Z", "contentLength": 2169980, "httpStatusCode": 200}	94cc5320-bc27-4ce4-8056-5798fc82b4bc	\N	{}
f25a9944-2a6f-40bd-a9aa-101ac2cf1b85	campuses	digipen/0	\N	2025-02-09 18:10:35.220956+00	2025-02-09 18:10:35.220956+00	2025-02-09 18:10:35.220956+00	{"eTag": "\\"8f071cac53f124476e8bb255355409b9\\"", "size": 246318, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.219Z", "contentLength": 246318, "httpStatusCode": 200}	41125b80-79f3-486e-afa0-2a6aeb6ad51b	\N	{}
81ba5739-29b2-4547-b570-5dd8ab90fc84	campuses	digipen/9	\N	2025-02-09 18:10:35.229398+00	2025-02-09 18:10:35.229398+00	2025-02-09 18:10:35.229398+00	{"eTag": "\\"0e51bdbf46baf58324f1599262ee9b57\\"", "size": 92834, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.228Z", "contentLength": 92834, "httpStatusCode": 200}	24e1419d-ce47-43a4-8e14-a55026839092	\N	{}
aa8a928f-fe7c-4c20-ad50-59ccf1e6d25c	campuses	digipen/8	\N	2025-02-09 18:10:35.239978+00	2025-02-09 18:10:35.239978+00	2025-02-09 18:10:35.239978+00	{"eTag": "\\"16ec8b84952947c90a89118ebb74e46d\\"", "size": 213892, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.237Z", "contentLength": 213892, "httpStatusCode": 200}	26a367d2-710a-45c9-af10-227dff7af815	\N	{}
c040a690-567d-4786-b67d-dc1f71abd78c	campuses	digipen/1	\N	2025-02-09 18:10:35.24918+00	2025-02-09 18:10:35.24918+00	2025-02-09 18:10:35.24918+00	{"eTag": "\\"80365c98d474f74cfcc39be703968927\\"", "size": 79933, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.247Z", "contentLength": 79933, "httpStatusCode": 200}	3e1aef7a-3283-4602-9ab2-5935483c468c	\N	{}
273ff462-7468-4b23-b2a6-c88a8ff978e5	campuses	digipen/3	\N	2025-02-09 18:10:35.269032+00	2025-02-09 18:10:35.269032+00	2025-02-09 18:10:35.269032+00	{"eTag": "\\"bd06cc79494b48915c73eb8ee056c111\\"", "size": 95432, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.263Z", "contentLength": 95432, "httpStatusCode": 200}	954e410d-5504-4b10-baab-80de86709c73	\N	{}
48d640f0-1062-48e1-8fe7-f4a1df6bcf89	campuses	digipen/6	\N	2025-02-09 18:10:35.284064+00	2025-02-09 18:10:35.284064+00	2025-02-09 18:10:35.284064+00	{"eTag": "\\"466a2b95a167bb8c3a43dc8377ee62ab\\"", "size": 513385, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.281Z", "contentLength": 513385, "httpStatusCode": 200}	0d93f87f-f8b5-4175-bc09-4fc79c6cfd9b	\N	{}
b496baf5-2eab-4189-a69b-b5ce816f4c9c	campuses	digipen/4	\N	2025-02-09 18:10:35.29261+00	2025-02-09 18:10:35.29261+00	2025-02-09 18:10:35.29261+00	{"eTag": "\\"ebc8152158eb8fc67e18d695bc95a399\\"", "size": 172516, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.291Z", "contentLength": 172516, "httpStatusCode": 200}	637cc5ab-f17a-4a10-a49e-484c428d0622	\N	{}
b527dcce-ec38-4384-96b2-76b7f4f20209	campuses	digipen/5	\N	2025-02-09 18:10:35.301044+00	2025-02-09 18:10:35.301044+00	2025-02-09 18:10:35.301044+00	{"eTag": "\\"29ef9f5cd53961ad6f177f9d48e87fa2\\"", "size": 146544, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.299Z", "contentLength": 146544, "httpStatusCode": 200}	9a9d3861-e3dc-4be7-a1e6-1be3cd3e0d31	\N	{}
5686e136-cc27-44e3-9869-77434cca7335	campuses	digipen/2	\N	2025-02-09 18:10:35.307659+00	2025-02-09 18:10:35.307659+00	2025-02-09 18:10:35.307659+00	{"eTag": "\\"90fd9b35d45bbf6276799a1cd1b0d933\\"", "size": 48994, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.306Z", "contentLength": 48994, "httpStatusCode": 200}	aabd5d88-4d94-4c5e-bc6a-b3bb318d55c6	\N	{}
56d318e1-7b53-4936-b619-8fb17d2dc0b6	campuses	digipen/7	\N	2025-02-09 18:10:35.317454+00	2025-02-09 18:10:35.317454+00	2025-02-09 18:10:35.317454+00	{"eTag": "\\"46f753df2d7913b1dbb131602dfec331\\"", "size": 417844, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.315Z", "contentLength": 417844, "httpStatusCode": 200}	c2e22af5-d34c-4b65-babd-2726c25cd3d6	\N	{}
86789b51-5794-40a6-b22a-6c08b85d4f8a	campuses	bc/0	\N	2025-02-09 18:10:35.325227+00	2025-02-09 18:10:35.325227+00	2025-02-09 18:10:35.325227+00	{"eTag": "\\"eda3b064e5fc0382653e327a9897aa30\\"", "size": 56894, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.324Z", "contentLength": 56894, "httpStatusCode": 200}	bf7bd2bf-fb9a-41d1-bef9-2f7b7d4d66bf	\N	{}
bc007994-afed-4989-89c0-9a671712c5af	campuses	bc/1	\N	2025-02-09 18:10:35.333868+00	2025-02-09 18:10:35.333868+00	2025-02-09 18:10:35.333868+00	{"eTag": "\\"ac9812b44cfe5c749f909e48e300827c\\"", "size": 101447, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.332Z", "contentLength": 101447, "httpStatusCode": 200}	baf9b1b0-f8e1-40c9-8a3f-9d3a554b548d	\N	{}
d6e9df23-7a39-4ae7-a429-cd16055f8d7c	campuses	bc/6	\N	2025-02-09 18:10:35.343372+00	2025-02-09 18:10:35.343372+00	2025-02-09 18:10:35.343372+00	{"eTag": "\\"5ec17f438e651e203c7370b00d9d57ab\\"", "size": 365910, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.341Z", "contentLength": 365910, "httpStatusCode": 200}	d825b784-7fab-4f08-9315-f45a85f10536	\N	{}
fe569315-ffe6-4636-9ed4-359db1179d11	campuses	bc/7	\N	2025-02-09 18:10:35.353046+00	2025-02-09 18:10:35.353046+00	2025-02-09 18:10:35.353046+00	{"eTag": "\\"a48a9c6cfb6684fbae7d984ea6de5972\\"", "size": 223129, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.351Z", "contentLength": 223129, "httpStatusCode": 200}	c5e31495-8cce-43e9-92b7-8f946e97b508	\N	{}
ea89d163-1be5-4f96-bfa4-e3ff928e767b	campuses	bc/8	\N	2025-02-09 18:10:35.362585+00	2025-02-09 18:10:35.362585+00	2025-02-09 18:10:35.362585+00	{"eTag": "\\"1f3d1953ee5c71b93daea414875c883e\\"", "size": 164611, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.361Z", "contentLength": 164611, "httpStatusCode": 200}	c7b509ba-b07b-415d-9fc6-3c350cedaeb0	\N	{}
722f0cf7-5d73-463b-ac26-210d91287594	campuses	bc/4	\N	2025-02-09 18:10:35.371094+00	2025-02-09 18:10:35.371094+00	2025-02-09 18:10:35.371094+00	{"eTag": "\\"da966cfed090b56dc84ba84b35b3957d\\"", "size": 182922, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.369Z", "contentLength": 182922, "httpStatusCode": 200}	35dbff36-4c80-4156-80d6-1ce762a8d75f	\N	{}
05da7374-4d1e-4422-9b08-403bd3d2cfbc	campuses	bc/5	\N	2025-02-09 18:10:35.378289+00	2025-02-09 18:10:35.378289+00	2025-02-09 18:10:35.378289+00	{"eTag": "\\"bcee97101c1c021d96b3fe738d8db59c\\"", "size": 57124, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.377Z", "contentLength": 57124, "httpStatusCode": 200}	85acb4aa-198a-418f-985d-924d85d53c5f	\N	{}
8b8131d7-ad73-4a4f-9d06-128beb33cab8	campuses	bc/9	\N	2025-02-09 18:10:35.388337+00	2025-02-09 18:10:35.388337+00	2025-02-09 18:10:35.388337+00	{"eTag": "\\"37c153e1dc7c3cac5d30b8e778426c1e\\"", "size": 331696, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.386Z", "contentLength": 331696, "httpStatusCode": 200}	602252b4-8980-44e1-bfa2-dc4cf09232c2	\N	{}
2343b969-4e3f-4754-bb9f-bb6587796592	campuses	bc/2	\N	2025-02-09 18:10:35.396032+00	2025-02-09 18:10:35.396032+00	2025-02-09 18:10:35.396032+00	{"eTag": "\\"de4bfc462ede9517bb7d253fbd5bdcd4\\"", "size": 47796, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.394Z", "contentLength": 47796, "httpStatusCode": 200}	c2270144-cb95-4a39-9d09-0c54ca785161	\N	{}
e6fc498b-bebe-47b3-b07b-59d0b38d5600	campuses	bc/3	\N	2025-02-09 18:10:35.406061+00	2025-02-09 18:10:35.406061+00	2025-02-09 18:10:35.406061+00	{"eTag": "\\"5490029026da7b0142b22c0373d72508\\"", "size": 479458, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.403Z", "contentLength": 479458, "httpStatusCode": 200}	6e77ea8a-1175-4551-b926-6805351037e5	\N	{}
f3e7ab54-4664-4f85-bd28-333aa9926b02	campuses	rice/6	\N	2025-02-09 18:10:35.414479+00	2025-02-09 18:10:35.414479+00	2025-02-09 18:10:35.414479+00	{"eTag": "\\"7ecb69042d52ad14fc5aae18ec8ff7a0\\"", "size": 132078, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.413Z", "contentLength": 132078, "httpStatusCode": 200}	ba1e9c7d-710d-4bd5-9494-432fcb7b03d7	\N	{}
7d4de3ee-45ee-4211-8e60-e8df52755b1c	campuses	rice/2	\N	2025-02-09 18:10:35.422448+00	2025-02-09 18:10:35.422448+00	2025-02-09 18:10:35.422448+00	{"eTag": "\\"ef4c329d437a3cfd50aefc0a7263c6f7\\"", "size": 57148, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.421Z", "contentLength": 57148, "httpStatusCode": 200}	d867b9a4-d305-465a-9e9d-05695b5bfdc9	\N	{}
754d8872-a03a-4115-8e4c-f4f0f0d6b488	campuses	rice/8	\N	2025-02-09 18:10:35.431232+00	2025-02-09 18:10:35.431232+00	2025-02-09 18:10:35.431232+00	{"eTag": "\\"e8950e9d1187de7228cbb9279330539c\\"", "size": 42183, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.430Z", "contentLength": 42183, "httpStatusCode": 200}	73a2fbeb-0e3e-4132-8a81-306489e18d5e	\N	{}
30bd4995-986b-4058-8a5a-1613d95fcff6	campuses	rice/4	\N	2025-02-09 18:10:35.43951+00	2025-02-09 18:10:35.43951+00	2025-02-09 18:10:35.43951+00	{"eTag": "\\"25a447151ba78e92b99b57e6d01c7b29\\"", "size": 69993, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.438Z", "contentLength": 69993, "httpStatusCode": 200}	d3b1bd86-dd0c-4e5d-8177-4e6402b42aea	\N	{}
2677e0bf-0319-4c79-bd56-af62f7f8d488	campuses	rice/5	\N	2025-02-09 18:10:35.447414+00	2025-02-09 18:10:35.447414+00	2025-02-09 18:10:35.447414+00	{"eTag": "\\"6477d50a6e8fed1171d3ff81f1f4fa98\\"", "size": 190476, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.446Z", "contentLength": 190476, "httpStatusCode": 200}	5701d78c-4d7b-46af-b941-d0c2d91468c9	\N	{}
c75b36fb-f2bd-4177-94fb-605175a954c8	campuses	rice/9	\N	2025-02-09 18:10:35.45631+00	2025-02-09 18:10:35.45631+00	2025-02-09 18:10:35.45631+00	{"eTag": "\\"ad4404c586f24dc1a84a5630cbefd0d0\\"", "size": 271870, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.454Z", "contentLength": 271870, "httpStatusCode": 200}	72233fd4-a298-4cbc-8a8d-e54cb96fa597	\N	{}
f966dcff-6c77-4793-a06f-3b761ff8234e	campuses	rice/7	\N	2025-02-09 18:10:35.478273+00	2025-02-09 18:10:35.478273+00	2025-02-09 18:10:35.478273+00	{"eTag": "\\"7114989ed84977f6f9816c932a9cfa00\\"", "size": 3135762, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.466Z", "contentLength": 3135762, "httpStatusCode": 200}	4ec40647-943f-49cb-8f59-73ddeaf20b27	\N	{}
dc5db03b-9175-4a51-b8d0-89837ff3bddf	campuses	rice/1	\N	2025-02-09 18:10:35.499326+00	2025-02-09 18:10:35.499326+00	2025-02-09 18:10:35.499326+00	{"eTag": "\\"b75b0472712a81f16ff9254af973be8b\\"", "size": 746695, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.495Z", "contentLength": 746695, "httpStatusCode": 200}	046b48e2-185f-4ff7-b89d-aac767274778	\N	{}
207f4045-e1db-4afc-a33a-7e5648d0adba	campuses	rice/0	\N	2025-02-09 18:10:35.51472+00	2025-02-09 18:10:35.51472+00	2025-02-09 18:10:35.51472+00	{"eTag": "\\"bdd480b9c3f83b3cfc547b2332f3d97a\\"", "size": 1473353, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.509Z", "contentLength": 1473353, "httpStatusCode": 200}	f046c8a7-c102-4805-8dbe-6794fef9ef9f	\N	{}
db916480-1212-4f33-aedc-1f4e89def95c	campuses	rice/3	\N	2025-02-09 18:10:35.524358+00	2025-02-09 18:10:35.524358+00	2025-02-09 18:10:35.524358+00	{"eTag": "\\"fd72982c777fdfac58bd91f3ab42c396\\"", "size": 132764, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.522Z", "contentLength": 132764, "httpStatusCode": 200}	3e601574-2d24-4e9a-9723-14864fa0f1e5	\N	{}
edc31a63-eee3-468f-909f-24b5a1352be6	campuses	colostate/0	\N	2025-02-09 18:10:35.542407+00	2025-02-09 18:10:35.542407+00	2025-02-09 18:10:35.542407+00	{"eTag": "\\"416acf4cb16c70ed94baed3a4a056631\\"", "size": 2485610, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.533Z", "contentLength": 2485610, "httpStatusCode": 200}	426faebf-b1df-4ba7-ac97-e104851269b5	\N	{}
1053f877-30a1-4012-83d9-36c2f32cc797	campuses	colostate/8	\N	2025-02-09 18:10:35.564734+00	2025-02-09 18:10:35.564734+00	2025-02-09 18:10:35.564734+00	{"eTag": "\\"7a0d6bb8592425a70394ba8060574ca5\\"", "size": 112532, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.553Z", "contentLength": 112532, "httpStatusCode": 200}	c3d5164b-d3ce-4f4b-a1bd-23fb6604b5e5	\N	{}
7c762ba6-5aa6-4f6b-b666-3b1371aedcbc	campuses	colostate/1	\N	2025-02-09 18:10:35.575446+00	2025-02-09 18:10:35.575446+00	2025-02-09 18:10:35.575446+00	{"eTag": "\\"33e026d833604c9b8c2027e158a216e6\\"", "size": 606845, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.571Z", "contentLength": 606845, "httpStatusCode": 200}	aebb4c95-b6ad-4938-8e98-9df819f01eb4	\N	{}
3955e070-558c-4711-9d31-3ed060e4575d	campuses	colostate/6	\N	2025-02-09 18:10:35.58501+00	2025-02-09 18:10:35.58501+00	2025-02-09 18:10:35.58501+00	{"eTag": "\\"9a9d1cf1dfad1087b94fed1363b49eb6\\"", "size": 702288, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.581Z", "contentLength": 702288, "httpStatusCode": 200}	02ef9c2f-5ac7-4afa-aed7-835262bd7f62	\N	{}
5b4b48a9-5c5a-481d-8e6c-ae0822ddab9e	campuses	colostate/7	\N	2025-02-09 18:10:35.592013+00	2025-02-09 18:10:35.592013+00	2025-02-09 18:10:35.592013+00	{"eTag": "\\"31daec9b0f437361cf9de6b3f0e60978\\"", "size": 126835, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.590Z", "contentLength": 126835, "httpStatusCode": 200}	4c9a5244-5c0b-457f-9c9d-2d8c1516121e	\N	{}
bb3d8c82-c1e2-4408-a817-75ffaf4303f0	campuses	colostate/4	\N	2025-02-09 18:10:35.598886+00	2025-02-09 18:10:35.598886+00	2025-02-09 18:10:35.598886+00	{"eTag": "\\"d39bab7e5ae926dbf7a53c5a198d93f2\\"", "size": 174306, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.597Z", "contentLength": 174306, "httpStatusCode": 200}	7193259b-f983-4e06-892e-1d7cc679291f	\N	{}
d768f9a8-025e-42e7-b0c6-b1bec5f5d5d9	campuses	colostate/5	\N	2025-02-09 18:10:35.606998+00	2025-02-09 18:10:35.606998+00	2025-02-09 18:10:35.606998+00	{"eTag": "\\"0d1858cc1d3d2816a277093e7fd7a119\\"", "size": 597602, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.604Z", "contentLength": 597602, "httpStatusCode": 200}	266d5575-f12d-4ec6-a492-bb83d4ed8eb1	\N	{}
88093199-41f4-4c3e-ab3b-28ae659f4c7c	campuses	colostate/9	\N	2025-02-09 18:10:35.615009+00	2025-02-09 18:10:35.615009+00	2025-02-09 18:10:35.615009+00	{"eTag": "\\"5cbdc4e56bced3ebe9108047790e9f00\\"", "size": 453316, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.612Z", "contentLength": 453316, "httpStatusCode": 200}	f24cd240-43c8-4892-96e1-e7f4abe9b54b	\N	{}
3ead46d1-cf7f-4510-b6b6-b5c7507bb406	campuses	colostate/2	\N	2025-02-09 18:10:35.626973+00	2025-02-09 18:10:35.626973+00	2025-02-09 18:10:35.626973+00	{"eTag": "\\"cee2e88c89ac1b3c2a88f85078daf3ce\\"", "size": 980453, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.622Z", "contentLength": 980453, "httpStatusCode": 200}	0f95bc3a-a3fe-43f7-b8ae-c66116fb233f	\N	{}
f2a8fcef-2c54-4bc1-bc3a-756168e54dbc	campuses	colostate/3	\N	2025-02-09 18:10:35.638226+00	2025-02-09 18:10:35.638226+00	2025-02-09 18:10:35.638226+00	{"eTag": "\\"ec7bfd19601822912204a16e4031d122\\"", "size": 693116, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.634Z", "contentLength": 693116, "httpStatusCode": 200}	bed47471-30b4-409d-95d9-cc3d95263ba4	\N	{}
f15cb7f2-18ae-46fe-ba81-2e9daf2111f2	campuses	iusb/0	\N	2025-02-09 18:10:35.647678+00	2025-02-09 18:10:35.647678+00	2025-02-09 18:10:35.647678+00	{"eTag": "\\"33dae2abe4ebee9929bf84d8499c9801\\"", "size": 341435, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.645Z", "contentLength": 341435, "httpStatusCode": 200}	15d306c0-30ef-468c-a7f8-babe1c8c8e44	\N	{}
e631b57e-75f6-43bb-9db1-fe5bbae1f7bd	campuses	iusb/1	\N	2025-02-09 18:10:35.655601+00	2025-02-09 18:10:35.655601+00	2025-02-09 18:10:35.655601+00	{"eTag": "\\"235a7a617eff2befba9e58c92fca3e66\\"", "size": 110940, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.654Z", "contentLength": 110940, "httpStatusCode": 200}	48a3251c-a8ff-4aba-bc42-eafdb0e99834	\N	{}
f34f91ea-95e7-4953-aa2b-a677c78575ef	campuses	iusb/6	\N	2025-02-09 18:10:35.671537+00	2025-02-09 18:10:35.671537+00	2025-02-09 18:10:35.671537+00	{"eTag": "\\"79a8031777275f5336823773d5175a9c\\"", "size": 132546, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.663Z", "contentLength": 132546, "httpStatusCode": 200}	36f8ff61-b047-4350-a727-7993121f7ce8	\N	{}
06dda87c-8e39-46f1-a0de-c1753266b982	campuses	iusb/8	\N	2025-02-09 18:10:35.680979+00	2025-02-09 18:10:35.680979+00	2025-02-09 18:10:35.680979+00	{"eTag": "\\"8c07eebb44f8232e1fe3d5f552bf9a24\\"", "size": 164575, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.679Z", "contentLength": 164575, "httpStatusCode": 200}	d5e620f4-a7f7-486a-9980-9f687a8ccd04	\N	{}
9f2b1227-0052-407a-b792-be239cf64388	campuses	iusb/4	\N	2025-02-09 18:10:35.691552+00	2025-02-09 18:10:35.691552+00	2025-02-09 18:10:35.691552+00	{"eTag": "\\"4884cbf2271819fa4528ce5222fef494\\"", "size": 556873, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.687Z", "contentLength": 556873, "httpStatusCode": 200}	63ab0dbe-24f5-456a-8822-27e39c7697fd	\N	{}
d2fc2f4d-22fb-4d9a-97e3-b10ff8f254af	campuses	iusb/5	\N	2025-02-09 18:10:35.704055+00	2025-02-09 18:10:35.704055+00	2025-02-09 18:10:35.704055+00	{"eTag": "\\"88e831c447a10b0306854d88dfaf97b1\\"", "size": 1119858, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.699Z", "contentLength": 1119858, "httpStatusCode": 200}	6d1f37df-d9ce-4886-91cd-21f5fde39212	\N	{}
400291ea-575c-4927-b08b-06a83fe7da90	campuses	iusb/9	\N	2025-02-09 18:10:35.740009+00	2025-02-09 18:10:35.740009+00	2025-02-09 18:10:35.740009+00	{"eTag": "\\"152262decd1b400f85f174d1716d6510\\"", "size": 5484885, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.715Z", "contentLength": 5484885, "httpStatusCode": 200}	4da02cb8-3d5f-46b8-af3a-168a76b08b63	\N	{}
6788b601-c9df-491c-a520-e06deba25459	campuses	iusb/2	\N	2025-02-09 18:10:35.750129+00	2025-02-09 18:10:35.750129+00	2025-02-09 18:10:35.750129+00	{"eTag": "\\"cc5acb4f3615c2433467f3edf867716b\\"", "size": 117926, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.746Z", "contentLength": 117926, "httpStatusCode": 200}	fa120fa9-c3b1-4882-a847-4f60352381c0	\N	{}
3f368316-e727-43a6-8e36-4c5df7f2240c	campuses	iusb/7	\N	2025-02-09 18:10:35.772302+00	2025-02-09 18:10:35.772302+00	2025-02-09 18:10:35.772302+00	{"eTag": "\\"af72487797556e7ac93c34caa05e1b03\\"", "size": 1645364, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.765Z", "contentLength": 1645364, "httpStatusCode": 200}	546d63f8-74e7-43fb-acdb-e46019c20568	\N	{}
22a6ca6e-605c-435c-92d6-302c4c0878b9	campuses	iusb/3	\N	2025-02-09 18:10:35.783022+00	2025-02-09 18:10:35.783022+00	2025-02-09 18:10:35.783022+00	{"eTag": "\\"b15a7652c847af71aa53772333022847\\"", "size": 798713, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.779Z", "contentLength": 798713, "httpStatusCode": 200}	5a6788c2-3dcb-41de-898a-b83f6eed5953	\N	{}
33792e09-8efd-4939-ae7a-b13fe6350965	campuses	bates/5	\N	2025-02-09 18:10:35.792846+00	2025-02-09 18:10:35.792846+00	2025-02-09 18:10:35.792846+00	{"eTag": "\\"cadfa1d9f206d14d522d86cebdc2ec15\\"", "size": 289962, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.790Z", "contentLength": 289962, "httpStatusCode": 200}	fce39c40-ba7a-4e5f-8a67-deb662722f21	\N	{}
c7b85f2e-85d1-415e-9b6c-93b31d623a25	campuses	bates/1	\N	2025-02-09 18:10:35.801116+00	2025-02-09 18:10:35.801116+00	2025-02-09 18:10:35.801116+00	{"eTag": "\\"5a71f24acf2c9acf4b89895c5317d7fe\\"", "size": 287086, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.798Z", "contentLength": 287086, "httpStatusCode": 200}	c3f9de05-da29-4f1f-be7d-19de83ab1cb3	\N	{}
0af5ec4d-b0d3-4946-b049-0c1823e04d57	campuses	bates/6	\N	2025-02-09 18:10:35.808521+00	2025-02-09 18:10:35.808521+00	2025-02-09 18:10:35.808521+00	{"eTag": "\\"7dc9f3fff6014560738227cc13d13d2c\\"", "size": 53368, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.807Z", "contentLength": 53368, "httpStatusCode": 200}	82c26974-b2e2-45c7-94ce-5fceec782764	\N	{}
f3e01322-b6ef-49bd-b4e1-29ecd063d842	campuses	bates/2	\N	2025-02-09 18:10:35.817073+00	2025-02-09 18:10:35.817073+00	2025-02-09 18:10:35.817073+00	{"eTag": "\\"949672245736146566492e0ba8bb306b\\"", "size": 223426, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.815Z", "contentLength": 223426, "httpStatusCode": 200}	d73165f0-ebfc-449b-a80d-aa308fdcd242	\N	{}
cc87ffc8-a63e-4e8b-883d-d15a28010232	campuses	bates/8	\N	2025-02-09 18:10:35.824851+00	2025-02-09 18:10:35.824851+00	2025-02-09 18:10:35.824851+00	{"eTag": "\\"ba974fb6d88813c33c86d2f36c7aa27a\\"", "size": 36249, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.823Z", "contentLength": 36249, "httpStatusCode": 200}	6f0637ed-4daa-40b5-a2b0-c40f4105e4af	\N	{}
b9027c96-9769-492c-9e07-70cc1e2f1b20	campuses	bates/4	\N	2025-02-09 18:10:35.838452+00	2025-02-09 18:10:35.838452+00	2025-02-09 18:10:35.838452+00	{"eTag": "\\"1a78efee5a87539d1c7810222b50f912\\"", "size": 1036080, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.833Z", "contentLength": 1036080, "httpStatusCode": 200}	97ebd1bc-7d88-4692-a556-52e94ff31783	\N	{}
cef2e93e-98f4-49d2-905e-f34e9a42f0e5	campuses	bates/0	\N	2025-02-09 18:10:35.854515+00	2025-02-09 18:10:35.854515+00	2025-02-09 18:10:35.854515+00	{"eTag": "\\"22f6ba61eaec42cab943112be31b926d\\"", "size": 79280, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.849Z", "contentLength": 79280, "httpStatusCode": 200}	7f43634d-ab48-43c5-835f-44e50fedbfe9	\N	{}
0de9e64d-b58d-45e0-bbb3-19804e09be8f	campuses	bates/9	\N	2025-02-09 18:10:35.868158+00	2025-02-09 18:10:35.868158+00	2025-02-09 18:10:35.868158+00	{"eTag": "\\"b6f9e6d28c424dc0be5fbb8e8454ec72\\"", "size": 463267, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.865Z", "contentLength": 463267, "httpStatusCode": 200}	409abaa7-6a05-486a-8fb0-9bfe4d8679ff	\N	{}
7ff98725-0b4a-48b3-b3eb-c119f8b43c02	campuses	bates/7	\N	2025-02-09 18:10:35.888318+00	2025-02-09 18:10:35.888318+00	2025-02-09 18:10:35.888318+00	{"eTag": "\\"c9ec7680567918588a6eef749645d4b8\\"", "size": 2842881, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.878Z", "contentLength": 2842881, "httpStatusCode": 200}	1e35f9c8-b4d3-48ff-9478-27414762ca05	\N	{}
a11c43d7-05ef-4ba9-ba4a-27bfaae6d619	campuses	bates/3	\N	2025-02-09 18:10:35.926014+00	2025-02-09 18:10:35.926014+00	2025-02-09 18:10:35.926014+00	{"eTag": "\\"892a212521fb2b5294232fccac607b97\\"", "size": 460093, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.923Z", "contentLength": 460093, "httpStatusCode": 200}	9f5077ef-b6b3-4223-ac49-e177b23c940a	\N	{}
094edeb3-3e86-4204-a70a-45e6349be784	campuses	rocky/0	\N	2025-02-09 18:10:35.931875+00	2025-02-09 18:10:35.931875+00	2025-02-09 18:10:35.931875+00	{"eTag": "\\"889267a8a158c83eb11364ea36de3498\\"", "size": 170448, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.930Z", "contentLength": 170448, "httpStatusCode": 200}	77e2b422-27b7-4f86-ae41-a85722f83a07	\N	{}
5ecb2892-b67d-437b-ac07-d2c98d6cb685	campuses	rocky/1	\N	2025-02-09 18:10:35.949044+00	2025-02-09 18:10:35.949044+00	2025-02-09 18:10:35.949044+00	{"eTag": "\\"608f72743511b64704c94e43002e4548\\"", "size": 127244, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.947Z", "contentLength": 127244, "httpStatusCode": 200}	582ab8fb-d744-480b-9f20-09ad9928c5bc	\N	{}
652211d4-6494-4942-aeb3-cfeca5333757	campuses	rocky/6	\N	2025-02-09 18:10:35.954995+00	2025-02-09 18:10:35.954995+00	2025-02-09 18:10:35.954995+00	{"eTag": "\\"cd2a52327d6182e08c89bdfe07fd3763\\"", "size": 111115, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.953Z", "contentLength": 111115, "httpStatusCode": 200}	b5a9c023-bf39-4d15-9028-4dd3bd07a6a3	\N	{}
999d861e-cc27-4b48-a883-9479f7b8a22b	campuses	rocky/8	\N	2025-02-09 18:10:35.960611+00	2025-02-09 18:10:35.960611+00	2025-02-09 18:10:35.960611+00	{"eTag": "\\"d736a06806bb1677bf6ba1f703513ac4\\"", "size": 178513, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.959Z", "contentLength": 178513, "httpStatusCode": 200}	f3c6ae67-32ca-4d7f-9b96-b36ef3d608dc	\N	{}
d05a3084-c3f2-472d-aaa7-22212f7bedc4	campuses	rocky/4	\N	2025-02-09 18:10:35.967749+00	2025-02-09 18:10:35.967749+00	2025-02-09 18:10:35.967749+00	{"eTag": "\\"0d91f62eea17a8fe1be030b8ec386ba0\\"", "size": 650887, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.964Z", "contentLength": 650887, "httpStatusCode": 200}	7c14c5ab-ca33-41bd-a381-f2c96450caa2	\N	{}
9d89f6df-9ee7-469c-b2bb-41692af96330	campuses	rocky/5	\N	2025-02-09 18:10:35.973905+00	2025-02-09 18:10:35.973905+00	2025-02-09 18:10:35.973905+00	{"eTag": "\\"effd63bdde5ee2d8bc6a1d08ec114a8b\\"", "size": 133194, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.972Z", "contentLength": 133194, "httpStatusCode": 200}	3540d608-10a7-4de9-85a1-20c129255d56	\N	{}
3d8efa02-d968-4c07-9670-f1827965cc49	campuses	rocky/9	\N	2025-02-09 18:10:35.980072+00	2025-02-09 18:10:35.980072+00	2025-02-09 18:10:35.980072+00	{"eTag": "\\"1c80aa849174f552f5e6ede512c7b654\\"", "size": 223929, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.978Z", "contentLength": 223929, "httpStatusCode": 200}	e0604234-3ae3-43d3-93ee-4e86f5d006e8	\N	{}
99c38e08-15a6-492c-8059-76dcf7890a08	campuses	rocky/3	\N	2025-02-09 18:10:35.985956+00	2025-02-09 18:10:35.985956+00	2025-02-09 18:10:35.985956+00	{"eTag": "\\"2fa6511216517e005de430da773e304f\\"", "size": 245978, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.984Z", "contentLength": 245978, "httpStatusCode": 200}	d134e20b-5094-4da5-9867-d1e6adb17ac6	\N	{}
9cf9c55e-e59e-4a02-b153-cbdf618a620c	campuses	colgate/0	\N	2025-02-09 18:10:35.994131+00	2025-02-09 18:10:35.994131+00	2025-02-09 18:10:35.994131+00	{"eTag": "\\"d8dfb69c7ffc0c016559dfb4c95cfeda\\"", "size": 521793, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.991Z", "contentLength": 521793, "httpStatusCode": 200}	616ccad8-104f-420a-81da-98fd5db004bc	\N	{}
110502c8-dd89-4e36-ac23-a8cf8c751a1d	campuses	colgate/1	\N	2025-02-09 18:10:36.001935+00	2025-02-09 18:10:36.001935+00	2025-02-09 18:10:36.001935+00	{"eTag": "\\"5ee2e4daea6648b0a7d8528411d254fe\\"", "size": 630356, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:35.998Z", "contentLength": 630356, "httpStatusCode": 200}	35fe20f7-49d5-40c9-9f29-08fb94a2e95f	\N	{}
ee2c10fc-45c9-4404-85d1-66915c2d3505	campuses	colgate/6	\N	2025-02-09 18:10:36.007609+00	2025-02-09 18:10:36.007609+00	2025-02-09 18:10:36.007609+00	{"eTag": "\\"c4ef959a30afabaaf71076ca76659616\\"", "size": 53274, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.006Z", "contentLength": 53274, "httpStatusCode": 200}	dc5cb295-9892-4957-9bd0-8b06d54dd537	\N	{}
5104325c-315b-427a-9a89-09bcddcefe79	campuses	colgate/7	\N	2025-02-09 18:10:36.012086+00	2025-02-09 18:10:36.012086+00	2025-02-09 18:10:36.012086+00	{"eTag": "\\"164a1a7d4e483b5680e5594e381e6265\\"", "size": 57871, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.011Z", "contentLength": 57871, "httpStatusCode": 200}	1f86c0f3-fb52-4a9c-a6a7-a715a8c7fcda	\N	{}
98ddb46d-89dd-4f6a-8cc0-c6a34202b14f	campuses	colgate/8	\N	2025-02-09 18:10:36.019907+00	2025-02-09 18:10:36.019907+00	2025-02-09 18:10:36.019907+00	{"eTag": "\\"c68ab73717e3f532ac15be6ca1d46675\\"", "size": 740609, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.016Z", "contentLength": 740609, "httpStatusCode": 200}	08df30cf-7691-4647-9596-e9e60ba88952	\N	{}
425b0731-18ab-43f4-a8f9-c7d6cdc27bc5	campuses	colgate/4	\N	2025-02-09 18:10:36.03673+00	2025-02-09 18:10:36.03673+00	2025-02-09 18:10:36.03673+00	{"eTag": "\\"f2950af60ad33a56eb3a3e5722f6cb38\\"", "size": 69158, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.031Z", "contentLength": 69158, "httpStatusCode": 200}	610c3706-1145-43ca-a5d7-6908233b5ce4	\N	{}
acb7cf11-cd40-4742-9542-e1869dd19c48	campuses	colgate/5	\N	2025-02-09 18:10:36.050506+00	2025-02-09 18:10:36.050506+00	2025-02-09 18:10:36.050506+00	{"eTag": "\\"cdbe5efad1dea4831a6bf9ba6b07cf11\\"", "size": 1859382, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.044Z", "contentLength": 1859382, "httpStatusCode": 200}	cb873d98-3fff-4f50-960b-4875e10666f9	\N	{}
94e85f48-8ac2-44b1-bd0f-f32288b8b8f9	campuses	colgate/9	\N	2025-02-09 18:10:36.061742+00	2025-02-09 18:10:36.061742+00	2025-02-09 18:10:36.061742+00	{"eTag": "\\"e60192731ee5de3819210b44086f8c50\\"", "size": 688790, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.058Z", "contentLength": 688790, "httpStatusCode": 200}	e0b54475-c9aa-453f-b6ea-d58c4b793c5e	\N	{}
95d4cde1-23a8-48be-8eb0-2d81b3d30d3d	campuses	colgate/2	\N	2025-02-09 18:10:36.069889+00	2025-02-09 18:10:36.069889+00	2025-02-09 18:10:36.069889+00	{"eTag": "\\"753e431135051fdcfec7f3af2f83a344\\"", "size": 361268, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.067Z", "contentLength": 361268, "httpStatusCode": 200}	1dd99d9b-398f-4bd1-aa29-8e67736609ee	\N	{}
bfeb62e8-6548-42f2-9505-b802ecc67ce0	campuses	colgate/3	\N	2025-02-09 18:10:36.079047+00	2025-02-09 18:10:36.079047+00	2025-02-09 18:10:36.079047+00	{"eTag": "\\"0bad0d9ab824c75461d95c2a70903ab0\\"", "size": 792562, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.075Z", "contentLength": 792562, "httpStatusCode": 200}	db72be7e-1093-42af-b54e-e3a0b3e3c972	\N	{}
d15ddfbd-499e-4c2e-baef-f7b1a7cbbefa	campuses	nau/0	\N	2025-02-09 18:10:36.0942+00	2025-02-09 18:10:36.0942+00	2025-02-09 18:10:36.0942+00	{"eTag": "\\"db7527587c408907a364785ab07571a5\\"", "size": 1821910, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.087Z", "contentLength": 1821910, "httpStatusCode": 200}	d2252c96-5a6e-4030-ad84-353da030af90	\N	{}
1fe1339f-bece-4169-92bb-3c45c4d82ead	campuses	nau/1	\N	2025-02-09 18:10:36.103104+00	2025-02-09 18:10:36.103104+00	2025-02-09 18:10:36.103104+00	{"eTag": "\\"0a7b4f3b861710f2ff42c1e3c8b11482\\"", "size": 67026, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.101Z", "contentLength": 67026, "httpStatusCode": 200}	66c26ad0-0e34-441f-a7f9-40bce86e4d2c	\N	{}
3d160f61-0841-404f-8e0c-726b40172976	campuses	nau/6	\N	2025-02-09 18:10:36.114071+00	2025-02-09 18:10:36.114071+00	2025-02-09 18:10:36.114071+00	{"eTag": "\\"3404ad41353e01088aa7fac4286d0cee\\"", "size": 760303, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.110Z", "contentLength": 760303, "httpStatusCode": 200}	a66e05d6-3bb1-4619-899c-0a3845c73e89	\N	{}
c5685d7b-762e-4771-9e19-a207814d2316	campuses	nau/7	\N	2025-02-09 18:10:36.122486+00	2025-02-09 18:10:36.122486+00	2025-02-09 18:10:36.122486+00	{"eTag": "\\"78e124dc9781d4974146406361d6d6ed\\"", "size": 100070, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.121Z", "contentLength": 100070, "httpStatusCode": 200}	d3ec3f34-c68e-4fdc-aa74-67db78ac328b	\N	{}
6965eba8-d30d-4f33-8b1c-a7c922997a10	campuses	nau/8	\N	2025-02-09 18:10:36.134351+00	2025-02-09 18:10:36.134351+00	2025-02-09 18:10:36.134351+00	{"eTag": "\\"af3f84f6164bdc7924cbd428294da4c0\\"", "size": 1065100, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.129Z", "contentLength": 1065100, "httpStatusCode": 200}	946ef220-0c78-4b8d-ad17-51e712c5a2c4	\N	{}
efaf634f-6946-4672-84e4-c41b8f563e5c	campuses	nau/4	\N	2025-02-09 18:10:36.151057+00	2025-02-09 18:10:36.151057+00	2025-02-09 18:10:36.151057+00	{"eTag": "\\"9268b51e66a16996a3c885f38f50ed15\\"", "size": 768749, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.147Z", "contentLength": 768749, "httpStatusCode": 200}	8d76b6f7-c9fb-4072-a193-e98288061ce4	\N	{}
161a4f15-0c9f-4ba5-9d7d-b339fa02bad3	campuses	nau/5	\N	2025-02-09 18:10:36.160572+00	2025-02-09 18:10:36.160572+00	2025-02-09 18:10:36.160572+00	{"eTag": "\\"399c8f13737070fc6def3e591a20fbbf\\"", "size": 253216, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.158Z", "contentLength": 253216, "httpStatusCode": 200}	37abae7d-d1b1-4c42-9125-f26da6dd17a8	\N	{}
aa97adbd-d986-4a59-bf84-446a22ead46a	campuses	nau/9	\N	2025-02-09 18:10:36.167357+00	2025-02-09 18:10:36.167357+00	2025-02-09 18:10:36.167357+00	{"eTag": "\\"98e969901d1e8490edcc07cd1c7a6d39\\"", "size": 130798, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.166Z", "contentLength": 130798, "httpStatusCode": 200}	e26ce98d-cd48-4caf-9e06-0b85d7ed03a0	\N	{}
a664c4a6-c0d3-4a10-a39c-3cbcf1973a59	campuses	nau/2	\N	2025-02-09 18:10:36.175765+00	2025-02-09 18:10:36.175765+00	2025-02-09 18:10:36.175765+00	{"eTag": "\\"5d768a852da200c6e7e9404cdc2ad155\\"", "size": 98526, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.174Z", "contentLength": 98526, "httpStatusCode": 200}	2601ef7b-2757-4f5e-a6be-86c2273e62e4	\N	{}
081bb91c-2b96-4109-8b27-38e211ec3ccc	campuses	nau/3	\N	2025-02-09 18:10:36.188926+00	2025-02-09 18:10:36.188926+00	2025-02-09 18:10:36.188926+00	{"eTag": "\\"c42d044b906e1fe43287d5948f575f4e\\"", "size": 945374, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.184Z", "contentLength": 945374, "httpStatusCode": 200}	5f4ad4a3-76e1-4d19-a754-7bcb210a22ca	\N	{}
d51c3f9e-9bdf-4646-964d-e4dc1d71761c	campuses	gwu/0	\N	2025-02-09 18:10:36.199204+00	2025-02-09 18:10:36.199204+00	2025-02-09 18:10:36.199204+00	{"eTag": "\\"93ccb18907f56397c39bcae652f8ca8f\\"", "size": 189029, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.197Z", "contentLength": 189029, "httpStatusCode": 200}	00b118cd-c6d2-4608-929b-d4395bf2a0cc	\N	{}
a6b27b17-82e9-41a1-90f6-3d8e12ea7ad9	campuses	gwu/1	\N	2025-02-09 18:10:36.208293+00	2025-02-09 18:10:36.208293+00	2025-02-09 18:10:36.208293+00	{"eTag": "\\"5e46ee7eaf57f83f5a7b06a1076fbe21\\"", "size": 278765, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.206Z", "contentLength": 278765, "httpStatusCode": 200}	381cf539-a0f8-4deb-96d6-acc547ad7521	\N	{}
4803e11e-e3d9-4ead-abb3-19c1c25462fd	campuses	gwu/8	\N	2025-02-09 18:10:36.216111+00	2025-02-09 18:10:36.216111+00	2025-02-09 18:10:36.216111+00	{"eTag": "\\"7ba3f92b0e1974d66d3b754b9899e469\\"", "size": 386, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.215Z", "contentLength": 386, "httpStatusCode": 200}	5d5748d6-7a71-43fb-82bf-6a4a49a0fcbf	\N	{}
9e1c07ea-0b52-4233-8178-e7a6afa1d3db	campuses	gwu/6	\N	2025-02-09 18:10:36.224606+00	2025-02-09 18:10:36.224606+00	2025-02-09 18:10:36.224606+00	{"eTag": "\\"23de98b1bf9aa1513ea48224058ac597\\"", "size": 151772, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.223Z", "contentLength": 151772, "httpStatusCode": 200}	6d5f9f57-7b8d-4e4a-932f-0085bdc44d23	\N	{}
38f620a0-2ab7-4a94-a334-323940e4d9a7	campuses	gwu/7	\N	2025-02-09 18:10:36.247279+00	2025-02-09 18:10:36.247279+00	2025-02-09 18:10:36.247279+00	{"eTag": "\\"e05370c0ce8a8f36b39afe10c916ef8b\\"", "size": 1433314, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.235Z", "contentLength": 1433314, "httpStatusCode": 200}	4d8439f7-4966-4c4c-9639-958df44b8a3b	\N	{}
33c32a9c-3971-4f8f-8209-b81ad5f2313a	campuses	gwu/4	\N	2025-02-09 18:10:36.260481+00	2025-02-09 18:10:36.260481+00	2025-02-09 18:10:36.260481+00	{"eTag": "\\"b76c06b55b92c7e14d79b825c1cf2dd0\\"", "size": 711665, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.256Z", "contentLength": 711665, "httpStatusCode": 200}	99619183-87dc-428d-8fc6-1fb716cc1707	\N	{}
ec7fd0bf-ad3d-4271-8199-9b2dd4bc7cdb	campuses	gwu/5	\N	2025-02-09 18:10:36.279902+00	2025-02-09 18:10:36.279902+00	2025-02-09 18:10:36.279902+00	{"eTag": "\\"e218094252005c31011cee377059e5cf\\"", "size": 2016404, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.271Z", "contentLength": 2016404, "httpStatusCode": 200}	cf3f6441-0934-4d82-8a04-a84794c39e7a	\N	{}
dcef93bd-4d16-49b1-82b4-57cf722c42ec	campuses	gwu/9	\N	2025-02-09 18:10:36.291146+00	2025-02-09 18:10:36.291146+00	2025-02-09 18:10:36.291146+00	{"eTag": "\\"262bbe4133aaab92e7b77a4382029be8\\"", "size": 158605, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.289Z", "contentLength": 158605, "httpStatusCode": 200}	3e937ca5-4f7e-4ea0-8303-39e9a4da4718	\N	{}
e6f4d147-3161-4119-ba23-66f27552052a	campuses	gwu/2	\N	2025-02-09 18:10:36.303317+00	2025-02-09 18:10:36.303317+00	2025-02-09 18:10:36.303317+00	{"eTag": "\\"e9237331f557905ac43c101cad484bd5\\"", "size": 784826, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.299Z", "contentLength": 784826, "httpStatusCode": 200}	d7a11c6b-c93d-44be-8fd7-bab8a7418693	\N	{}
2ad1aeaf-1ace-45a8-87c2-1a2e944a2419	campuses	gwu/3	\N	2025-02-09 18:10:36.324579+00	2025-02-09 18:10:36.324579+00	2025-02-09 18:10:36.324579+00	{"eTag": "\\"0959947925565b1a9153a871abc00517\\"", "size": 1214620, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.316Z", "contentLength": 1214620, "httpStatusCode": 200}	1e06ecfd-1732-4191-8ec0-582d7cdbf359	\N	{}
07761ffb-ab7f-43f4-aeba-347d8f64a186	campuses	siue/0	\N	2025-02-09 18:10:36.34335+00	2025-02-09 18:10:36.34335+00	2025-02-09 18:10:36.34335+00	{"eTag": "\\"36b697d168de0a99fda9793a3fa179a1\\"", "size": 1592788, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.336Z", "contentLength": 1592788, "httpStatusCode": 200}	c504fecc-ae67-4f3a-9fa7-1ef759c07979	\N	{}
a7289272-48d2-4a5c-b5c8-1eaa3b0c7e02	campuses	siue/1	\N	2025-02-09 18:10:36.361378+00	2025-02-09 18:10:36.361378+00	2025-02-09 18:10:36.361378+00	{"eTag": "\\"cfa7b4733b06f01489a3f3435988dc0e\\"", "size": 1342303, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.355Z", "contentLength": 1342303, "httpStatusCode": 200}	615f7f41-91fc-4461-9091-d50edbc5aca0	\N	{}
4b52180c-fad1-4289-8891-b9c4b060aeb3	campuses	siue/6	\N	2025-02-09 18:10:36.377416+00	2025-02-09 18:10:36.377416+00	2025-02-09 18:10:36.377416+00	{"eTag": "\\"fb695703c1e2e6d7fd1e25e8014ec1d0\\"", "size": 1434655, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.372Z", "contentLength": 1434655, "httpStatusCode": 200}	12b0d195-0252-42bf-a134-166a6fc53a26	\N	{}
83a1b087-a74d-485a-a30c-1fd9b69576b3	campuses	siue/7	\N	2025-02-09 18:10:36.385845+00	2025-02-09 18:10:36.385845+00	2025-02-09 18:10:36.385845+00	{"eTag": "\\"44f9563b932e89732ee03053a72e21ef\\"", "size": 48368, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.384Z", "contentLength": 48368, "httpStatusCode": 200}	f01816f8-d384-4f3d-851d-b2996e0258bd	\N	{}
4265dbbf-d621-4eb0-954a-9dd3289905d1	campuses	siue/8	\N	2025-02-09 18:10:36.402177+00	2025-02-09 18:10:36.402177+00	2025-02-09 18:10:36.402177+00	{"eTag": "\\"25a98108261c555d537590a41f541f7d\\"", "size": 52439, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.396Z", "contentLength": 52439, "httpStatusCode": 200}	97a2c788-b098-437b-aa7c-0bbc3f76a115	\N	{}
9e199fc9-50dc-4f66-9fc3-cefca5c14e39	campuses	smith/9	\N	2025-02-09 18:10:36.884168+00	2025-02-09 18:10:36.884168+00	2025-02-09 18:10:36.884168+00	{"eTag": "\\"a2ee5a9af19934307abad11823d2d586\\"", "size": 305946, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.882Z", "contentLength": 305946, "httpStatusCode": 200}	1f7592a3-4a6f-4efa-bb3a-c7f4acd7c539	\N	{}
1587765f-6cee-4598-9e51-16f02d70229d	campuses	smith/2	\N	2025-02-09 18:10:36.891058+00	2025-02-09 18:10:36.891058+00	2025-02-09 18:10:36.891058+00	{"eTag": "\\"c5a864a4ad61180aa36fded4762e0e8d\\"", "size": 45871, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.890Z", "contentLength": 45871, "httpStatusCode": 200}	e0cbab9a-ce21-40ab-8195-08cc40b3bba5	\N	{}
80a698f2-e08d-4f85-bab2-06e5793f029c	campuses	smith/3	\N	2025-02-09 18:10:36.916774+00	2025-02-09 18:10:36.916774+00	2025-02-09 18:10:36.916774+00	{"eTag": "\\"187141e24fddf0fa03c97f48c808832a\\"", "size": 5017548, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.900Z", "contentLength": 5017548, "httpStatusCode": 200}	fab544d3-a9f2-4768-9e8c-e01c33fd71c1	\N	{}
bee274fe-2bf4-4f53-a0ab-9950c4f9611e	campuses	newmanu/0	\N	2025-02-09 18:10:36.934988+00	2025-02-09 18:10:36.934988+00	2025-02-09 18:10:36.934988+00	{"eTag": "\\"5f8c7b903130c45d8956b5958f690370\\"", "size": 179370, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.928Z", "contentLength": 179370, "httpStatusCode": 200}	710da05e-a11d-4bb7-948b-b67d0f1d1e21	\N	{}
c65df8c5-5088-40f2-9432-5c20b9c5ccef	campuses	newmanu/1	\N	2025-02-09 18:10:36.942222+00	2025-02-09 18:10:36.942222+00	2025-02-09 18:10:36.942222+00	{"eTag": "\\"1690c9613dad99e1dcf30215f18748e5\\"", "size": 127246, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.941Z", "contentLength": 127246, "httpStatusCode": 200}	58bdd6ae-8bab-49b4-81c1-e29ea8240bed	\N	{}
9db3e13f-2252-47b3-ba1e-fccf7e0a4f69	campuses	newmanu/6	\N	2025-02-09 18:10:36.948814+00	2025-02-09 18:10:36.948814+00	2025-02-09 18:10:36.948814+00	{"eTag": "\\"d450d8be60427df25888a7d4e295bff0\\"", "size": 126089, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.947Z", "contentLength": 126089, "httpStatusCode": 200}	0ec8be05-ee30-40fe-8e0e-67f5763378a6	\N	{}
a505abd9-8007-4647-ae8c-c1b8371154df	campuses	newmanu/7	\N	2025-02-09 18:10:36.955955+00	2025-02-09 18:10:36.955955+00	2025-02-09 18:10:36.955955+00	{"eTag": "\\"38ccbf2f8e908ede37a83603d8901093\\"", "size": 219120, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.954Z", "contentLength": 219120, "httpStatusCode": 200}	b50abab5-c5e5-4c9b-ae21-33b5a7f34573	\N	{}
7aac639f-02b7-432f-b573-378d2ff720f6	campuses	newmanu/8	\N	2025-02-09 18:10:36.964379+00	2025-02-09 18:10:36.964379+00	2025-02-09 18:10:36.964379+00	{"eTag": "\\"03e360e7828f83e138957c1fb978d6f5\\"", "size": 452155, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.962Z", "contentLength": 452155, "httpStatusCode": 200}	f1238144-ad17-419f-ac7f-3fc09ae6ffcd	\N	{}
60d86ec6-a081-488a-9fbc-d2abe510801a	campuses	newmanu/4	\N	2025-02-09 18:10:36.971923+00	2025-02-09 18:10:36.971923+00	2025-02-09 18:10:36.971923+00	{"eTag": "\\"0d814ea7b9eb185c399157b93698b15d\\"", "size": 127049, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.970Z", "contentLength": 127049, "httpStatusCode": 200}	880b2dd4-ed0d-4099-b883-e933bdf496db	\N	{}
2d0f9bb4-fbb8-4a5a-9aa7-3e0a74986b63	campuses	newmanu/5	\N	2025-02-09 18:10:36.978917+00	2025-02-09 18:10:36.978917+00	2025-02-09 18:10:36.978917+00	{"eTag": "\\"f542724aa8444ded8413c181cbd1e28c\\"", "size": 104140, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.977Z", "contentLength": 104140, "httpStatusCode": 200}	6149a883-a334-4c72-adfb-70c23e82c4f1	\N	{}
35306c82-4141-4f93-b49b-e0671086cf07	campuses	newmanu/9	\N	2025-02-09 18:10:36.985892+00	2025-02-09 18:10:36.985892+00	2025-02-09 18:10:36.985892+00	{"eTag": "\\"9c9c1329744add578e8686d69a57af4a\\"", "size": 118937, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.984Z", "contentLength": 118937, "httpStatusCode": 200}	93142f79-4b86-40b2-baf5-085c9777782c	\N	{}
848134b0-b5b6-4cc7-973c-4b31f1fb484a	campuses	newmanu/2	\N	2025-02-09 18:10:36.992794+00	2025-02-09 18:10:36.992794+00	2025-02-09 18:10:36.992794+00	{"eTag": "\\"bdcecba681302bd73517384f8ffff456\\"", "size": 165440, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.991Z", "contentLength": 165440, "httpStatusCode": 200}	117c4371-2ce5-46ef-b447-5b6bd9955515	\N	{}
0ca40e06-5f13-43f2-8268-4690ddfd1a31	campuses	newmanu/3	\N	2025-02-09 18:10:37.000799+00	2025-02-09 18:10:37.000799+00	2025-02-09 18:10:37.000799+00	{"eTag": "\\"371a32a8e7fdf5f441da0a709b817b51\\"", "size": 360123, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:36.998Z", "contentLength": 360123, "httpStatusCode": 200}	e3e57a40-ac71-430a-840b-a9c9691f58e9	\N	{}
78b6b784-9fb9-4039-8be5-ba9aacfe2391	campuses	millersville/9	\N	2025-02-09 18:10:37.007704+00	2025-02-09 18:10:37.007704+00	2025-02-09 18:10:37.007704+00	{"eTag": "\\"bb8f534fbff5ee61a95af9c4740ae043\\"", "size": 199, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.006Z", "contentLength": 199, "httpStatusCode": 200}	2a48b908-54f4-4ec9-9183-61d853a4f7d8	\N	{}
3c4347f8-76b6-4bd6-abab-ef73a373061d	campuses	millersville/5	\N	2025-02-09 18:10:37.013741+00	2025-02-09 18:10:37.013741+00	2025-02-09 18:10:37.013741+00	{"eTag": "\\"bb8f534fbff5ee61a95af9c4740ae043\\"", "size": 199, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.012Z", "contentLength": 199, "httpStatusCode": 200}	a679566f-041e-44cd-be48-0db55cc9a5de	\N	{}
f8eb08ec-4ed4-4d90-bee9-6724fed28a7d	campuses	millersville/4	\N	2025-02-09 18:10:37.019178+00	2025-02-09 18:10:37.019178+00	2025-02-09 18:10:37.019178+00	{"eTag": "\\"bb8f534fbff5ee61a95af9c4740ae043\\"", "size": 199, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.018Z", "contentLength": 199, "httpStatusCode": 200}	0ed9f739-99a3-414d-9b22-0c91b821d37c	\N	{}
e19e3a9b-ac85-4d4b-800b-bfd20d24fd07	campuses	millersville/3	\N	2025-02-09 18:10:37.02451+00	2025-02-09 18:10:37.02451+00	2025-02-09 18:10:37.02451+00	{"eTag": "\\"bb8f534fbff5ee61a95af9c4740ae043\\"", "size": 199, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.023Z", "contentLength": 199, "httpStatusCode": 200}	b3fc8ebf-06f5-4864-9615-c6473055cfd0	\N	{}
3a6cc75b-9144-492f-87bd-142d0e8eb776	campuses	millersville/7	\N	2025-02-09 18:10:37.031777+00	2025-02-09 18:10:37.031777+00	2025-02-09 18:10:37.031777+00	{"eTag": "\\"8528d83968b29107c5df338f7c18a16b\\"", "size": 386708, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.029Z", "contentLength": 386708, "httpStatusCode": 200}	93baafb0-717b-47dd-829c-cc807d56dc5d	\N	{}
2d9118d0-0197-4ed2-bc26-24b9ea958630	campuses	millersville/8	\N	2025-02-09 18:10:37.038325+00	2025-02-09 18:10:37.038325+00	2025-02-09 18:10:37.038325+00	{"eTag": "\\"c24ea96cdee87a8e8af440b786ae7ddf\\"", "size": 245991, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.036Z", "contentLength": 245991, "httpStatusCode": 200}	19ad2264-187c-43e7-8b41-200bec8c303c	\N	{}
08c90900-d981-4b27-abd3-a63ce3a8a231	campuses	millersville/1	\N	2025-02-09 18:10:37.044544+00	2025-02-09 18:10:37.044544+00	2025-02-09 18:10:37.044544+00	{"eTag": "\\"bb8f534fbff5ee61a95af9c4740ae043\\"", "size": 199, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.043Z", "contentLength": 199, "httpStatusCode": 200}	00003432-3a0b-4250-802f-cec087ff2464	\N	{}
d1ab217a-9c18-4830-b59d-bbe774400079	campuses	millersville/0	\N	2025-02-09 18:10:37.050072+00	2025-02-09 18:10:37.050072+00	2025-02-09 18:10:37.050072+00	{"eTag": "\\"bb8f534fbff5ee61a95af9c4740ae043\\"", "size": 199, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.049Z", "contentLength": 199, "httpStatusCode": 200}	54872e17-8c57-498c-a8c3-58f9fa7f17a6	\N	{}
9cabd415-2a1e-46f9-a75a-00a673f86ae8	campuses	millersville/2	\N	2025-02-09 18:10:37.059563+00	2025-02-09 18:10:37.059563+00	2025-02-09 18:10:37.059563+00	{"eTag": "\\"56641abb4d9da7384c7edaaabbd719b7\\"", "size": 915888, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.056Z", "contentLength": 915888, "httpStatusCode": 200}	042465af-189a-421c-bedf-c22abe76b57e	\N	{}
e17e9f8c-5abe-4a63-8029-e12d9db0482b	campuses	millersville/6	\N	2025-02-09 18:10:37.066134+00	2025-02-09 18:10:37.066134+00	2025-02-09 18:10:37.066134+00	{"eTag": "\\"bb8f534fbff5ee61a95af9c4740ae043\\"", "size": 199, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.065Z", "contentLength": 199, "httpStatusCode": 200}	c9327053-5787-4b75-9f71-47836b73f551	\N	{}
5bc72550-5bc5-4701-9e01-dba3acc5a4e3	campuses	talladega/0	\N	2025-02-09 18:10:37.082461+00	2025-02-09 18:10:37.082461+00	2025-02-09 18:10:37.082461+00	{"eTag": "\\"217a092ec4ba3bfa921279745e16a97d\\"", "size": 2990393, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.073Z", "contentLength": 2990393, "httpStatusCode": 200}	ec479d6e-150c-4f74-a4a0-9c172f235511	\N	{}
3080ab84-6fbb-4c18-85c3-50cb68df94bd	campuses	talladega/1	\N	2025-02-09 18:10:37.100541+00	2025-02-09 18:10:37.100541+00	2025-02-09 18:10:37.100541+00	{"eTag": "\\"dd81eb393f2eeb47ba1474cd94749ec6\\"", "size": 1059731, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.094Z", "contentLength": 1059731, "httpStatusCode": 200}	7b28e565-b28f-4324-91eb-8f1ab2079aec	\N	{}
fb5696ab-c95e-4493-b615-7065bb596a67	campuses	talladega/9	\N	2025-02-09 18:10:37.116317+00	2025-02-09 18:10:37.116317+00	2025-02-09 18:10:37.116317+00	{"eTag": "\\"8e08dc4064e4cc02faa343342e12bb59\\"", "size": 1450686, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.111Z", "contentLength": 1450686, "httpStatusCode": 200}	21f61886-95b5-4233-98f5-7c4142396276	\N	{}
66d81a65-14b3-4282-a526-05dbdd243f5d	campuses	talladega/7	\N	2025-02-09 18:10:37.125205+00	2025-02-09 18:10:37.125205+00	2025-02-09 18:10:37.125205+00	{"eTag": "\\"a69383565567d6845854625a6d7d0507\\"", "size": 254701, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.122Z", "contentLength": 254701, "httpStatusCode": 200}	4574b4a4-5d7c-4a39-bca0-e00f364b48d4	\N	{}
44dd9ce0-c65c-4c81-b18a-123503a2e67e	campuses	talladega/8	\N	2025-02-09 18:10:37.132522+00	2025-02-09 18:10:37.132522+00	2025-02-09 18:10:37.132522+00	{"eTag": "\\"370eb2cfbf4e67a2098d954a4d756f8b\\"", "size": 94476, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.131Z", "contentLength": 94476, "httpStatusCode": 200}	dceb9c9a-817f-4448-a8de-fef3c67d1019	\N	{}
1b6a99a1-b3ca-482d-9303-c044666d3588	campuses	talladega/4	\N	2025-02-09 18:10:37.140091+00	2025-02-09 18:10:37.140091+00	2025-02-09 18:10:37.140091+00	{"eTag": "\\"beba40bcf9648cd9c05e1f8edb822714\\"", "size": 259354, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.138Z", "contentLength": 259354, "httpStatusCode": 200}	d7483769-3714-474d-97cb-94abc6d7d280	\N	{}
ef7615d6-de92-4ed5-98af-bcc44a8d63fa	campuses	talladega/5	\N	2025-02-09 18:10:37.148329+00	2025-02-09 18:10:37.148329+00	2025-02-09 18:10:37.148329+00	{"eTag": "\\"c5edaa9c39bbdef92b129b9141f34b90\\"", "size": 142871, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.146Z", "contentLength": 142871, "httpStatusCode": 200}	8eff8cd3-fec9-48b9-ba1f-57b6cc422854	\N	{}
8364a08e-7940-4374-be29-284fd084a43b	campuses	talladega/2	\N	2025-02-09 18:10:37.156363+00	2025-02-09 18:10:37.156363+00	2025-02-09 18:10:37.156363+00	{"eTag": "\\"0c40c892acc10a8ed91430c00d4f7027\\"", "size": 261028, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.154Z", "contentLength": 261028, "httpStatusCode": 200}	c09b6f15-9cf9-41a2-b46f-fe25bfe919e2	\N	{}
7db12b73-1584-48a4-bf3d-06b96ca94f21	campuses	talladega/6	\N	2025-02-09 18:10:37.165334+00	2025-02-09 18:10:37.165334+00	2025-02-09 18:10:37.165334+00	{"eTag": "\\"fd28143088cc93b24a522d7f776b1d6d\\"", "size": 332708, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.163Z", "contentLength": 332708, "httpStatusCode": 200}	9c98b1e7-2a33-44ec-9017-9a7404e6bee1	\N	{}
d3e35d1f-4a1e-4313-b104-9cb13eb5a799	campuses	talladega/3	\N	2025-02-09 18:10:37.179805+00	2025-02-09 18:10:37.179805+00	2025-02-09 18:10:37.179805+00	{"eTag": "\\"6104bd12f89df2dc87c026c1b7a35837\\"", "size": 1911289, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.173Z", "contentLength": 1911289, "httpStatusCode": 200}	6c4ed4ba-3429-4d73-a8b3-c358dc085fc2	\N	{}
eea38512-b090-44b8-b629-e40c7ed899eb	campuses	amherst/0	\N	2025-02-09 18:10:37.198336+00	2025-02-09 18:10:37.198336+00	2025-02-09 18:10:37.198336+00	{"eTag": "\\"6438d61deeb5458ee3ceca42072ac091\\"", "size": 166060, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.194Z", "contentLength": 166060, "httpStatusCode": 200}	3f69a29d-de29-4e47-94d6-a1e4c1eac5fd	\N	{}
ecfb35e8-7121-4748-a0cf-c6149be76c7d	campuses	amherst/9	\N	2025-02-09 18:10:37.207251+00	2025-02-09 18:10:37.207251+00	2025-02-09 18:10:37.207251+00	{"eTag": "\\"53a1373b93fb1152d96c31274655e369\\"", "size": 98904, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.205Z", "contentLength": 98904, "httpStatusCode": 200}	7b4ef38b-5c11-4a23-84dd-bf85607420c7	\N	{}
7e0e1854-9b1f-44b7-ae37-57a4d5940a15	campuses	amherst/8	\N	2025-02-09 18:10:37.214923+00	2025-02-09 18:10:37.214923+00	2025-02-09 18:10:37.214923+00	{"eTag": "\\"9173b9538edc97840e854fe430b02df9\\"", "size": 127534, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.213Z", "contentLength": 127534, "httpStatusCode": 200}	ac51a2bf-b949-4e01-a57c-17d58145cf46	\N	{}
fbde6e12-3a0e-43bc-ab23-36da10ba457c	campuses	amherst/1	\N	2025-02-09 18:10:37.222776+00	2025-02-09 18:10:37.222776+00	2025-02-09 18:10:37.222776+00	{"eTag": "\\"e11604bb2ed4ba6c1726f2c597919954\\"", "size": 86973, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.221Z", "contentLength": 86973, "httpStatusCode": 200}	705aa60d-4bcd-4c04-88e6-61ca405f4927	\N	{}
04be799a-9891-4133-a60c-c823aa98d650	campuses	amherst/4	\N	2025-02-09 18:10:37.230871+00	2025-02-09 18:10:37.230871+00	2025-02-09 18:10:37.230871+00	{"eTag": "\\"ba14a8dcd0c7b68c9ae3ffd37e150fb8\\"", "size": 81808, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.229Z", "contentLength": 81808, "httpStatusCode": 200}	94a82edf-478a-48b3-a851-5a593347fd0c	\N	{}
9bb835cc-c4c2-4d24-8088-338134c5b29a	campuses	amherst/5	\N	2025-02-09 18:10:37.240251+00	2025-02-09 18:10:37.240251+00	2025-02-09 18:10:37.240251+00	{"eTag": "\\"e6e7cb655a386b61f72b860eb09e5661\\"", "size": 133521, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.238Z", "contentLength": 133521, "httpStatusCode": 200}	b5b17fba-0c2e-4957-9303-1528e2562d41	\N	{}
dabd8955-79f2-42bb-b316-0f36fcbefe22	campuses	amherst/2	\N	2025-02-09 18:10:37.24867+00	2025-02-09 18:10:37.24867+00	2025-02-09 18:10:37.24867+00	{"eTag": "\\"7de65b6f25b988c43cf16ec0662f2138\\"", "size": 184944, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.247Z", "contentLength": 184944, "httpStatusCode": 200}	8e4febcc-8517-426d-a516-7fa8acee30ca	\N	{}
43964c7c-c074-49bf-b21f-2f32b2c1eca9	campuses	amherst/7	\N	2025-02-09 18:10:37.257607+00	2025-02-09 18:10:37.257607+00	2025-02-09 18:10:37.257607+00	{"eTag": "\\"2a07290417cc2f919d12023dc8043bb2\\"", "size": 499009, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.255Z", "contentLength": 499009, "httpStatusCode": 200}	06175b8f-aa4d-4a88-be74-69756d2af849	\N	{}
ddc82df1-6f9d-461f-ae77-5a2fcfe9867a	campuses	amherst/6	\N	2025-02-09 18:10:37.268009+00	2025-02-09 18:10:37.268009+00	2025-02-09 18:10:37.268009+00	{"eTag": "\\"9205a08a6e0853ab965cfad56ce57f6f\\"", "size": 259750, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.265Z", "contentLength": 259750, "httpStatusCode": 200}	334d0ca5-8f2d-4b29-b532-2f87c68567a0	\N	{}
c4c60d90-9cef-4c69-9750-6cedacc42f8a	campuses	amherst/3	\N	2025-02-09 18:10:37.277138+00	2025-02-09 18:10:37.277138+00	2025-02-09 18:10:37.277138+00	{"eTag": "\\"8e801adba21190b5d59d3f8ae2413205\\"", "size": 162296, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.275Z", "contentLength": 162296, "httpStatusCode": 200}	14056a93-b55c-4d60-9a5a-d6647af3eb98	\N	{}
40cc12bc-f7d1-4903-b033-c888b3437831	campuses	nmsu/0	\N	2025-02-09 18:10:37.286548+00	2025-02-09 18:10:37.286548+00	2025-02-09 18:10:37.286548+00	{"eTag": "\\"b88432b85e82eff7764e326bf9d3fcbe\\"", "size": 176467, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.285Z", "contentLength": 176467, "httpStatusCode": 200}	0d373821-98f6-44d4-ab20-a49a1897d6ca	\N	{}
01bcd18b-7782-46de-83ee-0af2d168d9d2	campuses	nmsu/1	\N	2025-02-09 18:10:37.298414+00	2025-02-09 18:10:37.298414+00	2025-02-09 18:10:37.298414+00	{"eTag": "\\"78ed9bb22d3f93489990b0f86b96afec\\"", "size": 798063, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.295Z", "contentLength": 798063, "httpStatusCode": 200}	c3686833-36a5-469f-b689-07c62875180e	\N	{}
d1a37e45-bd35-4531-b387-7adc71592dc5	campuses	nmsu/6	\N	2025-02-09 18:10:37.306881+00	2025-02-09 18:10:37.306881+00	2025-02-09 18:10:37.306881+00	{"eTag": "\\"bc72b2a89d7ac89ec5f942c7caadc5a9\\"", "size": 217271, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.305Z", "contentLength": 217271, "httpStatusCode": 200}	da14fde5-88e8-45b7-9ec0-eaa52af5192d	\N	{}
fdeb1b60-7e76-4770-8a5d-53ce08247e91	campuses	nmsu/7	\N	2025-02-09 18:10:37.315498+00	2025-02-09 18:10:37.315498+00	2025-02-09 18:10:37.315498+00	{"eTag": "\\"3511d040bab1056381a33f85d044d35d\\"", "size": 307895, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.314Z", "contentLength": 307895, "httpStatusCode": 200}	e8cca769-92fc-45d9-a4b2-e826ef62dfdd	\N	{}
49538b89-e763-4885-a929-f6241cd35c89	campuses	nmsu/8	\N	2025-02-09 18:10:37.323732+00	2025-02-09 18:10:37.323732+00	2025-02-09 18:10:37.323732+00	{"eTag": "\\"64290b13878d774d0cfc1ee3ea71464d\\"", "size": 310672, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.321Z", "contentLength": 310672, "httpStatusCode": 200}	6120a3b7-29c2-4d94-96e4-76517d3f4c80	\N	{}
f424e8a0-e1b8-47e4-8cc3-25607dc40272	campuses	nmsu/4	\N	2025-02-09 18:10:37.337469+00	2025-02-09 18:10:37.337469+00	2025-02-09 18:10:37.337469+00	{"eTag": "\\"1c457966ef6b427ca23658063001a494\\"", "size": 1510744, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.332Z", "contentLength": 1510744, "httpStatusCode": 200}	5dbca2f5-743c-4f71-b276-2721ec986daf	\N	{}
4e5218e9-f1d0-4045-89be-3f1645ad19e9	campuses	nmsu/5	\N	2025-02-09 18:10:37.347193+00	2025-02-09 18:10:37.347193+00	2025-02-09 18:10:37.347193+00	{"eTag": "\\"4cf43298c9135f9904d145e651e9060c\\"", "size": 153096, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.345Z", "contentLength": 153096, "httpStatusCode": 200}	a30e5822-9c2a-4a73-bcba-6dba73a77a82	\N	{}
1acc7019-b4bb-4a85-ba6e-0565d6a27188	campuses	nmsu/9	\N	2025-02-09 18:10:37.356449+00	2025-02-09 18:10:37.356449+00	2025-02-09 18:10:37.356449+00	{"eTag": "\\"9ba35039df841be0d277bf684b1ef9d1\\"", "size": 171525, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.353Z", "contentLength": 171525, "httpStatusCode": 200}	3df07d40-29a7-4c63-bf7c-950ca55be2f3	\N	{}
90a0a0c4-10ad-4faf-9cf7-45b5dc2f024d	campuses	nmsu/2	\N	2025-02-09 18:10:37.365747+00	2025-02-09 18:10:37.365747+00	2025-02-09 18:10:37.365747+00	{"eTag": "\\"2831d83aaf907fbce7b21c45837a2086\\"", "size": 394133, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.363Z", "contentLength": 394133, "httpStatusCode": 200}	d3b9e50b-4359-4706-84bf-f8d8bf20b208	\N	{}
197c7a76-7ebf-4c7e-a8b8-8930d72d110c	campuses	nmsu/3	\N	2025-02-09 18:10:37.377568+00	2025-02-09 18:10:37.377568+00	2025-02-09 18:10:37.377568+00	{"eTag": "\\"0a64009e4087c15cd8f0df43d63b4c3f\\"", "size": 812706, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.374Z", "contentLength": 812706, "httpStatusCode": 200}	87c044b4-5c4f-4c61-8b80-79eaaad09274	\N	{}
c588f7f8-e2b1-468c-b15a-45e2f4085a2d	campuses	mtsu/0	\N	2025-02-09 18:10:37.3893+00	2025-02-09 18:10:37.3893+00	2025-02-09 18:10:37.3893+00	{"eTag": "\\"4c9aa8d6a3563974ef0bccd926c40069\\"", "size": 663758, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.386Z", "contentLength": 663758, "httpStatusCode": 200}	bfac4db1-bc82-492f-b7f1-83cdbf758ef8	\N	{}
ac4ea0bc-3479-464e-bf07-6f9b29547ffb	campuses	mtsu/1	\N	2025-02-09 18:10:37.39832+00	2025-02-09 18:10:37.39832+00	2025-02-09 18:10:37.39832+00	{"eTag": "\\"1f8a0ab01c801ff7e0d06c318a25512e\\"", "size": 379436, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.396Z", "contentLength": 379436, "httpStatusCode": 200}	41450182-6162-4e45-92d3-0edff34c32b0	\N	{}
c64838ab-375d-4d0a-839b-53d9455a9386	campuses	mtsu/7	\N	2025-02-09 18:10:37.407836+00	2025-02-09 18:10:37.407836+00	2025-02-09 18:10:37.407836+00	{"eTag": "\\"d48d1efe2a6487ad65e18b676cb01377\\"", "size": 254243, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.406Z", "contentLength": 254243, "httpStatusCode": 200}	ca5943d9-f806-4f39-a09d-ed840cee2e84	\N	{}
c0d694a9-2ff2-4b62-b99f-2a26aab44a15	campuses	mtsu/2	\N	2025-02-09 18:10:37.416434+00	2025-02-09 18:10:37.416434+00	2025-02-09 18:10:37.416434+00	{"eTag": "\\"9fe3cb2b7313dc79bb477bc8fde184a7\\"", "size": 146, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.415Z", "contentLength": 146, "httpStatusCode": 200}	6c5a2148-c0c8-4534-8ab0-5f356c44f9eb	\N	{}
b21993c8-be4b-497a-924d-e8ae623d8152	campuses	bethelcollege/8	\N	2025-02-09 18:10:37.568848+00	2025-02-09 18:10:37.568848+00	2025-02-09 18:10:37.568848+00	{"eTag": "\\"e3ba28225fc55aefcb1207bd020a91a9\\"", "size": 1076384, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.565Z", "contentLength": 1076384, "httpStatusCode": 200}	e58bbae9-d978-410b-867e-dac8cb9ac942	\N	{}
a542cfb7-d8f3-4d2c-b03e-73f6a4c4b329	campuses	bethelcollege/9	\N	2025-02-09 18:10:37.578653+00	2025-02-09 18:10:37.578653+00	2025-02-09 18:10:37.578653+00	{"eTag": "\\"f880dbd2ec4bf5f83aff698b6e0a9ff5\\"", "size": 492268, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.576Z", "contentLength": 492268, "httpStatusCode": 200}	c662734e-3e12-490f-95a7-21894f12f676	\N	{}
c16a5e07-beac-48a5-b4a1-4943372df760	campuses	bethelcollege/4	\N	2025-02-09 18:10:37.588003+00	2025-02-09 18:10:37.588003+00	2025-02-09 18:10:37.588003+00	{"eTag": "\\"b7817fb127d90ae10bc2db7973b74448\\"", "size": 394867, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.585Z", "contentLength": 394867, "httpStatusCode": 200}	5f3d44e4-5f81-426f-97f1-597b7b0e1055	\N	{}
aaf223cd-0ee2-4420-ba53-3428fa411ece	campuses	bethelcollege/5	\N	2025-02-09 18:10:37.597508+00	2025-02-09 18:10:37.597508+00	2025-02-09 18:10:37.597508+00	{"eTag": "\\"014beadd453583133630fa3ec76f6eb4\\"", "size": 720215, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.594Z", "contentLength": 720215, "httpStatusCode": 200}	d8149b19-6eb8-4437-9436-434056060228	\N	{}
2ec7521d-d14c-4d07-842f-7bcbe21b6712	campuses	bethelcollege/7	\N	2025-02-09 18:10:37.608255+00	2025-02-09 18:10:37.608255+00	2025-02-09 18:10:37.608255+00	{"eTag": "\\"4ddd36804b37aea0701877917b3543a2\\"", "size": 865975, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.604Z", "contentLength": 865975, "httpStatusCode": 200}	d8998f53-549e-4137-9b8e-404aafc42ffa	\N	{}
482d13f8-e009-4774-ba6b-68f3b1ce8e96	campuses	bethelcollege/6	\N	2025-02-09 18:10:37.619069+00	2025-02-09 18:10:37.619069+00	2025-02-09 18:10:37.619069+00	{"eTag": "\\"1dd28ad4242464e8bf3bb8d47354b247\\"", "size": 741627, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.615Z", "contentLength": 741627, "httpStatusCode": 200}	6051ce1d-5f26-47c9-a445-48c4efeb4a9d	\N	{}
7644f8f9-a011-45f8-a55c-fd6eb32a6e88	campuses	bethelcollege/2	\N	2025-02-09 18:10:37.63001+00	2025-02-09 18:10:37.63001+00	2025-02-09 18:10:37.63001+00	{"eTag": "\\"d5e54787401917469cd5064e5dd817e7\\"", "size": 495986, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.627Z", "contentLength": 495986, "httpStatusCode": 200}	f0ef8fb6-aa1a-4028-92fb-44d7941c505e	\N	{}
70f13927-cdb4-427d-bad8-ce77593ffaa2	campuses	bethelcollege/1	\N	2025-02-09 18:10:37.64257+00	2025-02-09 18:10:37.64257+00	2025-02-09 18:10:37.64257+00	{"eTag": "\\"056e1822ff8738e1e101d0ba645b3e48\\"", "size": 1199131, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.637Z", "contentLength": 1199131, "httpStatusCode": 200}	cf275173-6b31-4c8e-843e-57b3cf502768	\N	{}
fad56e4f-b088-47c0-8d92-09c3d21c98cb	campuses	bethelcollege/3	\N	2025-02-09 18:10:37.6525+00	2025-02-09 18:10:37.6525+00	2025-02-09 18:10:37.6525+00	{"eTag": "\\"2835b4a11a8bb17eb0d0f57f70e1d659\\"", "size": 434265, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.650Z", "contentLength": 434265, "httpStatusCode": 200}	a1ceab81-923d-41fb-b924-09b3ca232874	\N	{}
91bc4c1a-d0cd-4685-a374-19626dca7db9	campuses	howard/0	\N	2025-02-09 18:10:37.66195+00	2025-02-09 18:10:37.66195+00	2025-02-09 18:10:37.66195+00	{"eTag": "\\"d978e02c05597c766914c8fedabed5c3\\"", "size": 405217, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.659Z", "contentLength": 405217, "httpStatusCode": 200}	865ff89a-048c-4dc0-b985-8c32cd9ccfc5	\N	{}
6c171758-0f10-4e5f-abc5-ec2c44da064b	campuses	howard/1	\N	2025-02-09 18:10:37.670103+00	2025-02-09 18:10:37.670103+00	2025-02-09 18:10:37.670103+00	{"eTag": "\\"7c439fcb71990a6a8dfc763c42007764\\"", "size": 349508, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.668Z", "contentLength": 349508, "httpStatusCode": 200}	ae0684d4-4aca-441f-a112-34c0d8f60e5e	\N	{}
64e214b5-cdd9-4218-b0b1-88638cc0f5cc	campuses	howard/6	\N	2025-02-09 18:10:37.677348+00	2025-02-09 18:10:37.677348+00	2025-02-09 18:10:37.677348+00	{"eTag": "\\"a0e52bdd6b6ec2595faec82a9fa7cfe6\\"", "size": 73219, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.676Z", "contentLength": 73219, "httpStatusCode": 200}	9a9d5566-519b-44a2-a172-cf85a468b35d	\N	{}
27009255-2c97-42ba-990a-8bf3e833a6b8	campuses	howard/7	\N	2025-02-09 18:10:37.683867+00	2025-02-09 18:10:37.683867+00	2025-02-09 18:10:37.683867+00	{"eTag": "\\"e171a9dd34adb412f0489d6ff5825fb7\\"", "size": 281538, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.682Z", "contentLength": 281538, "httpStatusCode": 200}	42905173-c16b-4c8d-b539-3942ed88f4a8	\N	{}
bf47fe49-232a-497b-a6c2-b17c7c81bc4d	campuses	howard/8	\N	2025-02-09 18:10:37.729682+00	2025-02-09 18:10:37.729682+00	2025-02-09 18:10:37.729682+00	{"eTag": "\\"d70edf5339d908a72e97e653abc482fc\\"", "size": 164961, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.689Z", "contentLength": 164961, "httpStatusCode": 200}	76f9e693-24c0-430c-9066-9da76e884824	\N	{}
4a9280eb-6d59-4ada-92fb-febfd82867f2	campuses	howard/4	\N	2025-02-09 18:10:37.750874+00	2025-02-09 18:10:37.750874+00	2025-02-09 18:10:37.750874+00	{"eTag": "\\"789ea32727f477d16288c87c9a31fa62\\"", "size": 405110, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.743Z", "contentLength": 405110, "httpStatusCode": 200}	71ba38d6-94c4-4fea-a8f2-4d7fde7692e3	\N	{}
23c2a03a-a13d-437d-93e1-df8c6fb3b16c	campuses	howard/5	\N	2025-02-09 18:10:37.759919+00	2025-02-09 18:10:37.759919+00	2025-02-09 18:10:37.759919+00	{"eTag": "\\"774491a9e1775f6bb55875d304616580\\"", "size": 80735, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.758Z", "contentLength": 80735, "httpStatusCode": 200}	df8de254-db07-46b7-a50c-5ddfd3a9a39f	\N	{}
ce02969c-5d5f-4156-88bc-2ed806aa180c	campuses	howard/9	\N	2025-02-09 18:10:37.768536+00	2025-02-09 18:10:37.768536+00	2025-02-09 18:10:37.768536+00	{"eTag": "\\"dc375c04381f7ec4a3f33393792c870d\\"", "size": 308415, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.766Z", "contentLength": 308415, "httpStatusCode": 200}	4a270066-62e6-427d-86bf-0ede3b0ab7c8	\N	{}
8324b05f-aa43-4891-a724-e929ef7484a5	campuses	howard/2	\N	2025-02-09 18:10:37.776487+00	2025-02-09 18:10:37.776487+00	2025-02-09 18:10:37.776487+00	{"eTag": "\\"e45049889c4b9f7216d9d865e884d36b\\"", "size": 61141, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.775Z", "contentLength": 61141, "httpStatusCode": 200}	8da5f5b3-0e5f-40d2-8229-f0f6ff179dd1	\N	{}
8fdbb339-a3ee-4ba0-ae4e-e59b36d298b1	campuses	howard/3	\N	2025-02-09 18:10:37.785126+00	2025-02-09 18:10:37.785126+00	2025-02-09 18:10:37.785126+00	{"eTag": "\\"6d8ca9d306bc07b98b8f21df1076bc59\\"", "size": 72413, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.783Z", "contentLength": 72413, "httpStatusCode": 200}	45c07bbc-6376-4006-84e9-1c602399997b	\N	{}
40370da9-ebc2-462b-8d97-bde99136e9f5	campuses	syr/0	\N	2025-02-09 18:10:37.793268+00	2025-02-09 18:10:37.793268+00	2025-02-09 18:10:37.793268+00	{"eTag": "\\"59cd2d672096d1087ced31abec766233\\"", "size": 174386, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.791Z", "contentLength": 174386, "httpStatusCode": 200}	9543e687-2d03-4978-82d7-57b602d37b48	\N	{}
364227a3-ff0b-4176-9e6f-47eaca8a3b90	campuses	syr/1	\N	2025-02-09 18:10:37.804947+00	2025-02-09 18:10:37.804947+00	2025-02-09 18:10:37.804947+00	{"eTag": "\\"604cd80768edd93f885280fbe2549f4d\\"", "size": 905102, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.801Z", "contentLength": 905102, "httpStatusCode": 200}	73ce07b8-5f6d-49bc-94ab-092020698dae	\N	{}
9255e0cd-32d9-4073-bd72-3a7b76a5780c	campuses	syr/6	\N	2025-02-09 18:10:37.812563+00	2025-02-09 18:10:37.812563+00	2025-02-09 18:10:37.812563+00	{"eTag": "\\"70f61c0fb5c6cd72fab9e57ea650cf43\\"", "size": 44798, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.811Z", "contentLength": 44798, "httpStatusCode": 200}	4715b3f0-7495-416e-b123-25b220d73f27	\N	{}
3757ea4c-6164-44dc-af2e-63322a41378d	campuses	syr/7	\N	2025-02-09 18:10:37.831822+00	2025-02-09 18:10:37.831822+00	2025-02-09 18:10:37.831822+00	{"eTag": "\\"56fd99545dd0e8f2f7f1ac14f5cdfb58\\"", "size": 2462663, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.822Z", "contentLength": 2462663, "httpStatusCode": 200}	b47c9165-60c5-469b-aed7-34f0f99a0b78	\N	{}
ea36187a-3b7f-4afe-928b-8d6ac1cb30de	campuses	syr/8	\N	2025-02-09 18:10:37.845382+00	2025-02-09 18:10:37.845382+00	2025-02-09 18:10:37.845382+00	{"eTag": "\\"e46f042793d3e3ef50126db0934d9804\\"", "size": 130560, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.840Z", "contentLength": 130560, "httpStatusCode": 200}	417907f7-70cb-4a6a-901e-6c4fb71e48f5	\N	{}
ebf9141e-6977-45bc-a5dd-d349b7c78acf	campuses	syr/4	\N	2025-02-09 18:10:37.860163+00	2025-02-09 18:10:37.860163+00	2025-02-09 18:10:37.860163+00	{"eTag": "\\"c863d27e3dc016d00fddce638920c506\\"", "size": 896889, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.855Z", "contentLength": 896889, "httpStatusCode": 200}	5e4ec8a2-502c-44cc-9071-f7d01e59df64	\N	{}
dfe2c6f8-a32a-4a5b-ae4b-835f96393668	campuses	syr/5	\N	2025-02-09 18:10:37.875541+00	2025-02-09 18:10:37.875541+00	2025-02-09 18:10:37.875541+00	{"eTag": "\\"c4f7669a3fa9a4e42a2f731013365456\\"", "size": 1757166, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.869Z", "contentLength": 1757166, "httpStatusCode": 200}	f588c3d9-b51f-456c-b1cd-720c7331c54d	\N	{}
e3862b5f-96b8-4cdf-957a-53380d563653	campuses	syr/9	\N	2025-02-09 18:10:37.883699+00	2025-02-09 18:10:37.883699+00	2025-02-09 18:10:37.883699+00	{"eTag": "\\"b80dc1af1483c936daf56a364fca8b5f\\"", "size": 69952, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.882Z", "contentLength": 69952, "httpStatusCode": 200}	2b03a216-947b-4801-9666-dfec41bed6a4	\N	{}
0d0b28d8-a0d3-4745-ab2e-b45d856b529c	campuses	syr/2	\N	2025-02-09 18:10:37.890083+00	2025-02-09 18:10:37.890083+00	2025-02-09 18:10:37.890083+00	{"eTag": "\\"03415b5efe26dbc3178c4543fb5fa3c4\\"", "size": 89663, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.889Z", "contentLength": 89663, "httpStatusCode": 200}	7f8c0bae-e930-4f6b-9640-b85c9120ed00	\N	{}
30b71cb2-5b76-47d5-b2ac-3c3ae39cca16	campuses	syr/3	\N	2025-02-09 18:10:37.895927+00	2025-02-09 18:10:37.895927+00	2025-02-09 18:10:37.895927+00	{"eTag": "\\"a7469437f60b2c57451042443afd867f\\"", "size": 177351, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.894Z", "contentLength": 177351, "httpStatusCode": 200}	d04aa875-219a-44e9-9581-5ce0978452c1	\N	{}
638568ef-7baf-43f1-ba96-0f4bd992828f	campuses	flsouthern/0	\N	2025-02-09 18:10:37.902503+00	2025-02-09 18:10:37.902503+00	2025-02-09 18:10:37.902503+00	{"eTag": "\\"76a90b3edc4a870bf584cb01e690f798\\"", "size": 120902, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.901Z", "contentLength": 120902, "httpStatusCode": 200}	91937638-ecde-4f9d-b125-a3708ea43c68	\N	{}
25b93128-d606-49ed-98ba-59c3467bdf51	campuses	flsouthern/1	\N	2025-02-09 18:10:37.909218+00	2025-02-09 18:10:37.909218+00	2025-02-09 18:10:37.909218+00	{"eTag": "\\"acd7c30aab58e09fcb1c181bded9cf15\\"", "size": 129924, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.908Z", "contentLength": 129924, "httpStatusCode": 200}	17ea489b-2638-467e-a0b7-d612b9541f96	\N	{}
3cf0a7ff-e141-47ff-93fb-30461ee42e42	campuses	flsouthern/6	\N	2025-02-09 18:10:37.926151+00	2025-02-09 18:10:37.926151+00	2025-02-09 18:10:37.926151+00	{"eTag": "\\"89f9ba2071a8cc6197856b85d0d6b511\\"", "size": 2789866, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.917Z", "contentLength": 2789866, "httpStatusCode": 200}	49851ce8-e55f-42d7-8526-ec30967ab28a	\N	{}
deca5919-021a-449a-8585-aa2e5dede4f2	campuses	flsouthern/7	\N	2025-02-09 18:10:37.993608+00	2025-02-09 18:10:37.993608+00	2025-02-09 18:10:37.993608+00	{"eTag": "\\"115ee3eda72eead1d75ebfb52b8aa569\\"", "size": 12639177, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:37.944Z", "contentLength": 12639177, "httpStatusCode": 200}	786b0b34-1564-45e4-805a-b119d0b33d35	\N	{}
f9ea3829-9c9d-44c1-8fea-9939435853a4	campuses	flsouthern/4	\N	2025-02-09 18:10:38.025402+00	2025-02-09 18:10:38.025402+00	2025-02-09 18:10:38.025402+00	{"eTag": "\\"f021fd422145ce3985c6f96fce3ade3b\\"", "size": 4662744, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.009Z", "contentLength": 4662744, "httpStatusCode": 200}	33bb9a27-3254-455a-8b33-2cb436f16104	\N	{}
e1617745-4c2c-4383-b6e0-5ef2bde161cc	campuses	flsouthern/5	\N	2025-02-09 18:10:38.0345+00	2025-02-09 18:10:38.0345+00	2025-02-09 18:10:38.0345+00	{"eTag": "\\"52ebe0ac5a94a3069163ec53d071f029\\"", "size": 63803, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.033Z", "contentLength": 63803, "httpStatusCode": 200}	66cf2c9c-d285-4917-b0ec-e2980179e91f	\N	{}
d41c58e6-dae6-4b44-94b3-7ed3cb809fec	campuses	flsouthern/9	\N	2025-02-09 18:10:38.041195+00	2025-02-09 18:10:38.041195+00	2025-02-09 18:10:38.041195+00	{"eTag": "\\"cc2a13ba0d463c7b4c45396a25f072e8\\"", "size": 89560, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.040Z", "contentLength": 89560, "httpStatusCode": 200}	a64fa69e-9f63-4fc9-9c03-1ef91bd518cb	\N	{}
dfac7ad6-178a-4817-95a5-a38025bc22b3	campuses	flsouthern/2	\N	2025-02-09 18:10:38.050298+00	2025-02-09 18:10:38.050298+00	2025-02-09 18:10:38.050298+00	{"eTag": "\\"0ee17056e76ef8833b4603f3773ac5b2\\"", "size": 708039, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.047Z", "contentLength": 708039, "httpStatusCode": 200}	5d156602-7d02-402a-bbeb-94a79a9884bb	\N	{}
7c42250c-1b33-43c1-aac1-296ed1c8c832	campuses	flsouthern/3	\N	2025-02-09 18:10:38.062851+00	2025-02-09 18:10:38.062851+00	2025-02-09 18:10:38.062851+00	{"eTag": "\\"ec7c8ba6b91f82c05c16a7b4192c97df\\"", "size": 26343, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.061Z", "contentLength": 26343, "httpStatusCode": 200}	248148b2-8204-4aa6-9d3e-ebe5f2bc6ae4	\N	{}
d3671acb-a996-45a3-ad6e-a938ae8b6a13	campuses	bryant/6	\N	2025-02-09 18:10:38.070949+00	2025-02-09 18:10:38.070949+00	2025-02-09 18:10:38.070949+00	{"eTag": "\\"609040e328e63c11c67993477fb16f9f\\"", "size": 73020, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.069Z", "contentLength": 73020, "httpStatusCode": 200}	06936638-3b74-449e-abec-21041ca48fe0	\N	{}
96d06405-c100-443f-ad6f-d304c9c82fd0	campuses	bryant/2	\N	2025-02-09 18:10:38.080986+00	2025-02-09 18:10:38.080986+00	2025-02-09 18:10:38.080986+00	{"eTag": "\\"12cc94d283177ee8b5ed7886db84ad8b\\"", "size": 460032, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.078Z", "contentLength": 460032, "httpStatusCode": 200}	c90721d5-164e-4433-9be2-c969d6a81f85	\N	{}
c25a2935-5183-4eee-9caf-fbac07516370	campuses	bryant/8	\N	2025-02-09 18:10:38.088131+00	2025-02-09 18:10:38.088131+00	2025-02-09 18:10:38.088131+00	{"eTag": "\\"07ade18a771d848f34fd1b9d72097140\\"", "size": 84305, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.087Z", "contentLength": 84305, "httpStatusCode": 200}	9f6bdc75-9265-48cb-914b-9cf035af6609	\N	{}
3308aef7-c224-46e4-8bb4-97d1575d103b	campuses	bryant/5	\N	2025-02-09 18:10:38.094845+00	2025-02-09 18:10:38.094845+00	2025-02-09 18:10:38.094845+00	{"eTag": "\\"6b7da1d93e8895dd97283ad29d72c49a\\"", "size": 165933, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.093Z", "contentLength": 165933, "httpStatusCode": 200}	c071345e-9b22-4907-a014-bb3f34b0ea19	\N	{}
339b2174-96ab-49e4-999d-62ce0fa17c13	campuses	bryant/9	\N	2025-02-09 18:10:38.100384+00	2025-02-09 18:10:38.100384+00	2025-02-09 18:10:38.100384+00	{"eTag": "\\"aff8c2e5c4d204cdb729ba5e82b4ac08\\"", "size": 116446, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.099Z", "contentLength": 116446, "httpStatusCode": 200}	bee419c9-d510-488d-a79c-0fd96ab17024	\N	{}
4fc2b8b2-7b66-4808-8ea8-63fd3c64c19e	campuses	bryant/4	\N	2025-02-09 18:10:38.109521+00	2025-02-09 18:10:38.109521+00	2025-02-09 18:10:38.109521+00	{"eTag": "\\"f46ea87e06679cf6a8cf03506b1e31d7\\"", "size": 662154, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.106Z", "contentLength": 662154, "httpStatusCode": 200}	0cbe4bc5-cdd7-42b9-84db-e2d7bd1062aa	\N	{}
a5dea2d5-4f16-4132-af6b-d31e5d47f4fe	campuses	bryant/7	\N	2025-02-09 18:10:38.119288+00	2025-02-09 18:10:38.119288+00	2025-02-09 18:10:38.119288+00	{"eTag": "\\"64db31c900b210864bd3b0c0331b885a\\"", "size": 616907, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.116Z", "contentLength": 616907, "httpStatusCode": 200}	b6182581-d9cc-4847-bc1a-8140b3bc6868	\N	{}
605e9664-dd97-4efe-a329-edcc67caed6f	campuses	bryant/1	\N	2025-02-09 18:10:38.129162+00	2025-02-09 18:10:38.129162+00	2025-02-09 18:10:38.129162+00	{"eTag": "\\"8d9f4c601d9d86effd583d3c01b9186a\\"", "size": 378856, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.126Z", "contentLength": 378856, "httpStatusCode": 200}	6b1833ef-57a4-4d30-b7ce-b1a0a63e5f71	\N	{}
4136e924-96f4-4eeb-a2b6-b78e6c9e07b0	campuses	bryant/0	\N	2025-02-09 18:10:38.142892+00	2025-02-09 18:10:38.142892+00	2025-02-09 18:10:38.142892+00	{"eTag": "\\"3c7ed3f7c450dfa05a799a00df297e87\\"", "size": 1151771, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.138Z", "contentLength": 1151771, "httpStatusCode": 200}	0bc7f292-1b31-4137-a4f2-4def4612f824	\N	{}
c5aec142-358f-4cb0-b49b-47e55f9acba5	campuses	bryant/3	\N	2025-02-09 18:10:38.151275+00	2025-02-09 18:10:38.151275+00	2025-02-09 18:10:38.151275+00	{"eTag": "\\"fde0612a17c3b40a2222b6ecc80b149e\\"", "size": 83187, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.150Z", "contentLength": 83187, "httpStatusCode": 200}	b58a6239-00c0-4e3e-ae2f-46371ddc0090	\N	{}
2a436750-df3b-49a0-baf4-30b6d7cb49bd	campuses	cofc/0	\N	2025-02-09 18:10:38.170037+00	2025-02-09 18:10:38.170037+00	2025-02-09 18:10:38.170037+00	{"eTag": "\\"54e0249aebde5b9798487b6ab3f5b19f\\"", "size": 462258, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.159Z", "contentLength": 462258, "httpStatusCode": 200}	8b0e5498-db0c-4d59-989c-89d2abbe189e	\N	{}
b8388660-e9c3-4927-8e0f-4efbf0a2ba22	campuses	cofc/1	\N	2025-02-09 18:10:38.181323+00	2025-02-09 18:10:38.181323+00	2025-02-09 18:10:38.181323+00	{"eTag": "\\"94d02bcb57d5c92ee82fc61dc944d131\\"", "size": 291420, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.179Z", "contentLength": 291420, "httpStatusCode": 200}	ede4864a-31af-404f-b0bb-8be5027cb1da	\N	{}
67ac510a-8e97-43d5-a91b-28911903a150	campuses	cofc/6	\N	2025-02-09 18:10:38.191664+00	2025-02-09 18:10:38.191664+00	2025-02-09 18:10:38.191664+00	{"eTag": "\\"ff25a16ae32e9a7c418c3099ce2fed0f\\"", "size": 449992, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.189Z", "contentLength": 449992, "httpStatusCode": 200}	cdc4a396-3281-4c5b-b7e2-8d153b3bfb91	\N	{}
95e85925-3df7-4a7e-8e5d-368ec1227b69	campuses	cofc/7	\N	2025-02-09 18:10:38.201401+00	2025-02-09 18:10:38.201401+00	2025-02-09 18:10:38.201401+00	{"eTag": "\\"d539bbb63cff1496f9f77df58de37103\\"", "size": 341929, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.199Z", "contentLength": 341929, "httpStatusCode": 200}	fb181378-1d4e-460d-afc7-9c71c7380dc3	\N	{}
52427d3e-4852-4fc1-8b53-291cc3c3eb1b	campuses	cofc/8	\N	2025-02-09 18:10:38.211076+00	2025-02-09 18:10:38.211076+00	2025-02-09 18:10:38.211076+00	{"eTag": "\\"725b789d4ea0c13885ee6df3819e9c08\\"", "size": 494943, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.208Z", "contentLength": 494943, "httpStatusCode": 200}	fba077f3-6bf1-45cf-b377-988547c43cf0	\N	{}
51044324-7f70-48a1-a290-5a65b1cce1a3	campuses	cofc/4	\N	2025-02-09 18:10:38.220055+00	2025-02-09 18:10:38.220055+00	2025-02-09 18:10:38.220055+00	{"eTag": "\\"10756f9c6b65f105c1a02fc8185fd288\\"", "size": 268610, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.218Z", "contentLength": 268610, "httpStatusCode": 200}	fc06debf-bab7-4a0a-94c1-f412864cc097	\N	{}
9f4a6d48-eb45-4b0d-8322-82d1fb7d7b42	campuses	cofc/5	\N	2025-02-09 18:10:38.229572+00	2025-02-09 18:10:38.229572+00	2025-02-09 18:10:38.229572+00	{"eTag": "\\"58960a1e2b9b2f24916485bdb8e3e630\\"", "size": 457337, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.227Z", "contentLength": 457337, "httpStatusCode": 200}	74689717-40ad-4334-9492-416d5b902e39	\N	{}
387a4bdc-b257-4125-a7bf-4e18242466d8	campuses	cofc/9	\N	2025-02-09 18:10:38.240691+00	2025-02-09 18:10:38.240691+00	2025-02-09 18:10:38.240691+00	{"eTag": "\\"76ca381e9b5bf42017f170f6325a5b96\\"", "size": 839496, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.237Z", "contentLength": 839496, "httpStatusCode": 200}	c6f66272-862d-4aba-bea6-ca4e54e976d0	\N	{}
09fb6c09-d3a5-4db2-9786-28bcc0d7c318	campuses	cofc/2	\N	2025-02-09 18:10:38.250598+00	2025-02-09 18:10:38.250598+00	2025-02-09 18:10:38.250598+00	{"eTag": "\\"59098ab0c2560b70454042f1e755ff2d\\"", "size": 375353, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.248Z", "contentLength": 375353, "httpStatusCode": 200}	25715391-cfa7-45e6-b002-2b13ccc19b30	\N	{}
bcdd2a28-8298-4333-b629-2eccec7dcd55	campuses	cofc/3	\N	2025-02-09 18:10:38.26887+00	2025-02-09 18:10:38.26887+00	2025-02-09 18:10:38.26887+00	{"eTag": "\\"4b62995b235883e3e33f39e8bdab6c50\\"", "size": 482925, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.260Z", "contentLength": 482925, "httpStatusCode": 200}	d09c3ca4-552b-42fa-aec1-947274888ab2	\N	{}
e50d22a5-d8c1-4faa-aeda-565f45ba5af5	campuses	oberlin/0	\N	2025-02-09 18:10:38.278426+00	2025-02-09 18:10:38.278426+00	2025-02-09 18:10:38.278426+00	{"eTag": "\\"1d534fc53c5029305baa124c60229f48\\"", "size": 204081, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.276Z", "contentLength": 204081, "httpStatusCode": 200}	47183f11-a0a7-4775-aac1-efd52c847a4e	\N	{}
91bd5e67-c727-4d80-b8a6-d07aebe185ac	campuses	oberlin/1	\N	2025-02-09 18:10:38.289618+00	2025-02-09 18:10:38.289618+00	2025-02-09 18:10:38.289618+00	{"eTag": "\\"fbbc2dd4aefadb7370690c1d0eba6880\\"", "size": 427531, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.287Z", "contentLength": 427531, "httpStatusCode": 200}	3c26d451-b360-4204-a3cb-64cd8085630b	\N	{}
f66b29fc-085c-4da6-80ee-74d2f30fb549	campuses	oberlin/6	\N	2025-02-09 18:10:38.301112+00	2025-02-09 18:10:38.301112+00	2025-02-09 18:10:38.301112+00	{"eTag": "\\"632fb9244b67f9936d4c91417039677c\\"", "size": 49505, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.300Z", "contentLength": 49505, "httpStatusCode": 200}	6965923b-4d74-4a00-8b53-208d2b0d7a72	\N	{}
479d785c-21f0-4f6b-b5d1-b0b4646d8e72	campuses	oberlin/7	\N	2025-02-09 18:10:38.308848+00	2025-02-09 18:10:38.308848+00	2025-02-09 18:10:38.308848+00	{"eTag": "\\"887d5a8fcfd83057462106d50997e5a1\\"", "size": 59089, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.307Z", "contentLength": 59089, "httpStatusCode": 200}	13dd5de7-87d1-4e58-b714-ed1d3542b2ff	\N	{}
4632db66-dc5c-4492-88e3-da1b632b4c5c	campuses	oberlin/8	\N	2025-02-09 18:10:38.315875+00	2025-02-09 18:10:38.315875+00	2025-02-09 18:10:38.315875+00	{"eTag": "\\"fec34b4cd6428169019d1109cfa9fbf4\\"", "size": 124794, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.314Z", "contentLength": 124794, "httpStatusCode": 200}	ddbc600e-aa83-4de2-9bcd-dcecf7632b13	\N	{}
09c345db-a4c3-4fc4-baa2-f6476c14057d	campuses	oberlin/4	\N	2025-02-09 18:10:38.322983+00	2025-02-09 18:10:38.322983+00	2025-02-09 18:10:38.322983+00	{"eTag": "\\"e39b8c215661b63444d75ad917f3fb5e\\"", "size": 147089, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.321Z", "contentLength": 147089, "httpStatusCode": 200}	96ad171f-aa04-4fd1-941c-1f834c86d1e6	\N	{}
c71f7fc1-ee69-4cac-9187-602b0f791848	campuses	oberlin/5	\N	2025-02-09 18:10:38.330394+00	2025-02-09 18:10:38.330394+00	2025-02-09 18:10:38.330394+00	{"eTag": "\\"8016f869ea8ebea6ef0f79365fd159d2\\"", "size": 214713, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.328Z", "contentLength": 214713, "httpStatusCode": 200}	05025042-7171-451d-b5da-a0103262be5b	\N	{}
c2255b2f-4450-4e1f-a6fa-53a89da7a15b	campuses	oberlin/9	\N	2025-02-09 18:10:38.337691+00	2025-02-09 18:10:38.337691+00	2025-02-09 18:10:38.337691+00	{"eTag": "\\"9e9380aae217bb8a08327756f82f3845\\"", "size": 99285, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.336Z", "contentLength": 99285, "httpStatusCode": 200}	944fdf61-e4ee-492a-88a9-3889ee0f80f2	\N	{}
02aed4c1-37fa-484b-b7b8-87c727090222	campuses	oberlin/2	\N	2025-02-09 18:10:38.346653+00	2025-02-09 18:10:38.346653+00	2025-02-09 18:10:38.346653+00	{"eTag": "\\"95f5f7379a281c44e4a6c26b267d70f1\\"", "size": 295904, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.344Z", "contentLength": 295904, "httpStatusCode": 200}	c9b7fcb6-8209-46ad-ba55-20edc536a835	\N	{}
a9e15b15-3331-4d21-8071-8ce94a1eeb8c	campuses	oberlin/3	\N	2025-02-09 18:10:38.354582+00	2025-02-09 18:10:38.354582+00	2025-02-09 18:10:38.354582+00	{"eTag": "\\"0bad9b3dcf54ecce002ad03a74c2731e\\"", "size": 93704, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.353Z", "contentLength": 93704, "httpStatusCode": 200}	aafcab94-f8d3-49cd-a765-fd6f9160401a	\N	{}
f948a792-7e42-44e3-954b-3c5da2c93409	campuses	tamu/0	\N	2025-02-09 18:10:38.362783+00	2025-02-09 18:10:38.362783+00	2025-02-09 18:10:38.362783+00	{"eTag": "\\"adb2a2255146fe54f5a298c724f8c2d5\\"", "size": 175788, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.361Z", "contentLength": 175788, "httpStatusCode": 200}	5684ba49-c26f-4a9b-a9e3-4a66189a2610	\N	{}
b44b73d0-8c26-4ee6-a8b0-2630c1f0730b	campuses	tamu/1	\N	2025-02-09 18:10:38.370829+00	2025-02-09 18:10:38.370829+00	2025-02-09 18:10:38.370829+00	{"eTag": "\\"cf54caf28b2f9b8d910bf9f73d472f6b\\"", "size": 100152, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.369Z", "contentLength": 100152, "httpStatusCode": 200}	f81c511f-f05a-4df4-80a8-278db82208e6	\N	{}
c262e7ee-e84f-45a6-bb0f-a2c64216bf33	campuses	tamu/7	\N	2025-02-09 18:10:38.380511+00	2025-02-09 18:10:38.380511+00	2025-02-09 18:10:38.380511+00	{"eTag": "\\"095accedf0c817da0923661f162b0601\\"", "size": 581366, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.377Z", "contentLength": 581366, "httpStatusCode": 200}	45765fca-c5a2-44d5-82db-6ae560a30d9a	\N	{}
15acc308-3ff5-4a15-a1f0-875dfd80a117	campuses	tamu/8	\N	2025-02-09 18:10:38.389655+00	2025-02-09 18:10:38.389655+00	2025-02-09 18:10:38.389655+00	{"eTag": "\\"11fd241e82681f25a0894caff2456f8c\\"", "size": 377011, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.387Z", "contentLength": 377011, "httpStatusCode": 200}	e4e18339-29df-4542-800e-4a70c0ecee59	\N	{}
775e2135-ea96-4a49-ad62-0133712ae034	campuses	tamu/4	\N	2025-02-09 18:10:38.402624+00	2025-02-09 18:10:38.402624+00	2025-02-09 18:10:38.402624+00	{"eTag": "\\"a955e2ef8c9bed10b5236f23203a55d1\\"", "size": 70359, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.400Z", "contentLength": 70359, "httpStatusCode": 200}	8a62b489-fdb7-407a-bbf9-fbf63305b641	\N	{}
690052d5-ca8f-472a-9422-ed2fdeb2ea16	campuses	tamu/5	\N	2025-02-09 18:10:38.4146+00	2025-02-09 18:10:38.4146+00	2025-02-09 18:10:38.4146+00	{"eTag": "\\"174d35c5b0c2dcfb945098649179dcf2\\"", "size": 115880, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.413Z", "contentLength": 115880, "httpStatusCode": 200}	51fd558c-cc70-4592-9b68-72f94d05bdac	\N	{}
4ac8697a-2615-4977-9665-770c579dd275	campuses	tamu/9	\N	2025-02-09 18:10:38.422669+00	2025-02-09 18:10:38.422669+00	2025-02-09 18:10:38.422669+00	{"eTag": "\\"c9e3ff180f095f5939a77541cde7d084\\"", "size": 74335, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.421Z", "contentLength": 74335, "httpStatusCode": 200}	166b1c4b-6e7e-41ec-b44d-d952a58ca0c3	\N	{}
b35b30c8-b4c9-44d3-859b-11624eb89810	campuses	tamu/2	\N	2025-02-09 18:10:38.4318+00	2025-02-09 18:10:38.4318+00	2025-02-09 18:10:38.4318+00	{"eTag": "\\"c52609998b03d4e589569d6197551b90\\"", "size": 542819, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.429Z", "contentLength": 542819, "httpStatusCode": 200}	c3417597-2a14-495f-bc39-820beed519c8	\N	{}
68d2355d-d52c-418e-846e-5b0ed713ed0e	campuses	tamu/6	\N	2025-02-09 18:10:38.439564+00	2025-02-09 18:10:38.439564+00	2025-02-09 18:10:38.439564+00	{"eTag": "\\"9e8afd5d1a3a6bb7659422724cd86b51\\"", "size": 285, "mimetype": "text/xml", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.438Z", "contentLength": 285, "httpStatusCode": 200}	de360edb-6d73-4bfa-af1e-007ed5b2d79f	\N	{}
600f1be1-d898-4208-a812-40d28e4cad49	campuses	tamu/3	\N	2025-02-09 18:10:38.446965+00	2025-02-09 18:10:38.446965+00	2025-02-09 18:10:38.446965+00	{"eTag": "\\"4926b3a6d9b4c6311347770275b28e56\\"", "size": 285, "mimetype": "text/xml", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.446Z", "contentLength": 285, "httpStatusCode": 200}	e9c383f4-2b84-4c23-84e4-b0caf322b450	\N	{}
297720f8-b858-41e5-b803-35c46e1cbf4e	campuses	ku/0	\N	2025-02-09 18:10:38.464025+00	2025-02-09 18:10:38.464025+00	2025-02-09 18:10:38.464025+00	{"eTag": "\\"a00b51ed66fc6e9e21d373c91f149924\\"", "size": 1662598, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.458Z", "contentLength": 1662598, "httpStatusCode": 200}	55c6fa8d-5069-4041-87ba-4822fc00f6e7	\N	{}
9efecd96-9505-46fc-9bd8-1ad81b85c366	campuses	ku/1	\N	2025-02-09 18:10:38.471602+00	2025-02-09 18:10:38.471602+00	2025-02-09 18:10:38.471602+00	{"eTag": "\\"c0e15f50787ec4a54e61505ebde6e4e5\\"", "size": 44377, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.470Z", "contentLength": 44377, "httpStatusCode": 200}	0b8452b7-7396-4097-b135-d15a783b966a	\N	{}
94a49113-b820-4a1e-9f16-83e221c73df0	campuses	ku/9	\N	2025-02-09 18:10:38.485785+00	2025-02-09 18:10:38.485785+00	2025-02-09 18:10:38.485785+00	{"eTag": "\\"484f1b3fd1576f916f30933bae972456\\"", "size": 1589406, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.479Z", "contentLength": 1589406, "httpStatusCode": 200}	f43f91ee-1a91-4c8a-b006-df26ffb57a0b	\N	{}
cef628d8-71f4-44e5-b20e-5319b0512afd	campuses	ku/6	\N	2025-02-09 18:10:38.501863+00	2025-02-09 18:10:38.501863+00	2025-02-09 18:10:38.501863+00	{"eTag": "\\"8b672d74c38f29033205a0ee2f201c8d\\"", "size": 335773, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.496Z", "contentLength": 335773, "httpStatusCode": 200}	1832d12a-007b-42ab-89a3-2a6981b14117	\N	{}
281b6132-33f1-4f12-a156-b39b4d79e536	campuses	ku/7	\N	2025-02-09 18:10:38.516271+00	2025-02-09 18:10:38.516271+00	2025-02-09 18:10:38.516271+00	{"eTag": "\\"f74cfce07aabafb2610922d957323b31\\"", "size": 221860, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.514Z", "contentLength": 221860, "httpStatusCode": 200}	21426ed7-b8e0-4e16-a115-ce6e89713973	\N	{}
24c689ed-6cc0-4093-9b13-aef4a8759a92	campuses	ku/8	\N	2025-02-09 18:10:38.527276+00	2025-02-09 18:10:38.527276+00	2025-02-09 18:10:38.527276+00	{"eTag": "\\"b17bfcc3fc50f3aed44002351389dbe3\\"", "size": 631774, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.524Z", "contentLength": 631774, "httpStatusCode": 200}	65f69585-121f-4d1f-9676-c797ccceadc0	\N	{}
f98c1430-a689-4013-a004-cb86b369ebb9	campuses	niu/5	\N	2025-02-09 18:10:38.889418+00	2025-02-09 18:10:38.889418+00	2025-02-09 18:10:38.889418+00	{"eTag": "\\"9fc2a383f00efcae9fafcc4f418ff757\\"", "size": 185497, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.887Z", "contentLength": 185497, "httpStatusCode": 200}	026a2c55-d418-452d-9b2c-9feb3d378ec5	\N	{}
52c9f4c4-dac7-494d-95cf-97777d025465	campuses	niu/9	\N	2025-02-09 18:10:38.934745+00	2025-02-09 18:10:38.934745+00	2025-02-09 18:10:38.934745+00	{"eTag": "\\"5bb157f290d7d6e75a925835e858cf86\\"", "size": 74446, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.894Z", "contentLength": 74446, "httpStatusCode": 200}	555a78aa-6fe8-4dbd-adc5-9de64a4912a2	\N	{}
15196e0f-93ba-44d2-bed4-8d191285413a	campuses	niu/2	\N	2025-02-09 18:10:38.979901+00	2025-02-09 18:10:38.979901+00	2025-02-09 18:10:38.979901+00	{"eTag": "\\"192af9c4854fc9a9195321e0e5659ef2\\"", "size": 156302, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.939Z", "contentLength": 156302, "httpStatusCode": 200}	3be31e86-58c5-44db-8326-5c3c64369ca3	\N	{}
ded72127-14f0-44ec-b356-9b8b5219373f	campuses	niu/7	\N	2025-02-09 18:10:38.990896+00	2025-02-09 18:10:38.990896+00	2025-02-09 18:10:38.990896+00	{"eTag": "\\"f7c797e4b86bf634bf1c901e8e09d674\\"", "size": 997517, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.986Z", "contentLength": 997517, "httpStatusCode": 200}	7eb3e911-9d0d-475a-96d8-b4ec19853e4a	\N	{}
9170a89f-0ba7-44e5-8071-0d8e16c93a73	campuses	niu/3	\N	2025-02-09 18:10:38.998941+00	2025-02-09 18:10:38.998941+00	2025-02-09 18:10:38.998941+00	{"eTag": "\\"3320b6d05e03c7d82d5b2ab71665a6e1\\"", "size": 186019, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:38.997Z", "contentLength": 186019, "httpStatusCode": 200}	4dfe0d46-970f-41ee-94fa-5fb1f0e2a380	\N	{}
9eee8654-3478-492b-a82f-1bfb5fb85ec6	campuses	ius/0	\N	2025-02-09 18:10:39.005068+00	2025-02-09 18:10:39.005068+00	2025-02-09 18:10:39.005068+00	{"eTag": "\\"c77cfbe6ec571444283cbf75129e5799\\"", "size": 63446, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.003Z", "contentLength": 63446, "httpStatusCode": 200}	4465adba-8f1c-40f6-8690-7a301b3144a2	\N	{}
fd978628-1a83-4f42-8582-aa95ad839816	campuses	ius/9	\N	2025-02-09 18:10:39.010782+00	2025-02-09 18:10:39.010782+00	2025-02-09 18:10:39.010782+00	{"eTag": "\\"e6a5c602951e589cf1eb0ee02012392d\\"", "size": 67200, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.009Z", "contentLength": 67200, "httpStatusCode": 200}	6dbf5cc4-b617-47a7-96a4-54bf9c64b681	\N	{}
e2f8b353-d878-4ebd-a805-9ec86cfe7a87	campuses	ius/8	\N	2025-02-09 18:10:39.016849+00	2025-02-09 18:10:39.016849+00	2025-02-09 18:10:39.016849+00	{"eTag": "\\"3e4448d6617a86f287f7a82df1c73d4d\\"", "size": 99910, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.015Z", "contentLength": 99910, "httpStatusCode": 200}	80cb23ca-3ffe-40e3-8f72-46a27522f020	\N	{}
9447c260-170d-4763-b7ed-2bee0e6c173b	campuses	ius/1	\N	2025-02-09 18:10:39.022266+00	2025-02-09 18:10:39.022266+00	2025-02-09 18:10:39.022266+00	{"eTag": "\\"862ca637a79f423db384605e2e3e2163\\"", "size": 8686, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.020Z", "contentLength": 8686, "httpStatusCode": 200}	6cf44bf2-3291-4716-aba3-d51431cc3a05	\N	{}
0f5ed680-1023-42e5-8117-dbf2e6d04408	campuses	ius/5	\N	2025-02-09 18:10:39.03125+00	2025-02-09 18:10:39.03125+00	2025-02-09 18:10:39.03125+00	{"eTag": "\\"8ba6a0198a0fc39b1a8ba24f8d1eede4\\"", "size": 717114, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.027Z", "contentLength": 717114, "httpStatusCode": 200}	a424d8b2-4b19-4c32-bd00-f9ac7ee28594	\N	{}
5575806f-5ea9-4aa9-99f2-f0532c5faaab	campuses	ius/2	\N	2025-02-09 18:10:39.040963+00	2025-02-09 18:10:39.040963+00	2025-02-09 18:10:39.040963+00	{"eTag": "\\"36d049388999934e2672c4056a0510a0\\"", "size": 366674, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.038Z", "contentLength": 366674, "httpStatusCode": 200}	04353e01-dce1-4035-a8ee-44b5c7c4b0ae	\N	{}
96031fd1-d82d-4295-86d0-8f34958ac905	campuses	ius/4	\N	2025-02-09 18:10:39.047535+00	2025-02-09 18:10:39.047535+00	2025-02-09 18:10:39.047535+00	{"eTag": "\\"02f3acff20ab73ef3ed0dbf35cd64f0e\\"", "size": 349602, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.045Z", "contentLength": 349602, "httpStatusCode": 200}	38792648-e10a-45f4-80b9-c41d708c59d8	\N	{}
39a1806d-fc8d-4a59-9178-4d1353461de3	campuses	ius/7	\N	2025-02-09 18:10:39.053444+00	2025-02-09 18:10:39.053444+00	2025-02-09 18:10:39.053444+00	{"eTag": "\\"d6fbe1da05cd918d45e03d8e4f059eb1\\"", "size": 116234, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.052Z", "contentLength": 116234, "httpStatusCode": 200}	42df8f60-1c07-4ddc-86e1-03740681e60d	\N	{}
4bd9ad52-3248-48d8-a429-bd5169bfb40b	campuses	ius/6	\N	2025-02-09 18:10:39.060176+00	2025-02-09 18:10:39.060176+00	2025-02-09 18:10:39.060176+00	{"eTag": "\\"984995c9eb23bd9d96c5aaffbf77fdaa\\"", "size": 104708, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.058Z", "contentLength": 104708, "httpStatusCode": 200}	1efbeeb3-e16d-4fd1-8d41-861a2f5ebdba	\N	{}
a4903bd4-d0f3-425d-8c53-7b54b9e88574	campuses	nl/1	\N	2025-02-09 18:10:39.440513+00	2025-02-09 18:10:39.440513+00	2025-02-09 18:10:39.440513+00	{"eTag": "\\"da425377c0b6012679e84bbb2b7266da\\"", "size": 976840, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.436Z", "contentLength": 976840, "httpStatusCode": 200}	54119824-0585-43b4-8b67-b5c2ffb11171	\N	{}
4a26232a-5251-4093-aed9-6be4d3f3bac3	campuses	lynchburg/0	\N	2025-02-09 18:10:39.077213+00	2025-02-09 18:10:39.077213+00	2025-02-09 18:10:39.077213+00	{"eTag": "\\"6e5c9db46383f5271748eae3a60c6474\\"", "size": 197622, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.075Z", "contentLength": 197622, "httpStatusCode": 200}	c778ca9b-8b6f-4dc0-a8a2-28556c177fa2	\N	{}
9ffd91c2-0f4b-48df-9165-7f0297f47acf	campuses	lynchburg/1	\N	2025-02-09 18:10:39.084224+00	2025-02-09 18:10:39.084224+00	2025-02-09 18:10:39.084224+00	{"eTag": "\\"03f39f99b0bba3af891806f1d79ffbaf\\"", "size": 163574, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.082Z", "contentLength": 163574, "httpStatusCode": 200}	7bfebaad-d019-48df-a37e-0b1c182f930f	\N	{}
03734416-e44a-4d2b-9c88-d6e417612dda	campuses	lynchburg/6	\N	2025-02-09 18:10:39.089539+00	2025-02-09 18:10:39.089539+00	2025-02-09 18:10:39.089539+00	{"eTag": "\\"39c07d6d46b5c2f306edc08227af5712\\"", "size": 140504, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.088Z", "contentLength": 140504, "httpStatusCode": 200}	50475822-ade6-469b-9c64-97537d8f3f14	\N	{}
0d02b384-df77-4a7f-a79b-b1bf28e5710e	campuses	lynchburg/7	\N	2025-02-09 18:10:39.095022+00	2025-02-09 18:10:39.095022+00	2025-02-09 18:10:39.095022+00	{"eTag": "\\"30105f028ca55c1d1140038755aeabb9\\"", "size": 178873, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.093Z", "contentLength": 178873, "httpStatusCode": 200}	a636b107-d6ee-47e4-926d-56bb523fd33e	\N	{}
604f2261-2a4f-48f9-8ac6-7fe7e3f39b51	campuses	lynchburg/2	\N	2025-02-09 18:10:39.100249+00	2025-02-09 18:10:39.100249+00	2025-02-09 18:10:39.100249+00	{"eTag": "\\"9fe3cb2b7313dc79bb477bc8fde184a7\\"", "size": 146, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.099Z", "contentLength": 146, "httpStatusCode": 200}	c59b8861-7769-4640-8f82-e9d93a36ec91	\N	{}
bfe8c673-5ec9-4345-94e0-ded1e05c3402	campuses	lynchburg/8	\N	2025-02-09 18:10:39.108792+00	2025-02-09 18:10:39.108792+00	2025-02-09 18:10:39.108792+00	{"eTag": "\\"be6cca1c16d1a1776374d0247da6d344\\"", "size": 173970, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.107Z", "contentLength": 173970, "httpStatusCode": 200}	d61362e5-3ff0-4eaa-a863-b6db1edbc9d2	\N	{}
64cedcff-a57a-4d5e-9345-b1fcdd5b6d6d	campuses	lynchburg/4	\N	2025-02-09 18:10:39.115538+00	2025-02-09 18:10:39.115538+00	2025-02-09 18:10:39.115538+00	{"eTag": "\\"7d94d200bdf2751437220c9279322227\\"", "size": 230858, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.113Z", "contentLength": 230858, "httpStatusCode": 200}	5fb7e231-4853-4b98-a3af-13c336e19027	\N	{}
436d94a0-fa85-4175-b931-2827bf8856ee	campuses	lynchburg/5	\N	2025-02-09 18:10:39.121789+00	2025-02-09 18:10:39.121789+00	2025-02-09 18:10:39.121789+00	{"eTag": "\\"fb82f6923c45075591e044dc5a4ed055\\"", "size": 185516, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.120Z", "contentLength": 185516, "httpStatusCode": 200}	2a6900c9-49c0-4c72-8a2c-eac87cf69ea9	\N	{}
15412e85-55bf-4610-bf0f-be93602c86bc	campuses	lynchburg/9	\N	2025-02-09 18:10:39.127461+00	2025-02-09 18:10:39.127461+00	2025-02-09 18:10:39.127461+00	{"eTag": "\\"19a4119403ff4d3ec6304d95bf52e1e4\\"", "size": 255730, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.125Z", "contentLength": 255730, "httpStatusCode": 200}	9d698ede-9e80-4b7d-aebf-20728aa6566d	\N	{}
94d6dde0-8fb8-4759-8e01-67bec0f5bd9e	campuses	lynchburg/3	\N	2025-02-09 18:10:39.132879+00	2025-02-09 18:10:39.132879+00	2025-02-09 18:10:39.132879+00	{"eTag": "\\"6e5c9db46383f5271748eae3a60c6474\\"", "size": 197622, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.131Z", "contentLength": 197622, "httpStatusCode": 200}	d5864b82-b389-48cd-854c-22365dde02e2	\N	{}
6b51e948-5723-4ee8-866a-8544746ae193	campuses	denison/0	\N	2025-02-09 18:10:39.198504+00	2025-02-09 18:10:39.198504+00	2025-02-09 18:10:39.198504+00	{"eTag": "\\"97f0294c73e38b2b2714bda0156ca75d\\"", "size": 11170873, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.147Z", "contentLength": 11170873, "httpStatusCode": 200}	e6faeef9-32ad-4da7-8227-257b4c691772	\N	{}
e5ad58cb-7bcf-4ea2-b51f-3e38c9b1a3d1	campuses	denison/1	\N	2025-02-09 18:10:39.210135+00	2025-02-09 18:10:39.210135+00	2025-02-09 18:10:39.210135+00	{"eTag": "\\"ff030cdeee33149380fb105368ea94b4\\"", "size": 283685, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.208Z", "contentLength": 283685, "httpStatusCode": 200}	a95a0666-e702-4cff-a3ca-466e92878e22	\N	{}
092d08d2-28fc-4d5d-a931-9892e450b876	campuses	denison/7	\N	2025-02-09 18:10:39.227612+00	2025-02-09 18:10:39.227612+00	2025-02-09 18:10:39.227612+00	{"eTag": "\\"d067126c1b1870d9d337f7648776a9ca\\"", "size": 92331, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.220Z", "contentLength": 92331, "httpStatusCode": 200}	a901e92f-0690-4cc0-97bb-bd41e778616f	\N	{}
6436e562-d349-4025-a068-a0467a37692e	campuses	denison/8	\N	2025-02-09 18:10:39.270051+00	2025-02-09 18:10:39.270051+00	2025-02-09 18:10:39.270051+00	{"eTag": "\\"db071005d88994caaff1e44384c82ac7\\"", "size": 8215134, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.242Z", "contentLength": 8215134, "httpStatusCode": 200}	717abc9c-76d2-43a3-bfd5-91255fcee61d	\N	{}
1323a3f8-3dac-4001-961d-857b0afe0075	campuses	denison/4	\N	2025-02-09 18:10:39.285592+00	2025-02-09 18:10:39.285592+00	2025-02-09 18:10:39.285592+00	{"eTag": "\\"37f2ab551edbd95377eb697ce69b64f6\\"", "size": 91975, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.283Z", "contentLength": 91975, "httpStatusCode": 200}	74a10ca7-00d4-489d-9066-056beed26ac2	\N	{}
3ca2063a-cf3a-40a2-ae44-8bffb63bae81	campuses	denison/5	\N	2025-02-09 18:10:39.296879+00	2025-02-09 18:10:39.296879+00	2025-02-09 18:10:39.296879+00	{"eTag": "\\"446c0b915e322fd2d3546721c2805ac7\\"", "size": 197677, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.295Z", "contentLength": 197677, "httpStatusCode": 200}	1945bba4-1070-4034-9f7b-ed481c2a96b8	\N	{}
75a1546e-a53f-4e4b-8278-7e0cb6b684f5	campuses	denison/2	\N	2025-02-09 18:10:39.306984+00	2025-02-09 18:10:39.306984+00	2025-02-09 18:10:39.306984+00	{"eTag": "\\"a1e21d040d7b3cb34c49e0e4d80d5de2\\"", "size": 237369, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.305Z", "contentLength": 237369, "httpStatusCode": 200}	f5d8e1ef-4475-4fb6-b066-f2799e6bf813	\N	{}
0b45099b-c0fb-49e2-a25e-0f9666cbafe6	campuses	denison/6	\N	2025-02-09 18:10:39.325047+00	2025-02-09 18:10:39.325047+00	2025-02-09 18:10:39.325047+00	{"eTag": "\\"fcff5da482d2cf0eaba64d7de80becb2\\"", "size": 2216465, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.317Z", "contentLength": 2216465, "httpStatusCode": 200}	85b8266c-35da-409c-b840-006c0ad74963	\N	{}
c5f87fc1-7d62-4662-a506-dc3aa5a6b068	campuses	denison/3	\N	2025-02-09 18:10:39.336421+00	2025-02-09 18:10:39.336421+00	2025-02-09 18:10:39.336421+00	{"eTag": "\\"5d9354b42f9ebb3ca5f709586014b9f9\\"", "size": 644619, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.333Z", "contentLength": 644619, "httpStatusCode": 200}	6cb48000-3cbf-4f08-a96e-961189991a97	\N	{}
1bb76471-4fca-4e17-a3ef-6ff8209c4f8e	campuses	shu/0	\N	2025-02-09 18:10:39.343905+00	2025-02-09 18:10:39.343905+00	2025-02-09 18:10:39.343905+00	{"eTag": "\\"0d0173cd8a4f814abeefdffc147bfe6e\\"", "size": 42282, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.342Z", "contentLength": 42282, "httpStatusCode": 200}	49c31e3c-70fc-444a-b56b-f5773f06c91b	\N	{}
dd0bd472-8402-4e2d-90ef-9d779ce769cc	campuses	shu/8	\N	2025-02-09 18:10:39.351641+00	2025-02-09 18:10:39.351641+00	2025-02-09 18:10:39.351641+00	{"eTag": "\\"27d36ac792849d41752fd2661dd5a171\\"", "size": 225194, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.350Z", "contentLength": 225194, "httpStatusCode": 200}	c41dc0b3-77b2-4ffa-85ba-8e8aace6de74	\N	{}
1a836b66-746f-4861-8726-5df6f19fae89	campuses	shu/6	\N	2025-02-09 18:10:39.358273+00	2025-02-09 18:10:39.358273+00	2025-02-09 18:10:39.358273+00	{"eTag": "\\"d9e4388af87cac434477c186feffb38b\\"", "size": 94427, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.357Z", "contentLength": 94427, "httpStatusCode": 200}	3f979c94-9b09-4bed-8a2f-255ea3764938	\N	{}
61905a61-367c-40fc-9d94-2dbee50d3342	campuses	shu/7	\N	2025-02-09 18:10:39.370139+00	2025-02-09 18:10:39.370139+00	2025-02-09 18:10:39.370139+00	{"eTag": "\\"9e5a84712bc847351851d765f9c3c2c2\\"", "size": 29859, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.364Z", "contentLength": 29859, "httpStatusCode": 200}	df22a309-9beb-4ff4-81d4-02b6a3e7c000	\N	{}
61ebc439-f0bc-4e28-b704-c39342d6b3ba	campuses	shu/4	\N	2025-02-09 18:10:39.380701+00	2025-02-09 18:10:39.380701+00	2025-02-09 18:10:39.380701+00	{"eTag": "\\"9b2656ce20a9d225f278002ff452b871\\"", "size": 26573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.379Z", "contentLength": 26573, "httpStatusCode": 200}	6a876bf5-edfb-46a3-96fa-b042ce562d1a	\N	{}
55bc949a-a340-4f82-9f8f-485fdf079e0e	campuses	shu/9	\N	2025-02-09 18:10:39.39625+00	2025-02-09 18:10:39.39625+00	2025-02-09 18:10:39.39625+00	{"eTag": "\\"24e5508b9ec9db988bece37072a26d2e\\"", "size": 963819, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.390Z", "contentLength": 963819, "httpStatusCode": 200}	a1c0aa4e-65a6-46e2-bf96-19937bb6d750	\N	{}
cdfe9d1f-61ae-46cb-88e6-2b529850d22f	campuses	shu/2	\N	2025-02-09 18:10:39.407916+00	2025-02-09 18:10:39.407916+00	2025-02-09 18:10:39.407916+00	{"eTag": "\\"5344fa70b9390bf268c005e4610896df\\"", "size": 45951, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.406Z", "contentLength": 45951, "httpStatusCode": 200}	bcbe6841-d724-44d8-ac43-2cd495b603f0	\N	{}
03e2c9c7-11ba-4b05-be89-cee7c40eac92	campuses	shu/1	\N	2025-02-09 18:10:39.418896+00	2025-02-09 18:10:39.418896+00	2025-02-09 18:10:39.418896+00	{"eTag": "\\"0ed2a64268251f2b88c6c3af320305f4\\"", "size": 838100, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.415Z", "contentLength": 838100, "httpStatusCode": 200}	e0f18416-73cd-49fd-91fe-bc507c907b7c	\N	{}
bc4a44ca-5126-43a4-961c-225f483b49a8	campuses	shu/3	\N	2025-02-09 18:10:39.427976+00	2025-02-09 18:10:39.427976+00	2025-02-09 18:10:39.427976+00	{"eTag": "\\"94fbd1d33442bf511e06d2071480ef93\\"", "size": 145077, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.426Z", "contentLength": 145077, "httpStatusCode": 200}	b37fbcb1-ca04-498c-8ea6-1c0d371a17cd	\N	{}
e2d5b11e-f28c-475e-9125-765126fff34b	campuses	nl/6	\N	2025-02-09 18:10:39.450083+00	2025-02-09 18:10:39.450083+00	2025-02-09 18:10:39.450083+00	{"eTag": "\\"bab8b2d48edd57f733eb3848b35a1220\\"", "size": 373651, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.447Z", "contentLength": 373651, "httpStatusCode": 200}	446aed84-7b7d-4834-81ca-cc6dc3db3d5a	\N	{}
ff26ff2d-f346-4ed9-9c36-9b7e5c19aa67	campuses	nl/7	\N	2025-02-09 18:10:39.458865+00	2025-02-09 18:10:39.458865+00	2025-02-09 18:10:39.458865+00	{"eTag": "\\"cb769561a0ba856499bb10eef562d4f7\\"", "size": 355684, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.456Z", "contentLength": 355684, "httpStatusCode": 200}	4a0e03f6-7f12-4bf3-8bea-ed1d199cad3e	\N	{}
8feb6572-ce7e-49f5-b668-a7eca813397c	campuses	nl/8	\N	2025-02-09 18:10:39.46757+00	2025-02-09 18:10:39.46757+00	2025-02-09 18:10:39.46757+00	{"eTag": "\\"332068f00c2840088b3574485e88adb8\\"", "size": 125558, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.466Z", "contentLength": 125558, "httpStatusCode": 200}	c4c372e7-6baa-485e-b5ca-e6a4e4bde42f	\N	{}
c3a05932-2ce1-4a1d-98f9-0ecaa9002ea8	campuses	nl/4	\N	2025-02-09 18:10:39.483336+00	2025-02-09 18:10:39.483336+00	2025-02-09 18:10:39.483336+00	{"eTag": "\\"8363b0fba4797249ed765a8ce1327d30\\"", "size": 78605, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.481Z", "contentLength": 78605, "httpStatusCode": 200}	1353d357-8427-4e8c-a401-550fde29b901	\N	{}
8f33226e-3577-4a55-a954-f9d575be78b2	campuses	nl/5	\N	2025-02-09 18:10:39.496337+00	2025-02-09 18:10:39.496337+00	2025-02-09 18:10:39.496337+00	{"eTag": "\\"d6725661c77514039e0daa31d939f683\\"", "size": 561104, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.492Z", "contentLength": 561104, "httpStatusCode": 200}	5630a4c4-d384-40a3-b1e4-90b689edb9ff	\N	{}
645c3b23-6e50-4ad2-b213-96eb985ab1c8	campuses	nl/9	\N	2025-02-09 18:10:39.504811+00	2025-02-09 18:10:39.504811+00	2025-02-09 18:10:39.504811+00	{"eTag": "\\"3e993e051180b7fdf81bc44682036963\\"", "size": 89519, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.503Z", "contentLength": 89519, "httpStatusCode": 200}	a43cac83-32ad-4275-8e13-ac6474bc3aeb	\N	{}
b2d63398-d6be-4024-8403-e470bbde1e5e	campuses	nl/2	\N	2025-02-09 18:10:39.517693+00	2025-02-09 18:10:39.517693+00	2025-02-09 18:10:39.517693+00	{"eTag": "\\"843a191a87a822fa4388433a8f2ea726\\"", "size": 999889, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.511Z", "contentLength": 999889, "httpStatusCode": 200}	b78fd25d-ca59-4f0e-8fa5-d8eadb1a9338	\N	{}
a615fc5d-f6fa-4a70-9cf8-4140d621542b	campuses	nl/0	\N	2025-02-09 18:10:39.53012+00	2025-02-09 18:10:39.53012+00	2025-02-09 18:10:39.53012+00	{"eTag": "\\"85bef38cc9ab95512e59ab81da771c03\\"", "size": 441623, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.527Z", "contentLength": 441623, "httpStatusCode": 200}	d0b82a8b-4f00-4527-a474-16dafc97aabc	\N	{}
f0a103e9-6dbb-43af-bf2c-534250d9e287	campuses	nl/3	\N	2025-02-09 18:10:39.540337+00	2025-02-09 18:10:39.540337+00	2025-02-09 18:10:39.540337+00	{"eTag": "\\"e57ea8bf86f67c8222b6df21784367ea\\"", "size": 318415, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.538Z", "contentLength": 318415, "httpStatusCode": 200}	2824a882-d8d7-4196-a3f3-2c9908dc982a	\N	{}
4799c3e4-e8b1-4762-a03f-1858abc1fd1c	campuses	pointloma/0	\N	2025-02-09 18:10:39.548309+00	2025-02-09 18:10:39.548309+00	2025-02-09 18:10:39.548309+00	{"eTag": "\\"e908a0155faa0a743d67743ee4f3f480\\"", "size": 102794, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.547Z", "contentLength": 102794, "httpStatusCode": 200}	b1da5ac0-f665-450d-a275-8834100c0525	\N	{}
f57e8b20-b569-4e58-96dd-e308f6fbd391	campuses	pointloma/1	\N	2025-02-09 18:10:39.556164+00	2025-02-09 18:10:39.556164+00	2025-02-09 18:10:39.556164+00	{"eTag": "\\"fe88aa02b6f945ba879112c1fc9cbb02\\"", "size": 33082, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.555Z", "contentLength": 33082, "httpStatusCode": 200}	74d522e6-008f-48a8-909e-17456f79bbdc	\N	{}
96f2e136-013e-43dd-b177-11900e32e378	campuses	pointloma/4	\N	2025-02-09 18:10:39.56562+00	2025-02-09 18:10:39.56562+00	2025-02-09 18:10:39.56562+00	{"eTag": "\\"eeb161094455b3ea27e736ed6af1ad37\\"", "size": 489516, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.563Z", "contentLength": 489516, "httpStatusCode": 200}	d5821bc5-dd3d-4c6e-bb7c-85a7095ce704	\N	{}
75d7de83-d20b-4c2e-ab41-e4f89b3ba4ba	campuses	pointloma/5	\N	2025-02-09 18:10:39.573364+00	2025-02-09 18:10:39.573364+00	2025-02-09 18:10:39.573364+00	{"eTag": "\\"fb0cbb5e648e5bc40cb731c3bf070f3b\\"", "size": 153237, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.572Z", "contentLength": 153237, "httpStatusCode": 200}	7ea8a974-7aea-4b2a-9970-0fdf25f28cf6	\N	{}
5c8f437b-5095-4eca-9142-2e88d59f91d2	campuses	pointloma/2	\N	2025-02-09 18:10:39.582493+00	2025-02-09 18:10:39.582493+00	2025-02-09 18:10:39.582493+00	{"eTag": "\\"0026910de3aa01163a2668189a4c01af\\"", "size": 488031, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.580Z", "contentLength": 488031, "httpStatusCode": 200}	3e94008c-2880-44d8-982c-a0a0756c0995	\N	{}
83c2ac6f-aceb-40db-9d95-89de6dbdc9bf	campuses	pointloma/3	\N	2025-02-09 18:10:39.591877+00	2025-02-09 18:10:39.591877+00	2025-02-09 18:10:39.591877+00	{"eTag": "\\"7c286ef8fac30af8bd3078da83415271\\"", "size": 333605, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.589Z", "contentLength": 333605, "httpStatusCode": 200}	3b610f07-23e5-40bb-aed4-34beb25e99a8	\N	{}
820ff33b-08aa-4abe-b1ff-8d6249def6a4	campuses	georgefox/5	\N	2025-02-09 18:10:39.599789+00	2025-02-09 18:10:39.599789+00	2025-02-09 18:10:39.599789+00	{"eTag": "\\"0591d6edb42d16b628b5e2186aff5485\\"", "size": 49652, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.598Z", "contentLength": 49652, "httpStatusCode": 200}	99d93707-d96b-429e-8c25-c237e9e680d5	\N	{}
5fbbc81c-5150-4e33-a86c-e370057ed603	campuses	georgefox/0	\N	2025-02-09 18:10:39.609002+00	2025-02-09 18:10:39.609002+00	2025-02-09 18:10:39.609002+00	{"eTag": "\\"ccf6294a62766a89953e039ac8249578\\"", "size": 81265, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.607Z", "contentLength": 81265, "httpStatusCode": 200}	1b2cd59b-c765-4797-82fd-5d5ecafa1ca8	\N	{}
e52feebf-cee1-4e73-a0d9-fb13e2ae8c98	campuses	georgefox/1	\N	2025-02-09 18:10:39.616479+00	2025-02-09 18:10:39.616479+00	2025-02-09 18:10:39.616479+00	{"eTag": "\\"1a018e70fbbea32c256fed9ba7a08603\\"", "size": 113481, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.614Z", "contentLength": 113481, "httpStatusCode": 200}	879b1a4d-c070-4126-a0af-5a82b5f5adec	\N	{}
c7068530-212a-4330-b682-f74b73470a42	campuses	georgefox/6	\N	2025-02-09 18:10:39.623199+00	2025-02-09 18:10:39.623199+00	2025-02-09 18:10:39.623199+00	{"eTag": "\\"263d7c19458bead108a6ba427b9edaa8\\"", "size": 69764, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.621Z", "contentLength": 69764, "httpStatusCode": 200}	4d8d429f-0278-4216-b2cd-c1a41e0fae88	\N	{}
bf8f2531-cf5b-4dcd-8b87-92ab0535952f	campuses	georgefox/8	\N	2025-02-09 18:10:39.630279+00	2025-02-09 18:10:39.630279+00	2025-02-09 18:10:39.630279+00	{"eTag": "\\"a03763f43c1a203b55a005ad4e03ebcb\\"", "size": 98383, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.629Z", "contentLength": 98383, "httpStatusCode": 200}	48745007-9277-4ad8-a154-0f904a227f53	\N	{}
c1e3b6ee-6109-4eb2-80d9-d2b30253029a	campuses	georgefox/4	\N	2025-02-09 18:10:39.640008+00	2025-02-09 18:10:39.640008+00	2025-02-09 18:10:39.640008+00	{"eTag": "\\"cf69294e12fdad2701cccfd19a666102\\"", "size": 900088, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.636Z", "contentLength": 900088, "httpStatusCode": 200}	be1f9d0b-101f-42f0-af53-fd71637e6817	\N	{}
ebd15bfe-27db-44f0-9842-21e9a84d3444	campuses	georgefox/9	\N	2025-02-09 18:10:39.6468+00	2025-02-09 18:10:39.6468+00	2025-02-09 18:10:39.6468+00	{"eTag": "\\"9ba0cf2e5e88e292a722f65a08c43bfe\\"", "size": 84457, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.645Z", "contentLength": 84457, "httpStatusCode": 200}	36c777d5-a4d8-4c76-82ed-75bbe5702763	\N	{}
cfadf19b-733a-4fe3-894f-44ddf2fdb77a	campuses	georgefox/2	\N	2025-02-09 18:10:39.655728+00	2025-02-09 18:10:39.655728+00	2025-02-09 18:10:39.655728+00	{"eTag": "\\"5655c6a792180eb53efd8963bfce19eb\\"", "size": 197497, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.654Z", "contentLength": 197497, "httpStatusCode": 200}	5d0e6ba5-ce85-4cbc-aec3-6bec0f393c3a	\N	{}
df0c75a4-d392-4b47-b7b5-46798e2fe735	campuses	georgefox/7	\N	2025-02-09 18:10:39.662709+00	2025-02-09 18:10:39.662709+00	2025-02-09 18:10:39.662709+00	{"eTag": "\\"edc1f53d4a87285dcf720c1c83cd6fb5\\"", "size": 244456, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.661Z", "contentLength": 244456, "httpStatusCode": 200}	14746036-703d-4f4f-90b4-ca333f641ed7	\N	{}
2b5228d5-ca97-46df-92b3-4f04a5ef3f70	campuses	georgefox/3	\N	2025-02-09 18:10:39.66843+00	2025-02-09 18:10:39.66843+00	2025-02-09 18:10:39.66843+00	{"eTag": "\\"eb10117c942ae3bf64d0ef641ecc345d\\"", "size": 181534, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.667Z", "contentLength": 181534, "httpStatusCode": 200}	0f9c15cd-8913-4257-b3c1-3ebab2f83afe	\N	{}
f0be15bf-4a9b-4335-8011-94e1ca724b67	campuses	louisiana/0	\N	2025-02-09 18:10:39.67862+00	2025-02-09 18:10:39.67862+00	2025-02-09 18:10:39.67862+00	{"eTag": "\\"ec287ae6ab29a38dc25094a226870e58\\"", "size": 717239, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.675Z", "contentLength": 717239, "httpStatusCode": 200}	34919853-3403-4c6c-b353-20c869c350d5	\N	{}
34bec3f9-4fb1-428f-9398-2c03c16bf1ae	campuses	louisiana/1	\N	2025-02-09 18:10:39.714395+00	2025-02-09 18:10:39.714395+00	2025-02-09 18:10:39.714395+00	{"eTag": "\\"a1365f33444727c98d72d81e151ded9c\\"", "size": 3549879, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.695Z", "contentLength": 3549879, "httpStatusCode": 200}	126c0f7c-28ca-44e8-af1f-da1a26ca8de9	\N	{}
53f0248d-c902-483c-bee5-29e8ddaf02bc	campuses	louisiana/9	\N	2025-02-09 18:10:39.732639+00	2025-02-09 18:10:39.732639+00	2025-02-09 18:10:39.732639+00	{"eTag": "\\"3c165ca2b8e005474e3abf701e090626\\"", "size": 1718205, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.726Z", "contentLength": 1718205, "httpStatusCode": 200}	c25113d5-7769-4363-9669-b8450e3dfd9b	\N	{}
3f0aa1ba-3f18-400d-9d24-2cbdc13ce6cc	campuses	louisiana/6	\N	2025-02-09 18:10:39.746231+00	2025-02-09 18:10:39.746231+00	2025-02-09 18:10:39.746231+00	{"eTag": "\\"9a10b50bf6e9043890a8d2464e975801\\"", "size": 75150, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.742Z", "contentLength": 75150, "httpStatusCode": 200}	6838a117-676d-412b-9665-ce842653124b	\N	{}
2bef3533-4a65-49c1-a591-f0363ce38a0b	campuses	louisiana/7	\N	2025-02-09 18:10:39.761408+00	2025-02-09 18:10:39.761408+00	2025-02-09 18:10:39.761408+00	{"eTag": "\\"4b7428a65270e417c1682e10d1203afa\\"", "size": 113105, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.759Z", "contentLength": 113105, "httpStatusCode": 200}	d809b0a8-2435-4106-af4b-521cd8f664f7	\N	{}
b894ec75-275b-481c-9825-a7850746b918	campuses	louisiana/8	\N	2025-02-09 18:10:39.769865+00	2025-02-09 18:10:39.769865+00	2025-02-09 18:10:39.769865+00	{"eTag": "\\"2b3e48b18d806f67a7d5943d35106e6f\\"", "size": 352426, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.767Z", "contentLength": 352426, "httpStatusCode": 200}	302b4a2a-ab20-4ee8-b716-02f1bc7b7863	\N	{}
05b94a8c-ea3a-447e-ab82-0ebd78efb789	campuses	louisiana/4	\N	2025-02-09 18:10:39.777757+00	2025-02-09 18:10:39.777757+00	2025-02-09 18:10:39.777757+00	{"eTag": "\\"6f1e7e2cf4fc4faf2911594ea8748235\\"", "size": 75000, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.776Z", "contentLength": 75000, "httpStatusCode": 200}	f251af8b-74b6-44ff-8823-bbbe636b86e0	\N	{}
243254d8-e4e8-4f77-b74d-d8623341d512	campuses	louisiana/5	\N	2025-02-09 18:10:39.785401+00	2025-02-09 18:10:39.785401+00	2025-02-09 18:10:39.785401+00	{"eTag": "\\"25b278f9e99bdb32c6508282874a6bde\\"", "size": 95467, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.784Z", "contentLength": 95467, "httpStatusCode": 200}	a7f2754d-a308-411f-8a0d-bd5445d3040e	\N	{}
9f37f8f1-e17c-4786-a176-dd40a0e51ef0	campuses	louisiana/2	\N	2025-02-09 18:10:39.805892+00	2025-02-09 18:10:39.805892+00	2025-02-09 18:10:39.805892+00	{"eTag": "\\"53ee860cef880c5a6d5a0968b1a0eecd\\"", "size": 2614789, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.795Z", "contentLength": 2614789, "httpStatusCode": 200}	9b2ba9a0-6248-4b0d-8c8e-d6911f07cbfa	\N	{}
7e5f2b94-ff8e-48b8-b0af-166699ec98be	campuses	louisiana/3	\N	2025-02-09 18:10:39.816352+00	2025-02-09 18:10:39.816352+00	2025-02-09 18:10:39.816352+00	{"eTag": "\\"e67c177f4108a3ffcf41144aaafee46b\\"", "size": 577577, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.813Z", "contentLength": 577577, "httpStatusCode": 200}	4a685801-f4c6-448f-bb47-e64a2f1584c4	\N	{}
c69a45ed-b970-480e-8f82-c19dacdba61d	campuses	fitnyc/9	\N	2025-02-09 18:10:39.82621+00	2025-02-09 18:10:39.82621+00	2025-02-09 18:10:39.82621+00	{"eTag": "\\"9fe3cb2b7313dc79bb477bc8fde184a7\\"", "size": 146, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.824Z", "contentLength": 146, "httpStatusCode": 200}	179b9eb9-5303-4d51-96a0-2b5da781ee04	\N	{}
9fa60c92-6090-4e03-bc39-26464ff755dc	campuses	fitnyc/4	\N	2025-02-09 18:10:39.84161+00	2025-02-09 18:10:39.84161+00	2025-02-09 18:10:39.84161+00	{"eTag": "\\"9fe3cb2b7313dc79bb477bc8fde184a7\\"", "size": 146, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.840Z", "contentLength": 146, "httpStatusCode": 200}	3b9b74d3-eb76-4af1-b6b0-5d48e810f2b9	\N	{}
5ef9a353-fe5b-4b50-b150-2d2f64ec641b	campuses	fitnyc/1	\N	2025-02-09 18:10:39.854747+00	2025-02-09 18:10:39.854747+00	2025-02-09 18:10:39.854747+00	{"eTag": "\\"884eeffba6352706c8f2f086986fcee2\\"", "size": 937512, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.850Z", "contentLength": 937512, "httpStatusCode": 200}	8507c45e-59b5-43c5-aabf-f486cefe3618	\N	{}
a9f281fb-8dfb-416d-b51b-22fbbf6e8f0c	campuses	fitnyc/8	\N	2025-02-09 18:10:39.865536+00	2025-02-09 18:10:39.865536+00	2025-02-09 18:10:39.865536+00	{"eTag": "\\"9fe3cb2b7313dc79bb477bc8fde184a7\\"", "size": 146, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.864Z", "contentLength": 146, "httpStatusCode": 200}	aaaa0b5d-5cfb-4414-8f80-c7264aae3be5	\N	{}
2c405e36-98fa-41c7-9c64-af494466c94f	campuses	fitnyc/7	\N	2025-02-09 18:10:39.872033+00	2025-02-09 18:10:39.872033+00	2025-02-09 18:10:39.872033+00	{"eTag": "\\"f017d1726dfbfba5a2b2dc2b239c3916\\"", "size": 72538, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.870Z", "contentLength": 72538, "httpStatusCode": 200}	5324192a-9250-46eb-812d-1933d432aa69	\N	{}
a53d6e88-736b-49fb-b9b0-52cfcf05ae70	campuses	fitnyc/2	\N	2025-02-09 18:10:39.878474+00	2025-02-09 18:10:39.878474+00	2025-02-09 18:10:39.878474+00	{"eTag": "\\"9fe3cb2b7313dc79bb477bc8fde184a7\\"", "size": 146, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.877Z", "contentLength": 146, "httpStatusCode": 200}	7d74b345-9fd9-4ca7-b549-a30514cbeb38	\N	{}
afa88bcf-437f-4580-bd4e-2c081740f435	campuses	fitnyc/5	\N	2025-02-09 18:10:39.885223+00	2025-02-09 18:10:39.885223+00	2025-02-09 18:10:39.885223+00	{"eTag": "\\"bae8f8ed00ede5175bc0a645aeb4ecdc\\"", "size": 164481, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.883Z", "contentLength": 164481, "httpStatusCode": 200}	5a35cad8-aa14-4146-8cd0-a1ad03ce7685	\N	{}
e7ae3e07-6a83-47b8-b836-1056a34599b5	campuses	fitnyc/0	\N	2025-02-09 18:10:39.891691+00	2025-02-09 18:10:39.891691+00	2025-02-09 18:10:39.891691+00	{"eTag": "\\"9fe3cb2b7313dc79bb477bc8fde184a7\\"", "size": 146, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.890Z", "contentLength": 146, "httpStatusCode": 200}	91bc1451-7e08-4b68-a899-87f2422854e2	\N	{}
9b3ea2b8-0796-4df8-82af-2a238b355433	campuses	fitnyc/6	\N	2025-02-09 18:10:39.89874+00	2025-02-09 18:10:39.89874+00	2025-02-09 18:10:39.89874+00	{"eTag": "\\"9fe3cb2b7313dc79bb477bc8fde184a7\\"", "size": 146, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.897Z", "contentLength": 146, "httpStatusCode": 200}	eddc0f39-3a7c-45bb-b10b-4aad419ad9ad	\N	{}
4bb86434-9a35-49e8-876b-6cb6b425739e	campuses	fitnyc/3	\N	2025-02-09 18:10:39.909725+00	2025-02-09 18:10:39.909725+00	2025-02-09 18:10:39.909725+00	{"eTag": "\\"dac6098644928fb1ffc685af6229d78b\\"", "size": 118510, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.908Z", "contentLength": 118510, "httpStatusCode": 200}	dcf16adf-7b92-4c00-a6e3-08198273ba8d	\N	{}
541b25ad-4706-4ac4-9393-cc7525d7419a	campuses	dom/0	\N	2025-02-09 18:10:39.916814+00	2025-02-09 18:10:39.916814+00	2025-02-09 18:10:39.916814+00	{"eTag": "\\"8ad054c0764c850f36fc4d98df2e53e8\\"", "size": 332669, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.915Z", "contentLength": 332669, "httpStatusCode": 200}	914f10a2-e1ae-4c90-8c2e-7526798dcd6c	\N	{}
ccf36104-fd94-4534-a3ce-424732891f36	campuses	dom/1	\N	2025-02-09 18:10:39.922847+00	2025-02-09 18:10:39.922847+00	2025-02-09 18:10:39.922847+00	{"eTag": "\\"5684a9f0210f74ffb4b68e85a94f42d5\\"", "size": 140224, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.921Z", "contentLength": 140224, "httpStatusCode": 200}	c12328e7-33e0-474f-8230-11c2cff8165c	\N	{}
79162473-90d5-40b7-8ac5-4b5935c492b4	campuses	dom/6	\N	2025-02-09 18:10:39.929778+00	2025-02-09 18:10:39.929778+00	2025-02-09 18:10:39.929778+00	{"eTag": "\\"b79ace003741e66f48a285e77d895333\\"", "size": 109399, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.928Z", "contentLength": 109399, "httpStatusCode": 200}	3f65104a-9045-4a1b-885a-68e7ab5fc7e0	\N	{}
2f33c20d-4d3e-42a9-a292-34000c26c54e	campuses	dom/7	\N	2025-02-09 18:10:39.935917+00	2025-02-09 18:10:39.935917+00	2025-02-09 18:10:39.935917+00	{"eTag": "\\"f6fb7d3c68f8e44134778a2f73bf3b05\\"", "size": 184279, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.934Z", "contentLength": 184279, "httpStatusCode": 200}	16bbc824-600f-47f6-853b-d99b4bda57e5	\N	{}
c4536324-3b08-4852-9219-161346ed4df0	campuses	dom/8	\N	2025-02-09 18:10:39.941598+00	2025-02-09 18:10:39.941598+00	2025-02-09 18:10:39.941598+00	{"eTag": "\\"0cb392cb1767a46f442161c4360bb5dd\\"", "size": 149280, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.940Z", "contentLength": 149280, "httpStatusCode": 200}	8bbfc19b-b6e8-43dd-9fd8-37319162cae6	\N	{}
2db4926f-a4b9-492b-af7d-a549de9f2bac	campuses	dom/5	\N	2025-02-09 18:10:39.948347+00	2025-02-09 18:10:39.948347+00	2025-02-09 18:10:39.948347+00	{"eTag": "\\"a0c5979926778326d0cf167825d14a67\\"", "size": 519845, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.946Z", "contentLength": 519845, "httpStatusCode": 200}	25e94788-a4e7-4987-b875-e1dde7ee9f78	\N	{}
5df7f2b5-1e44-4ecd-96ac-2f94a12ac9fc	campuses	dom/9	\N	2025-02-09 18:10:39.956028+00	2025-02-09 18:10:39.956028+00	2025-02-09 18:10:39.956028+00	{"eTag": "\\"a9648bc9a4dded0d384e7c1596b3f17b\\"", "size": 112700, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.952Z", "contentLength": 112700, "httpStatusCode": 200}	7a1e1c1e-7016-437c-a932-2043de25b64c	\N	{}
f6ebf87a-9837-4be1-9cd4-06a98bad35bf	campuses	dom/2	\N	2025-02-09 18:10:39.964299+00	2025-02-09 18:10:39.964299+00	2025-02-09 18:10:39.964299+00	{"eTag": "\\"228b0519d95ac832ffb9a0b2fb4f3eec\\"", "size": 115240, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.962Z", "contentLength": 115240, "httpStatusCode": 200}	e2ffa76e-0ec2-46dc-91c2-4b2e418e24b4	\N	{}
ffd33a56-8917-4b8c-9412-03a1c9b6cfd9	campuses	dom/4	\N	2025-02-09 18:10:39.97389+00	2025-02-09 18:10:39.97389+00	2025-02-09 18:10:39.97389+00	{"eTag": "\\"857b2d21cc3bc283cf27c741caeaeef6\\"", "size": 19946, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.972Z", "contentLength": 19946, "httpStatusCode": 200}	e998463a-1081-4c28-969b-9ff023f09261	\N	{}
e9fe427a-3ecc-42d4-9e3a-6cfa657af884	campuses	dom/3	\N	2025-02-09 18:10:39.986665+00	2025-02-09 18:10:39.986665+00	2025-02-09 18:10:39.986665+00	{"eTag": "\\"053aabe7f7ca4804248fdd8fe5e835c2\\"", "size": 369247, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.984Z", "contentLength": 369247, "httpStatusCode": 200}	79d1ac14-7751-408f-a6bd-e9a12cfdba57	\N	{}
b1a8dade-cf1e-4c37-a285-3f4ceb0edfdc	campuses	pomona/0	\N	2025-02-09 18:10:39.995325+00	2025-02-09 18:10:39.995325+00	2025-02-09 18:10:39.995325+00	{"eTag": "\\"6ab1b906ad58dbfe1bbadb502c68926b\\"", "size": 495978, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:39.993Z", "contentLength": 495978, "httpStatusCode": 200}	47a12668-a0aa-4753-ad7c-81a653b65d00	\N	{}
67d5729e-b814-4014-b88f-3af649b31275	campuses	pomona/1	\N	2025-02-09 18:10:40.004182+00	2025-02-09 18:10:40.004182+00	2025-02-09 18:10:40.004182+00	{"eTag": "\\"19490e5e64592b641b128b29b272ff0d\\"", "size": 941722, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.000Z", "contentLength": 941722, "httpStatusCode": 200}	cc84f517-fe6f-4e27-83f9-1e7af4a6e6ec	\N	{}
c4ae668e-5238-4012-a791-399235e73962	campuses	pomona/6	\N	2025-02-09 18:10:40.01205+00	2025-02-09 18:10:40.01205+00	2025-02-09 18:10:40.01205+00	{"eTag": "\\"d64458c3d5e68aeb146985bce72f35be\\"", "size": 528542, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.009Z", "contentLength": 528542, "httpStatusCode": 200}	d1aa9b5c-86d3-4778-a092-9dcb69c13361	\N	{}
55d13653-be3c-461b-a071-eaad9dea7690	campuses	pomona/7	\N	2025-02-09 18:10:40.018555+00	2025-02-09 18:10:40.018555+00	2025-02-09 18:10:40.018555+00	{"eTag": "\\"fb7ebde4cd7c07bf6aa8725accd41a90\\"", "size": 143740, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.017Z", "contentLength": 143740, "httpStatusCode": 200}	642afb0c-d6cb-4d93-9f76-47d4b07fff35	\N	{}
65bdce87-cbca-4c14-8ea9-94612800f01f	campuses	pomona/8	\N	2025-02-09 18:10:40.024453+00	2025-02-09 18:10:40.024453+00	2025-02-09 18:10:40.024453+00	{"eTag": "\\"f23b2cd66ded9fc0852887f3a5818803\\"", "size": 282514, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.022Z", "contentLength": 282514, "httpStatusCode": 200}	e95de4a1-f965-47c5-845b-442f107a1cbd	\N	{}
830fd131-b98e-473f-ae7e-d5b4b73b123a	campuses	pomona/4	\N	2025-02-09 18:10:40.029733+00	2025-02-09 18:10:40.029733+00	2025-02-09 18:10:40.029733+00	{"eTag": "\\"b5e0847671cc5c0fc8589f9188047d25\\"", "size": 148238, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.028Z", "contentLength": 148238, "httpStatusCode": 200}	fef70ec8-2713-4fae-b490-cd10807f5685	\N	{}
72a5168a-2a61-4453-883f-326dfa9fcb4e	campuses	pomona/5	\N	2025-02-09 18:10:40.038616+00	2025-02-09 18:10:40.038616+00	2025-02-09 18:10:40.038616+00	{"eTag": "\\"6c541f99ad789cd15a530277fec14e70\\"", "size": 1074241, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.034Z", "contentLength": 1074241, "httpStatusCode": 200}	5275a061-af90-47aa-84ce-0a86f1df88ce	\N	{}
641dedac-79e4-4099-9450-653537b59c69	campuses	pomona/9	\N	2025-02-09 18:10:40.046991+00	2025-02-09 18:10:40.046991+00	2025-02-09 18:10:40.046991+00	{"eTag": "\\"7110fde42f788daa6f98051f2deb26bf\\"", "size": 37321, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.046Z", "contentLength": 37321, "httpStatusCode": 200}	f1abc644-dbb3-4768-84ae-489f09f95c5f	\N	{}
fc11ca8c-3f57-4480-8d96-d9f4c1b373ca	campuses	pomona/2	\N	2025-02-09 18:10:40.055133+00	2025-02-09 18:10:40.055133+00	2025-02-09 18:10:40.055133+00	{"eTag": "\\"6bc4e6932a94d2d23171e91af43ed227\\"", "size": 86127, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.053Z", "contentLength": 86127, "httpStatusCode": 200}	2d377161-35e2-4d64-ab28-6a0c4605cf47	\N	{}
cd2d22b4-08ba-4b7c-8dbe-99e9724ae8a3	campuses	pomona/3	\N	2025-02-09 18:10:40.0651+00	2025-02-09 18:10:40.0651+00	2025-02-09 18:10:40.0651+00	{"eTag": "\\"7a13c327a1ce0786f6f7a49ade11a1f8\\"", "size": 293789, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.063Z", "contentLength": 293789, "httpStatusCode": 200}	8d86fff4-5ac5-46e1-bab0-1a18a2ea258b	\N	{}
550bc1c4-8637-43ef-9469-49be3d233a44	campuses	albany/0	\N	2025-02-09 18:10:40.073109+00	2025-02-09 18:10:40.073109+00	2025-02-09 18:10:40.073109+00	{"eTag": "\\"0a46260fe650b09b68e7bbfd34b66f37\\"", "size": 332755, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.071Z", "contentLength": 332755, "httpStatusCode": 200}	c57bc439-11e2-4257-b150-2fc9f6cf0d55	\N	{}
dcd55c4d-3b81-480b-8420-46d0d7a04bde	campuses	albany/1	\N	2025-02-09 18:10:40.080934+00	2025-02-09 18:10:40.080934+00	2025-02-09 18:10:40.080934+00	{"eTag": "\\"8680a0ec138059f243d6fe9c7238b3c6\\"", "size": 549866, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.078Z", "contentLength": 549866, "httpStatusCode": 200}	3f834929-34ab-468f-bd50-b1c394603a1d	\N	{}
e8d7bc5c-8482-43cb-b6d5-f6918608069a	campuses	albany/6	\N	2025-02-09 18:10:40.087095+00	2025-02-09 18:10:40.087095+00	2025-02-09 18:10:40.087095+00	{"eTag": "\\"6db9e8c3a3fc8f33c50be1796076ea2f\\"", "size": 31111, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.086Z", "contentLength": 31111, "httpStatusCode": 200}	19a5882c-2c7c-41ff-a792-f62e8e9610b4	\N	{}
b18691f7-9f57-4a6d-8b1f-6ff9ae3498be	campuses	albany/7	\N	2025-02-09 18:10:40.092484+00	2025-02-09 18:10:40.092484+00	2025-02-09 18:10:40.092484+00	{"eTag": "\\"12412e38cb0ab45b2515d7e3f2859dd9\\"", "size": 79621, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.091Z", "contentLength": 79621, "httpStatusCode": 200}	fe1fd4fe-7bc7-4903-9a59-28f809b7c388	\N	{}
06512eb4-a32e-4659-96a2-31a8aa82a99c	campuses	albany/8	\N	2025-02-09 18:10:40.099359+00	2025-02-09 18:10:40.099359+00	2025-02-09 18:10:40.099359+00	{"eTag": "\\"1691c314ccc086795a98daec5662b1ee\\"", "size": 70054, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.098Z", "contentLength": 70054, "httpStatusCode": 200}	16b64e62-dc2d-4558-b6cf-14c825c8f164	\N	{}
af3f4ce0-204c-4486-9fbb-ed117dac2dd1	campuses	albany/4	\N	2025-02-09 18:10:40.108283+00	2025-02-09 18:10:40.108283+00	2025-02-09 18:10:40.108283+00	{"eTag": "\\"806929ed56b490eefc4e660358451f8c\\"", "size": 482623, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.106Z", "contentLength": 482623, "httpStatusCode": 200}	45bea77d-122a-4e0d-8900-7ecdf00a3e66	\N	{}
73d42db3-edfd-4c90-b777-fbf0c889d22c	campuses	albany/5	\N	2025-02-09 18:10:40.114398+00	2025-02-09 18:10:40.114398+00	2025-02-09 18:10:40.114398+00	{"eTag": "\\"3a845acbfac9e1604000d17a90a67c51\\"", "size": 30848, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.113Z", "contentLength": 30848, "httpStatusCode": 200}	f363b473-110e-4ebf-8638-f6ffd8678eb9	\N	{}
c18fb8f8-403f-4685-a7c8-766485b23997	campuses	albany/2	\N	2025-02-09 18:10:40.121475+00	2025-02-09 18:10:40.121475+00	2025-02-09 18:10:40.121475+00	{"eTag": "\\"303d604ba1860903b4ec222929ab4a88\\"", "size": 283371, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.119Z", "contentLength": 283371, "httpStatusCode": 200}	d9d41106-5ee1-40d0-a038-31bebfd53135	\N	{}
7a777b09-956f-46e7-8056-c9f446ce6ae8	campuses	albany/3	\N	2025-02-09 18:10:40.127311+00	2025-02-09 18:10:40.127311+00	2025-02-09 18:10:40.127311+00	{"eTag": "\\"49133f09b7bf51467ee48bc67cb9cc23\\"", "size": 84531, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.126Z", "contentLength": 84531, "httpStatusCode": 200}	879b0a37-a939-4e25-9cc8-730d3cb94b4c	\N	{}
82db58cd-6dc7-497e-b41f-60a065aa5d81	campuses	emory/0	\N	2025-02-09 18:10:40.136214+00	2025-02-09 18:10:40.136214+00	2025-02-09 18:10:40.136214+00	{"eTag": "\\"1ce0ca76b5f3561bff33c92a788b1622\\"", "size": 790768, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.133Z", "contentLength": 790768, "httpStatusCode": 200}	ce66b952-db48-48fe-b1cb-f5190e472594	\N	{}
e7588c21-f937-4c44-86d6-4c3b8968d101	campuses	emory/1	\N	2025-02-09 18:10:40.148507+00	2025-02-09 18:10:40.148507+00	2025-02-09 18:10:40.148507+00	{"eTag": "\\"2c3a22efa4a9b8ce4ec4b65dd81ace90\\"", "size": 1570770, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.142Z", "contentLength": 1570770, "httpStatusCode": 200}	7d5560ae-690e-412d-820f-73775f91c238	\N	{}
84191642-8cea-4e51-87eb-927e8cd02e2c	campuses	emory/6	\N	2025-02-09 18:10:40.166838+00	2025-02-09 18:10:40.166838+00	2025-02-09 18:10:40.166838+00	{"eTag": "\\"710d56185f35ea563c6a122e3879e905\\"", "size": 1441496, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.159Z", "contentLength": 1441496, "httpStatusCode": 200}	ffdf3eae-e1d6-4cc6-9a8a-78a9dc04fb33	\N	{}
610c9fcd-77b3-46fc-8278-9be6c75eb71d	campuses	emory/7	\N	2025-02-09 18:10:40.178788+00	2025-02-09 18:10:40.178788+00	2025-02-09 18:10:40.178788+00	{"eTag": "\\"6c5efcbe56bc890a2597b569629b6d17\\"", "size": 265641, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.176Z", "contentLength": 265641, "httpStatusCode": 200}	293aaaa2-0699-441c-a46c-475ea4d4e521	\N	{}
b01ffae0-f5f4-414d-b228-1cdd01d7be09	campuses	emory/8	\N	2025-02-09 18:10:40.188589+00	2025-02-09 18:10:40.188589+00	2025-02-09 18:10:40.188589+00	{"eTag": "\\"5466a34188c781118529f236631c0c06\\"", "size": 238579, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.186Z", "contentLength": 238579, "httpStatusCode": 200}	777cd9ca-1026-4ec1-8441-464e351691ec	\N	{}
9d31e826-3964-4f13-a189-71d42b7ef1d3	campuses	emory/4	\N	2025-02-09 18:10:40.198624+00	2025-02-09 18:10:40.198624+00	2025-02-09 18:10:40.198624+00	{"eTag": "\\"b85dfe4037584f3483d339fc77821b5b\\"", "size": 426992, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.196Z", "contentLength": 426992, "httpStatusCode": 200}	785ce94b-34cf-4fb8-89d2-5990848d620f	\N	{}
73a6f3e0-c259-4ea9-bb9f-e0baf67a32e5	campuses	emory/5	\N	2025-02-09 18:10:40.206665+00	2025-02-09 18:10:40.206665+00	2025-02-09 18:10:40.206665+00	{"eTag": "\\"d00235c0ccb1d78df2b4e94c120cb6f8\\"", "size": 130676, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.205Z", "contentLength": 130676, "httpStatusCode": 200}	bc4f918c-f01d-4b74-a34e-2c18cb662da4	\N	{}
ca0e28e5-17b4-4630-92a3-3183f5a07e92	campuses	emory/9	\N	2025-02-09 18:10:40.214349+00	2025-02-09 18:10:40.214349+00	2025-02-09 18:10:40.214349+00	{"eTag": "\\"0aeb80fe217060c0c642265c789ee6d3\\"", "size": 111951, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.213Z", "contentLength": 111951, "httpStatusCode": 200}	4dd71ead-229c-40dd-aa6c-5444e2854071	\N	{}
6c281cd1-5596-4466-b455-9bce2fd8ef6a	campuses	emory/2	\N	2025-02-09 18:10:40.222911+00	2025-02-09 18:10:40.222911+00	2025-02-09 18:10:40.222911+00	{"eTag": "\\"74ea778c3f0ad1c28677cd5eb542c897\\"", "size": 115709, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.221Z", "contentLength": 115709, "httpStatusCode": 200}	36428789-4cb4-4f9a-989a-ae937feaf562	\N	{}
03f8af41-834f-43cb-8a52-b53e70ab7bb3	campuses	emory/3	\N	2025-02-09 18:10:40.231515+00	2025-02-09 18:10:40.231515+00	2025-02-09 18:10:40.231515+00	{"eTag": "\\"e03f65e9faa959974cb5c76e8c0da801\\"", "size": 245511, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.229Z", "contentLength": 245511, "httpStatusCode": 200}	154197bf-78ab-4633-8e4d-8ea9e3edf99d	\N	{}
909063fc-52b1-4cac-89f8-fee0780053b6	campuses	jmu/0	\N	2025-02-09 18:10:40.239657+00	2025-02-09 18:10:40.239657+00	2025-02-09 18:10:40.239657+00	{"eTag": "\\"56dca717e8ef3c4e1d2fbfa3e302708c\\"", "size": 297148, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.237Z", "contentLength": 297148, "httpStatusCode": 200}	e738bc0d-4528-40bc-baed-ea2bb3146946	\N	{}
539be0dc-0f6c-45d7-9de4-ea77b63af1be	campuses	jmu/1	\N	2025-02-09 18:10:40.247855+00	2025-02-09 18:10:40.247855+00	2025-02-09 18:10:40.247855+00	{"eTag": "\\"d4dcc68aab081289956057e29cca4f89\\"", "size": 373700, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.245Z", "contentLength": 373700, "httpStatusCode": 200}	8892d2b5-a5e3-4ffc-973d-231157a30156	\N	{}
db7e0f8b-37cb-491f-8c59-2750e30f5154	campuses	jmu/6	\N	2025-02-09 18:10:40.256024+00	2025-02-09 18:10:40.256024+00	2025-02-09 18:10:40.256024+00	{"eTag": "\\"83f314a0407d0bfa8b39b5c0cabf173c\\"", "size": 65677, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.253Z", "contentLength": 65677, "httpStatusCode": 200}	e894de7e-ec1d-4569-bd84-a321c93c64f2	\N	{}
18a9f23c-4f70-45a5-9ddc-7c5d2c7fd62b	campuses	jmu/4	\N	2025-02-09 18:10:40.263954+00	2025-02-09 18:10:40.263954+00	2025-02-09 18:10:40.263954+00	{"eTag": "\\"9b1164afe2a15edf4db3738f8092f0d3\\"", "size": 138149, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.262Z", "contentLength": 138149, "httpStatusCode": 200}	b3624ada-98b8-4fa9-9ff6-8c6dcf544368	\N	{}
b165a2ae-6591-4e95-8c49-24404c5c6baa	campuses	jmu/2	\N	2025-02-09 18:10:40.271102+00	2025-02-09 18:10:40.271102+00	2025-02-09 18:10:40.271102+00	{"eTag": "\\"bd397a2d41b8a7dcebb7c1c13f0bcd16\\"", "size": 110795, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.269Z", "contentLength": 110795, "httpStatusCode": 200}	fa6a082b-312b-4ce7-bb87-df2d9587208a	\N	{}
aada5c48-05af-4d5e-90ff-dc7e7f7df2cb	campuses	jmu/5	\N	2025-02-09 18:10:40.285206+00	2025-02-09 18:10:40.285206+00	2025-02-09 18:10:40.285206+00	{"eTag": "\\"c7c29bf845b4486a635d8257ee6cbe8e\\"", "size": 1566681, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.279Z", "contentLength": 1566681, "httpStatusCode": 200}	a1a7bdb6-0181-44d8-8942-1d639bf67450	\N	{}
7b4e2295-1654-425a-ac5a-a91d6fc34b91	campuses	jmu/3	\N	2025-02-09 18:10:40.294651+00	2025-02-09 18:10:40.294651+00	2025-02-09 18:10:40.294651+00	{"eTag": "\\"438da1df2ece89b9f1be2ce404ccb492\\"", "size": 202006, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.292Z", "contentLength": 202006, "httpStatusCode": 200}	9fac057d-7104-4049-8bd9-2a8b8e09a381	\N	{}
438fd241-bfd4-4ad0-ad43-7696a27c06c3	campuses	scranton/0	\N	2025-02-09 18:10:40.302323+00	2025-02-09 18:10:40.302323+00	2025-02-09 18:10:40.302323+00	{"eTag": "\\"34958eaffe38ddb5be097aa41cefff1b\\"", "size": 75542, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.301Z", "contentLength": 75542, "httpStatusCode": 200}	041a779e-680e-47e8-903d-6df56243218b	\N	{}
73e56e17-8f0c-4ae1-aa40-c6a0acfb9dac	campuses	scranton/1	\N	2025-02-09 18:10:40.319757+00	2025-02-09 18:10:40.319757+00	2025-02-09 18:10:40.319757+00	{"eTag": "\\"20663fc77e1534557b92abade0a945f8\\"", "size": 190814, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.317Z", "contentLength": 190814, "httpStatusCode": 200}	305fd290-ae13-40d2-a516-6e34913607d6	\N	{}
a8de2e44-2463-4f08-bbc3-67feb052e6e0	campuses	scranton/6	\N	2025-02-09 18:10:40.328946+00	2025-02-09 18:10:40.328946+00	2025-02-09 18:10:40.328946+00	{"eTag": "\\"8a133f67359e1459de822bfa3204294d\\"", "size": 165845, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.327Z", "contentLength": 165845, "httpStatusCode": 200}	b022c49c-0f4b-4060-945c-a21935ed87e2	\N	{}
5c44c069-1e6d-4382-a66e-aee96814dd6b	campuses	scranton/7	\N	2025-02-09 18:10:40.336705+00	2025-02-09 18:10:40.336705+00	2025-02-09 18:10:40.336705+00	{"eTag": "\\"38dac23228fdfef21d92781a1c6ef127\\"", "size": 256062, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.335Z", "contentLength": 256062, "httpStatusCode": 200}	295c9955-c5ce-4db5-a89f-38ef62d6b06c	\N	{}
9c105e45-6a82-4149-95f7-7bb43a4b4acf	campuses	scranton/8	\N	2025-02-09 18:10:40.34421+00	2025-02-09 18:10:40.34421+00	2025-02-09 18:10:40.34421+00	{"eTag": "\\"bab16ca2eb619e65d226399e2124bf63\\"", "size": 73039, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.343Z", "contentLength": 73039, "httpStatusCode": 200}	9c7989e6-b82a-4ccf-94c2-41eac8b69012	\N	{}
bce885e5-fce6-4fc9-9c79-ff567f04d2a2	campuses	scranton/4	\N	2025-02-09 18:10:40.357699+00	2025-02-09 18:10:40.357699+00	2025-02-09 18:10:40.357699+00	{"eTag": "\\"53a7f07edc12002f0fc84e623fe73a41\\"", "size": 1471657, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.352Z", "contentLength": 1471657, "httpStatusCode": 200}	0fc4a917-3941-4dd7-9bbd-4ee3902c09ac	\N	{}
63906eb2-a06f-41c2-a6a9-9f2520a71bfc	campuses	scranton/5	\N	2025-02-09 18:10:40.369468+00	2025-02-09 18:10:40.369468+00	2025-02-09 18:10:40.369468+00	{"eTag": "\\"cd1fd92e1b44ec79c5bccfb3db511c4c\\"", "size": 550319, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.366Z", "contentLength": 550319, "httpStatusCode": 200}	d59ad1b8-fbf1-4ccb-a071-4f35d1d04c84	\N	{}
944e0976-2773-4011-adcf-63b43b5807c7	campuses	scranton/9	\N	2025-02-09 18:10:40.379078+00	2025-02-09 18:10:40.379078+00	2025-02-09 18:10:40.379078+00	{"eTag": "\\"83e2843554d7ec2160441a034539b531\\"", "size": 282523, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.377Z", "contentLength": 282523, "httpStatusCode": 200}	7ed965c5-54e3-4b0b-adfc-392a6d9c864b	\N	{}
1e3a11d1-9489-495c-8385-b703b169c81b	campuses	scranton/2	\N	2025-02-09 18:10:40.388447+00	2025-02-09 18:10:40.388447+00	2025-02-09 18:10:40.388447+00	{"eTag": "\\"e59769638cd5bc045af29085d36a6645\\"", "size": 172344, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.386Z", "contentLength": 172344, "httpStatusCode": 200}	fafaf0c9-d6aa-4ee2-9477-b062a1c5d4ea	\N	{}
f4f958c3-d287-4626-8971-977455285ac6	campuses	scranton/3	\N	2025-02-09 18:10:40.406846+00	2025-02-09 18:10:40.406846+00	2025-02-09 18:10:40.406846+00	{"eTag": "\\"14c6e875b06ff80ee284667c808332a1\\"", "size": 2710684, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.397Z", "contentLength": 2710684, "httpStatusCode": 200}	73e73b9b-fc54-4b7e-9aff-3f8ad0b56237	\N	{}
5cfd7229-2367-41ff-ba89-79d08ab6c7df	campuses	daltonstate/9	\N	2025-02-09 18:10:40.435127+00	2025-02-09 18:10:40.435127+00	2025-02-09 18:10:40.435127+00	{"eTag": "\\"cb83d2099deb2704ae65a9b6f0736b05\\"", "size": 2618376, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.417Z", "contentLength": 2618376, "httpStatusCode": 200}	0c932b76-b4ee-4c4a-ba60-48e1b107f5df	\N	{}
143754a7-2dd9-4182-9734-25dcd7160dd0	campuses	daltonstate/4	\N	2025-02-09 18:10:40.446276+00	2025-02-09 18:10:40.446276+00	2025-02-09 18:10:40.446276+00	{"eTag": "\\"7b434e16669d8b6d3d84252e6976f586\\"", "size": 10834, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.445Z", "contentLength": 10834, "httpStatusCode": 200}	b8c912a1-22c8-4683-ae09-aac8486523dc	\N	{}
987e39b6-e5ac-4f83-9b31-263f10b07fe6	campuses	minotstateu/1	\N	2025-02-09 18:10:40.456217+00	2025-02-09 18:10:40.456217+00	2025-02-09 18:10:40.456217+00	{"eTag": "\\"a6bdb2791d649924181338bd30f389a4\\"", "size": 346903, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.454Z", "contentLength": 346903, "httpStatusCode": 200}	d0190a39-7514-4944-82fe-0b89943ebd4a	\N	{}
4957cbc6-81dc-4b8f-a9c0-712165c26d13	campuses	minotstateu/6	\N	2025-02-09 18:10:40.465791+00	2025-02-09 18:10:40.465791+00	2025-02-09 18:10:40.465791+00	{"eTag": "\\"58fc2da98fcd05565b04949d761309d5\\"", "size": 260442, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.464Z", "contentLength": 260442, "httpStatusCode": 200}	12887099-1488-4a26-a867-a16d853e599d	\N	{}
5e878e4a-646c-44b3-b3a1-fd6ebb7f0419	campuses	minotstateu/7	\N	2025-02-09 18:10:40.473334+00	2025-02-09 18:10:40.473334+00	2025-02-09 18:10:40.473334+00	{"eTag": "\\"84fb76098f59a9c2ba745e764fc99ab7\\"", "size": 47809, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.472Z", "contentLength": 47809, "httpStatusCode": 200}	580d213a-6c44-46a9-8489-3e8f78206023	\N	{}
98d13fd1-dd5d-4f24-9234-0e9aca6d20a9	campuses	minotstateu/2	\N	2025-02-09 18:10:40.482158+00	2025-02-09 18:10:40.482158+00	2025-02-09 18:10:40.482158+00	{"eTag": "\\"38126bfc0160768f30fbc3e1aa56a3bc\\"", "size": 62470, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.481Z", "contentLength": 62470, "httpStatusCode": 200}	51046d5b-339b-4689-92b2-fb8fb2e46827	\N	{}
08375403-5530-4e7f-8493-05005443e96b	campuses	minotstateu/8	\N	2025-02-09 18:10:40.490448+00	2025-02-09 18:10:40.490448+00	2025-02-09 18:10:40.490448+00	{"eTag": "\\"df1ee2788ab94e3367ce398d99c0547a\\"", "size": 274561, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.488Z", "contentLength": 274561, "httpStatusCode": 200}	70115bc4-06b2-479a-b788-b9ac6d2e2734	\N	{}
a993b56f-05f3-4953-a0ea-88972809afa2	campuses	minotstateu/4	\N	2025-02-09 18:10:40.498904+00	2025-02-09 18:10:40.498904+00	2025-02-09 18:10:40.498904+00	{"eTag": "\\"b9e83a8cf661c3a2568d0229f5e2cb36\\"", "size": 93935, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.496Z", "contentLength": 93935, "httpStatusCode": 200}	2cc5a67f-71f1-46f5-b857-37eb29ca3dc9	\N	{}
605f3b7f-b1b3-4c82-bbf3-ac0f05300d1c	campuses	minotstateu/5	\N	2025-02-09 18:10:40.509866+00	2025-02-09 18:10:40.509866+00	2025-02-09 18:10:40.509866+00	{"eTag": "\\"7b375f7078aa42d3f02273b2d6547b3c\\"", "size": 91724, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.507Z", "contentLength": 91724, "httpStatusCode": 200}	0deb1018-6256-4d3b-92ce-72454d8c444a	\N	{}
b2e6a1fb-e785-4e3d-936a-2754014ce892	campuses	minotstateu/9	\N	2025-02-09 18:10:40.543106+00	2025-02-09 18:10:40.543106+00	2025-02-09 18:10:40.543106+00	{"eTag": "\\"41ab528243ebac6e0f19513ead24c814\\"", "size": 5411141, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.521Z", "contentLength": 5411141, "httpStatusCode": 200}	807cc833-7f58-4a4e-ba85-07ac4004118b	\N	{}
50e5a826-2822-4182-9e57-3c65d2a18de7	campuses	minotstateu/0	\N	2025-02-09 18:10:40.560769+00	2025-02-09 18:10:40.560769+00	2025-02-09 18:10:40.560769+00	{"eTag": "\\"355d6ee97ee85209b9ae69905efd2b67\\"", "size": 296031, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.558Z", "contentLength": 296031, "httpStatusCode": 200}	6896f373-27e1-4a49-9fe8-05f1db7eb09d	\N	{}
5bc7dd68-9c86-4ebc-a30a-85879d1abcc0	campuses	minotstateu/3	\N	2025-02-09 18:10:40.569769+00	2025-02-09 18:10:40.569769+00	2025-02-09 18:10:40.569769+00	{"eTag": "\\"d99f443fe7c4d048305505d86bcaa142\\"", "size": 30244, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.568Z", "contentLength": 30244, "httpStatusCode": 200}	112e2ef0-d0c5-4d69-96f6-696092b7e18a	\N	{}
a5d76570-e695-4e99-a44f-c519a64af539	campuses	cambridgecollege/0	\N	2025-02-09 18:10:40.579303+00	2025-02-09 18:10:40.579303+00	2025-02-09 18:10:40.579303+00	{"eTag": "\\"facef8bb5f4fee9c0d5edf6077f65aba\\"", "size": 603686, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.576Z", "contentLength": 603686, "httpStatusCode": 200}	c4c95ffe-d6a0-4832-880f-bf0243e4fe15	\N	{}
61c10993-f5e4-4a8d-8402-cb761232256f	campuses	cambridgecollege/5	\N	2025-02-09 18:10:40.592434+00	2025-02-09 18:10:40.592434+00	2025-02-09 18:10:40.592434+00	{"eTag": "\\"6806932d8c58a11dfb9238229c47f82c\\"", "size": 386, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.591Z", "contentLength": 386, "httpStatusCode": 200}	1b816a05-9f78-4632-9e03-18f9401dfa6e	\N	{}
ea346f4a-4c72-4f44-8746-614d6388dfdc	campuses	cambridgecollege/9	\N	2025-02-09 18:10:40.601017+00	2025-02-09 18:10:40.601017+00	2025-02-09 18:10:40.601017+00	{"eTag": "\\"115e0e5530639023e3021963f281c632\\"", "size": 7249, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.600Z", "contentLength": 7249, "httpStatusCode": 200}	991aea6e-5b60-4e24-8be0-dfdb3c8d47a1	\N	{}
8bbd7e51-0767-4960-9d0e-109e81a8e6d4	campuses	cambridgecollege/4	\N	2025-02-09 18:10:40.608162+00	2025-02-09 18:10:40.608162+00	2025-02-09 18:10:40.608162+00	{"eTag": "\\"f68e60b5b51efa8f37ec66667e4869df\\"", "size": 386, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.607Z", "contentLength": 386, "httpStatusCode": 200}	f465a278-6d26-4b22-ba9d-589b88b6d750	\N	{}
852d4da8-3c49-412e-9d22-9047b93c1466	campuses	cambridgecollege/1	\N	2025-02-09 18:10:40.615175+00	2025-02-09 18:10:40.615175+00	2025-02-09 18:10:40.615175+00	{"eTag": "\\"7a0ccbd11bfe80b32c41027861640363\\"", "size": 61592, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.614Z", "contentLength": 61592, "httpStatusCode": 200}	b80ff80f-6fe4-47c6-ad61-b10ee55fece0	\N	{}
875541af-bac9-4192-acee-078f7555e5a1	campuses	cambridgecollege/6	\N	2025-02-09 18:10:40.622492+00	2025-02-09 18:10:40.622492+00	2025-02-09 18:10:40.622492+00	{"eTag": "\\"922c3e235cf4106c2e7e436834bac45c\\"", "size": 51951, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.621Z", "contentLength": 51951, "httpStatusCode": 200}	21901e30-fefd-4ddb-a345-3a69a2ffd186	\N	{}
fb7bec59-b973-468c-99a8-a605a6196fff	campuses	cambridgecollege/7	\N	2025-02-09 18:10:40.630018+00	2025-02-09 18:10:40.630018+00	2025-02-09 18:10:40.630018+00	{"eTag": "\\"2d2c8adb62eb60d0ecb6ca7388469bf0\\"", "size": 26130, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.629Z", "contentLength": 26130, "httpStatusCode": 200}	12cac28b-3917-4d84-b01b-6b9bc8dcedb9	\N	{}
ae474416-c350-4607-9df5-10a12d29b76d	campuses	cambridgecollege/8	\N	2025-02-09 18:10:40.63728+00	2025-02-09 18:10:40.63728+00	2025-02-09 18:10:40.63728+00	{"eTag": "\\"2f1976ace7ac4ac297f08a158aee13da\\"", "size": 71498, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.636Z", "contentLength": 71498, "httpStatusCode": 200}	1be90e9c-106c-493d-a021-d8b41dc1c6d2	\N	{}
b58b8b4d-dc9d-40c3-a966-77875a3cb586	campuses	cambridgecollege/2	\N	2025-02-09 18:10:40.643981+00	2025-02-09 18:10:40.643981+00	2025-02-09 18:10:40.643981+00	{"eTag": "\\"0bf3c7a61cb0820547927c049ae248b3\\"", "size": 38693, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.642Z", "contentLength": 38693, "httpStatusCode": 200}	0b3d8c6e-aa8b-49c4-ab5f-a1d6b568e462	\N	{}
5547a995-b1c8-408a-b648-f0d6bc61adae	campuses	cambridgecollege/3	\N	2025-02-09 18:10:40.651651+00	2025-02-09 18:10:40.651651+00	2025-02-09 18:10:40.651651+00	{"eTag": "\\"8a60a95109e6493c118bde0e94a4ffeb\\"", "size": 159164, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.650Z", "contentLength": 159164, "httpStatusCode": 200}	1ed0748c-b9c9-4b21-9ec2-c598e5af2412	\N	{}
f3156d4c-c61d-44d0-9e6e-9baa72259ca2	campuses	creighton/0	\N	2025-02-09 18:10:40.659412+00	2025-02-09 18:10:40.659412+00	2025-02-09 18:10:40.659412+00	{"eTag": "\\"3eb74d231705ed41bea244922e59d891\\"", "size": 128425, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.658Z", "contentLength": 128425, "httpStatusCode": 200}	a207ed4a-4f08-4a75-b295-28debc51bad5	\N	{}
80ba894e-af16-4cae-b71b-5308cb9a581f	campuses	creighton/1	\N	2025-02-09 18:10:40.667086+00	2025-02-09 18:10:40.667086+00	2025-02-09 18:10:40.667086+00	{"eTag": "\\"df63b9acef8b200ee1f8378a2865ce3a\\"", "size": 120264, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.665Z", "contentLength": 120264, "httpStatusCode": 200}	3b9ce74a-548d-4033-b229-48654905e38a	\N	{}
9f098fbe-e80b-413e-86e6-3f69c9a789a7	campuses	creighton/6	\N	2025-02-09 18:10:40.674662+00	2025-02-09 18:10:40.674662+00	2025-02-09 18:10:40.674662+00	{"eTag": "\\"966e9094c1715e6758b653a4218ee1e2\\"", "size": 201344, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.673Z", "contentLength": 201344, "httpStatusCode": 200}	71188df4-bf07-40fd-b1e3-81c0513e22c2	\N	{}
d78a1837-df13-4b17-ad68-734c695a20cd	campuses	creighton/7	\N	2025-02-09 18:10:40.681999+00	2025-02-09 18:10:40.681999+00	2025-02-09 18:10:40.681999+00	{"eTag": "\\"d7e22739304551fb1409cb7f38e598d8\\"", "size": 82116, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.680Z", "contentLength": 82116, "httpStatusCode": 200}	6d9288ff-8e47-425b-837d-ddc616a40f9a	\N	{}
e7dd462d-4813-4569-afc7-ba19e0654688	campuses	creighton/8	\N	2025-02-09 18:10:40.690549+00	2025-02-09 18:10:40.690549+00	2025-02-09 18:10:40.690549+00	{"eTag": "\\"8919074105073d3a1675cf2d36856b7e\\"", "size": 309915, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.688Z", "contentLength": 309915, "httpStatusCode": 200}	06c50178-61eb-448c-8265-3c9e57d75327	\N	{}
2310ecca-338f-4064-a871-e28bfc313173	campuses	creighton/4	\N	2025-02-09 18:10:40.699542+00	2025-02-09 18:10:40.699542+00	2025-02-09 18:10:40.699542+00	{"eTag": "\\"e7fe227c269e143be7e0a0281ab10af5\\"", "size": 450892, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.697Z", "contentLength": 450892, "httpStatusCode": 200}	e4ce6c6b-0fa0-4e91-82ed-6ae99b277288	\N	{}
2ed90f11-9766-4820-8886-82004f1ec07d	campuses	creighton/5	\N	2025-02-09 18:10:40.70741+00	2025-02-09 18:10:40.70741+00	2025-02-09 18:10:40.70741+00	{"eTag": "\\"10a72acf7e87c5c7e1f48985506bc26c\\"", "size": 274077, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.705Z", "contentLength": 274077, "httpStatusCode": 200}	41865e71-b461-4c3b-8a3d-014bac5076a0	\N	{}
ed5da15a-706d-4dd3-b7ad-d8dd088f77ee	campuses	creighton/9	\N	2025-02-09 18:10:40.717249+00	2025-02-09 18:10:40.717249+00	2025-02-09 18:10:40.717249+00	{"eTag": "\\"7f5d268b7fc234a884b832f7366aaae0\\"", "size": 64311, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.715Z", "contentLength": 64311, "httpStatusCode": 200}	0de39524-c44c-4517-bc95-ff1648b81b75	\N	{}
9e527920-ebb5-4df2-b3d4-f05adc2ab49b	campuses	creighton/2	\N	2025-02-09 18:10:40.731148+00	2025-02-09 18:10:40.731148+00	2025-02-09 18:10:40.731148+00	{"eTag": "\\"8e0f2e23006e702a5a8a06efd8128af0\\"", "size": 95441, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.729Z", "contentLength": 95441, "httpStatusCode": 200}	3e77f754-e576-426e-bcd9-879727d818d5	\N	{}
c3b6b386-d8be-412d-a070-61085025f48b	campuses	creighton/3	\N	2025-02-09 18:10:40.74127+00	2025-02-09 18:10:40.74127+00	2025-02-09 18:10:40.74127+00	{"eTag": "\\"a5263e988abbd6292022d5fb2c0ba8f5\\"", "size": 236855, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.739Z", "contentLength": 236855, "httpStatusCode": 200}	b06a546a-9159-4611-8f71-98de7021e450	\N	{}
3ff7761f-90ee-442a-bcca-e07c421be5fc	campuses	hmc/0	\N	2025-02-09 18:10:40.749926+00	2025-02-09 18:10:40.749926+00	2025-02-09 18:10:40.749926+00	{"eTag": "\\"0b55154c09ff59d4727be0cfa94c0a78\\"", "size": 98520, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.748Z", "contentLength": 98520, "httpStatusCode": 200}	1e0f2cd7-057a-4acd-8e21-5ed65b819b3e	\N	{}
8f7f1fb8-5d7a-4ff0-87d0-a7ffe72a6820	campuses	hmc/1	\N	2025-02-09 18:10:40.758613+00	2025-02-09 18:10:40.758613+00	2025-02-09 18:10:40.758613+00	{"eTag": "\\"fc448e9ecfa1106536fd98a66923a0a3\\"", "size": 236666, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.756Z", "contentLength": 236666, "httpStatusCode": 200}	dc1ffeba-b3fb-41d3-9a2e-d88785569435	\N	{}
653ccae2-8d20-4ff4-b391-3e6f832c74d1	campuses	hmc/6	\N	2025-02-09 18:10:40.765612+00	2025-02-09 18:10:40.765612+00	2025-02-09 18:10:40.765612+00	{"eTag": "\\"d199881b13bd4b00ce1db172fe24ee75\\"", "size": 43039, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.764Z", "contentLength": 43039, "httpStatusCode": 200}	63b259d3-863f-4bf8-a6d5-e213379ea9cd	\N	{}
e6723146-79e7-4311-9e07-4847c41f4383	campuses	hmc/7	\N	2025-02-09 18:10:40.773825+00	2025-02-09 18:10:40.773825+00	2025-02-09 18:10:40.773825+00	{"eTag": "\\"5d8632a8df70f9c532683ab7e9dfa6e0\\"", "size": 190186, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.772Z", "contentLength": 190186, "httpStatusCode": 200}	9518ef6d-7a04-46e0-93ad-4126510bc843	\N	{}
f69e1307-af2f-42e3-903c-7393b5f08281	campuses	hmc/8	\N	2025-02-09 18:10:40.782927+00	2025-02-09 18:10:40.782927+00	2025-02-09 18:10:40.782927+00	{"eTag": "\\"826ab93d20f62ac250d3cf8e24e173fb\\"", "size": 404111, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.780Z", "contentLength": 404111, "httpStatusCode": 200}	0b4ef332-f2ca-429e-b9fc-b17b33c50319	\N	{}
579bc1ec-fd41-4e8a-a782-20eba428645a	campuses	hmc/4	\N	2025-02-09 18:10:40.790585+00	2025-02-09 18:10:40.790585+00	2025-02-09 18:10:40.790585+00	{"eTag": "\\"85265bfeff768a6c5076dd34baaaf3f3\\"", "size": 316931, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.788Z", "contentLength": 316931, "httpStatusCode": 200}	86f7520b-e94c-498e-aa12-bca8e5544fda	\N	{}
76e950f8-b1f5-420f-92e2-0e417555712e	campuses	hmc/5	\N	2025-02-09 18:10:40.799855+00	2025-02-09 18:10:40.799855+00	2025-02-09 18:10:40.799855+00	{"eTag": "\\"a2fa4cb93ea193d712c7f949a3672a3f\\"", "size": 108388, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.798Z", "contentLength": 108388, "httpStatusCode": 200}	be6705fb-f511-47a0-b7f8-ea629274e7a7	\N	{}
8c0fea85-58ee-4580-a688-c2f695462103	campuses	hmc/2	\N	2025-02-09 18:10:40.81016+00	2025-02-09 18:10:40.81016+00	2025-02-09 18:10:40.81016+00	{"eTag": "\\"a17bb1a4d6c3774f3b0c7805ce6679e1\\"", "size": 641904, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.807Z", "contentLength": 641904, "httpStatusCode": 200}	4bb3f417-f60e-4dda-8251-796801dc0194	\N	{}
a9be9500-a675-4719-aec1-7be4e636b409	campuses	hmc/3	\N	2025-02-09 18:10:40.818777+00	2025-02-09 18:10:40.818777+00	2025-02-09 18:10:40.818777+00	{"eTag": "\\"8dafa0c1aece3b0bbcbc106fe6b0e23b\\"", "size": 274522, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.816Z", "contentLength": 274522, "httpStatusCode": 200}	bd638502-d34f-44b7-ac24-0f01f9ec43f2	\N	{}
a7569159-0b1b-4629-8e33-7477b51e765e	campuses	byui/0	\N	2025-02-09 18:10:40.830868+00	2025-02-09 18:10:40.830868+00	2025-02-09 18:10:40.830868+00	{"eTag": "\\"af26d6915606b095c0727b269c930d45\\"", "size": 712007, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.826Z", "contentLength": 712007, "httpStatusCode": 200}	9df488e4-bdaa-4e72-86a8-53e5ef6bdcd8	\N	{}
b7905755-487d-4eb3-b5c5-d76dacfc527c	campuses	byui/1	\N	2025-02-09 18:10:40.867484+00	2025-02-09 18:10:40.867484+00	2025-02-09 18:10:40.867484+00	{"eTag": "\\"c663378f07b3210769c3b841c52de540\\"", "size": 4032059, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.852Z", "contentLength": 4032059, "httpStatusCode": 200}	f2579ce2-c2cb-4fe4-87a4-bb15db02e9ec	\N	{}
42b8de74-3bcc-46bf-a5ad-a7164236fca0	campuses	byui/8	\N	2025-02-09 18:10:40.890801+00	2025-02-09 18:10:40.890801+00	2025-02-09 18:10:40.890801+00	{"eTag": "\\"79b70251468643ba6eb4169778dc0e80\\"", "size": 1561072, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.883Z", "contentLength": 1561072, "httpStatusCode": 200}	07898069-7316-4705-9070-2bd2706511ce	\N	{}
96cc8b37-367e-4f83-adeb-62c3a442038b	campuses	byui/9	\N	2025-02-09 18:10:40.898348+00	2025-02-09 18:10:40.898348+00	2025-02-09 18:10:40.898348+00	{"eTag": "\\"c8d9e4eae0b4b1a2cc850105c28e293c\\"", "size": 37554, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.897Z", "contentLength": 37554, "httpStatusCode": 200}	e4234351-ff01-4ee9-ae55-c0c58f08b25c	\N	{}
a7d2e397-7ae4-4f23-b77d-c474743c0cbb	campuses	byui/6	\N	2025-02-09 18:10:40.906581+00	2025-02-09 18:10:40.906581+00	2025-02-09 18:10:40.906581+00	{"eTag": "\\"5818da776064567a26af3fc65e8da19a\\"", "size": 43305, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.905Z", "contentLength": 43305, "httpStatusCode": 200}	9a09fdf4-22bd-4f0c-94de-3afc144d24ab	\N	{}
1381fdb8-36cb-4520-a190-ee223289d3c3	campuses	byui/7	\N	2025-02-09 18:10:40.920297+00	2025-02-09 18:10:40.920297+00	2025-02-09 18:10:40.920297+00	{"eTag": "\\"6a67bb938d2dbad08f0166af706d9054\\"", "size": 302986, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.914Z", "contentLength": 302986, "httpStatusCode": 200}	c31609fe-7801-40e8-abab-f73c25b01911	\N	{}
fa1bc7ec-9cc3-41dd-9f64-ebc7526fc7bd	campuses	byui/4	\N	2025-02-09 18:10:40.949375+00	2025-02-09 18:10:40.949375+00	2025-02-09 18:10:40.949375+00	{"eTag": "\\"b0c5c9ff79522d1611e52dabbb896120\\"", "size": 3986433, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.935Z", "contentLength": 3986433, "httpStatusCode": 200}	8ed116cc-5093-42f7-883f-adba23c2f6d5	\N	{}
1b81a40f-9477-4140-a25c-45a344126c03	campuses	byui/5	\N	2025-02-09 18:10:40.956611+00	2025-02-09 18:10:40.956611+00	2025-02-09 18:10:40.956611+00	{"eTag": "\\"8efe6ffccd3e2cf609805b251a29103c\\"", "size": 41713, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.955Z", "contentLength": 41713, "httpStatusCode": 200}	2f45743b-498c-4cc9-b3b4-6f22c0f22e71	\N	{}
4895a863-c213-46d5-be30-3fd81c91c6df	campuses	byui/2	\N	2025-02-09 18:10:40.964591+00	2025-02-09 18:10:40.964591+00	2025-02-09 18:10:40.964591+00	{"eTag": "\\"74815ea702c081785d4488759b52d453\\"", "size": 420373, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.962Z", "contentLength": 420373, "httpStatusCode": 200}	c0b37222-9577-4d7e-bb79-ed2c5d49d169	\N	{}
3102a923-23de-4f86-ab77-0c52888d52e8	campuses	byui/3	\N	2025-02-09 18:10:40.972621+00	2025-02-09 18:10:40.972621+00	2025-02-09 18:10:40.972621+00	{"eTag": "\\"0db023074232dde608a4da67c2327dd8\\"", "size": 40031, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.971Z", "contentLength": 40031, "httpStatusCode": 200}	722c05fc-ed11-44c8-b3dd-e0c2916c0819	\N	{}
9e7983f2-9503-425c-b34a-743788dea475	campuses	researchcollege/1	\N	2025-02-09 18:10:40.983875+00	2025-02-09 18:10:40.983875+00	2025-02-09 18:10:40.983875+00	{"eTag": "\\"077434589a5bb4b5c621079b2ad56c61\\"", "size": 12763, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.981Z", "contentLength": 12763, "httpStatusCode": 200}	7c0398a6-a228-4d1c-8af8-d8e73942e7c2	\N	{}
effcf564-9ba2-40a4-8c3a-0249d3057166	campuses	researchcollege/0	\N	2025-02-09 18:10:40.991103+00	2025-02-09 18:10:40.991103+00	2025-02-09 18:10:40.991103+00	{"eTag": "\\"5eac0d8c38c607e8d43b2ff4aab919a2\\"", "size": 16072, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.990Z", "contentLength": 16072, "httpStatusCode": 200}	b890c82e-b29c-42a2-960f-faddfb2b756c	\N	{}
3d7e702e-8e02-4e51-8f06-ba2ec740dab1	campuses	researchcollege/8	\N	2025-02-09 18:10:40.997413+00	2025-02-09 18:10:40.997413+00	2025-02-09 18:10:40.997413+00	{"eTag": "\\"aa017fe6ad64f23d2859da854666ba81\\"", "size": 10447, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:40.996Z", "contentLength": 10447, "httpStatusCode": 200}	79cd0e7c-dc0b-40e5-9caa-3e624e6b77d8	\N	{}
a8aece1a-1796-4e4a-b122-1b4f90bfe40c	campuses	researchcollege/6	\N	2025-02-09 18:10:41.004562+00	2025-02-09 18:10:41.004562+00	2025-02-09 18:10:41.004562+00	{"eTag": "\\"8af5b958e3df6cb7d3faa545a7026b34\\"", "size": 123381, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.003Z", "contentLength": 123381, "httpStatusCode": 200}	c5439a5b-4760-4c2f-9bbd-b205add1f0ce	\N	{}
fc01daa4-1abb-46ab-b2da-ccaabb991cc2	campuses	researchcollege/4	\N	2025-02-09 18:10:41.012332+00	2025-02-09 18:10:41.012332+00	2025-02-09 18:10:41.012332+00	{"eTag": "\\"622527cf729db71761fb7e65bfe881f5\\"", "size": 126994, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.011Z", "contentLength": 126994, "httpStatusCode": 200}	3615ec8a-9956-42df-9bdc-e20b7fa4dc0b	\N	{}
04b663d1-7b02-425c-8826-fcd1fbb61350	campuses	researchcollege/9	\N	2025-02-09 18:10:41.019972+00	2025-02-09 18:10:41.019972+00	2025-02-09 18:10:41.019972+00	{"eTag": "\\"704ae8fea41b04ac4fa7d862f3bc9872\\"", "size": 163329, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.018Z", "contentLength": 163329, "httpStatusCode": 200}	18d1e45e-ef1e-4319-93c5-e613386dfa7f	\N	{}
d8d6e322-ec67-4cbe-95b2-6a15cd0d39db	campuses	researchcollege/2	\N	2025-02-09 18:10:41.02608+00	2025-02-09 18:10:41.02608+00	2025-02-09 18:10:41.02608+00	{"eTag": "\\"d176d6f836268d177a74b61ae46fa684\\"", "size": 20098, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.025Z", "contentLength": 20098, "httpStatusCode": 200}	edef345a-bc55-4f66-87f0-2c5954ca21fd	\N	{}
2521d0b3-4cdc-4f44-aafc-bbef17eb95dc	campuses	researchcollege/5	\N	2025-02-09 18:10:41.031459+00	2025-02-09 18:10:41.031459+00	2025-02-09 18:10:41.031459+00	{"eTag": "\\"b5dda662414166b9bfac65070ac669d9\\"", "size": 10785, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.030Z", "contentLength": 10785, "httpStatusCode": 200}	1a2158d9-574f-4a71-9327-287ecca12d37	\N	{}
c9eb87be-3bdf-46d1-9cb9-d85b13327b55	campuses	researchcollege/7	\N	2025-02-09 18:10:41.037598+00	2025-02-09 18:10:41.037598+00	2025-02-09 18:10:41.037598+00	{"eTag": "\\"7518a9530887298ddf6e9a423d42118e\\"", "size": 153867, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.036Z", "contentLength": 153867, "httpStatusCode": 200}	eb909c17-a780-4816-a1ac-524e1596a8a8	\N	{}
4b18b882-5e2a-48d9-8346-b83aca345214	campuses	researchcollege/3	\N	2025-02-09 18:10:41.043101+00	2025-02-09 18:10:41.043101+00	2025-02-09 18:10:41.043101+00	{"eTag": "\\"0eee2f905f640287325965a4d6511d02\\"", "size": 10022, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.042Z", "contentLength": 10022, "httpStatusCode": 200}	55502634-a631-4558-8ba5-c047fd30fc02	\N	{}
bfa1683d-b9dc-4d86-9f4d-ed432dc08b59	campuses	ou/0	\N	2025-02-09 18:10:41.061584+00	2025-02-09 18:10:41.061584+00	2025-02-09 18:10:41.061584+00	{"eTag": "\\"9036f5854a05879579d3692ea4b833e7\\"", "size": 3053429, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.051Z", "contentLength": 3053429, "httpStatusCode": 200}	b2dbe668-ec29-4784-8392-4cb2a4afc006	\N	{}
5bbbe297-f6bd-4e14-b1a1-c20a97329d4e	campuses	ou/1	\N	2025-02-09 18:10:41.089908+00	2025-02-09 18:10:41.089908+00	2025-02-09 18:10:41.089908+00	{"eTag": "\\"8d2097cf98feb2051baee4b4f7d012f3\\"", "size": 2556798, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.071Z", "contentLength": 2556798, "httpStatusCode": 200}	08ec132c-743e-4113-9808-07a1c3e56803	\N	{}
764ef9c5-b6a7-40fe-999b-a65f69b644ea	campuses	ou/6	\N	2025-02-09 18:10:41.098827+00	2025-02-09 18:10:41.098827+00	2025-02-09 18:10:41.098827+00	{"eTag": "\\"761c8602e9bca389cd1f25c5bc26cf94\\"", "size": 100849, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.097Z", "contentLength": 100849, "httpStatusCode": 200}	8c3fe871-fdc2-4280-befa-4ff4da7132c6	\N	{}
761f182e-3131-4e07-bf3c-2e6631d0a1e4	campuses	ou/7	\N	2025-02-09 18:10:41.106834+00	2025-02-09 18:10:41.106834+00	2025-02-09 18:10:41.106834+00	{"eTag": "\\"db5401df3a7dbd43d2d1efce4f15669b\\"", "size": 595978, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.104Z", "contentLength": 595978, "httpStatusCode": 200}	5ad89159-2214-4173-89e5-353b5e3d2008	\N	{}
4690bfb6-5a99-46b8-a079-ddf2a0de5601	campuses	ou/8	\N	2025-02-09 18:10:41.168294+00	2025-02-09 18:10:41.168294+00	2025-02-09 18:10:41.168294+00	{"eTag": "\\"25f7c7c70c5af5538e0ef0115d1aeff3\\"", "size": 10805080, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.126Z", "contentLength": 10805080, "httpStatusCode": 200}	b62ef5ba-b646-4a0e-9f40-131613a6869a	\N	{}
184de4cc-f4e7-4470-b46a-f65c134ddead	campuses	ou/4	\N	2025-02-09 18:10:41.178066+00	2025-02-09 18:10:41.178066+00	2025-02-09 18:10:41.178066+00	{"eTag": "\\"c28d48a497ea36fddbaa968f95cb7a5e\\"", "size": 336627, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.175Z", "contentLength": 336627, "httpStatusCode": 200}	1e26a22d-f9ba-4a29-b834-0b08b892068d	\N	{}
5b33a017-dcae-4fc4-8954-511d275a387d	campuses	ou/5	\N	2025-02-09 18:10:41.199633+00	2025-02-09 18:10:41.199633+00	2025-02-09 18:10:41.199633+00	{"eTag": "\\"884660b9ce2a9064ad2f4ab5ee72c6ab\\"", "size": 2895454, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.189Z", "contentLength": 2895454, "httpStatusCode": 200}	51265b22-ddc1-4b46-a2a3-8dcce86c4326	\N	{}
1fc19747-df34-45e3-b613-673877e91992	campuses	ou/9	\N	2025-02-09 18:10:41.214459+00	2025-02-09 18:10:41.214459+00	2025-02-09 18:10:41.214459+00	{"eTag": "\\"454440dc41f4492aac59d446588e158e\\"", "size": 1349773, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.209Z", "contentLength": 1349773, "httpStatusCode": 200}	837a98d7-ba3a-4e67-b5a7-4ce3518a70b3	\N	{}
2ec4e983-4767-4a85-b435-3faae540167a	campuses	ou/2	\N	2025-02-09 18:10:41.230535+00	2025-02-09 18:10:41.230535+00	2025-02-09 18:10:41.230535+00	{"eTag": "\\"ee944e282feb6aeb46bc45fc79677ccb\\"", "size": 905535, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.224Z", "contentLength": 905535, "httpStatusCode": 200}	1d2899c9-f2b4-4370-aafb-a685cfd9f143	\N	{}
7ecbd847-0033-4d5a-b587-33edc5d71236	campuses	ou/3	\N	2025-02-09 18:10:41.255243+00	2025-02-09 18:10:41.255243+00	2025-02-09 18:10:41.255243+00	{"eTag": "\\"c910abcd2ca1f748eea0ef116f2f3f09\\"", "size": 3151077, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.245Z", "contentLength": 3151077, "httpStatusCode": 200}	93ce4273-ca32-41ae-b181-5c466c5d02a0	\N	{}
4f3c20d2-2b6a-4c11-bfc3-82f96185eb6c	campuses	slu/1	\N	2025-02-09 18:10:41.266641+00	2025-02-09 18:10:41.266641+00	2025-02-09 18:10:41.266641+00	{"eTag": "\\"52491792127b5b96b0c4b53611664a2f\\"", "size": 621269, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.263Z", "contentLength": 621269, "httpStatusCode": 200}	51e643f1-a52c-4486-b121-62eb3496cfa6	\N	{}
8dc93f2f-a0bd-4d8b-98e0-18eb44e55a08	campuses	slu/6	\N	2025-02-09 18:10:41.277002+00	2025-02-09 18:10:41.277002+00	2025-02-09 18:10:41.277002+00	{"eTag": "\\"55993d82861e3fc6cd353920c417fdcd\\"", "size": 154249, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.275Z", "contentLength": 154249, "httpStatusCode": 200}	c64a0dc9-8a97-4ed6-a36a-6a83048a34fb	\N	{}
adb93876-a6ed-4ace-b4da-254630edc628	campuses	slu/7	\N	2025-02-09 18:10:41.285774+00	2025-02-09 18:10:41.285774+00	2025-02-09 18:10:41.285774+00	{"eTag": "\\"5aaa648afe66b414acaf2aaf8a57ce0f\\"", "size": 88779, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.284Z", "contentLength": 88779, "httpStatusCode": 200}	24b0c24a-82ce-4e50-9ac2-efd681c6861d	\N	{}
4e484d00-da2a-4ef3-bd2d-f2151e3c1018	campuses	slu/8	\N	2025-02-09 18:10:41.295508+00	2025-02-09 18:10:41.295508+00	2025-02-09 18:10:41.295508+00	{"eTag": "\\"a7b28e1435c8d89e986da1059aad669b\\"", "size": 165421, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.292Z", "contentLength": 165421, "httpStatusCode": 200}	c339a015-6397-4467-90e1-c7b611961bd4	\N	{}
7d07f1bc-a593-42b7-ae47-b64eaf9cbb11	campuses	slu/4	\N	2025-02-09 18:10:41.306221+00	2025-02-09 18:10:41.306221+00	2025-02-09 18:10:41.306221+00	{"eTag": "\\"f343dca56b2e7ab62f2901e95190d06a\\"", "size": 77232, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.304Z", "contentLength": 77232, "httpStatusCode": 200}	7644804c-e154-434f-817c-a42bf4b3c362	\N	{}
359a8d7a-e8f6-4668-bafa-e9e7d430092b	campuses	slu/5	\N	2025-02-09 18:10:41.321016+00	2025-02-09 18:10:41.321016+00	2025-02-09 18:10:41.321016+00	{"eTag": "\\"5686fb34752352566409f759104017cf\\"", "size": 1052940, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.317Z", "contentLength": 1052940, "httpStatusCode": 200}	952ed8fb-8e35-4c6e-b3a0-b2d05bc06a97	\N	{}
647765d2-408c-4b37-a553-6ccb474dfbcf	campuses	slu/0	\N	2025-02-09 18:10:41.330682+00	2025-02-09 18:10:41.330682+00	2025-02-09 18:10:41.330682+00	{"eTag": "\\"92521efc1abbe6a8e899e480cc816b2a\\"", "size": 386, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.329Z", "contentLength": 386, "httpStatusCode": 200}	aab7bbef-202a-4480-88d6-f80f1c9e8ef2	\N	{}
884aacd7-59f4-44a7-a116-af17c2f9065d	campuses	slu/9	\N	2025-02-09 18:10:41.339298+00	2025-02-09 18:10:41.339298+00	2025-02-09 18:10:41.339298+00	{"eTag": "\\"3b3d21aaf292721f7606e6073bfcdda5\\"", "size": 255107, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.337Z", "contentLength": 255107, "httpStatusCode": 200}	fb9e0ef2-88a7-4005-b9af-1d1a06145691	\N	{}
d7c0be57-9d2f-4511-a19b-f111934c5b2e	campuses	slu/2	\N	2025-02-09 18:10:41.347828+00	2025-02-09 18:10:41.347828+00	2025-02-09 18:10:41.347828+00	{"eTag": "\\"95c803290a767055e22906fd96f4475d\\"", "size": 257810, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.346Z", "contentLength": 257810, "httpStatusCode": 200}	0695fefe-eb24-4f40-8e47-9bae96ae27ea	\N	{}
4f871cef-b465-47fc-ac7a-0f751a73078a	campuses	slu/3	\N	2025-02-09 18:10:41.360148+00	2025-02-09 18:10:41.360148+00	2025-02-09 18:10:41.360148+00	{"eTag": "\\"ceb6c6e969c42146c58925b4eb9fb99a\\"", "size": 432083, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.357Z", "contentLength": 432083, "httpStatusCode": 200}	69fde05d-66ab-492e-877b-00a7719fe365	\N	{}
d8d3527e-e9ce-4389-85ba-0164f8743cdd	campuses	biola/1	\N	2025-02-09 18:10:41.386342+00	2025-02-09 18:10:41.386342+00	2025-02-09 18:10:41.386342+00	{"eTag": "\\"35b862254ec4afe3bb8e1fdf713e5dce\\"", "size": 937695, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.382Z", "contentLength": 937695, "httpStatusCode": 200}	4b74b8ab-8e4d-45ca-83b2-c72003c1a676	\N	{}
6494a08b-7caf-42a4-bcef-8c98921d616b	campuses	biola/0	\N	2025-02-09 18:10:41.454879+00	2025-02-09 18:11:17.117177+00	2025-02-09 18:10:41.454879+00	{"eTag": "\\"16b7250d1d5455ad968af664d3d342f2\\"", "size": 106863, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:11:17.115Z", "contentLength": 106863, "httpStatusCode": 200}	a63f6569-c10a-4f12-a607-3a5f32db3ddf	\N	{}
8f9c982b-2545-441b-abbf-bdf9e8f297f9	campuses	biola/8	\N	2025-02-09 18:10:41.393299+00	2025-02-09 18:10:41.393299+00	2025-02-09 18:10:41.393299+00	{"eTag": "\\"6cbcb898776c9c9a2ec8dc2b67003742\\"", "size": 388, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.392Z", "contentLength": 388, "httpStatusCode": 200}	ad2cbe3f-b0af-4f9e-9e27-4a596db035f5	\N	{}
3991bf63-28de-4e08-a5e0-db2294fca78a	campuses	biola/6	\N	2025-02-09 18:10:41.405063+00	2025-02-09 18:10:41.405063+00	2025-02-09 18:10:41.405063+00	{"eTag": "\\"3db0216605c025f90a5dba82b76bc818\\"", "size": 150232, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.401Z", "contentLength": 150232, "httpStatusCode": 200}	6e6ed6d1-a7ab-44c1-bfa4-a99d59d0bcc0	\N	{}
c6df459f-4218-4e4f-a619-373d39aa8414	campuses	biola/3	\N	2025-02-09 18:10:41.439662+00	2025-02-09 18:11:21.491514+00	2025-02-09 18:10:41.439662+00	{"eTag": "\\"6ef83f9b9c01d9955a9afb8131e5f859\\"", "size": 67824, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:11:21.487Z", "contentLength": 67824, "httpStatusCode": 200}	9be9ac29-f189-480f-a558-090ae14449bc	\N	{}
5a4792ac-a82f-45cb-bff1-8aad3a2a952d	campuses	biola/7	\N	2025-02-09 18:10:41.417567+00	2025-02-09 18:10:41.417567+00	2025-02-09 18:10:41.417567+00	{"eTag": "\\"a79ed80ffe28cde2a70dd0ca57c59a3c\\"", "size": 64734, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.416Z", "contentLength": 64734, "httpStatusCode": 200}	e3e87aa8-8d02-40cf-a0fa-68a04f10afbc	\N	{}
800419bd-0a16-4680-a0f3-9d165aebd641	campuses	biola/4	\N	2025-02-09 18:10:41.424703+00	2025-02-09 18:10:41.424703+00	2025-02-09 18:10:41.424703+00	{"eTag": "\\"411f0c1c640d3749e39bda7f53fcc955\\"", "size": 178450, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.423Z", "contentLength": 178450, "httpStatusCode": 200}	50912a80-2d55-4a26-8060-3533622b2f5f	\N	{}
0f76d5d2-128b-4b45-8872-7647f8979e00	campuses	biola/5	\N	2025-02-09 18:10:41.432535+00	2025-02-09 18:10:41.432535+00	2025-02-09 18:10:41.432535+00	{"eTag": "\\"ade61c0306e18fea3bff158f30f20674\\"", "size": 76426, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.431Z", "contentLength": 76426, "httpStatusCode": 200}	ef2ecb63-2c0d-48b5-92dd-a07ef5dd8ab9	\N	{}
d0a9b0b8-d09a-4dbd-95fa-fb0acdad28e3	campuses	biola/2	\N	2025-02-09 18:10:41.44681+00	2025-02-09 18:10:41.44681+00	2025-02-09 18:10:41.44681+00	{"eTag": "\\"a0013db8c68080b97494a91c0a2729d4\\"", "size": 132906, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.445Z", "contentLength": 132906, "httpStatusCode": 200}	9589db5e-ed22-45a2-919b-9b64d0c1ae0f	\N	{}
9b626388-295f-4ca8-b63b-45aad4074d2a	campuses	methodist/0	\N	2025-02-09 18:10:41.462177+00	2025-02-09 18:10:41.462177+00	2025-02-09 18:10:41.462177+00	{"eTag": "\\"c9efeedb31b253bef81ff2160e60f882\\"", "size": 75884, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.460Z", "contentLength": 75884, "httpStatusCode": 200}	df83094a-e8d4-4dc0-894d-abc0a3f8f6ff	\N	{}
babc7054-8455-44a4-b158-1e2df07fc2f1	campuses	methodist/1	\N	2025-02-09 18:10:41.468781+00	2025-02-09 18:10:41.468781+00	2025-02-09 18:10:41.468781+00	{"eTag": "\\"4b7bbddf051770aa172ccb7f83838d37\\"", "size": 60261, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.467Z", "contentLength": 60261, "httpStatusCode": 200}	3cf31726-888e-4e36-a9d6-dc0586068224	\N	{}
bc9648f3-e7c2-4568-bd1f-2677786b356c	campuses	methodist/6	\N	2025-02-09 18:10:41.476163+00	2025-02-09 18:10:41.476163+00	2025-02-09 18:10:41.476163+00	{"eTag": "\\"0c2e9b36dbdc92e082f11d7df42b5ab2\\"", "size": 92139, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.474Z", "contentLength": 92139, "httpStatusCode": 200}	bdddae22-18c2-4926-a0c0-ec0b9d3f9d4b	\N	{}
5eb2518b-4d49-4250-8311-0b911bcb2ee1	campuses	methodist/7	\N	2025-02-09 18:10:41.483323+00	2025-02-09 18:10:41.483323+00	2025-02-09 18:10:41.483323+00	{"eTag": "\\"b72a12f27c6687dbee90702c12ab8b9e\\"", "size": 110097, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.482Z", "contentLength": 110097, "httpStatusCode": 200}	3eb60793-5f96-420e-bff3-584504d41070	\N	{}
920dbb36-f0e5-43dc-b6a6-d0aa65982713	campuses	methodist/8	\N	2025-02-09 18:10:41.490487+00	2025-02-09 18:10:41.490487+00	2025-02-09 18:10:41.490487+00	{"eTag": "\\"695c3d3a5fe0e81a8660d51bf65e53ce\\"", "size": 64457, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.489Z", "contentLength": 64457, "httpStatusCode": 200}	b6ddcd99-c931-4ce6-8735-ad5de751b3c7	\N	{}
e4beb5e7-5e20-4218-89bf-abb3d5231c7f	campuses	methodist/4	\N	2025-02-09 18:10:41.498511+00	2025-02-09 18:10:41.498511+00	2025-02-09 18:10:41.498511+00	{"eTag": "\\"32c3c33c13b91e15c5c776a7f9a9629f\\"", "size": 151312, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.497Z", "contentLength": 151312, "httpStatusCode": 200}	ac814ad6-d1fb-4e31-abc0-6a3eb3400632	\N	{}
d05831c7-7441-42f7-b419-39bd8e2fa0c5	campuses	methodist/5	\N	2025-02-09 18:10:41.506546+00	2025-02-09 18:10:41.506546+00	2025-02-09 18:10:41.506546+00	{"eTag": "\\"6a9da86641dd222475ee5f2675ec15ae\\"", "size": 163280, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.504Z", "contentLength": 163280, "httpStatusCode": 200}	153762f6-79ad-462d-a369-9514e7a101d9	\N	{}
da912101-6182-4def-bd86-094b5d510551	campuses	methodist/9	\N	2025-02-09 18:10:41.514766+00	2025-02-09 18:10:41.514766+00	2025-02-09 18:10:41.514766+00	{"eTag": "\\"473290cc2d16eaf21b9e4e5d4c362e3c\\"", "size": 56380, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.512Z", "contentLength": 56380, "httpStatusCode": 200}	aa445845-34e8-4fe8-9012-b9cadc3b9b42	\N	{}
fb514357-e238-4ae2-b21e-7ea755ea6c15	campuses	methodist/2	\N	2025-02-09 18:10:41.521535+00	2025-02-09 18:10:41.521535+00	2025-02-09 18:10:41.521535+00	{"eTag": "\\"57df37952cb557fdd967ae04bff778d7\\"", "size": 117968, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.520Z", "contentLength": 117968, "httpStatusCode": 200}	088570a1-6deb-4de2-b214-ed1cc3656c18	\N	{}
62ac2f87-1ddc-4433-84c7-729b2344c712	campuses	methodist/3	\N	2025-02-09 18:10:41.529941+00	2025-02-09 18:10:41.529941+00	2025-02-09 18:10:41.529941+00	{"eTag": "\\"40099debfc19cf358052a4996ecade03\\"", "size": 167575, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.528Z", "contentLength": 167575, "httpStatusCode": 200}	25dd16bd-b1c0-4d34-9dbe-502e5118b84d	\N	{}
fa38d3d8-112e-4075-8078-5521dd1af682	campuses	csuchico/0	\N	2025-02-09 18:10:41.539963+00	2025-02-09 18:10:41.539963+00	2025-02-09 18:10:41.539963+00	{"eTag": "\\"31e110781f565b9b84bd8184a2dd9194\\"", "size": 464053, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.537Z", "contentLength": 464053, "httpStatusCode": 200}	66dd2744-b340-4789-855a-3b017bb06bba	\N	{}
a3c8ee78-beba-4d95-9213-db3436c9975d	campuses	csuchico/1	\N	2025-02-09 18:10:41.551142+00	2025-02-09 18:10:41.551142+00	2025-02-09 18:10:41.551142+00	{"eTag": "\\"99d42f0f5608f147a783f302d072b9ec\\"", "size": 546635, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.548Z", "contentLength": 546635, "httpStatusCode": 200}	33d41b1c-7ba0-4056-8283-52a189b62b20	\N	{}
07a8e487-15ce-4c6c-a70e-5f97eb923dab	campuses	csuchico/7	\N	2025-02-09 18:10:41.561476+00	2025-02-09 18:10:41.561476+00	2025-02-09 18:10:41.561476+00	{"eTag": "\\"e993e4787134ab1799b4f9436e4a25fb\\"", "size": 478091, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.559Z", "contentLength": 478091, "httpStatusCode": 200}	0a90bd74-6e71-425f-90c6-6394aa023f82	\N	{}
acc5cca3-fb9b-40cc-9229-19183c3d6289	campuses	csuchico/8	\N	2025-02-09 18:10:41.61646+00	2025-02-09 18:10:41.61646+00	2025-02-09 18:10:41.61646+00	{"eTag": "\\"8e73bcd98db789811c64467779a58677\\"", "size": 8689178, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.579Z", "contentLength": 8689178, "httpStatusCode": 200}	abf8913a-dbe3-4041-ae9f-6a671cdaa1fc	\N	{}
ce4423eb-9237-4d1e-8fef-39329fa5d3b1	campuses	csuchico/4	\N	2025-02-09 18:10:41.647967+00	2025-02-09 18:10:41.647967+00	2025-02-09 18:10:41.647967+00	{"eTag": "\\"54fc234d3de41f8357d877ee024650e5\\"", "size": 4908903, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.632Z", "contentLength": 4908903, "httpStatusCode": 200}	5e484a6c-6b43-43a9-83a0-7c704e00970e	\N	{}
5ba1c365-a8dd-4bc5-9930-9409d7d06a19	campuses	csuchico/5	\N	2025-02-09 18:10:41.656884+00	2025-02-09 18:10:41.656884+00	2025-02-09 18:10:41.656884+00	{"eTag": "\\"c4c5f2cf1df64728cc508b90a512a0c0\\"", "size": 257778, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.655Z", "contentLength": 257778, "httpStatusCode": 200}	80745146-3628-445e-b709-7d7f6eb579e9	\N	{}
3b8d7a74-0139-46f3-bc65-381930fdb949	campuses	csuchico/9	\N	2025-02-09 18:10:41.66919+00	2025-02-09 18:10:41.66919+00	2025-02-09 18:10:41.66919+00	{"eTag": "\\"7fe4e1dfc8e6cf7d2ddaed43f77a17b0\\"", "size": 1446383, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.663Z", "contentLength": 1446383, "httpStatusCode": 200}	0febe867-3e96-4914-b48a-19a552f443ae	\N	{}
cb231548-8406-4ff0-9a8f-638b8862b4bc	campuses	csuchico/2	\N	2025-02-09 18:10:41.682355+00	2025-02-09 18:10:41.682355+00	2025-02-09 18:10:41.682355+00	{"eTag": "\\"e0b83f87e3a3333ec066244a1781cc13\\"", "size": 335124, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.677Z", "contentLength": 335124, "httpStatusCode": 200}	d8acd451-67f5-4989-8c0a-dc6a8ccd701b	\N	{}
c3caf87e-5114-4a8f-9436-d1e9f27c85b2	campuses	csuchico/6	\N	2025-02-09 18:10:41.693046+00	2025-02-09 18:10:41.693046+00	2025-02-09 18:10:41.693046+00	{"eTag": "\\"1abd8ee23fd6d94ae2f529da93284856\\"", "size": 386, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.691Z", "contentLength": 386, "httpStatusCode": 200}	048728f5-9eec-42ee-b0f3-bbd536f1fda6	\N	{}
afe9ace3-f4f5-4883-92c5-b17efa797c51	campuses	csuchico/3	\N	2025-02-09 18:10:41.70258+00	2025-02-09 18:10:41.70258+00	2025-02-09 18:10:41.70258+00	{"eTag": "\\"b40478414bbef3b4ad2d18507f738ef1\\"", "size": 624666, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.699Z", "contentLength": 624666, "httpStatusCode": 200}	5dd63925-bf6b-4f8e-b51e-3a2dae2f080a	\N	{}
9a4534fe-6224-42c0-8f64-729dc63f925a	campuses	monmouth/0	\N	2025-02-09 18:10:41.710793+00	2025-02-09 18:10:41.710793+00	2025-02-09 18:10:41.710793+00	{"eTag": "\\"b79ac89554f6b6c4bc506ffe5a98066f\\"", "size": 174824, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.709Z", "contentLength": 174824, "httpStatusCode": 200}	43de3457-2cae-4344-a9cb-d6b6770273f1	\N	{}
f09b4c3e-59eb-49bf-b97e-47af7ce09070	campuses	monmouth/4	\N	2025-02-09 18:10:41.719113+00	2025-02-09 18:10:41.719113+00	2025-02-09 18:10:41.719113+00	{"eTag": "\\"9fe3cb2b7313dc79bb477bc8fde184a7\\"", "size": 146, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.717Z", "contentLength": 146, "httpStatusCode": 200}	05853ff9-9790-4baf-9f18-a8d2b0d9ceed	\N	{}
9ebf309a-49e9-4bcf-9d8c-d60e26854e09	campuses	monmouth/1	\N	2025-02-09 18:10:41.726439+00	2025-02-09 18:10:41.726439+00	2025-02-09 18:10:41.726439+00	{"eTag": "\\"1b32fa5e78d12e1f5fe826363a6c83c7\\"", "size": 194100, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.724Z", "contentLength": 194100, "httpStatusCode": 200}	8b7a0187-6260-4227-b151-eed9741552b9	\N	{}
ff5f1a53-73ba-48f2-b179-3e527239a6f6	campuses	monmouth/6	\N	2025-02-09 18:10:41.734331+00	2025-02-09 18:10:41.734331+00	2025-02-09 18:10:41.734331+00	{"eTag": "\\"6fe8109a09eca1905985a930dbd1426c\\"", "size": 14681, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.732Z", "contentLength": 14681, "httpStatusCode": 200}	b430d0d7-6848-49fb-899b-75736c0446a7	\N	{}
9dc1b2b2-6128-4af2-b088-166cf6a59523	campuses	monmouth/7	\N	2025-02-09 18:10:41.745063+00	2025-02-09 18:10:41.745063+00	2025-02-09 18:10:41.745063+00	{"eTag": "\\"f23ea8f7f3e9bc586677ec41e357f5f8\\"", "size": 686518, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.741Z", "contentLength": 686518, "httpStatusCode": 200}	069f4d74-f5b8-496c-9e9e-63059d740134	\N	{}
276f8914-b78b-4235-a97a-2c8ac8f7c4e4	campuses	monmouth/8	\N	2025-02-09 18:10:41.757386+00	2025-02-09 18:10:41.757386+00	2025-02-09 18:10:41.757386+00	{"eTag": "\\"f7184d1fc64f0cb488d13e72a2600d2b\\"", "size": 605223, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.753Z", "contentLength": 605223, "httpStatusCode": 200}	b2a5de8d-2b5a-4668-9417-7daed137ba49	\N	{}
56a94936-3317-432b-9a39-5a138730148a	campuses	monmouth/5	\N	2025-02-09 18:10:41.768418+00	2025-02-09 18:10:41.768418+00	2025-02-09 18:10:41.768418+00	{"eTag": "\\"0f3f99b00e98dc4b4c6f2f1456d01d10\\"", "size": 725555, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.765Z", "contentLength": 725555, "httpStatusCode": 200}	b6db5c37-81e0-45c0-b0a0-e8e2073c37b8	\N	{}
b1c86cc3-0c0c-497f-b6f4-81e3f7ed7c43	campuses	monmouth/9	\N	2025-02-09 18:10:41.77841+00	2025-02-09 18:10:41.77841+00	2025-02-09 18:10:41.77841+00	{"eTag": "\\"51cba8449d217151389b31a146b1b934\\"", "size": 459340, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.775Z", "contentLength": 459340, "httpStatusCode": 200}	d2f29711-0e65-45a4-a0ef-3be97ef0b98e	\N	{}
c6fa6fe6-104a-4797-8bb5-5b1dbee21daf	campuses	monmouth/2	\N	2025-02-09 18:10:41.787688+00	2025-02-09 18:10:41.787688+00	2025-02-09 18:10:41.787688+00	{"eTag": "\\"1de514e3f10a0878f6b31496636f8dcf\\"", "size": 529087, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.784Z", "contentLength": 529087, "httpStatusCode": 200}	afd1b8b2-ea04-483d-90ec-5edc6709aa62	\N	{}
fe1d0bf5-f8cd-4f79-89c3-080536ab9413	campuses	monmouth/3	\N	2025-02-09 18:10:41.797192+00	2025-02-09 18:10:41.797192+00	2025-02-09 18:10:41.797192+00	{"eTag": "\\"6c4fcb5e14bbc0ac3b1933a0f30e13e0\\"", "size": 335628, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.795Z", "contentLength": 335628, "httpStatusCode": 200}	f89b7efb-4846-44b4-b0f4-064f7f416b5e	\N	{}
74601a61-83e4-4821-9f24-0776b4581a2f	campuses	iit/8	\N	2025-02-09 18:10:41.804658+00	2025-02-09 18:10:41.804658+00	2025-02-09 18:10:41.804658+00	{"eTag": "\\"f3ea622e383bdc57a85b0b95000aeb74\\"", "size": 208716, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.803Z", "contentLength": 208716, "httpStatusCode": 200}	d5de240d-3e2f-43ee-9287-1ac9f2b9f38a	\N	{}
8f3dcec1-fe43-402a-9cbb-3779d8e599e4	campuses	iit/4	\N	2025-02-09 18:10:41.812719+00	2025-02-09 18:10:41.812719+00	2025-02-09 18:10:41.812719+00	{"eTag": "\\"9194fcfa9cef8801f58d05a21cac96e5\\"", "size": 189436, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.811Z", "contentLength": 189436, "httpStatusCode": 200}	d37ea011-ef75-4924-b6cf-d68c25b5720e	\N	{}
907de18f-b250-4929-bf40-c9ab70880ba1	campuses	iit/1	\N	2025-02-09 18:10:41.821694+00	2025-02-09 18:10:41.821694+00	2025-02-09 18:10:41.821694+00	{"eTag": "\\"63288c229245d11bce5be9c4ea5950a1\\"", "size": 414906, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.819Z", "contentLength": 414906, "httpStatusCode": 200}	96b0053e-3c47-4e5c-a1a1-b7f63be55e01	\N	{}
4d1d030b-6d70-4646-b37d-64822d1cfbbb	campuses	iit/0	\N	2025-02-09 18:10:41.834153+00	2025-02-09 18:10:41.834153+00	2025-02-09 18:10:41.834153+00	{"eTag": "\\"e7e02d150774f7d828a9f1ee77025897\\"", "size": 37116, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.831Z", "contentLength": 37116, "httpStatusCode": 200}	e4507bbf-6e20-4c45-a937-6fbd1f4548e2	\N	{}
13b9fc2d-8f8e-4097-9778-44a1c3edd573	campuses	iit/5	\N	2025-02-09 18:10:41.850997+00	2025-02-09 18:10:41.850997+00	2025-02-09 18:10:41.850997+00	{"eTag": "\\"c2159746210c075423ea4eccb992cf19\\"", "size": 420799, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.845Z", "contentLength": 420799, "httpStatusCode": 200}	c486ac97-390a-4894-a7a2-4ca35ef26f34	\N	{}
b2c0e324-c8b1-4a93-aaf3-e4456cfb3d11	campuses	iit/9	\N	2025-02-09 18:10:41.860278+00	2025-02-09 18:10:41.860278+00	2025-02-09 18:10:41.860278+00	{"eTag": "\\"8bfd3e5bf70a0920c1a7add0203bcfff\\"", "size": 294509, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.858Z", "contentLength": 294509, "httpStatusCode": 200}	2768c379-00b1-4874-b8b6-82b3c62268a8	\N	{}
3308ba8c-8c42-4c50-85e5-12b831be763f	campuses	iit/2	\N	2025-02-09 18:10:41.867821+00	2025-02-09 18:10:41.867821+00	2025-02-09 18:10:41.867821+00	{"eTag": "\\"8f044798f69ad6545d98e0f5062bdec9\\"", "size": 176484, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.866Z", "contentLength": 176484, "httpStatusCode": 200}	df6c403f-2b43-4862-97bd-a102e06305b0	\N	{}
7bbe943b-a884-4800-b9a1-c03dca8d561e	campuses	iit/7	\N	2025-02-09 18:10:41.877089+00	2025-02-09 18:10:41.877089+00	2025-02-09 18:10:41.877089+00	{"eTag": "\\"2f2300b761c7e2696e21cbd5416a0808\\"", "size": 505114, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.874Z", "contentLength": 505114, "httpStatusCode": 200}	74bbf1f5-8b51-4ffc-bba8-665d3c4816e6	\N	{}
8e5c31dd-a96b-4517-a29c-1ccb62b2911d	campuses	iit/6	\N	2025-02-09 18:10:41.883397+00	2025-02-09 18:10:41.883397+00	2025-02-09 18:10:41.883397+00	{"eTag": "\\"be40d2dd1513d1b3b9da2b7ec9fa44bc\\"", "size": 11694, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.882Z", "contentLength": 11694, "httpStatusCode": 200}	23b10f5f-53ef-4bc3-b0b2-19374ea06ec9	\N	{}
13ab3d31-640b-4e07-a9e2-e30ae22e3dd6	campuses	iit/3	\N	2025-02-09 18:10:41.889785+00	2025-02-09 18:10:41.889785+00	2025-02-09 18:10:41.889785+00	{"eTag": "\\"76995369552a559b2f04428ac9127e25\\"", "size": 281112, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.888Z", "contentLength": 281112, "httpStatusCode": 200}	419eb99d-14e2-4635-8fae-092ede54af43	\N	{}
91ef799a-8b39-48d3-b1e7-cf6446f77fdd	campuses	chapman/0	\N	2025-02-09 18:10:41.895902+00	2025-02-09 18:10:41.895902+00	2025-02-09 18:10:41.895902+00	{"eTag": "\\"149d0d90a5d5ab8a3c1b2f6e43bd1687\\"", "size": 138333, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.894Z", "contentLength": 138333, "httpStatusCode": 200}	89bec8e5-1b00-40bd-9743-09f7a039b4e9	\N	{}
5a98f6cc-fde7-4c8b-8ea0-7293b7bad670	campuses	chapman/1	\N	2025-02-09 18:10:41.901606+00	2025-02-09 18:10:41.901606+00	2025-02-09 18:10:41.901606+00	{"eTag": "\\"5eea84ca897a46a1ff3201102624385d\\"", "size": 138939, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.900Z", "contentLength": 138939, "httpStatusCode": 200}	8a5873e3-bb9a-4e0b-ab2e-cb83b79f695f	\N	{}
5de8eb1b-b9f1-4402-976c-34d96357b41e	campuses	chapman/6	\N	2025-02-09 18:10:41.96399+00	2025-02-09 18:10:41.96399+00	2025-02-09 18:10:41.96399+00	{"eTag": "\\"f5d0bc769ec9458b0e82beb261349e61\\"", "size": 12754439, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.917Z", "contentLength": 12754439, "httpStatusCode": 200}	6c3d65a9-8954-40e6-a77f-201a89c156fc	\N	{}
62c08e05-03e9-417b-b34c-0205900af92a	campuses	chapman/7	\N	2025-02-09 18:10:41.973675+00	2025-02-09 18:10:41.973675+00	2025-02-09 18:10:41.973675+00	{"eTag": "\\"1015118e5f9f73c2df2f5dd1e6aac846\\"", "size": 148453, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.972Z", "contentLength": 148453, "httpStatusCode": 200}	5ed7d223-8076-4c6e-be83-41a27b631bfb	\N	{}
17801b89-221e-4d76-ae98-0666ddbe49b9	campuses	chapman/8	\N	2025-02-09 18:10:41.980502+00	2025-02-09 18:10:41.980502+00	2025-02-09 18:10:41.980502+00	{"eTag": "\\"ec8ae647b23f0353993f492b3ab0f3df\\"", "size": 305721, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.978Z", "contentLength": 305721, "httpStatusCode": 200}	edb43763-eedf-422f-b273-7a65fe07e801	\N	{}
841fe9e3-dc5f-4bfb-97c4-d62037aad196	campuses	chapman/4	\N	2025-02-09 18:10:41.995137+00	2025-02-09 18:10:41.995137+00	2025-02-09 18:10:41.995137+00	{"eTag": "\\"f8ae4bddea387726d949964783fa3764\\"", "size": 704170, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:41.989Z", "contentLength": 704170, "httpStatusCode": 200}	1ee6857c-1b69-4fdb-bb71-7c86e218a747	\N	{}
0a043b06-94d3-494b-b894-a733c669a258	campuses	chapman/5	\N	2025-02-09 18:10:42.006729+00	2025-02-09 18:10:42.006729+00	2025-02-09 18:10:42.006729+00	{"eTag": "\\"3246c67b77698231f67c82675235892f\\"", "size": 124773, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.005Z", "contentLength": 124773, "httpStatusCode": 200}	d6b26df2-7822-470a-846a-0904518b5e11	\N	{}
b4530e79-d2fe-4e7e-b61f-2f8b4dc7a066	campuses	chapman/9	\N	2025-02-09 18:10:42.015288+00	2025-02-09 18:10:42.015288+00	2025-02-09 18:10:42.015288+00	{"eTag": "\\"38997c44d4e2e8af6ddf6f6dbb48c4b7\\"", "size": 13557, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.014Z", "contentLength": 13557, "httpStatusCode": 200}	00073e87-0ae1-48a1-b3a3-d08020d51536	\N	{}
fea2879a-031c-42e7-b324-edfd7d2fdc6e	campuses	chapman/2	\N	2025-02-09 18:10:42.02423+00	2025-02-09 18:10:42.02423+00	2025-02-09 18:10:42.02423+00	{"eTag": "\\"47bfecc194d8927c5cc73c5794259d0c\\"", "size": 392751, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.022Z", "contentLength": 392751, "httpStatusCode": 200}	12aa2e6c-1cbf-4bc1-bcc1-522f908f54a8	\N	{}
3ab22a80-248c-4b9c-9462-452afe8adfe8	campuses	chapman/3	\N	2025-02-09 18:10:42.033995+00	2025-02-09 18:10:42.033995+00	2025-02-09 18:10:42.033995+00	{"eTag": "\\"e772f4bfa552e7c018e68a1a86bbd62b\\"", "size": 151112, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.032Z", "contentLength": 151112, "httpStatusCode": 200}	51455a06-41e9-46da-864f-836e63dcc331	\N	{}
f48bc7e2-8f59-4086-8687-d9df571702ff	campuses	coloradocollege/0	\N	2025-02-09 18:10:42.040504+00	2025-02-09 18:10:42.040504+00	2025-02-09 18:10:42.040504+00	{"eTag": "\\"e323bec2bfb01b544b41328cebe6b522\\"", "size": 193598, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.039Z", "contentLength": 193598, "httpStatusCode": 200}	ddfa92bb-7806-4da0-bf6c-870719273915	\N	{}
a0dcf9d6-de82-4740-b513-236d5b23b5dd	campuses	coloradocollege/1	\N	2025-02-09 18:10:42.046655+00	2025-02-09 18:10:42.046655+00	2025-02-09 18:10:42.046655+00	{"eTag": "\\"18d0f4e5381afcc3aa3dcb0b58f0540d\\"", "size": 103508, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.045Z", "contentLength": 103508, "httpStatusCode": 200}	b42d66b9-346d-4499-af2f-36d5e2827aa1	\N	{}
764368c3-3233-4548-8408-e3f6d41a2869	campuses	coloradocollege/8	\N	2025-02-09 18:10:42.053616+00	2025-02-09 18:10:42.053616+00	2025-02-09 18:10:42.053616+00	{"eTag": "\\"3f7a5a1580d621f376453680cba9b79c\\"", "size": 386, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.052Z", "contentLength": 386, "httpStatusCode": 200}	12ad05db-6ac2-43f4-a5d7-5086144d6a63	\N	{}
60632ac4-2960-4f85-a78f-e8467e8ecbde	campuses	coloradocollege/6	\N	2025-02-09 18:10:42.060891+00	2025-02-09 18:10:42.060891+00	2025-02-09 18:10:42.060891+00	{"eTag": "\\"79fa4411d2a3478105780cd90f48d016\\"", "size": 323421, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.059Z", "contentLength": 323421, "httpStatusCode": 200}	bdd44fcc-79e0-4e0d-9284-57f16aea0ba1	\N	{}
84e0837d-8a1c-4514-a1a9-8b3d352554e6	campuses	coloradocollege/7	\N	2025-02-09 18:10:42.0665+00	2025-02-09 18:10:42.0665+00	2025-02-09 18:10:42.0665+00	{"eTag": "\\"e0e54f6301e6e7985f0bd2646c97023f\\"", "size": 42491, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.065Z", "contentLength": 42491, "httpStatusCode": 200}	1500930a-b8e7-487a-9c19-b6dd323b56e7	\N	{}
27fece8e-dd8d-4ffb-8343-9733d9f885f8	campuses	coloradocollege/4	\N	2025-02-09 18:10:42.073469+00	2025-02-09 18:10:42.073469+00	2025-02-09 18:10:42.073469+00	{"eTag": "\\"0ff07975f1a62f3a223249c7fee0267a\\"", "size": 157721, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.072Z", "contentLength": 157721, "httpStatusCode": 200}	5a54573b-7adc-4049-83a8-b6b611d3facf	\N	{}
ff43fecf-9c3c-4561-aed6-14a7ae30f470	campuses	coloradocollege/5	\N	2025-02-09 18:10:42.082222+00	2025-02-09 18:10:42.082222+00	2025-02-09 18:10:42.082222+00	{"eTag": "\\"0f329d2dd6cc70473d133b27cc947bc2\\"", "size": 751161, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.078Z", "contentLength": 751161, "httpStatusCode": 200}	2b36cec3-bc30-4e53-b719-a5059eb3bf09	\N	{}
321b4065-fabc-467d-8e1a-e2a089931f84	campuses	coloradocollege/9	\N	2025-02-09 18:10:42.090186+00	2025-02-09 18:10:42.090186+00	2025-02-09 18:10:42.090186+00	{"eTag": "\\"1c7dff1d1a0b14c0eedcf9834a11bd43\\"", "size": 305466, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.088Z", "contentLength": 305466, "httpStatusCode": 200}	097a5765-13df-47a2-af9e-bafe59389dd4	\N	{}
8fb84c57-c4be-4520-b606-8e018b86b943	campuses	coloradocollege/2	\N	2025-02-09 18:10:42.096717+00	2025-02-09 18:10:42.096717+00	2025-02-09 18:10:42.096717+00	{"eTag": "\\"ef87b2986b5f8cf458faf1321ff0bc9e\\"", "size": 114976, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.095Z", "contentLength": 114976, "httpStatusCode": 200}	497e5c2d-6e8f-4387-a632-05a8362657c6	\N	{}
cc81b905-6ecb-4e35-b754-2b72b56bfab5	campuses	coloradocollege/3	\N	2025-02-09 18:10:42.103739+00	2025-02-09 18:10:42.103739+00	2025-02-09 18:10:42.103739+00	{"eTag": "\\"0402867a0d8b8f0e6766ab3de3971e9f\\"", "size": 123973, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.102Z", "contentLength": 123973, "httpStatusCode": 200}	100d2a33-cc79-44da-b0d5-5f870f0c7a45	\N	{}
badccdf4-d57c-4728-a847-226965d2085e	campuses	artcenter/0	\N	2025-02-09 18:10:42.109376+00	2025-02-09 18:10:42.109376+00	2025-02-09 18:10:42.109376+00	{"eTag": "\\"027e1025520b134982ec6be5e52fd063\\"", "size": 104080, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.108Z", "contentLength": 104080, "httpStatusCode": 200}	09ca33b6-589f-4028-a439-66f87054a474	\N	{}
68a4a0b9-2e1d-4da3-b031-97d2128a56df	campuses	artcenter/1	\N	2025-02-09 18:10:42.115072+00	2025-02-09 18:10:42.115072+00	2025-02-09 18:10:42.115072+00	{"eTag": "\\"2c55d66da139f67ea5ced9c74efa2a40\\"", "size": 91178, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.113Z", "contentLength": 91178, "httpStatusCode": 200}	358f2918-3b07-48c4-b23e-fd0a00f20533	\N	{}
62922357-7b3d-4582-a53a-c351b15b2482	campuses	artcenter/6	\N	2025-02-09 18:10:42.121922+00	2025-02-09 18:10:42.121922+00	2025-02-09 18:10:42.121922+00	{"eTag": "\\"c4bcf2e2abbb0b70a8eca90ca6f3a5eb\\"", "size": 108181, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.120Z", "contentLength": 108181, "httpStatusCode": 200}	625ce762-9361-4969-846d-ab5bd20d37e5	\N	{}
1b4ab2d6-5b70-4450-852b-d2a957641f77	campuses	artcenter/7	\N	2025-02-09 18:10:42.128155+00	2025-02-09 18:10:42.128155+00	2025-02-09 18:10:42.128155+00	{"eTag": "\\"9bdf7ca9cf717b1f52248d6e2568be9d\\"", "size": 123627, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.126Z", "contentLength": 123627, "httpStatusCode": 200}	f1827de8-0736-453d-9dea-7a06eda9fd5c	\N	{}
21099b4a-d692-4032-98b0-5e6ee8ea3a45	campuses	artcenter/8	\N	2025-02-09 18:10:42.13904+00	2025-02-09 18:10:42.13904+00	2025-02-09 18:10:42.13904+00	{"eTag": "\\"31e2d9ca15e974bbc38687d8e75da88d\\"", "size": 158536, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.136Z", "contentLength": 158536, "httpStatusCode": 200}	afe7580b-a90c-4012-b6df-730f16684314	\N	{}
e1aaca3b-0888-46d6-b03f-00db665c9297	campuses	artcenter/4	\N	2025-02-09 18:10:42.152329+00	2025-02-09 18:10:42.152329+00	2025-02-09 18:10:42.152329+00	{"eTag": "\\"c50f3f5171a1083aa8183d9ae21c6532\\"", "size": 145885, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.150Z", "contentLength": 145885, "httpStatusCode": 200}	13472c65-c27d-44cf-9190-ae73606c95b9	\N	{}
9379aa2f-083b-45c9-bd8c-8692929a5c06	campuses	artcenter/5	\N	2025-02-09 18:10:42.160516+00	2025-02-09 18:10:42.160516+00	2025-02-09 18:10:42.160516+00	{"eTag": "\\"ecaa174aa25e59bc77d2950d544df84e\\"", "size": 55800, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.159Z", "contentLength": 55800, "httpStatusCode": 200}	44f12ae7-a18f-405e-93f9-c5c8bfd9799d	\N	{}
5f7405dc-1d40-430f-a239-048d34688b57	campuses	artcenter/9	\N	2025-02-09 18:10:42.178251+00	2025-02-09 18:10:42.178251+00	2025-02-09 18:10:42.178251+00	{"eTag": "\\"b55723b9758a51cd356c5dfbb0326d5a\\"", "size": 2460480, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.169Z", "contentLength": 2460480, "httpStatusCode": 200}	2630ad65-3395-4241-9ea4-15aba78dc718	\N	{}
f74c3553-c9e9-4622-a0c8-8110c931ba18	campuses	artcenter/2	\N	2025-02-09 18:10:42.232064+00	2025-02-09 18:10:42.232064+00	2025-02-09 18:10:42.232064+00	{"eTag": "\\"270253ee7405bb6d94fd8d1cd9e972d7\\"", "size": 368828, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.190Z", "contentLength": 368828, "httpStatusCode": 200}	79216763-3825-41f1-8300-1472865393e4	\N	{}
c9f09e3e-e094-4d65-8f93-ef4730b3fc2d	campuses	artcenter/3	\N	2025-02-09 18:10:42.243489+00	2025-02-09 18:10:42.243489+00	2025-02-09 18:10:42.243489+00	{"eTag": "\\"78d1d1d8a7de2836c03bda862f93473b\\"", "size": 107336, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.242Z", "contentLength": 107336, "httpStatusCode": 200}	0c4130ea-e4ff-4cda-88dd-4bfc8ef93df8	\N	{}
34d6ad7a-c925-4241-b4d6-ba354cbaab96	campuses	brandeis/0	\N	2025-02-09 18:10:42.252324+00	2025-02-09 18:10:42.252324+00	2025-02-09 18:10:42.252324+00	{"eTag": "\\"8e99cb9d59854df438066e98449d54ed\\"", "size": 240008, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.250Z", "contentLength": 240008, "httpStatusCode": 200}	5ce1e932-888f-4715-af7a-1b96070e2a86	\N	{}
8723d479-839b-4c63-b6ab-4bc9444844b5	campuses	brandeis/1	\N	2025-02-09 18:10:42.260582+00	2025-02-09 18:10:42.260582+00	2025-02-09 18:10:42.260582+00	{"eTag": "\\"dbb28430b2b7e1ea57d1cd9660aab1e3\\"", "size": 136245, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.259Z", "contentLength": 136245, "httpStatusCode": 200}	2b258040-bb2a-47d1-a853-b83ff645f82c	\N	{}
d51b855e-dc89-4b4e-8618-6652e32944e1	campuses	brandeis/6	\N	2025-02-09 18:10:42.268523+00	2025-02-09 18:10:42.268523+00	2025-02-09 18:10:42.268523+00	{"eTag": "\\"d8cf162c17712298678e9f43b2e7bc71\\"", "size": 150223, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.267Z", "contentLength": 150223, "httpStatusCode": 200}	e9ce2291-70fe-4594-b267-aba6127bbae1	\N	{}
504e3aa2-4cce-4084-b5cf-45e134e7e8fe	campuses	brandeis/7	\N	2025-02-09 18:10:42.281547+00	2025-02-09 18:10:42.281547+00	2025-02-09 18:10:42.281547+00	{"eTag": "\\"074e386e984730e946e64343e0db08ea\\"", "size": 209602, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.278Z", "contentLength": 209602, "httpStatusCode": 200}	06d40e80-b177-4c74-a6f3-ccf9df4e15c6	\N	{}
c328c7a6-4d3c-4ff9-9f65-de032ca9ad3e	campuses	brandeis/8	\N	2025-02-09 18:10:42.296452+00	2025-02-09 18:10:42.296452+00	2025-02-09 18:10:42.296452+00	{"eTag": "\\"ac7fb08345b0d32c5126254c42e9b949\\"", "size": 106813, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.293Z", "contentLength": 106813, "httpStatusCode": 200}	988cd0cf-66ad-4565-9861-f064b8bd5c39	\N	{}
6255f5c4-54e6-4dcf-ade3-08e3b7b0f580	campuses	brandeis/4	\N	2025-02-09 18:10:42.305435+00	2025-02-09 18:10:42.305435+00	2025-02-09 18:10:42.305435+00	{"eTag": "\\"8c7e69998e157486f82ed08c88a96267\\"", "size": 228226, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.303Z", "contentLength": 228226, "httpStatusCode": 200}	e0f8ad64-7b3e-4e2a-a30b-ec64d36e8513	\N	{}
cfb55dd6-9ce3-451d-ae61-4455eb2b55e9	campuses	brandeis/5	\N	2025-02-09 18:10:42.317806+00	2025-02-09 18:10:42.317806+00	2025-02-09 18:10:42.317806+00	{"eTag": "\\"ec30862241b6b43efcb0e69da5ca112d\\"", "size": 101137, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.316Z", "contentLength": 101137, "httpStatusCode": 200}	d8510954-3f01-4e60-aa0c-4386470c8d0c	\N	{}
f71e7b4c-1429-4bf9-ac23-be0959e35769	campuses	brandeis/9	\N	2025-02-09 18:10:42.331717+00	2025-02-09 18:10:42.331717+00	2025-02-09 18:10:42.331717+00	{"eTag": "\\"681393b35c74bd4068858a39778c6cc3\\"", "size": 137126, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.329Z", "contentLength": 137126, "httpStatusCode": 200}	583fa663-2af6-48b1-8c8e-18113b65268e	\N	{}
cf38aeca-07ef-4f73-aff3-857e8351f1e8	campuses	brandeis/2	\N	2025-02-09 18:10:42.341538+00	2025-02-09 18:10:42.341538+00	2025-02-09 18:10:42.341538+00	{"eTag": "\\"7217682671b3d8ceb89b9c58b49865c7\\"", "size": 244824, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.339Z", "contentLength": 244824, "httpStatusCode": 200}	effc91d9-ea8f-4f44-9d0c-a5ab3b151ab7	\N	{}
c63dd275-fdec-468a-9f66-a2bf94e49bf0	campuses	brandeis/3	\N	2025-02-09 18:10:42.351404+00	2025-02-09 18:10:42.351404+00	2025-02-09 18:10:42.351404+00	{"eTag": "\\"e0c8fe4a3a70a6fb5677ebd9d26b3c54\\"", "size": 226834, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.349Z", "contentLength": 226834, "httpStatusCode": 200}	ce7296e5-4d1e-443e-9b2e-0981539dd703	\N	{}
b3a417d3-9339-46b1-be56-8e3560bc4433	campuses	american/0	\N	2025-02-09 18:10:42.359189+00	2025-02-09 18:10:42.359189+00	2025-02-09 18:10:42.359189+00	{"eTag": "\\"efcb161b4c48c691dec9c9501cf6603f\\"", "size": 125605, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.357Z", "contentLength": 125605, "httpStatusCode": 200}	a4adf20a-bbe0-4f36-bcf3-ffa0da372af6	\N	{}
3d8b7603-d385-4c55-a9e1-b2e810ba230c	campuses	american/6	\N	2025-02-09 18:10:42.383404+00	2025-02-09 18:10:42.383404+00	2025-02-09 18:10:42.383404+00	{"eTag": "\\"62312c2d7642d3efe0acad9fad2eafc2\\"", "size": 4057780, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.370Z", "contentLength": 4057780, "httpStatusCode": 200}	a0016bf7-4722-4e29-ae0d-6dafc23e0b84	\N	{}
672ded4f-0b6f-4a25-91db-d36fcc54a617	campuses	american/7	\N	2025-02-09 18:10:42.396451+00	2025-02-09 18:10:42.396451+00	2025-02-09 18:10:42.396451+00	{"eTag": "\\"709368aa7a57358f92b6c42044f60ffd\\"", "size": 87740, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.393Z", "contentLength": 87740, "httpStatusCode": 200}	fcfc3244-9478-4c69-9fb8-645b10beb8a1	\N	{}
0f4400b2-2b73-47a5-a2b2-6851487bf19b	campuses	american/8	\N	2025-02-09 18:10:42.406393+00	2025-02-09 18:10:42.406393+00	2025-02-09 18:10:42.406393+00	{"eTag": "\\"7a70f33d17d778b491662c1928b0e33c\\"", "size": 45323, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.405Z", "contentLength": 45323, "httpStatusCode": 200}	02bde93b-836c-4d3f-bee9-3b5d1161ea83	\N	{}
162c5821-d135-4f8d-9fdd-62fb2c415960	campuses	american/4	\N	2025-02-09 18:10:42.414485+00	2025-02-09 18:10:42.414485+00	2025-02-09 18:10:42.414485+00	{"eTag": "\\"94e6635dccadf8b3d3bcfb1b3b8314b0\\"", "size": 45168, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.413Z", "contentLength": 45168, "httpStatusCode": 200}	4351a5c2-b49f-4c80-8063-8e38865972ce	\N	{}
87456881-3dfc-419e-9473-33864e86480e	campuses	american/5	\N	2025-02-09 18:10:42.425485+00	2025-02-09 18:10:42.425485+00	2025-02-09 18:10:42.425485+00	{"eTag": "\\"a5e4bcc045dc6bf9e105e21b752a4a75\\"", "size": 736639, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.422Z", "contentLength": 736639, "httpStatusCode": 200}	f49720bd-1b4b-415c-8754-b8f051653357	\N	{}
63c140b1-8f70-4d44-a52f-edf2afcea45a	campuses	american/9	\N	2025-02-09 18:10:42.433764+00	2025-02-09 18:10:42.433764+00	2025-02-09 18:10:42.433764+00	{"eTag": "\\"4ac6cd22070f7ee781befdfc508d125b\\"", "size": 44121, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.432Z", "contentLength": 44121, "httpStatusCode": 200}	1a0847c7-90f9-4208-9ad7-bae531fbde10	\N	{}
ff194fc2-709a-4296-881b-2ecc04fc501b	campuses	american/2	\N	2025-02-09 18:10:42.441905+00	2025-02-09 18:10:42.441905+00	2025-02-09 18:10:42.441905+00	{"eTag": "\\"58369b0f2314472628497429eccded9c\\"", "size": 97157, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.440Z", "contentLength": 97157, "httpStatusCode": 200}	9bc2204f-757f-4609-902c-f7bb72d98d91	\N	{}
0cf9127a-d227-4a42-aee2-14f2fe54fc17	campuses	american/1	\N	2025-02-09 18:10:42.451303+00	2025-02-09 18:10:42.451303+00	2025-02-09 18:10:42.451303+00	{"eTag": "\\"208387a162f4b29847726d82818d6344\\"", "size": 145427, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.450Z", "contentLength": 145427, "httpStatusCode": 200}	b50d277e-8dae-442b-b36e-829f41161915	\N	{}
de435682-9ef7-4cb8-b936-874186825918	campuses	american/3	\N	2025-02-09 18:10:42.466987+00	2025-02-09 18:10:42.466987+00	2025-02-09 18:10:42.466987+00	{"eTag": "\\"403a6b7854999944dfae6c4a7015eeb4\\"", "size": 1918410, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.460Z", "contentLength": 1918410, "httpStatusCode": 200}	dffb05ce-17db-4153-9706-05bd48517f2f	\N	{}
67e0cee3-e7e1-4395-9d14-ced72a85f9af	campuses	pba/0	\N	2025-02-09 18:10:42.477555+00	2025-02-09 18:10:42.477555+00	2025-02-09 18:10:42.477555+00	{"eTag": "\\"91b9f2223eea606a0455043c00382845\\"", "size": 399947, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.475Z", "contentLength": 399947, "httpStatusCode": 200}	613d34c8-16b5-4eb7-ba83-da42652d4f78	\N	{}
a41980ae-21fa-4b2e-bf58-4b2448a5b247	campuses	pba/1	\N	2025-02-09 18:10:42.485513+00	2025-02-09 18:10:42.485513+00	2025-02-09 18:10:42.485513+00	{"eTag": "\\"cc895fe98d1aa4a4bc2c479d2d532699\\"", "size": 262124, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.483Z", "contentLength": 262124, "httpStatusCode": 200}	66dd743e-56c2-40c3-b6c3-eeb8d9e5ca6d	\N	{}
59aed036-e321-41bf-bad0-5e737c02a180	campuses	pba/6	\N	2025-02-09 18:10:42.496663+00	2025-02-09 18:10:42.496663+00	2025-02-09 18:10:42.496663+00	{"eTag": "\\"717e644555897e95c3d823e99cedf0f5\\"", "size": 412711, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.493Z", "contentLength": 412711, "httpStatusCode": 200}	26e9ea10-6896-4acb-aceb-a6e44c63de42	\N	{}
697d49c4-c429-4f27-97f3-59c76f3bc937	campuses	pba/7	\N	2025-02-09 18:10:42.509663+00	2025-02-09 18:10:42.509663+00	2025-02-09 18:10:42.509663+00	{"eTag": "\\"93d7bbd4ec35f5081c7c3f39386ad5e7\\"", "size": 301592, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.507Z", "contentLength": 301592, "httpStatusCode": 200}	6da8ff22-50d1-4581-9cb1-2e3a4977f00e	\N	{}
b59820a4-b078-4a1b-8b31-8f783eab6a9b	campuses	pba/8	\N	2025-02-09 18:10:42.521272+00	2025-02-09 18:10:42.521272+00	2025-02-09 18:10:42.521272+00	{"eTag": "\\"58614df7a722a6a8690b39d9e8a84f4e\\"", "size": 282348, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.519Z", "contentLength": 282348, "httpStatusCode": 200}	aed7f5e9-7923-4932-a90a-fe8ce83c0f3e	\N	{}
25f673f8-6279-4810-be12-fd495fd894bb	campuses	pba/4	\N	2025-02-09 18:10:42.531069+00	2025-02-09 18:10:42.531069+00	2025-02-09 18:10:42.531069+00	{"eTag": "\\"6348e3afaefe69f77c95c1afbe4b02ed\\"", "size": 295027, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.529Z", "contentLength": 295027, "httpStatusCode": 200}	06a7d2da-8619-4569-86d7-2cbfb70659b7	\N	{}
2e71d4ce-8382-481a-b3a7-2a4ab79e5a10	campuses	pba/5	\N	2025-02-09 18:10:42.539513+00	2025-02-09 18:10:42.539513+00	2025-02-09 18:10:42.539513+00	{"eTag": "\\"017ed2bf71778932a9757f100448bc1b\\"", "size": 376775, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.537Z", "contentLength": 376775, "httpStatusCode": 200}	4303beca-cd56-4822-8df5-59a6f93a2908	\N	{}
019ce360-4e5d-41b3-aa57-24e3833bf72c	campuses	pba/9	\N	2025-02-09 18:10:42.546884+00	2025-02-09 18:10:42.546884+00	2025-02-09 18:10:42.546884+00	{"eTag": "\\"ba373cd7735d7f186579f51bb815493e\\"", "size": 189193, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.545Z", "contentLength": 189193, "httpStatusCode": 200}	0ed0e6b9-1ac3-428c-9888-48ae40854b82	\N	{}
bc924a05-08fe-4088-9f92-8a5b66319ed1	campuses	pba/2	\N	2025-02-09 18:10:42.556758+00	2025-02-09 18:10:42.556758+00	2025-02-09 18:10:42.556758+00	{"eTag": "\\"e8afe263cf5fdf2ea59b73433f7e7aac\\"", "size": 246421, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.555Z", "contentLength": 246421, "httpStatusCode": 200}	c36a750f-cdf0-41e1-8175-c45ac1d29cfb	\N	{}
c39556f4-9f42-47da-b35c-970eab65648e	campuses	pba/3	\N	2025-02-09 18:10:42.565312+00	2025-02-09 18:10:42.565312+00	2025-02-09 18:10:42.565312+00	{"eTag": "\\"749fe734b5e0f4250a9709c63b8ba6dd\\"", "size": 314571, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.563Z", "contentLength": 314571, "httpStatusCode": 200}	4368aed6-5be4-471d-9c9d-3b05ff63a7f9	\N	{}
fc0f22f9-a41f-4656-b2d2-784e2473e373	campuses	juniata/9	\N	2025-02-09 18:10:42.572695+00	2025-02-09 18:10:42.572695+00	2025-02-09 18:10:42.572695+00	{"eTag": "\\"ad2b9f82807bd22c999fd34a0104e8f6\\"", "size": 388, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.571Z", "contentLength": 388, "httpStatusCode": 200}	ef4f3176-cdfd-4905-8048-2c27f5947c07	\N	{}
47620aad-6a27-4e11-a5af-1abc5e19cda1	campuses	juniata/4	\N	2025-02-09 18:10:42.580819+00	2025-02-09 18:10:42.580819+00	2025-02-09 18:10:42.580819+00	{"eTag": "\\"ccf0f7ae2e6537f3396ea2cf0544f876\\"", "size": 451, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.579Z", "contentLength": 451, "httpStatusCode": 200}	7b6eddd6-403b-413c-9fac-4ed286fec19e	\N	{}
33e258bd-5d2d-4237-8bd5-3e1b6415b01b	campuses	juniata/3	\N	2025-02-09 18:10:42.588416+00	2025-02-09 18:10:42.588416+00	2025-02-09 18:10:42.588416+00	{"eTag": "\\"52ecebe3f88c20e089ed60bdd1b73287\\"", "size": 449, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.587Z", "contentLength": 449, "httpStatusCode": 200}	9ced3297-27b0-455a-8369-e62e6b2e1007	\N	{}
132b05f8-a26e-40e5-9d94-44e25456e8b9	campuses	juniata/2	\N	2025-02-09 18:10:42.596766+00	2025-02-09 18:10:42.596766+00	2025-02-09 18:10:42.596766+00	{"eTag": "\\"5c7fef6d68788a4c640e2b5d02887eff\\"", "size": 386, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.595Z", "contentLength": 386, "httpStatusCode": 200}	37ca0dd1-8fe2-47e6-9546-c499fc27fc7a	\N	{}
9bd3af98-3bac-41cc-8390-31fdc5b9ed93	campuses	juniata/8	\N	2025-02-09 18:10:42.60297+00	2025-02-09 18:10:42.60297+00	2025-02-09 18:10:42.60297+00	{"eTag": "\\"b0d99764c52f55602f24b1b3d661d820\\"", "size": 39339, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.601Z", "contentLength": 39339, "httpStatusCode": 200}	c8af4d0f-9e65-4d2e-be5c-d06f0ec37927	\N	{}
b594b471-37d2-4ea2-9737-5163445a9a98	campuses	juniata/1	\N	2025-02-09 18:10:42.611224+00	2025-02-09 18:10:42.611224+00	2025-02-09 18:10:42.611224+00	{"eTag": "\\"892c9d411061b22afd9cd69b37a132eb\\"", "size": 386, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.610Z", "contentLength": 386, "httpStatusCode": 200}	5b39f006-1015-41a4-b8ea-acd2db0461a6	\N	{}
bf73a574-73b6-4aee-ad11-481c33fff300	campuses	juniata/5	\N	2025-02-09 18:10:42.618799+00	2025-02-09 18:10:42.618799+00	2025-02-09 18:10:42.618799+00	{"eTag": "\\"067863d2ad0f3772a8ad6a6a55e90c26\\"", "size": 86362, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.617Z", "contentLength": 86362, "httpStatusCode": 200}	31b41b66-ed03-4bd6-b8b0-490ff8dbc529	\N	{}
e97c5c13-fb1a-4ac6-b5bc-c41c247696b1	campuses	juniata/0	\N	2025-02-09 18:10:42.626496+00	2025-02-09 18:10:42.626496+00	2025-02-09 18:10:42.626496+00	{"eTag": "\\"379c69b471200042a3d9aca422468d56\\"", "size": 488, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.625Z", "contentLength": 488, "httpStatusCode": 200}	acea98e7-f74d-4595-80bd-dce7e4ad5f97	\N	{}
66f91b3b-4a5e-4a85-9254-7992c6ccaa92	campuses	juniata/7	\N	2025-02-09 18:10:42.633997+00	2025-02-09 18:10:42.633997+00	2025-02-09 18:10:42.633997+00	{"eTag": "\\"d1ee391016163aad7414fce3fe9f5dbc\\"", "size": 388, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.633Z", "contentLength": 388, "httpStatusCode": 200}	583010e7-7377-4fff-aae5-ecca2e4f021c	\N	{}
bb3d394b-81d0-4600-9ead-85b6ef1934bf	campuses	juniata/6	\N	2025-02-09 18:10:42.641083+00	2025-02-09 18:10:42.641083+00	2025-02-09 18:10:42.641083+00	{"eTag": "\\"9e38c20a965ccff7d3e249bd1ddb2083\\"", "size": 468, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T18:10:42.640Z", "contentLength": 468, "httpStatusCode": 200}	18625b8b-14d3-44cc-804a-d149025f0996	\N	{}
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--

COPY "supabase_functions"."hooks" ("id", "hook_table_id", "hook_name", "created_at", "request_id") FROM stdin;
\.


--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--

COPY "vault"."secrets" ("id", "name", "description", "secret", "key_id", "nonce", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 9, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: Suggestions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."Suggestions_id_seq"', 4, true);


--
-- Name: colleges_collegeid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."colleges_collegeid_seq"', 1, false);


--
-- Name: colleges_collegeid_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."colleges_collegeid_seq1"', 1543, true);


--
-- Name: questionresponses_responseid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."questionresponses_responseid_seq"', 2582, true);


--
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."questions_id_seq"', 24, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
