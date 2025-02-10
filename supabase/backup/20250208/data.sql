SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.6
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
8	Has undocu-student webpage	other
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
87a68ba9-7176-4b69-b42d-6e9640176d18	campuses	bard/3	\N	2025-01-26 02:53:43.088369+00	2025-01-26 02:53:43.088369+00	2025-01-26 02:53:43.088369+00	{"eTag": "\\"8452b945ddf13fa1d7ac6801fdea0974\\"", "size": 466087, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:43.084Z", "contentLength": 466087, "httpStatusCode": 200}	6f9252de-4ac9-4c26-a825-3fc99f47db06	\N	{}
b6e0e2c7-598f-4f79-9ded-6b5fd3bce763	campuses	byui/9	\N	2025-01-26 03:00:43.469825+00	2025-01-26 03:00:43.469825+00	2025-01-26 03:00:43.469825+00	{"eTag": "\\"c8d9e4eae0b4b1a2cc850105c28e293c\\"", "size": 37554, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:43.465Z", "contentLength": 37554, "httpStatusCode": 200}	4cfada76-ccf7-4b31-999a-e7ac7a192cb6	\N	{}
fa2f5287-fb90-4148-a9ba-20511a8eff77	campuses	bard/4	\N	2025-01-26 02:53:43.74338+00	2025-01-26 02:53:43.74338+00	2025-01-26 02:53:43.74338+00	{"eTag": "\\"ee1572d851e30c97d010defc4858c28e\\"", "size": 234308, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:43.736Z", "contentLength": 234308, "httpStatusCode": 200}	969bb700-ccb1-4180-b454-29b2620a2bff	\N	{}
52af0614-1dd2-4855-b038-9ca7ec786058	campuses	bard/6	\N	2025-01-26 02:53:45.375307+00	2025-01-26 02:53:45.375307+00	2025-01-26 02:53:45.375307+00	{"eTag": "\\"12ca791764aa73433e0f0a12c654ab74\\"", "size": 700082, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:45.366Z", "contentLength": 700082, "httpStatusCode": 200}	20da1d3e-3591-4303-a881-ac0aaa09a3ea	\N	{}
19f38234-9873-4665-a160-f72a0d98b7f2	campuses	bard/7	\N	2025-01-26 02:53:46.156159+00	2025-01-26 02:53:46.156159+00	2025-01-26 02:53:46.156159+00	{"eTag": "\\"29714b4d83a652e82855d42b26086b37\\"", "size": 267713, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:46.151Z", "contentLength": 267713, "httpStatusCode": 200}	24d6aef8-5aa0-4bcc-86e1-31a067827a0a	\N	{}
ba2c6e21-195f-46ce-ba5e-2adffe4eb169	campuses	bard/8	\N	2025-01-26 02:53:46.964337+00	2025-01-26 02:53:46.964337+00	2025-01-26 02:53:46.964337+00	{"eTag": "\\"91ac1dfc29056093f45631c2b668c756\\"", "size": 633380, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:46.951Z", "contentLength": 633380, "httpStatusCode": 200}	ba404bf1-ec71-4dfd-94cc-ad46a26fc0da	\N	{}
4fd55521-573c-4e2b-ba4b-694159ab7fe5	campuses	bard/9	\N	2025-01-26 02:53:47.51342+00	2025-01-26 02:53:47.51342+00	2025-01-26 02:53:47.51342+00	{"eTag": "\\"7d6a692d201a4c339daf21f55f2d0b98\\"", "size": 120991, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:47.506Z", "contentLength": 120991, "httpStatusCode": 200}	6f64ebc4-c4a5-4596-8712-c2508a083290	\N	{}
52e5ea02-50c4-4e05-a1bc-9bdae4f49dc4	campuses	american/1	\N	2025-01-26 02:31:26.178656+00	2025-01-26 02:53:08.513279+00	2025-01-26 02:31:26.178656+00	{"eTag": "\\"208387a162f4b29847726d82818d6344\\"", "size": 145427, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:08.505Z", "contentLength": 145427, "httpStatusCode": 200}	2fdcb31a-3270-4ce9-b54c-6f4dc8b7f5ef	\N	{}
9e52e9cc-902d-4ab7-be4e-b0e26d4551c4	campuses	artcenter/8	\N	2025-01-26 02:53:38.651701+00	2025-01-26 02:53:38.651701+00	2025-01-26 02:53:38.651701+00	{"eTag": "\\"31e2d9ca15e974bbc38687d8e75da88d\\"", "size": 158536, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:38.645Z", "contentLength": 158536, "httpStatusCode": 200}	c96b6544-7a1b-4c1d-bc1b-b1c87818a398	\N	{}
9c093784-ed01-418f-a941-02e02fbc7207	campuses	american/2	\N	2025-01-26 02:53:08.916974+00	2025-01-26 02:53:08.916974+00	2025-01-26 02:53:08.916974+00	{"eTag": "\\"58369b0f2314472628497429eccded9c\\"", "size": 97157, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:08.910Z", "contentLength": 97157, "httpStatusCode": 200}	d2e7e20c-7e7d-460b-bdf3-a41fed30c9c7	\N	{}
c67dca25-85f2-4dd9-abe0-2be73526b178	campuses	bard/2	\N	2025-01-26 02:53:42.369648+00	2025-01-26 02:53:42.369648+00	2025-01-26 02:53:42.369648+00	{"eTag": "\\"f1e83eda8ca750e3a1e1d8d58dc9566a\\"", "size": 303336, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:42.362Z", "contentLength": 303336, "httpStatusCode": 200}	e4737c6b-ab59-47ab-b6bd-8d7aff592cc2	\N	{}
009e5052-44cc-4804-89fc-b0526b734eb2	campuses	artcenter/7	\N	2025-01-26 02:53:37.914412+00	2025-01-26 02:53:37.914412+00	2025-01-26 02:53:37.914412+00	{"eTag": "\\"9bdf7ca9cf717b1f52248d6e2568be9d\\"", "size": 123627, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:37.909Z", "contentLength": 123627, "httpStatusCode": 200}	9845d883-ac58-4369-b515-5e8797d2c394	\N	{}
c2c4d2af-ef7d-4f30-9866-9c6dbc1eeaa4	campuses	american/0	\N	2025-01-26 02:53:08.084223+00	2025-01-26 02:53:08.084223+00	2025-01-26 02:53:08.084223+00	{"eTag": "\\"efcb161b4c48c691dec9c9501cf6603f\\"", "size": 125605, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:08.078Z", "contentLength": 125605, "httpStatusCode": 200}	c53a3951-f2a9-472b-b1e1-5563f49866b4	\N	{}
de760f42-cba3-461d-97dc-f00b3047163b	campuses	american/3	\N	2025-01-26 02:53:09.577101+00	2025-01-26 02:53:09.577101+00	2025-01-26 02:53:09.577101+00	{"eTag": "\\"403a6b7854999944dfae6c4a7015eeb4\\"", "size": 1918410, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:09.557Z", "contentLength": 1918410, "httpStatusCode": 200}	31bd90b6-cead-4bf0-8fc8-fc061176a854	\N	{}
d9f4f6db-0332-4c43-87f4-6aafdeeaf407	campuses	american/4	\N	2025-01-26 02:53:10.038783+00	2025-01-26 02:53:10.038783+00	2025-01-26 02:53:10.038783+00	{"eTag": "\\"94e6635dccadf8b3d3bcfb1b3b8314b0\\"", "size": 45168, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:10.034Z", "contentLength": 45168, "httpStatusCode": 200}	49f4bd4b-aebd-4e91-bfae-d1331b6a7a8f	\N	{}
82ebaef4-cb22-402f-bd63-c88668fcfaa3	campuses	american/5	\N	2025-01-26 02:53:10.601422+00	2025-01-26 02:53:10.601422+00	2025-01-26 02:53:10.601422+00	{"eTag": "\\"a5e4bcc045dc6bf9e105e21b752a4a75\\"", "size": 736639, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:10.586Z", "contentLength": 736639, "httpStatusCode": 200}	1f0e14aa-5406-4b55-832f-2833407a831a	\N	{}
d43d57eb-43ae-4d92-a9b8-015d4b2e6641	campuses	american/6	\N	2025-01-26 02:53:12.287428+00	2025-01-26 02:53:12.287428+00	2025-01-26 02:53:12.287428+00	{"eTag": "\\"62312c2d7642d3efe0acad9fad2eafc2\\"", "size": 4057780, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:12.253Z", "contentLength": 4057780, "httpStatusCode": 200}	f93bb6fa-a96b-478e-86f3-d4f6f76de9c4	\N	{}
0c485063-5ece-497e-bc94-cf4638e0c451	campuses	american/7	\N	2025-01-26 02:53:12.675932+00	2025-01-26 02:53:12.675932+00	2025-01-26 02:53:12.675932+00	{"eTag": "\\"709368aa7a57358f92b6c42044f60ffd\\"", "size": 87740, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:12.673Z", "contentLength": 87740, "httpStatusCode": 200}	00927371-ecd6-4176-9bfc-9abe83d73d27	\N	{}
0afe3224-6d07-4fee-b38e-f94d9ee4ec5b	campuses	american/8	\N	2025-01-26 02:53:13.0651+00	2025-01-26 02:53:13.0651+00	2025-01-26 02:53:13.0651+00	{"eTag": "\\"7a70f33d17d778b491662c1928b0e33c\\"", "size": 45323, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:13.064Z", "contentLength": 45323, "httpStatusCode": 200}	d2341106-69a0-4a6e-b55e-1f25bcf555e8	\N	{}
751ab7a8-446d-41a5-9fac-2352182b56f7	campuses	bryant/0	\N	2025-01-26 03:00:44.341728+00	2025-01-26 03:00:44.341728+00	2025-01-26 03:00:44.341728+00	{"eTag": "\\"3c7ed3f7c450dfa05a799a00df297e87\\"", "size": 1151771, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:44.323Z", "contentLength": 1151771, "httpStatusCode": 200}	c37c1e39-081f-4646-ba20-2a73bd99211b	\N	{}
6f56a0b8-0908-40f2-b4cf-a16198e508cf	campuses	american/9	\N	2025-01-26 02:53:13.410297+00	2025-01-26 02:53:13.410297+00	2025-01-26 02:53:13.410297+00	{"eTag": "\\"4ac6cd22070f7ee781befdfc508d125b\\"", "size": 44121, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:13.407Z", "contentLength": 44121, "httpStatusCode": 200}	0d099782-9c9a-4c24-8bb4-99882e8ade9b	\N	{}
6220e4e4-4640-4dbe-b8c2-687ff5cbca6a	campuses	bard/5	\N	2025-01-26 02:53:44.685373+00	2025-01-26 02:53:44.685373+00	2025-01-26 02:53:44.685373+00	{"eTag": "\\"f976cdf679bb20a056cc30321d53e76b\\"", "size": 1820599, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:44.663Z", "contentLength": 1820599, "httpStatusCode": 200}	65575c15-440c-4efd-b98b-132eb5d497fe	\N	{}
14479ab1-86bb-41cf-9f76-ae27e661e5ec	campuses	aubg/0	\N	2025-01-26 02:53:14.498461+00	2025-01-26 02:53:14.498461+00	2025-01-26 02:53:14.498461+00	{"eTag": "\\"4d3abc0bf5d0b3a6ddbda930240d6bda\\"", "size": 167449, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:14.449Z", "contentLength": 167449, "httpStatusCode": 200}	1385cd60-877d-40c8-8341-f6a2521e157c	\N	{}
02ab9729-4a5a-4c64-9dd1-61195b1d24e7	campuses	csi.cuny/1	\N	2025-01-26 03:01:43.57534+00	2025-01-26 03:01:43.57534+00	2025-01-26 03:01:43.57534+00	{"eTag": "\\"ffa8f2b8a18ec171e9ee2ef9cf4ff99c\\"", "size": 962498, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:43.564Z", "contentLength": 962498, "httpStatusCode": 200}	fffe38d5-4319-42e3-b9c3-b03b8bcc3c93	\N	{}
6c31d00c-56d7-4757-a55e-73bb6caeb521	campuses	aubg/1	\N	2025-01-26 02:53:15.827485+00	2025-01-26 02:53:15.827485+00	2025-01-26 02:53:15.827485+00	{"eTag": "\\"fa86a0a10145f476efff6e56db635963\\"", "size": 274002, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:15.813Z", "contentLength": 274002, "httpStatusCode": 200}	71b1f3e5-126b-4269-a77c-89da5f793686	\N	{}
433c8041-ef7a-41fc-b29c-74eae58c044b	campuses	simons-rock/2	\N	2025-01-26 02:53:49.380686+00	2025-01-26 02:53:49.380686+00	2025-01-26 02:53:49.380686+00	{"eTag": "\\"774c233f7a04c49ad1bffdbfcab297af\\"", "size": 1344155, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:49.369Z", "contentLength": 1344155, "httpStatusCode": 200}	52ffd275-dff5-4a24-b2a6-4ce342c0d2da	\N	{}
ba3afd19-108e-4938-acbc-9b64ab8c0d80	campuses	aubg/2	\N	2025-01-26 02:53:16.664968+00	2025-01-26 02:53:16.664968+00	2025-01-26 02:53:16.664968+00	{"eTag": "\\"18e303e3b765d4eb471847686f1f9d46\\"", "size": 340029, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:16.660Z", "contentLength": 340029, "httpStatusCode": 200}	f952aded-7316-4392-b32a-33252fad7c3c	\N	{}
2a95ea2e-a1ad-4ce0-8e85-6aeef473fcd0	campuses	bryant/1	\N	2025-01-26 03:00:45.390181+00	2025-01-26 03:00:45.390181+00	2025-01-26 03:00:45.390181+00	{"eTag": "\\"8d9f4c601d9d86effd583d3c01b9186a\\"", "size": 378856, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:45.383Z", "contentLength": 378856, "httpStatusCode": 200}	56e1ee18-ff3a-4699-a015-da9c5f14dbab	\N	{}
4416cd9a-7189-4b8c-9a39-d0576ce4a6cf	campuses	aubg/3	\N	2025-01-26 02:53:16.966208+00	2025-01-26 02:53:16.966208+00	2025-01-26 02:53:16.966208+00	{"eTag": "\\"4775e2b2182e47c62b07c55fd5ec884c\\"", "size": 42891, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:16.965Z", "contentLength": 42891, "httpStatusCode": 200}	e38f133f-d09a-4cb8-9c29-7466d9b00d21	\N	{}
b123e711-d6f6-4253-970a-92752646a180	campuses	aubg/4	\N	2025-01-26 02:53:17.3929+00	2025-01-26 02:53:17.3929+00	2025-01-26 02:53:17.3929+00	{"eTag": "\\"88e6a763678b1a846e544e48dd0ad764\\"", "size": 251352, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:17.389Z", "contentLength": 251352, "httpStatusCode": 200}	8abf4cf0-2e3e-47a0-9c4f-420ee891e32a	\N	{}
0e2da6f4-d176-4a5c-a6d8-da573a555f77	campuses	aubg/5	\N	2025-01-26 02:53:17.968465+00	2025-01-26 02:53:17.968465+00	2025-01-26 02:53:17.968465+00	{"eTag": "\\"33d1a341f35600ab03871ff0822e5ab9\\"", "size": 188384, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:17.962Z", "contentLength": 188384, "httpStatusCode": 200}	42667fbf-2d13-4be2-a8fc-1c4bc6f78286	\N	{}
30ecd16c-58df-4565-90b6-48e58094134c	campuses	aubg/6	\N	2025-01-26 02:53:18.600346+00	2025-01-26 02:53:18.600346+00	2025-01-26 02:53:18.600346+00	{"eTag": "\\"8276eb175161d15a3c0db8b4782c1c89\\"", "size": 322071, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:18.594Z", "contentLength": 322071, "httpStatusCode": 200}	79f90e65-fa41-45a7-9430-108949209678	\N	{}
c94ccb5d-d226-4eed-bcf2-2cef23c75c6f	campuses	aubg/7	\N	2025-01-26 02:53:19.126776+00	2025-01-26 02:53:19.126776+00	2025-01-26 02:53:19.126776+00	{"eTag": "\\"e47ec959a8905ab732c54445d3cb8f55\\"", "size": 82924, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:19.120Z", "contentLength": 82924, "httpStatusCode": 200}	1a27d2b4-34ed-4d15-9e38-5707046730f8	\N	{}
8481dd41-cb7d-4844-9b05-d9dc9dcc9218	campuses	aubg/8	\N	2025-01-26 02:53:20.105135+00	2025-01-26 02:53:20.105135+00	2025-01-26 02:53:20.105135+00	{"eTag": "\\"23302903f67fe544e2be0182d7f7a20c\\"", "size": 1316728, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:20.089Z", "contentLength": 1316728, "httpStatusCode": 200}	7bb058f5-94f6-489e-bf03-f441463b0d93	\N	{}
a1d76583-9919-4098-86dc-574d60e8660e	campuses	aubg/9	\N	2025-01-26 02:53:20.666568+00	2025-01-26 02:53:20.666568+00	2025-01-26 02:53:20.666568+00	{"eTag": "\\"4c3790edd21022ff9404ceb7364d380e\\"", "size": 147360, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:20.661Z", "contentLength": 147360, "httpStatusCode": 200}	de7f6774-3737-40d6-9ceb-de0e28c6bb82	\N	{}
31cad704-d85b-427d-b96a-232f9cf82dd2	campuses	amherst/0	\N	2025-01-26 02:53:22.197209+00	2025-01-26 02:53:22.197209+00	2025-01-26 02:53:22.197209+00	{"eTag": "\\"6438d61deeb5458ee3ceca42072ac091\\"", "size": 166060, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:22.188Z", "contentLength": 166060, "httpStatusCode": 200}	30489164-2083-4b1b-b05b-633fb1a8038e	\N	{}
83900cd1-4e93-47e6-984f-52ad68d0e4a2	campuses	amherst/1	\N	2025-01-26 02:53:23.263947+00	2025-01-26 02:53:23.263947+00	2025-01-26 02:53:23.263947+00	{"eTag": "\\"e11604bb2ed4ba6c1726f2c597919954\\"", "size": 86973, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:23.259Z", "contentLength": 86973, "httpStatusCode": 200}	cc902a34-b3b9-465d-a484-339c043a30ac	\N	{}
fec68025-bfa9-4b34-8698-652e32885e7e	campuses	amherst/2	\N	2025-01-26 02:53:24.166754+00	2025-01-26 02:53:24.166754+00	2025-01-26 02:53:24.166754+00	{"eTag": "\\"7de65b6f25b988c43cf16ec0662f2138\\"", "size": 184944, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:24.159Z", "contentLength": 184944, "httpStatusCode": 200}	473616ed-9a4a-4874-af07-31cb0c9672f8	\N	{}
d83ccf87-6c28-429c-a348-c5b0534b0a75	campuses	bryant/2	\N	2025-01-26 03:00:46.156182+00	2025-01-26 03:00:46.156182+00	2025-01-26 03:00:46.156182+00	{"eTag": "\\"12cc94d283177ee8b5ed7886db84ad8b\\"", "size": 460032, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:46.145Z", "contentLength": 460032, "httpStatusCode": 200}	55c10781-cea3-42c5-88e9-59f84f991af0	\N	{}
f1eb612c-3c32-4471-b0c8-f977d41ec831	campuses	amherst/3	\N	2025-01-26 02:53:25.294956+00	2025-01-26 02:53:25.294956+00	2025-01-26 02:53:25.294956+00	{"eTag": "\\"8e801adba21190b5d59d3f8ae2413205\\"", "size": 162296, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:25.288Z", "contentLength": 162296, "httpStatusCode": 200}	3d47e978-653a-4364-a553-6911eb151de2	\N	{}
8b7e63c8-3764-43fd-9450-04a71a3ff0ea	campuses	simons-rock/0	\N	2025-01-26 02:53:48.138781+00	2025-01-26 02:53:48.138781+00	2025-01-26 02:53:48.138781+00	{"eTag": "\\"c3c6b91f448704ec583bb207fdb9f8ee\\"", "size": 175308, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:48.136Z", "contentLength": 175308, "httpStatusCode": 200}	444c3f0b-1156-4193-ac26-cc7e412b9473	\N	{}
012e341f-5d3b-4362-aa08-e7738207c44b	campuses	amherst/4	\N	2025-01-26 02:53:26.358311+00	2025-01-26 02:53:26.358311+00	2025-01-26 02:53:26.358311+00	{"eTag": "\\"ba14a8dcd0c7b68c9ae3ffd37e150fb8\\"", "size": 81808, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:26.353Z", "contentLength": 81808, "httpStatusCode": 200}	e83912f3-fbc9-4542-85f9-17ec6ffe095b	\N	{}
1a143192-fe3c-4cab-9726-1648c01d56f6	campuses	amherst/5	\N	2025-01-26 02:53:27.388421+00	2025-01-26 02:53:27.388421+00	2025-01-26 02:53:27.388421+00	{"eTag": "\\"e6e7cb655a386b61f72b860eb09e5661\\"", "size": 133521, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:27.385Z", "contentLength": 133521, "httpStatusCode": 200}	a3f3b917-bdc4-4136-b892-d36e5ba6ee50	\N	{}
06d46ffe-b968-4853-b7a6-555ea515cb3b	campuses	simons-rock/1	\N	2025-01-26 02:53:48.732023+00	2025-01-26 02:53:48.732023+00	2025-01-26 02:53:48.732023+00	{"eTag": "\\"76e178ca6b457a77b4eb61303c2e07f7\\"", "size": 797319, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:48.724Z", "contentLength": 797319, "httpStatusCode": 200}	555dbdb7-81d8-4002-9cab-62942b8c3657	\N	{}
4ba6b81d-7cca-44df-8641-3505ce1b000a	campuses	amherst/6	\N	2025-01-26 02:53:28.643748+00	2025-01-26 02:53:28.643748+00	2025-01-26 02:53:28.643748+00	{"eTag": "\\"9205a08a6e0853ab965cfad56ce57f6f\\"", "size": 259750, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:28.633Z", "contentLength": 259750, "httpStatusCode": 200}	299c5956-4ceb-4e39-89a5-3ed31a59850e	\N	{}
380adf92-6226-46e3-9c43-62e083796b5b	campuses	bryant/3	\N	2025-01-26 03:00:46.693487+00	2025-01-26 03:00:46.693487+00	2025-01-26 03:00:46.693487+00	{"eTag": "\\"fde0612a17c3b40a2222b6ecc80b149e\\"", "size": 83187, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:46.687Z", "contentLength": 83187, "httpStatusCode": 200}	b1992031-e05a-42af-9a71-1d9cacd4308e	\N	{}
da9b3a38-44a9-40eb-a6a5-6d9e77bca982	campuses	amherst/7	\N	2025-01-26 02:53:29.892721+00	2025-01-26 02:53:29.892721+00	2025-01-26 02:53:29.892721+00	{"eTag": "\\"2a07290417cc2f919d12023dc8043bb2\\"", "size": 499009, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:29.878Z", "contentLength": 499009, "httpStatusCode": 200}	a56d6524-1a2e-41c6-a9d8-d1a97c2e34b8	\N	{}
3d9c73fb-6e57-4689-9788-ecf26feaf53a	campuses	amherst/8	\N	2025-01-26 02:53:30.912481+00	2025-01-26 02:53:30.912481+00	2025-01-26 02:53:30.912481+00	{"eTag": "\\"9173b9538edc97840e854fe430b02df9\\"", "size": 127534, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:30.901Z", "contentLength": 127534, "httpStatusCode": 200}	b3923fe2-5075-430e-a6dc-b7328c58d5f9	\N	{}
e1a5a6c9-2ea4-4a5d-ac87-2cab3ebfda99	campuses	amherst/9	\N	2025-01-26 02:53:31.729037+00	2025-01-26 02:53:31.729037+00	2025-01-26 02:53:31.729037+00	{"eTag": "\\"53a1373b93fb1152d96c31274655e369\\"", "size": 98904, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:31.721Z", "contentLength": 98904, "httpStatusCode": 200}	e62177e9-0c08-4486-8d20-2dee487dad5c	\N	{}
b24fe667-866f-40fb-bd9b-f8c9d50dd211	campuses	artcenter/0	\N	2025-01-26 02:53:32.70974+00	2025-01-26 02:53:32.70974+00	2025-01-26 02:53:32.70974+00	{"eTag": "\\"027e1025520b134982ec6be5e52fd063\\"", "size": 104080, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:32.698Z", "contentLength": 104080, "httpStatusCode": 200}	015d962f-7ddc-4848-a18f-97d9109286d9	\N	{}
9a505df5-0ce3-4067-b7ee-645a3e5aa556	campuses	artcenter/1	\N	2025-01-26 02:53:33.504607+00	2025-01-26 02:53:33.504607+00	2025-01-26 02:53:33.504607+00	{"eTag": "\\"2c55d66da139f67ea5ced9c74efa2a40\\"", "size": 91178, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:33.496Z", "contentLength": 91178, "httpStatusCode": 200}	f8a70f90-3bd5-4d64-8b3b-72148d0e5785	\N	{}
647db889-57e2-4c52-bbda-8b58efb57d36	campuses	artcenter/2	\N	2025-01-26 02:53:34.438105+00	2025-01-26 02:53:34.438105+00	2025-01-26 02:53:34.438105+00	{"eTag": "\\"270253ee7405bb6d94fd8d1cd9e972d7\\"", "size": 368828, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:34.433Z", "contentLength": 368828, "httpStatusCode": 200}	1d9e2683-84a7-415f-afc7-e6baa57dd556	\N	{}
31b489ce-07ed-4678-8254-e7962b4181a0	campuses	artcenter/3	\N	2025-01-26 02:53:35.202446+00	2025-01-26 02:53:35.202446+00	2025-01-26 02:53:35.202446+00	{"eTag": "\\"78d1d1d8a7de2836c03bda862f93473b\\"", "size": 107336, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:35.198Z", "contentLength": 107336, "httpStatusCode": 200}	867f40d9-f414-4dbc-9178-fe2d609af855	\N	{}
ba0797e2-0e2d-42f5-80c8-327ac21e2110	campuses	artcenter/4	\N	2025-01-26 02:53:35.858215+00	2025-01-26 02:53:35.858215+00	2025-01-26 02:53:35.858215+00	{"eTag": "\\"c50f3f5171a1083aa8183d9ae21c6532\\"", "size": 145885, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:35.852Z", "contentLength": 145885, "httpStatusCode": 200}	fc0c797c-25cb-401f-8b3f-b907e38ab2af	\N	{}
47cb8df6-e067-4de4-9b98-89ac73bc1519	campuses	artcenter/5	\N	2025-01-26 02:53:36.473882+00	2025-01-26 02:53:36.473882+00	2025-01-26 02:53:36.473882+00	{"eTag": "\\"ecaa174aa25e59bc77d2950d544df84e\\"", "size": 55800, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:36.469Z", "contentLength": 55800, "httpStatusCode": 200}	8d6c5a21-a8f1-48cf-b322-077f9df1dbc0	\N	{}
edf13faa-ba42-4687-b303-40cbdfbf7670	campuses	artcenter/6	\N	2025-01-26 02:53:37.150855+00	2025-01-26 02:53:37.150855+00	2025-01-26 02:53:37.150855+00	{"eTag": "\\"c4bcf2e2abbb0b70a8eca90ca6f3a5eb\\"", "size": 108181, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:37.144Z", "contentLength": 108181, "httpStatusCode": 200}	3a27fba7-fb74-4ef1-af82-2d585a9c3960	\N	{}
32b63ca2-893e-46d7-8920-12bc6e314b5f	campuses	bates/2	\N	2025-01-26 02:59:57.631791+00	2025-01-26 02:59:57.631791+00	2025-01-26 02:59:57.631791+00	{"eTag": "\\"949672245736146566492e0ba8bb306b\\"", "size": 223426, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:59:57.624Z", "contentLength": 223426, "httpStatusCode": 200}	97769f65-c8ed-475d-bad4-60e8a65cdb08	\N	{}
41712c6b-ede6-4a83-8d25-2ea53eff8aa1	campuses	artcenter/9	\N	2025-01-26 02:53:40.162978+00	2025-01-26 02:53:40.162978+00	2025-01-26 02:53:40.162978+00	{"eTag": "\\"b55723b9758a51cd356c5dfbb0326d5a\\"", "size": 2460480, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:40.133Z", "contentLength": 2460480, "httpStatusCode": 200}	e5e2828d-36b7-4a95-b6cb-1e6461284f96	\N	{}
89d60fc2-3c92-43dd-ae98-432290d6e08a	campuses	bryant/4	\N	2025-01-26 03:00:47.401256+00	2025-01-26 03:00:47.401256+00	2025-01-26 03:00:47.401256+00	{"eTag": "\\"f46ea87e06679cf6a8cf03506b1e31d7\\"", "size": 662154, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:47.384Z", "contentLength": 662154, "httpStatusCode": 200}	a24bbafb-a77a-4e61-a817-eebd1207eae9	\N	{}
314aba08-689c-4c26-95c4-7c9b3d51feb3	campuses	bard/0	\N	2025-01-26 02:53:40.892039+00	2025-01-26 02:53:40.892039+00	2025-01-26 02:53:40.892039+00	{"eTag": "\\"1fba8d25819106d86be4c5934653cc24\\"", "size": 615769, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:40.879Z", "contentLength": 615769, "httpStatusCode": 200}	b0cb1b03-2f3a-43e1-a986-e37b52cfb1e6	\N	{}
1a669a09-94f1-4d5c-9e61-64b7bc6f7835	campuses	bates/3	\N	2025-01-26 02:59:58.268653+00	2025-01-26 02:59:58.268653+00	2025-01-26 02:59:58.268653+00	{"eTag": "\\"892a212521fb2b5294232fccac607b97\\"", "size": 460093, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:59:58.262Z", "contentLength": 460093, "httpStatusCode": 200}	e6cd5f7b-278a-401a-8a78-8f00585d48c3	\N	{}
34b5c712-feaa-4954-b1e2-3a91f4c88aba	campuses	bard/1	\N	2025-01-26 02:53:41.623836+00	2025-01-26 02:53:41.623836+00	2025-01-26 02:53:41.623836+00	{"eTag": "\\"bec2f9000e961c87648596cd0a625fbf\\"", "size": 696430, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:53:41.590Z", "contentLength": 696430, "httpStatusCode": 200}	4e588e4b-88ee-4316-8e82-749213576512	\N	{}
6fae6196-ef88-4cab-b8dc-663d8b1d5ed1	campuses	dsu/6	\N	2025-01-26 03:02:05.453792+00	2025-01-26 03:02:05.453792+00	2025-01-26 03:02:05.453792+00	{"eTag": "\\"408aeac93ae245f04a5fa51267a6665f\\"", "size": 29974, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:05.430Z", "contentLength": 29974, "httpStatusCode": 200}	5295e6f6-95ca-4298-bbec-172177e7cf3c	\N	{}
68616b3e-38bc-4d55-b9b4-22a3d7b2a08b	campuses	bates/4	\N	2025-01-26 02:59:59.018641+00	2025-01-26 02:59:59.018641+00	2025-01-26 02:59:59.018641+00	{"eTag": "\\"1a78efee5a87539d1c7810222b50f912\\"", "size": 1036080, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:59:59.010Z", "contentLength": 1036080, "httpStatusCode": 200}	1a975cae-53ea-435c-a69b-b521b94e60cc	\N	{}
1882e250-21af-4c9b-a65a-f203a8359ec8	campuses	bryant/5	\N	2025-01-26 03:00:48.235981+00	2025-01-26 03:00:48.235981+00	2025-01-26 03:00:48.235981+00	{"eTag": "\\"6b7da1d93e8895dd97283ad29d72c49a\\"", "size": 165933, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:48.226Z", "contentLength": 165933, "httpStatusCode": 200}	a124f871-4eb5-47c9-aa1e-f0c28f44fcfb	\N	{}
f48db494-e796-48df-a1b6-bf97278a65e3	campuses	bates/5	\N	2025-01-26 03:00:00.419624+00	2025-01-26 03:00:00.419624+00	2025-01-26 03:00:00.419624+00	{"eTag": "\\"cadfa1d9f206d14d522d86cebdc2ec15\\"", "size": 289962, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:00.407Z", "contentLength": 289962, "httpStatusCode": 200}	c2db0b62-ba65-4c58-99e8-45f22ba88602	\N	{}
c5856da3-8df1-47fa-b92a-6fd81f6035e8	campuses	bates/0	\N	2025-01-26 02:56:15.750265+00	2025-01-26 02:56:15.750265+00	2025-01-26 02:56:15.750265+00	{"eTag": "\\"22f6ba61eaec42cab943112be31b926d\\"", "size": 79280, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:56:15.743Z", "contentLength": 79280, "httpStatusCode": 200}	1c23b288-1d4e-4aac-a7f2-4eb44c9e1f15	\N	{}
66b6b70e-6209-4d25-a58c-44a3ad2cf8de	campuses	bates/6	\N	2025-01-26 03:00:01.126765+00	2025-01-26 03:00:01.126765+00	2025-01-26 03:00:01.126765+00	{"eTag": "\\"7dc9f3fff6014560738227cc13d13d2c\\"", "size": 53368, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:01.122Z", "contentLength": 53368, "httpStatusCode": 200}	1384acda-06bc-4ef9-ad61-c711fb9dafce	\N	{}
5bbe9807-8747-4c38-88f4-5dcc3e3f19a7	campuses	bates/1	\N	2025-01-26 02:56:16.491957+00	2025-01-26 02:56:16.491957+00	2025-01-26 02:56:16.491957+00	{"eTag": "\\"5a71f24acf2c9acf4b89895c5317d7fe\\"", "size": 287086, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T02:56:16.483Z", "contentLength": 287086, "httpStatusCode": 200}	7c934ca3-d472-4566-af61-76b49cc4bf30	\N	{}
127da1e7-3eb8-4098-bbdc-ef57e377e503	campuses	bryant/6	\N	2025-01-26 03:00:49.329965+00	2025-01-26 03:00:49.329965+00	2025-01-26 03:00:49.329965+00	{"eTag": "\\"609040e328e63c11c67993477fb16f9f\\"", "size": 73020, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:49.328Z", "contentLength": 73020, "httpStatusCode": 200}	d94a1a8e-925c-45f3-8941-028ae7aa6fea	\N	{}
1ffdfc41-01e1-4e7f-ae00-bb85d66de4d7	campuses	bates/7	\N	2025-01-26 03:00:02.089584+00	2025-01-26 03:00:02.089584+00	2025-01-26 03:00:02.089584+00	{"eTag": "\\"c9ec7680567918588a6eef749645d4b8\\"", "size": 2842881, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:02.057Z", "contentLength": 2842881, "httpStatusCode": 200}	2d1bd235-c6ea-45fa-8f8d-58f715cb6ce0	\N	{}
f47c42da-d91e-41c4-bd8a-0cd26e9b4ab7	campuses	bates/8	\N	2025-01-26 03:00:02.693162+00	2025-01-26 03:00:02.693162+00	2025-01-26 03:00:02.693162+00	{"eTag": "\\"ba974fb6d88813c33c86d2f36c7aa27a\\"", "size": 36249, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:02.686Z", "contentLength": 36249, "httpStatusCode": 200}	9e124a16-a257-4c13-809c-9d2800ae0409	\N	{}
92a03c26-e8f9-4172-8858-5a563d780fdb	campuses	bates/9	\N	2025-01-26 03:00:03.924399+00	2025-01-26 03:00:03.924399+00	2025-01-26 03:00:03.924399+00	{"eTag": "\\"b6f9e6d28c424dc0be5fbb8e8454ec72\\"", "size": 463267, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:03.916Z", "contentLength": 463267, "httpStatusCode": 200}	fc77028a-de65-4611-be42-2a71c60b590e	\N	{}
11e2d96d-bd92-42d7-a4ed-924e1fba5fdb	campuses	bethelcollege/0	\N	2025-01-26 03:00:04.414763+00	2025-01-26 03:00:04.414763+00	2025-01-26 03:00:04.414763+00	{"eTag": "\\"c90d3160690d8a9762befcd3a4b3a6bb\\"", "size": 18326, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:04.412Z", "contentLength": 18326, "httpStatusCode": 200}	18d9a103-7451-4dbe-90ff-75939186a699	\N	{}
cf5eb193-5402-4ecc-93f9-deaad0006e7a	campuses	bethelcollege/1	\N	2025-01-26 03:00:04.936422+00	2025-01-26 03:00:04.936422+00	2025-01-26 03:00:04.936422+00	{"eTag": "\\"056e1822ff8738e1e101d0ba645b3e48\\"", "size": 1199131, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:04.926Z", "contentLength": 1199131, "httpStatusCode": 200}	77960e08-45fe-4e46-9424-23ad5e02beff	\N	{}
58de1766-c57c-4901-8555-cfe2265ab3b2	campuses	csi.cuny/3	\N	2025-01-26 03:01:44.099134+00	2025-01-26 03:01:44.099134+00	2025-01-26 03:01:44.099134+00	{"eTag": "\\"48e7244cbe6f3e8d7a88ac5f53616bab\\"", "size": 462176, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:44.095Z", "contentLength": 462176, "httpStatusCode": 200}	346fc772-51b0-4f4a-af08-745c180417a8	\N	{}
a452ad01-b93b-4b53-b81d-f80fe309a958	campuses	bethelcollege/2	\N	2025-01-26 03:00:05.773702+00	2025-01-26 03:00:05.773702+00	2025-01-26 03:00:05.773702+00	{"eTag": "\\"d5e54787401917469cd5064e5dd817e7\\"", "size": 495986, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:05.762Z", "contentLength": 495986, "httpStatusCode": 200}	db27d636-f48b-4d57-bc1a-4569fb42b398	\N	{}
1b9edda5-7c73-43de-b5c2-f391ad2541b6	campuses	bryant/7	\N	2025-01-26 03:00:50.032256+00	2025-01-26 03:00:50.032256+00	2025-01-26 03:00:50.032256+00	{"eTag": "\\"64db31c900b210864bd3b0c0331b885a\\"", "size": 616907, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:50.020Z", "contentLength": 616907, "httpStatusCode": 200}	ad30b2eb-006e-4c31-a2df-a9a859f3cfaa	\N	{}
c7b70e1b-1070-4679-b5da-22c3ef3a6f4e	campuses	bethelcollege/3	\N	2025-01-26 03:00:06.450861+00	2025-01-26 03:00:06.450861+00	2025-01-26 03:00:06.450861+00	{"eTag": "\\"2835b4a11a8bb17eb0d0f57f70e1d659\\"", "size": 434265, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:06.437Z", "contentLength": 434265, "httpStatusCode": 200}	97407bbb-1fb6-489c-a674-b14c86af09c6	\N	{}
111de91a-e302-4909-94b5-1ba261c434a8	campuses	bethelcollege/4	\N	2025-01-26 03:00:07.163486+00	2025-01-26 03:00:07.163486+00	2025-01-26 03:00:07.163486+00	{"eTag": "\\"b7817fb127d90ae10bc2db7973b74448\\"", "size": 394867, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:07.132Z", "contentLength": 394867, "httpStatusCode": 200}	e9c50858-573d-4497-afa1-bf0bc21b0d35	\N	{}
c7924610-387d-4786-b0c4-23b785dd298c	campuses	bryant/8	\N	2025-01-26 03:00:50.600831+00	2025-01-26 03:00:50.600831+00	2025-01-26 03:00:50.600831+00	{"eTag": "\\"07ade18a771d848f34fd1b9d72097140\\"", "size": 84305, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:50.596Z", "contentLength": 84305, "httpStatusCode": 200}	f816f7a5-b946-4c6e-b84b-a7e0a2d0cd03	\N	{}
76a15544-c785-4fd7-851a-ef17b720d70f	campuses	bethelcollege/5	\N	2025-01-26 03:00:09.660074+00	2025-01-26 03:00:09.660074+00	2025-01-26 03:00:09.660074+00	{"eTag": "\\"014beadd453583133630fa3ec76f6eb4\\"", "size": 720215, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:09.648Z", "contentLength": 720215, "httpStatusCode": 200}	dec472dd-215e-448f-8f9d-16045e92d604	\N	{}
47c038ba-76c4-4530-8a75-f60c3b6875f4	campuses	bethelcollege/6	\N	2025-01-26 03:00:10.34364+00	2025-01-26 03:00:10.34364+00	2025-01-26 03:00:10.34364+00	{"eTag": "\\"1dd28ad4242464e8bf3bb8d47354b247\\"", "size": 741627, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:10.328Z", "contentLength": 741627, "httpStatusCode": 200}	9e7e52d3-800d-439e-8903-6189b4d01dd4	\N	{}
f400f8bf-d33e-4e95-a1e3-ef9dc82ce708	campuses	bryant/9	\N	2025-01-26 03:00:51.221956+00	2025-01-26 03:00:51.221956+00	2025-01-26 03:00:51.221956+00	{"eTag": "\\"aff8c2e5c4d204cdb729ba5e82b4ac08\\"", "size": 116446, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:51.217Z", "contentLength": 116446, "httpStatusCode": 200}	635a6a51-f6f1-41f0-b9c3-101c3b4add7a	\N	{}
c426f641-2268-4cf1-b5d3-add31ec460c5	campuses	bethelcollege/7	\N	2025-01-26 03:00:10.883302+00	2025-01-26 03:00:10.883302+00	2025-01-26 03:00:10.883302+00	{"eTag": "\\"4ddd36804b37aea0701877917b3543a2\\"", "size": 865975, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:10.862Z", "contentLength": 865975, "httpStatusCode": 200}	6804c14b-7b35-4162-9746-f2b1c3df44b4	\N	{}
671aec2d-e607-4a2c-9bf8-d9997ddfca21	campuses	bethelcollege/8	\N	2025-01-26 03:00:11.621514+00	2025-01-26 03:00:11.621514+00	2025-01-26 03:00:11.621514+00	{"eTag": "\\"e3ba28225fc55aefcb1207bd020a91a9\\"", "size": 1076384, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:11.613Z", "contentLength": 1076384, "httpStatusCode": 200}	bb876e9b-72a8-4d21-8519-71db4c9f42ab	\N	{}
b5898359-6a12-4655-b65c-6d0aa868ac5a	campuses	csuchico/0	\N	2025-01-26 03:00:52.125782+00	2025-01-26 03:00:52.125782+00	2025-01-26 03:00:52.125782+00	{"eTag": "\\"31e110781f565b9b84bd8184a2dd9194\\"", "size": 464053, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:52.109Z", "contentLength": 464053, "httpStatusCode": 200}	b5ad7009-ff6e-4a40-9790-18efc081fe29	\N	{}
72e08c53-0bd0-47b8-8a85-9e6c15d6f5ae	campuses	bethelcollege/9	\N	2025-01-26 03:00:12.242107+00	2025-01-26 03:00:12.242107+00	2025-01-26 03:00:12.242107+00	{"eTag": "\\"f880dbd2ec4bf5f83aff698b6e0a9ff5\\"", "size": 492268, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:12.236Z", "contentLength": 492268, "httpStatusCode": 200}	0d03bf42-0d85-4a5c-902a-e576fb33bc26	\N	{}
065b8943-efbb-484a-b4b1-aaecea4f0f64	campuses	biola/0	\N	2025-01-26 03:00:13.238496+00	2025-01-26 03:00:13.238496+00	2025-01-26 03:00:13.238496+00	{"eTag": "\\"9b4e1527da20f0b28b96f4d237c2e963\\"", "size": 1017196, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:13.221Z", "contentLength": 1017196, "httpStatusCode": 200}	349e89cf-a935-4aad-b591-050bccd1919e	\N	{}
2183e7bf-c645-48e3-a6fa-eebd77012a0b	campuses	biola/1	\N	2025-01-26 03:00:14.412302+00	2025-01-26 03:00:14.412302+00	2025-01-26 03:00:14.412302+00	{"eTag": "\\"35b862254ec4afe3bb8e1fdf713e5dce\\"", "size": 937695, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:14.402Z", "contentLength": 937695, "httpStatusCode": 200}	5cb4f033-026c-48aa-bae1-e8dc00117316	\N	{}
c329d169-4efe-4b2e-971a-042b2dd92f64	campuses	biola/2	\N	2025-01-26 03:00:15.026928+00	2025-01-26 03:00:15.026928+00	2025-01-26 03:00:15.026928+00	{"eTag": "\\"a0013db8c68080b97494a91c0a2729d4\\"", "size": 132906, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:15.022Z", "contentLength": 132906, "httpStatusCode": 200}	7938cbe4-e324-4160-a5a7-7c513ddf27c8	\N	{}
ef70bb9c-67ed-46eb-b347-9e987ea53d82	campuses	biola/3	\N	2025-01-26 03:00:15.645924+00	2025-01-26 03:00:15.645924+00	2025-01-26 03:00:15.645924+00	{"eTag": "\\"16b7250d1d5455ad968af664d3d342f2\\"", "size": 106863, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:15.638Z", "contentLength": 106863, "httpStatusCode": 200}	9223d962-e0a3-4915-aaa6-869e6d449d3d	\N	{}
9c6dcc77-f21e-4238-97dc-5a92d3495fee	campuses	biola/4	\N	2025-01-26 03:00:16.284226+00	2025-01-26 03:00:16.284226+00	2025-01-26 03:00:16.284226+00	{"eTag": "\\"411f0c1c640d3749e39bda7f53fcc955\\"", "size": 178450, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:16.278Z", "contentLength": 178450, "httpStatusCode": 200}	a45cc52f-4e0a-4311-8520-0f9014661a68	\N	{}
a607a4bd-8c61-4b18-86d0-4f438ba5cf21	campuses	csi.cuny/4	\N	2025-01-26 03:01:44.5078+00	2025-01-26 03:01:44.5078+00	2025-01-26 03:01:44.5078+00	{"eTag": "\\"f72002edb0e7c2f6948b1ccdc2d914a1\\"", "size": 58186, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:44.504Z", "contentLength": 58186, "httpStatusCode": 200}	f4f9634d-712a-414b-8e37-675e8c665cbe	\N	{}
b51f8b3d-8659-4022-8b5a-d59f2a96a317	campuses	biola/5	\N	2025-01-26 03:00:16.895517+00	2025-01-26 03:00:16.895517+00	2025-01-26 03:00:16.895517+00	{"eTag": "\\"ade61c0306e18fea3bff158f30f20674\\"", "size": 76426, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:16.891Z", "contentLength": 76426, "httpStatusCode": 200}	7925399b-c7b8-4883-95e0-02bdd6349c67	\N	{}
5a17dbe8-48bc-4ad5-954a-2e988387be21	campuses	csuchico/1	\N	2025-01-26 03:00:52.780126+00	2025-01-26 03:00:52.780126+00	2025-01-26 03:00:52.780126+00	{"eTag": "\\"99d42f0f5608f147a783f302d072b9ec\\"", "size": 546635, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:52.773Z", "contentLength": 546635, "httpStatusCode": 200}	9b180142-7d97-4730-b27a-bbf2d9531187	\N	{}
4ef2df37-68ad-4279-b3c8-69d2ade6e7e9	campuses	biola/6	\N	2025-01-26 03:00:17.555917+00	2025-01-26 03:00:17.555917+00	2025-01-26 03:00:17.555917+00	{"eTag": "\\"3db0216605c025f90a5dba82b76bc818\\"", "size": 150232, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:17.548Z", "contentLength": 150232, "httpStatusCode": 200}	9ef1ef25-1e04-4e93-80c2-def5039ecc5d	\N	{}
36711377-db81-4bd4-be24-a4bd9a6b1deb	campuses	fitnyc/1	\N	2025-01-26 03:02:43.753545+00	2025-01-26 03:02:43.753545+00	2025-01-26 03:02:43.753545+00	{"eTag": "\\"884eeffba6352706c8f2f086986fcee2\\"", "size": 937512, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:43.740Z", "contentLength": 937512, "httpStatusCode": 200}	e0f91950-18ce-41ea-8005-9a740eb2bf2b	\N	{}
7f1bceb2-c654-4c72-8b70-04e1d4fc691a	campuses	biola/7	\N	2025-01-26 03:00:18.114929+00	2025-01-26 03:00:18.114929+00	2025-01-26 03:00:18.114929+00	{"eTag": "\\"a79ed80ffe28cde2a70dd0ca57c59a3c\\"", "size": 64734, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:18.109Z", "contentLength": 64734, "httpStatusCode": 200}	fe195f83-a477-4a5b-9f9d-776bfcc59f5a	\N	{}
0b1f07bf-23d8-4a66-a0ca-2def2a8d6f33	campuses	csuchico/2	\N	2025-01-26 03:00:53.39495+00	2025-01-26 03:00:53.39495+00	2025-01-26 03:00:53.39495+00	{"eTag": "\\"e0b83f87e3a3333ec066244a1781cc13\\"", "size": 335124, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:53.386Z", "contentLength": 335124, "httpStatusCode": 200}	bb3aee3b-3757-49d9-9ba7-7ff8dc19078b	\N	{}
378511ec-e5db-4a40-9825-319e146c89fd	campuses	biola/8	\N	2025-01-26 03:00:18.481166+00	2025-01-26 03:00:18.481166+00	2025-01-26 03:00:18.481166+00	{"eTag": "\\"6cbcb898776c9c9a2ec8dc2b67003742\\"", "size": 388, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:18.477Z", "contentLength": 388, "httpStatusCode": 200}	7dad3e39-ca97-46b5-b7f6-401580ce5209	\N	{}
03408811-e7c5-46c9-9a27-d6807244aa44	campuses	biola/9	\N	2025-01-26 03:00:19.143464+00	2025-01-26 03:00:19.143464+00	2025-01-26 03:00:19.143464+00	{"eTag": "\\"6ef83f9b9c01d9955a9afb8131e5f859\\"", "size": 67824, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:19.141Z", "contentLength": 67824, "httpStatusCode": 200}	5d6e4349-31f8-4fc8-8211-4e40f904b527	\N	{}
d5078b4c-56d4-4279-b370-590eb0b0141b	campuses	csuchico/3	\N	2025-01-26 03:00:54.020357+00	2025-01-26 03:00:54.020357+00	2025-01-26 03:00:54.020357+00	{"eTag": "\\"b40478414bbef3b4ad2d18507f738ef1\\"", "size": 624666, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:54.012Z", "contentLength": 624666, "httpStatusCode": 200}	9c97538e-9bf1-4b74-a8c4-5887025f192e	\N	{}
0b6bdd02-1d73-4753-b64d-467dc700c58f	campuses	bc/0	\N	2025-01-26 03:00:19.715657+00	2025-01-26 03:00:19.715657+00	2025-01-26 03:00:19.715657+00	{"eTag": "\\"eda3b064e5fc0382653e327a9897aa30\\"", "size": 56894, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:19.711Z", "contentLength": 56894, "httpStatusCode": 200}	7c094555-1ca6-4dcb-a55b-0631cedce324	\N	{}
1647bedb-4e06-426f-a2e9-f1594c6baef9	campuses	bc/1	\N	2025-01-26 03:00:20.28532+00	2025-01-26 03:00:20.28532+00	2025-01-26 03:00:20.28532+00	{"eTag": "\\"ac9812b44cfe5c749f909e48e300827c\\"", "size": 101447, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:20.275Z", "contentLength": 101447, "httpStatusCode": 200}	a8e1f476-8f99-4af9-8590-6109868c3260	\N	{}
3b109a98-1e3d-4342-bab9-cf9ebfe1ade3	campuses	bc/2	\N	2025-01-26 03:00:20.804546+00	2025-01-26 03:00:20.804546+00	2025-01-26 03:00:20.804546+00	{"eTag": "\\"de4bfc462ede9517bb7d253fbd5bdcd4\\"", "size": 47796, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:20.801Z", "contentLength": 47796, "httpStatusCode": 200}	f1dcbb12-c94c-468e-af51-540f1f595d8a	\N	{}
8d7a0ef6-33c6-4f7d-a865-bf2cca585a3b	campuses	bc/3	\N	2025-01-26 03:00:21.51298+00	2025-01-26 03:00:21.51298+00	2025-01-26 03:00:21.51298+00	{"eTag": "\\"5490029026da7b0142b22c0373d72508\\"", "size": 479458, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:21.493Z", "contentLength": 479458, "httpStatusCode": 200}	0339891f-ce21-4c52-8a7a-6dec62c01350	\N	{}
aae68257-e8f4-4fdd-867b-501edc747782	campuses	bc/4	\N	2025-01-26 03:00:22.010118+00	2025-01-26 03:00:22.010118+00	2025-01-26 03:00:22.010118+00	{"eTag": "\\"da966cfed090b56dc84ba84b35b3957d\\"", "size": 182922, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:22.007Z", "contentLength": 182922, "httpStatusCode": 200}	aba7a983-c8f5-43ff-a7aa-8e0d51299b21	\N	{}
d7e2c92f-cb3f-4061-9124-dab1989175e5	campuses	bc/5	\N	2025-01-26 03:00:22.474502+00	2025-01-26 03:00:22.474502+00	2025-01-26 03:00:22.474502+00	{"eTag": "\\"bcee97101c1c021d96b3fe738d8db59c\\"", "size": 57124, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:22.464Z", "contentLength": 57124, "httpStatusCode": 200}	c53f6b00-2813-4123-8c52-16608c0312ca	\N	{}
f46bcb20-1edc-40b4-b923-e3134c066c4a	campuses	bc/6	\N	2025-01-26 03:00:23.174916+00	2025-01-26 03:00:23.174916+00	2025-01-26 03:00:23.174916+00	{"eTag": "\\"5ec17f438e651e203c7370b00d9d57ab\\"", "size": 365910, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:23.165Z", "contentLength": 365910, "httpStatusCode": 200}	a5ce51e7-4f1a-419f-90d6-c515fddf2c96	\N	{}
49e4bc15-de36-46f3-85f8-c7f2618b54d6	campuses	bc/7	\N	2025-01-26 03:00:23.798289+00	2025-01-26 03:00:23.798289+00	2025-01-26 03:00:23.798289+00	{"eTag": "\\"a48a9c6cfb6684fbae7d984ea6de5972\\"", "size": 223129, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:23.792Z", "contentLength": 223129, "httpStatusCode": 200}	1989f470-6ae6-4ff6-8124-49fef5f2c0c3	\N	{}
b554c337-89bb-4855-b751-d8240ca08594	campuses	bc/8	\N	2025-01-26 03:00:24.718882+00	2025-01-26 03:00:24.718882+00	2025-01-26 03:00:24.718882+00	{"eTag": "\\"1f3d1953ee5c71b93daea414875c883e\\"", "size": 164611, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:24.709Z", "contentLength": 164611, "httpStatusCode": 200}	9c81ba84-6421-4604-ac4b-1bc220e37e65	\N	{}
2681e2bf-7113-4f78-b0f2-6c33a4dc7c8d	campuses	csuchico/4	\N	2025-01-26 03:00:54.919023+00	2025-01-26 03:00:54.919023+00	2025-01-26 03:00:54.919023+00	{"eTag": "\\"54fc234d3de41f8357d877ee024650e5\\"", "size": 4908903, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:54.877Z", "contentLength": 4908903, "httpStatusCode": 200}	14813890-e626-4aaf-a220-063e9429819e	\N	{}
5644cc03-3317-4e97-a6ef-6d6207679ea1	campuses	bc/9	\N	2025-01-26 03:00:25.294201+00	2025-01-26 03:00:25.294201+00	2025-01-26 03:00:25.294201+00	{"eTag": "\\"37c153e1dc7c3cac5d30b8e778426c1e\\"", "size": 331696, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:25.285Z", "contentLength": 331696, "httpStatusCode": 200}	d752ec2c-87e1-401f-8899-0a9471c343b3	\N	{}
65d960c8-44fc-4cad-b051-f2c03a29614c	campuses	dom/1	\N	2025-01-26 03:02:32.291065+00	2025-01-26 03:02:32.291065+00	2025-01-26 03:02:32.291065+00	{"eTag": "\\"5684a9f0210f74ffb4b68e85a94f42d5\\"", "size": 140224, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:32.279Z", "contentLength": 140224, "httpStatusCode": 200}	efdfea03-16f8-4281-8df8-a630fb99565a	\N	{}
4dd54836-3d43-443c-8462-8435cdb12f30	campuses	brandeis/0	\N	2025-01-26 03:00:26.063893+00	2025-01-26 03:00:26.063893+00	2025-01-26 03:00:26.063893+00	{"eTag": "\\"8e99cb9d59854df438066e98449d54ed\\"", "size": 240008, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:26.049Z", "contentLength": 240008, "httpStatusCode": 200}	43b4ab85-0c07-4660-a274-bb59021a1724	\N	{}
0a95537b-c01b-4a2b-8944-b0afdf2cc099	campuses	csuchico/5	\N	2025-01-26 03:00:55.519893+00	2025-01-26 03:00:55.519893+00	2025-01-26 03:00:55.519893+00	{"eTag": "\\"c4c5f2cf1df64728cc508b90a512a0c0\\"", "size": 257778, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:55.511Z", "contentLength": 257778, "httpStatusCode": 200}	4d3ad0ae-0b24-4cfa-999d-25f4471006b5	\N	{}
4a1fc439-d5a5-4333-8989-f397640db68d	campuses	brandeis/1	\N	2025-01-26 03:00:26.60151+00	2025-01-26 03:00:26.60151+00	2025-01-26 03:00:26.60151+00	{"eTag": "\\"dbb28430b2b7e1ea57d1cd9660aab1e3\\"", "size": 136245, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:26.598Z", "contentLength": 136245, "httpStatusCode": 200}	b58ac7ca-a3e6-43a6-8a38-6595337210f0	\N	{}
77968f9f-1e3a-4553-a5af-43a766463cdc	campuses	brandeis/2	\N	2025-01-26 03:00:27.266997+00	2025-01-26 03:00:27.266997+00	2025-01-26 03:00:27.266997+00	{"eTag": "\\"7217682671b3d8ceb89b9c58b49865c7\\"", "size": 244824, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:27.254Z", "contentLength": 244824, "httpStatusCode": 200}	03773384-0304-43db-92c9-3607d3ff68a5	\N	{}
c522f763-0522-4712-8c60-e6467fe1b143	campuses	csuchico/6	\N	2025-01-26 03:00:55.821779+00	2025-01-26 03:00:55.821779+00	2025-01-26 03:00:55.821779+00	{"eTag": "\\"1abd8ee23fd6d94ae2f529da93284856\\"", "size": 386, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:55.819Z", "contentLength": 386, "httpStatusCode": 200}	15be7c84-13ac-46be-89fb-516788f025ec	\N	{}
dc9a3f56-36cc-4adc-86fa-0308b86a2c4a	campuses	brandeis/3	\N	2025-01-26 03:00:28.968387+00	2025-01-26 03:00:28.968387+00	2025-01-26 03:00:28.968387+00	{"eTag": "\\"e0c8fe4a3a70a6fb5677ebd9d26b3c54\\"", "size": 226834, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:28.958Z", "contentLength": 226834, "httpStatusCode": 200}	b43074d3-a98f-463a-a76b-ab16f63bd6de	\N	{}
d0d214a8-6881-4818-8791-7bb7300ac870	campuses	brandeis/4	\N	2025-01-26 03:00:30.567067+00	2025-01-26 03:00:30.567067+00	2025-01-26 03:00:30.567067+00	{"eTag": "\\"8c7e69998e157486f82ed08c88a96267\\"", "size": 228226, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:30.562Z", "contentLength": 228226, "httpStatusCode": 200}	2415872b-3363-414b-b853-827608fdf549	\N	{}
5eda7636-0889-4dda-be99-3d8c331623bc	campuses	csuchico/7	\N	2025-01-26 03:00:56.405731+00	2025-01-26 03:00:56.405731+00	2025-01-26 03:00:56.405731+00	{"eTag": "\\"e993e4787134ab1799b4f9436e4a25fb\\"", "size": 478091, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:56.392Z", "contentLength": 478091, "httpStatusCode": 200}	3c14f9d4-9ce5-4985-8a11-4ac2f8852d85	\N	{}
46dab309-3af7-4c1a-84ca-d1f88bdc97e8	campuses	brandeis/5	\N	2025-01-26 03:00:31.132481+00	2025-01-26 03:00:31.132481+00	2025-01-26 03:00:31.132481+00	{"eTag": "\\"ec30862241b6b43efcb0e69da5ca112d\\"", "size": 101137, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:31.127Z", "contentLength": 101137, "httpStatusCode": 200}	d3453a43-fabf-4a5e-a1ab-af52511704b0	\N	{}
0133c4cf-58aa-41f0-a0bc-d2d922665e03	campuses	brandeis/6	\N	2025-01-26 03:00:31.75917+00	2025-01-26 03:00:31.75917+00	2025-01-26 03:00:31.75917+00	{"eTag": "\\"d8cf162c17712298678e9f43b2e7bc71\\"", "size": 150223, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:31.754Z", "contentLength": 150223, "httpStatusCode": 200}	f247a608-cbae-43fb-b644-f96d22fd1d39	\N	{}
e684db64-fac1-4a27-af21-8b4650413b00	campuses	brandeis/7	\N	2025-01-26 03:00:32.440358+00	2025-01-26 03:00:32.440358+00	2025-01-26 03:00:32.440358+00	{"eTag": "\\"074e386e984730e946e64343e0db08ea\\"", "size": 209602, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:32.418Z", "contentLength": 209602, "httpStatusCode": 200}	f734fb0b-2cc4-484f-8724-15c419acfb7b	\N	{}
065eda90-b72b-4b60-af9b-a9c7359ab7b0	campuses	brandeis/8	\N	2025-01-26 03:00:33.187645+00	2025-01-26 03:00:33.187645+00	2025-01-26 03:00:33.187645+00	{"eTag": "\\"ac7fb08345b0d32c5126254c42e9b949\\"", "size": 106813, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:33.182Z", "contentLength": 106813, "httpStatusCode": 200}	c956c059-f0dd-4102-8cf2-402a06658f8c	\N	{}
7c540170-1563-4520-ab8e-bf99c1565bde	campuses	brandeis/9	\N	2025-01-26 03:00:33.757078+00	2025-01-26 03:00:33.757078+00	2025-01-26 03:00:33.757078+00	{"eTag": "\\"681393b35c74bd4068858a39778c6cc3\\"", "size": 137126, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:33.743Z", "contentLength": 137126, "httpStatusCode": 200}	be0ee3eb-828f-4626-8b9a-65c1eb47a68b	\N	{}
5bbe466a-8127-43c1-9cfd-14471a19f2b5	campuses	brevard/1	\N	2025-01-26 03:00:34.571242+00	2025-01-26 03:00:34.571242+00	2025-01-26 03:00:34.571242+00	{"eTag": "\\"64cc819e95764c533b992116ebfa75f5\\"", "size": 204356, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:34.564Z", "contentLength": 204356, "httpStatusCode": 200}	0b5e6dd1-94aa-4ab7-bbae-89b93390d1ef	\N	{}
a4cb6ad9-6c00-4996-80df-3b0ce14311f0	campuses	brevard/3	\N	2025-01-26 03:00:35.222632+00	2025-01-26 03:00:35.222632+00	2025-01-26 03:00:35.222632+00	{"eTag": "\\"fa088fbda03fe3f55c0adb4908452814\\"", "size": 451098, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:35.214Z", "contentLength": 451098, "httpStatusCode": 200}	9f98a1ca-4ff9-447f-9ca9-f3d33d82f0f7	\N	{}
e6e23417-18fe-4f68-a198-95d13f7d0532	campuses	brevard/8	\N	2025-01-26 03:00:35.78059+00	2025-01-26 03:00:35.78059+00	2025-01-26 03:00:35.78059+00	{"eTag": "\\"56fe012646501d1391065ce2ffe96cb3\\"", "size": 379722, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:35.771Z", "contentLength": 379722, "httpStatusCode": 200}	5cd92323-39e1-4736-902a-34e2d5fa5d43	\N	{}
a5e80c59-0273-49fc-a08c-332a56e68fb4	campuses	csi.cuny/6	\N	2025-01-26 03:01:45.031927+00	2025-01-26 03:01:45.031927+00	2025-01-26 03:01:45.031927+00	{"eTag": "\\"ac36741fbef8eb3793105e019bc2ea17\\"", "size": 536796, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:45.027Z", "contentLength": 536796, "httpStatusCode": 200}	ac45a6e3-f8c7-495d-9a25-22410b761067	\N	{}
6cc8509f-98a0-4a08-a60e-7e3bce09138e	campuses	byui/0	\N	2025-01-26 03:00:36.436832+00	2025-01-26 03:00:36.436832+00	2025-01-26 03:00:36.436832+00	{"eTag": "\\"af26d6915606b095c0727b269c930d45\\"", "size": 712007, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:36.423Z", "contentLength": 712007, "httpStatusCode": 200}	84b30597-b78a-4496-bbdb-4b8d3ae1c39b	\N	{}
ead4b575-5bd9-4517-85a4-c946ee0cf532	campuses	csuchico/8	\N	2025-01-26 03:00:57.379841+00	2025-01-26 03:00:57.379841+00	2025-01-26 03:00:57.379841+00	{"eTag": "\\"8e73bcd98db789811c64467779a58677\\"", "size": 8689178, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:57.319Z", "contentLength": 8689178, "httpStatusCode": 200}	86460a90-b100-4bda-aff3-b6cb465ae4ba	\N	{}
ea936136-5b97-4618-ab4e-c5c938370923	campuses	byui/1	\N	2025-01-26 03:00:37.277536+00	2025-01-26 03:00:37.277536+00	2025-01-26 03:00:37.277536+00	{"eTag": "\\"c663378f07b3210769c3b841c52de540\\"", "size": 4032059, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:37.231Z", "contentLength": 4032059, "httpStatusCode": 200}	7a19bd58-a533-4f94-a87f-8853d07efe86	\N	{}
9161dc79-289c-45c5-a903-fca95c75dd74	campuses	juniata/0	\N	2025-01-26 21:06:44.099718+00	2025-01-26 21:06:44.099718+00	2025-01-26 21:06:44.099718+00	{"eTag": "\\"379c69b471200042a3d9aca422468d56\\"", "size": 488, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:06:44.078Z", "contentLength": 488, "httpStatusCode": 200}	57ba283d-41d5-4ce3-8f27-febe693f9375	\N	{}
f9eba776-7652-4b82-b73f-6593a23f1bee	campuses	byui/2	\N	2025-01-26 03:00:38.519563+00	2025-01-26 03:00:38.519563+00	2025-01-26 03:00:38.519563+00	{"eTag": "\\"74815ea702c081785d4488759b52d453\\"", "size": 420373, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:38.511Z", "contentLength": 420373, "httpStatusCode": 200}	354df2eb-bc09-40a1-9a66-bd9d1432701b	\N	{}
305a3940-eacf-4b2b-9f8f-50c6e068c011	campuses	csuchico/9	\N	2025-01-26 03:00:58.10999+00	2025-01-26 03:00:58.10999+00	2025-01-26 03:00:58.10999+00	{"eTag": "\\"7fe4e1dfc8e6cf7d2ddaed43f77a17b0\\"", "size": 1446383, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:58.072Z", "contentLength": 1446383, "httpStatusCode": 200}	179570a7-9ef4-4e93-8457-786e6db60e53	\N	{}
ab539dfe-b91b-4360-928a-02dfe8600099	campuses	byui/3	\N	2025-01-26 03:00:39.045838+00	2025-01-26 03:00:39.045838+00	2025-01-26 03:00:39.045838+00	{"eTag": "\\"0db023074232dde608a4da67c2327dd8\\"", "size": 40031, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:39.040Z", "contentLength": 40031, "httpStatusCode": 200}	7af54202-007a-452e-9211-5b72ab3d2f2c	\N	{}
c2eecbea-83b3-443b-9ce7-aef3f83a2874	campuses	csi.cuny/8	\N	2025-01-26 03:01:45.707193+00	2025-01-26 03:01:45.707193+00	2025-01-26 03:01:45.707193+00	{"eTag": "\\"b67264b3e7500b0357309e7735bd2a0d\\"", "size": 165898, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:45.696Z", "contentLength": 165898, "httpStatusCode": 200}	8a4a550b-f3c7-4d39-ac30-afa58cabf436	\N	{}
ac0a6a94-8872-42f5-8346-d4a5961dfbce	campuses	byui/4	\N	2025-01-26 03:00:39.755272+00	2025-01-26 03:00:39.755272+00	2025-01-26 03:00:39.755272+00	{"eTag": "\\"b0c5c9ff79522d1611e52dabbb896120\\"", "size": 3986433, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:39.733Z", "contentLength": 3986433, "httpStatusCode": 200}	4a25402a-dad9-4802-aa84-3e306368f45e	\N	{}
9099d007-9c81-4997-90c9-618e9dfb2623	campuses	csudh/0	\N	2025-01-26 03:00:58.972+00	2025-01-26 03:00:58.972+00	2025-01-26 03:00:58.972+00	{"eTag": "\\"cd0354782f636edc7bdd48c2b82e7580\\"", "size": 611990, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:58.966Z", "contentLength": 611990, "httpStatusCode": 200}	2ebf43ff-8eaa-402b-9756-4ea4db13d81e	\N	{}
2cd82d22-3692-439e-8be8-d2f26ba1faa5	campuses	byui/5	\N	2025-01-26 03:00:40.133018+00	2025-01-26 03:00:40.133018+00	2025-01-26 03:00:40.133018+00	{"eTag": "\\"8efe6ffccd3e2cf609805b251a29103c\\"", "size": 41713, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:40.128Z", "contentLength": 41713, "httpStatusCode": 200}	7273c124-f4e8-43c7-9e89-736dfa25098c	\N	{}
d0ef2c38-47a7-43c5-b45a-76347cd4b2de	campuses	byui/6	\N	2025-01-26 03:00:40.66482+00	2025-01-26 03:00:40.66482+00	2025-01-26 03:00:40.66482+00	{"eTag": "\\"5818da776064567a26af3fc65e8da19a\\"", "size": 43305, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:40.661Z", "contentLength": 43305, "httpStatusCode": 200}	0eb73e50-eadf-491a-9e2c-25523263a3f0	\N	{}
1a4ee7ad-bbbb-44d1-a929-d7f8cf4f1b06	campuses	csudh/1	\N	2025-01-26 03:00:59.522923+00	2025-01-26 03:00:59.522923+00	2025-01-26 03:00:59.522923+00	{"eTag": "\\"73f6d7c05086244729e5e1b27bde637a\\"", "size": 529046, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:59.517Z", "contentLength": 529046, "httpStatusCode": 200}	dbae0bf8-8ad1-4d19-8c41-7875d8072354	\N	{}
676a75f8-4e71-40d2-a767-bb7847709302	campuses	byui/7	\N	2025-01-26 03:00:41.67831+00	2025-01-26 03:00:41.67831+00	2025-01-26 03:00:41.67831+00	{"eTag": "\\"6a67bb938d2dbad08f0166af706d9054\\"", "size": 302986, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:41.669Z", "contentLength": 302986, "httpStatusCode": 200}	cb7e41bf-158e-4fdd-b9fc-2dfaf37e8f29	\N	{}
eb2d785e-a4a0-4ac7-a54a-39ce463de03b	campuses	byui/8	\N	2025-01-26 03:00:42.995013+00	2025-01-26 03:00:42.995013+00	2025-01-26 03:00:42.995013+00	{"eTag": "\\"79b70251468643ba6eb4169778dc0e80\\"", "size": 1561072, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:00:42.982Z", "contentLength": 1561072, "httpStatusCode": 200}	76828968-f26d-47d8-9d77-51c2235f83e6	\N	{}
62e49208-f02a-4a60-87e8-b056f176dbd2	campuses	csudh/2	\N	2025-01-26 03:01:00.196006+00	2025-01-26 03:01:00.196006+00	2025-01-26 03:01:00.196006+00	{"eTag": "\\"c5f2a44f0643da0a243754ae038c5d2f\\"", "size": 1516329, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:00.186Z", "contentLength": 1516329, "httpStatusCode": 200}	56318e3a-5252-4574-81c6-84bfbddd9dfb	\N	{}
f7bc2afc-6755-4313-9230-2e5933b16add	campuses	csudh/3	\N	2025-01-26 03:01:00.539348+00	2025-01-26 03:01:00.539348+00	2025-01-26 03:01:00.539348+00	{"eTag": "\\"9fe3cb2b7313dc79bb477bc8fde184a7\\"", "size": 146, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:00.535Z", "contentLength": 146, "httpStatusCode": 200}	25641935-1bce-4891-a735-def33c07893f	\N	{}
16096a78-aad2-489d-ba28-7b2ceb4c73af	campuses	csudh/4	\N	2025-01-26 03:01:01.103912+00	2025-01-26 03:01:01.103912+00	2025-01-26 03:01:01.103912+00	{"eTag": "\\"5118cdf6e85321737c817c4df4d317ba\\"", "size": 547947, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:01.093Z", "contentLength": 547947, "httpStatusCode": 200}	e43e1191-1ffc-461e-9ba0-9b9925386864	\N	{}
da75ea66-e915-470c-8c32-a945766c8b03	campuses	csi.cuny/9	\N	2025-01-26 03:01:46.935641+00	2025-01-26 03:01:46.935641+00	2025-01-26 03:01:46.935641+00	{"eTag": "\\"676d418e06da153e3163d26efa117b28\\"", "size": 4833016, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:46.903Z", "contentLength": 4833016, "httpStatusCode": 200}	bec776bd-630d-454c-a043-ab2f212deefd	\N	{}
d572c67f-82a6-4a26-81a6-2f73a9046660	campuses	csudh/5	\N	2025-01-26 03:01:01.351575+00	2025-01-26 03:01:01.351575+00	2025-01-26 03:01:01.351575+00	{"eTag": "\\"9fe3cb2b7313dc79bb477bc8fde184a7\\"", "size": 146, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:01.346Z", "contentLength": 146, "httpStatusCode": 200}	03840af6-a654-4f8d-afcf-b04c20f38c3b	\N	{}
316e0207-0a6e-4e2d-b1d8-511b4613e71f	campuses	fitnyc/2	\N	2025-01-26 03:02:44.217097+00	2025-01-26 03:02:44.217097+00	2025-01-26 03:02:44.217097+00	{"eTag": "\\"9fe3cb2b7313dc79bb477bc8fde184a7\\"", "size": 146, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:44.207Z", "contentLength": 146, "httpStatusCode": 200}	b78242ab-4be0-4d6c-b5b9-444c2b5bb3c4	\N	{}
00ee72a3-b604-48f0-a7a0-83eab88579d1	campuses	csudh/6	\N	2025-01-26 03:01:02.599418+00	2025-01-26 03:01:02.599418+00	2025-01-26 03:01:02.599418+00	{"eTag": "\\"c6575df671af2f4fb18ed2029c0d5263\\"", "size": 111285, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:02.592Z", "contentLength": 111285, "httpStatusCode": 200}	c0c7cd62-3e9f-46bc-8377-62a1e097326d	\N	{}
b680fe99-94f3-425a-9575-4aaf28cdcbb0	campuses	coloradocollege/0	\N	2025-01-26 03:01:47.797894+00	2025-01-26 03:01:47.797894+00	2025-01-26 03:01:47.797894+00	{"eTag": "\\"e323bec2bfb01b544b41328cebe6b522\\"", "size": 193598, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:47.781Z", "contentLength": 193598, "httpStatusCode": 200}	3c3d8386-f1c6-42c2-ada1-b73e07c3ac0c	\N	{}
bcdbceef-e063-45c4-b1a9-70909ecf3780	campuses	csudh/7	\N	2025-01-26 03:01:03.306466+00	2025-01-26 03:01:03.306466+00	2025-01-26 03:01:03.306466+00	{"eTag": "\\"9fe3cb2b7313dc79bb477bc8fde184a7\\"", "size": 146, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:03.302Z", "contentLength": 146, "httpStatusCode": 200}	10ca69ab-c9d4-4336-a424-9acc16085c31	\N	{}
6221f9bd-1721-4b77-bcd9-b3824e5f5651	campuses	csudh/8	\N	2025-01-26 03:01:03.726735+00	2025-01-26 03:01:03.726735+00	2025-01-26 03:01:03.726735+00	{"eTag": "\\"0dd391ae6024b431c7a9ffc510a92131\\"", "size": 124646, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:03.722Z", "contentLength": 124646, "httpStatusCode": 200}	4ffdb7c8-beb5-4343-95c0-f1214150cb49	\N	{}
e9799705-1eea-469f-aeaa-55d7e4bcc567	campuses	coloradocollege/1	\N	2025-01-26 03:01:48.565419+00	2025-01-26 03:01:48.565419+00	2025-01-26 03:01:48.565419+00	{"eTag": "\\"18d0f4e5381afcc3aa3dcb0b58f0540d\\"", "size": 103508, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:48.560Z", "contentLength": 103508, "httpStatusCode": 200}	aa8df2ed-fb4e-4d5f-8933-a0e3dca941ef	\N	{}
1f8f0b32-3857-40e1-ac84-435ff80b9088	campuses	csudh/9	\N	2025-01-26 03:01:04.215452+00	2025-01-26 03:01:04.215452+00	2025-01-26 03:01:04.215452+00	{"eTag": "\\"2525f8aee17b51490e19641710e2f689\\"", "size": 302126, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:04.208Z", "contentLength": 302126, "httpStatusCode": 200}	bca9ad49-8565-4602-b1bd-0a8f48961f53	\N	{}
87da8c46-f448-4afc-be80-3c91df3ca726	campuses	cambridgecollege/0	\N	2025-01-26 03:01:05.120193+00	2025-01-26 03:01:05.120193+00	2025-01-26 03:01:05.120193+00	{"eTag": "\\"facef8bb5f4fee9c0d5edf6077f65aba\\"", "size": 603686, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:05.115Z", "contentLength": 603686, "httpStatusCode": 200}	88f115ae-aafe-4ea8-bacb-a5b0b6943cc4	\N	{}
95447a6d-46d7-4873-8157-da767188c104	campuses	cambridgecollege/1	\N	2025-01-26 03:01:05.678342+00	2025-01-26 03:01:05.678342+00	2025-01-26 03:01:05.678342+00	{"eTag": "\\"7a0ccbd11bfe80b32c41027861640363\\"", "size": 61592, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:05.673Z", "contentLength": 61592, "httpStatusCode": 200}	fe0c1af9-e63a-4238-b708-ca7daf82980b	\N	{}
8b51fa8e-9555-4caa-b275-dc677d8fb051	campuses	cambridgecollege/2	\N	2025-01-26 03:01:06.096587+00	2025-01-26 03:01:06.096587+00	2025-01-26 03:01:06.096587+00	{"eTag": "\\"0bf3c7a61cb0820547927c049ae248b3\\"", "size": 38693, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:06.092Z", "contentLength": 38693, "httpStatusCode": 200}	f42e6548-146f-4df7-861a-f6f4bb69afd4	\N	{}
a7b98943-3781-4690-96bd-54fbcf89cb71	campuses	cambridgecollege/3	\N	2025-01-26 03:01:06.608788+00	2025-01-26 03:01:06.608788+00	2025-01-26 03:01:06.608788+00	{"eTag": "\\"8a60a95109e6493c118bde0e94a4ffeb\\"", "size": 159164, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:06.601Z", "contentLength": 159164, "httpStatusCode": 200}	ac7c516f-d44e-4a7c-a33f-a2eac47bd8b1	\N	{}
0f206363-7143-48ea-abb2-935707fff1cb	campuses	cambridgecollege/4	\N	2025-01-26 03:01:06.857605+00	2025-01-26 03:01:06.857605+00	2025-01-26 03:01:06.857605+00	{"eTag": "\\"f68e60b5b51efa8f37ec66667e4869df\\"", "size": 386, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:06.854Z", "contentLength": 386, "httpStatusCode": 200}	7228e992-4205-47cc-bff4-8e2d26d8afed	\N	{}
e9e2a74f-1a30-4e78-a4b7-99527074263b	campuses	cambridgecollege/5	\N	2025-01-26 03:01:07.107907+00	2025-01-26 03:01:07.107907+00	2025-01-26 03:01:07.107907+00	{"eTag": "\\"6806932d8c58a11dfb9238229c47f82c\\"", "size": 386, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:07.094Z", "contentLength": 386, "httpStatusCode": 200}	dc7b36ed-8fb6-4852-8bb9-89889502e4fe	\N	{}
8af9b998-00bf-48f5-9c24-80e21ccdc184	campuses	cambridgecollege/6	\N	2025-01-26 03:01:07.550256+00	2025-01-26 03:01:07.550256+00	2025-01-26 03:01:07.550256+00	{"eTag": "\\"922c3e235cf4106c2e7e436834bac45c\\"", "size": 51951, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:07.545Z", "contentLength": 51951, "httpStatusCode": 200}	b885fbcd-faf7-4979-bec2-575cc18f9c70	\N	{}
d8de7a5f-80fb-4db1-8b85-43272fe7f608	campuses	cofc/1	\N	2025-01-26 03:01:37.588696+00	2025-01-26 03:01:37.588696+00	2025-01-26 03:01:37.588696+00	{"eTag": "\\"94d02bcb57d5c92ee82fc61dc944d131\\"", "size": 291420, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:37.579Z", "contentLength": 291420, "httpStatusCode": 200}	989ed847-c203-4e4e-846f-8200a582c6a9	\N	{}
7b49c02e-449d-4046-b96b-1342e8fd5750	campuses	cambridgecollege/7	\N	2025-01-26 03:01:07.953223+00	2025-01-26 03:01:07.953223+00	2025-01-26 03:01:07.953223+00	{"eTag": "\\"2d2c8adb62eb60d0ecb6ca7388469bf0\\"", "size": 26130, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:07.949Z", "contentLength": 26130, "httpStatusCode": 200}	198500d8-3288-4d08-8dfa-5abfa81698a1	\N	{}
4692d2dd-8591-4b6f-878d-ef2f63cb97b7	campuses	coloradocollege/2	\N	2025-01-26 03:01:49.141866+00	2025-01-26 03:01:49.141866+00	2025-01-26 03:01:49.141866+00	{"eTag": "\\"ef87b2986b5f8cf458faf1321ff0bc9e\\"", "size": 114976, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:49.137Z", "contentLength": 114976, "httpStatusCode": 200}	e7fbda53-d0cb-4198-a447-fa81aadc0c30	\N	{}
3c30f56b-c210-4128-8831-8b016bed078c	campuses	cambridgecollege/8	\N	2025-01-26 03:01:08.399112+00	2025-01-26 03:01:08.399112+00	2025-01-26 03:01:08.399112+00	{"eTag": "\\"2f1976ace7ac4ac297f08a158aee13da\\"", "size": 71498, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:08.392Z", "contentLength": 71498, "httpStatusCode": 200}	70098072-e0e6-4143-bf06-2e0b22302c22	\N	{}
9074ae53-5b70-45cd-a388-7188aef41232	campuses	fitnyc/3	\N	2025-01-26 03:02:44.640994+00	2025-01-26 03:02:44.640994+00	2025-01-26 03:02:44.640994+00	{"eTag": "\\"dac6098644928fb1ffc685af6229d78b\\"", "size": 118510, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:44.632Z", "contentLength": 118510, "httpStatusCode": 200}	d1b8f2dd-3143-4e1e-981e-a06ed2495f0f	\N	{}
4db90b4d-6e71-40e9-860c-caddf489f767	campuses	cambridgecollege/9	\N	2025-01-26 03:01:08.752949+00	2025-01-26 03:01:08.752949+00	2025-01-26 03:01:08.752949+00	{"eTag": "\\"115e0e5530639023e3021963f281c632\\"", "size": 7249, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:08.749Z", "contentLength": 7249, "httpStatusCode": 200}	71383cce-bc83-4702-83cf-727e799ce784	\N	{}
0450d5e9-30a7-464f-a10c-e3f37f06e5c5	campuses	coloradocollege/3	\N	2025-01-26 03:01:49.60957+00	2025-01-26 03:01:49.60957+00	2025-01-26 03:01:49.60957+00	{"eTag": "\\"0402867a0d8b8f0e6766ab3de3971e9f\\"", "size": 123973, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:49.607Z", "contentLength": 123973, "httpStatusCode": 200}	2b32c337-c88a-4b19-af1c-a9e6c5876f1f	\N	{}
cbf5735a-31c1-4e63-836f-404f38b88361	campuses	carleton/0	\N	2025-01-26 03:01:09.2641+00	2025-01-26 03:01:09.2641+00	2025-01-26 03:01:09.2641+00	{"eTag": "\\"c3271f1e3d35d0ed1d1b4a891c592714\\"", "size": 246739, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:09.257Z", "contentLength": 246739, "httpStatusCode": 200}	be992524-98a2-4559-8006-9a32958b564d	\N	{}
b24e690f-b184-4053-9b28-6ff09e02e9bf	campuses	carleton/1	\N	2025-01-26 03:01:09.96552+00	2025-01-26 03:01:09.96552+00	2025-01-26 03:01:09.96552+00	{"eTag": "\\"6a6cd423e5b5f862092ed0ea47661f49\\"", "size": 1081224, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:09.939Z", "contentLength": 1081224, "httpStatusCode": 200}	b2a0ef48-0be2-438d-a77d-daeb1bd73b7b	\N	{}
87546bfc-8565-4070-9c19-a15e40d06bd2	campuses	coloradocollege/4	\N	2025-01-26 03:01:50.184356+00	2025-01-26 03:01:50.184356+00	2025-01-26 03:01:50.184356+00	{"eTag": "\\"0ff07975f1a62f3a223249c7fee0267a\\"", "size": 157721, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:50.180Z", "contentLength": 157721, "httpStatusCode": 200}	3a778f9c-88a8-4420-bd57-f3d0fa6e27d5	\N	{}
6cb76bc2-ef1a-4371-838e-82f1964edf8c	campuses	carleton/2	\N	2025-01-26 03:01:10.354944+00	2025-01-26 03:01:10.354944+00	2025-01-26 03:01:10.354944+00	{"eTag": "\\"8f9572f47b9f4f6ce4d5cf5baa320b75\\"", "size": 122104, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:10.350Z", "contentLength": 122104, "httpStatusCode": 200}	2601cf0c-15e3-4823-ba49-fe6f07c48f78	\N	{}
28ac536c-30a1-4c75-b75d-b8fd040d8702	campuses	carleton/3	\N	2025-01-26 03:01:10.816983+00	2025-01-26 03:01:10.816983+00	2025-01-26 03:01:10.816983+00	{"eTag": "\\"d05920e940f446d4384e38b5218ab0ab\\"", "size": 371684, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:10.810Z", "contentLength": 371684, "httpStatusCode": 200}	3d6b07b3-4ccc-4e9c-af9b-752a6419a288	\N	{}
ade0f636-98fa-4c61-96a6-5c5bcc889300	campuses	carleton/4	\N	2025-01-26 03:01:11.635812+00	2025-01-26 03:01:11.635812+00	2025-01-26 03:01:11.635812+00	{"eTag": "\\"bd641a2e7ba0227b648355c5d3045894\\"", "size": 2194749, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:11.608Z", "contentLength": 2194749, "httpStatusCode": 200}	5729038d-3946-4710-96e9-d5ddce72507d	\N	{}
801aab0e-8c33-4471-8a09-42f0f3922dab	campuses	carleton/5	\N	2025-01-26 03:01:12.030467+00	2025-01-26 03:01:12.030467+00	2025-01-26 03:01:12.030467+00	{"eTag": "\\"630c0479a6727dea2a231b574ddf0c33\\"", "size": 192103, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:12.024Z", "contentLength": 192103, "httpStatusCode": 200}	414ce8f1-5fa0-4ed5-a6a8-d4877633e50c	\N	{}
cd910414-6ddc-4a47-aa03-4bf0f73bdd6b	campuses	carleton/6	\N	2025-01-26 03:01:13.29752+00	2025-01-26 03:01:13.29752+00	2025-01-26 03:01:13.29752+00	{"eTag": "\\"11f169ad75aae90a23d1cbbb8633fffd\\"", "size": 246002, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:13.283Z", "contentLength": 246002, "httpStatusCode": 200}	1e9846bb-1abf-420a-9caa-067648d5e1db	\N	{}
463714c0-e976-46f8-afa9-df88e4cd4c6a	campuses	carleton/7	\N	2025-01-26 03:01:14.245538+00	2025-01-26 03:01:14.245538+00	2025-01-26 03:01:14.245538+00	{"eTag": "\\"9f15e2def1282b12379b81ae7e641c28\\"", "size": 125343, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:14.239Z", "contentLength": 125343, "httpStatusCode": 200}	0c3ff39f-4d79-4715-960b-80c8a019ea97	\N	{}
ff33fe45-9b68-44b4-bf68-5a9bbdad1e21	campuses	carleton/8	\N	2025-01-26 03:01:14.66034+00	2025-01-26 03:01:14.66034+00	2025-01-26 03:01:14.66034+00	{"eTag": "\\"7d7ec08fd4fe8ef9498992b800e28975\\"", "size": 121961, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:14.656Z", "contentLength": 121961, "httpStatusCode": 200}	c4e9a4e1-636e-4893-ac1e-adf8b61c26d5	\N	{}
b544e64e-b0f8-4fca-9b3e-1d4e2caf4d05	campuses	carleton/9	\N	2025-01-26 03:01:15.694549+00	2025-01-26 03:01:15.694549+00	2025-01-26 03:01:15.694549+00	{"eTag": "\\"f3f56781a37637c59de2145833fa334d\\"", "size": 124805, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:15.687Z", "contentLength": 124805, "httpStatusCode": 200}	f81b0f10-5f69-4c21-850d-2b83e0fdd58f	\N	{}
60c6460f-fda3-4da5-a195-d932fcece6b2	campuses	chapman/0	\N	2025-01-26 03:01:16.711089+00	2025-01-26 03:01:16.711089+00	2025-01-26 03:01:16.711089+00	{"eTag": "\\"149d0d90a5d5ab8a3c1b2f6e43bd1687\\"", "size": 138333, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:16.705Z", "contentLength": 138333, "httpStatusCode": 200}	f2fb92dd-52b9-45e8-8bb2-b1b5c5fc9513	\N	{}
3f92b8fe-af77-43e9-abc1-ad4d96a151ca	campuses	chapman/1	\N	2025-01-26 03:01:17.224863+00	2025-01-26 03:01:17.224863+00	2025-01-26 03:01:17.224863+00	{"eTag": "\\"5eea84ca897a46a1ff3201102624385d\\"", "size": 138939, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:17.221Z", "contentLength": 138939, "httpStatusCode": 200}	3ce9f19d-cb0e-402f-9be7-800c87a3c273	\N	{}
d6c77578-0073-4c5b-9ec5-3f7e513198ff	campuses	coloradocollege/5	\N	2025-01-26 03:01:50.851807+00	2025-01-26 03:01:50.851807+00	2025-01-26 03:01:50.851807+00	{"eTag": "\\"0f329d2dd6cc70473d133b27cc947bc2\\"", "size": 751161, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:50.839Z", "contentLength": 751161, "httpStatusCode": 200}	9b0546dc-4d05-4fe0-9c9f-a7ee2bb85c7c	\N	{}
334cc35b-06d1-46ed-96a3-6a4404f8c42d	campuses	chapman/2	\N	2025-01-26 03:01:18.08069+00	2025-01-26 03:01:18.08069+00	2025-01-26 03:01:18.08069+00	{"eTag": "\\"47bfecc194d8927c5cc73c5794259d0c\\"", "size": 392751, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:18.065Z", "contentLength": 392751, "httpStatusCode": 200}	0179c104-aca9-4c37-8560-e35ab26edff3	\N	{}
b385911f-d7e7-4a4e-8b65-eff01593b660	campuses	fitnyc/4	\N	2025-01-26 03:02:45.120444+00	2025-01-26 03:02:45.120444+00	2025-01-26 03:02:45.120444+00	{"eTag": "\\"9fe3cb2b7313dc79bb477bc8fde184a7\\"", "size": 146, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:45.116Z", "contentLength": 146, "httpStatusCode": 200}	d57921ec-d96c-4ba9-97aa-18af7c70e744	\N	{}
c3316bfc-f9a7-4bd4-9fcd-3f2ea4af0127	campuses	chapman/3	\N	2025-01-26 03:01:18.732558+00	2025-01-26 03:01:18.732558+00	2025-01-26 03:01:18.732558+00	{"eTag": "\\"e772f4bfa552e7c018e68a1a86bbd62b\\"", "size": 151112, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:18.727Z", "contentLength": 151112, "httpStatusCode": 200}	758d1dcb-2262-4eee-9fa2-199c9abcdbad	\N	{}
9d0f3eeb-29ed-46b4-be9c-12061ce48bec	campuses	coloradocollege/6	\N	2025-01-26 03:01:51.408554+00	2025-01-26 03:01:51.408554+00	2025-01-26 03:01:51.408554+00	{"eTag": "\\"79fa4411d2a3478105780cd90f48d016\\"", "size": 323421, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:51.404Z", "contentLength": 323421, "httpStatusCode": 200}	87eac103-883b-44c1-bbe0-579e8992866b	\N	{}
583336eb-a321-4747-97dc-1da3b7e27139	campuses	chapman/4	\N	2025-01-26 03:01:19.848407+00	2025-01-26 03:01:19.848407+00	2025-01-26 03:01:19.848407+00	{"eTag": "\\"f8ae4bddea387726d949964783fa3764\\"", "size": 704170, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:19.840Z", "contentLength": 704170, "httpStatusCode": 200}	a63b8d34-30c1-4341-8330-87d838d722c3	\N	{}
759603eb-742e-4b9a-a457-045b6d5606cb	campuses	chapman/5	\N	2025-01-26 03:01:20.488865+00	2025-01-26 03:01:20.488865+00	2025-01-26 03:01:20.488865+00	{"eTag": "\\"3246c67b77698231f67c82675235892f\\"", "size": 124773, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:20.484Z", "contentLength": 124773, "httpStatusCode": 200}	67310296-ea87-4bd4-be05-143d2173edbb	\N	{}
300414d4-0c36-48ed-b398-5345b25c8cf6	campuses	coloradocollege/7	\N	2025-01-26 03:01:51.802209+00	2025-01-26 03:01:51.802209+00	2025-01-26 03:01:51.802209+00	{"eTag": "\\"e0e54f6301e6e7985f0bd2646c97023f\\"", "size": 42491, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:51.798Z", "contentLength": 42491, "httpStatusCode": 200}	9144cfed-713b-4fe1-8032-09b44423e9bf	\N	{}
ab79cb82-fd60-450b-88ca-f710ef837add	campuses	chapman/6	\N	2025-01-26 03:01:21.547233+00	2025-01-26 03:01:21.547233+00	2025-01-26 03:01:21.547233+00	{"eTag": "\\"f5d0bc769ec9458b0e82beb261349e61\\"", "size": 12754439, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:21.446Z", "contentLength": 12754439, "httpStatusCode": 200}	2b725eab-88b1-4e37-bccf-f63e2d534d74	\N	{}
fcade56d-5eeb-4e93-95c7-f6da51a5ad47	campuses	chapman/7	\N	2025-01-26 03:01:22.273472+00	2025-01-26 03:01:22.273472+00	2025-01-26 03:01:22.273472+00	{"eTag": "\\"1015118e5f9f73c2df2f5dd1e6aac846\\"", "size": 148453, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:22.267Z", "contentLength": 148453, "httpStatusCode": 200}	ed2fdc27-3609-4571-a210-d05bbbd8caeb	\N	{}
41ac6ab5-9f2b-47e5-8bd1-004111fc9913	campuses	chapman/8	\N	2025-01-26 03:01:22.889011+00	2025-01-26 03:01:22.889011+00	2025-01-26 03:01:22.889011+00	{"eTag": "\\"ec8ae647b23f0353993f492b3ab0f3df\\"", "size": 305721, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:22.875Z", "contentLength": 305721, "httpStatusCode": 200}	d8473e9c-b931-420b-94c1-2e6801fe93e7	\N	{}
a2874ca8-f047-48f7-b195-2b45d224289c	campuses	chapman/9	\N	2025-01-26 03:01:23.423998+00	2025-01-26 03:01:23.423998+00	2025-01-26 03:01:23.423998+00	{"eTag": "\\"38997c44d4e2e8af6ddf6f6dbb48c4b7\\"", "size": 13557, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:23.421Z", "contentLength": 13557, "httpStatusCode": 200}	ce7a50e3-89dc-4bec-9062-3b2aa839630b	\N	{}
750c41a5-5be1-422b-bf39-4d64fb0c5146	campuses	coastal/0	\N	2025-01-26 03:01:24.114224+00	2025-01-26 03:01:24.114224+00	2025-01-26 03:01:24.114224+00	{"eTag": "\\"0b70bdaf6cd30441b8118c367cb273c6\\"", "size": 396735, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:24.109Z", "contentLength": 396735, "httpStatusCode": 200}	06e5bb4d-9e1f-42bd-a44a-9a2ed13285b2	\N	{}
451ec451-74a9-4f07-84de-79026824598f	campuses	coastal/1	\N	2025-01-26 03:01:24.687121+00	2025-01-26 03:01:24.687121+00	2025-01-26 03:01:24.687121+00	{"eTag": "\\"0f11317e779584b3367c69431f54e30f\\"", "size": 312338, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:24.674Z", "contentLength": 312338, "httpStatusCode": 200}	92e5db8f-378d-4442-aaee-ff95673942c0	\N	{}
da010325-5c67-4366-bd57-51c5e0972f46	campuses	coastal/2	\N	2025-01-26 03:01:26.438526+00	2025-01-26 03:01:26.438526+00	2025-01-26 03:01:26.438526+00	{"eTag": "\\"df778053031fb30dde2a24d2ae1494c9\\"", "size": 66419, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:26.410Z", "contentLength": 66419, "httpStatusCode": 200}	29952c9f-bda8-4a90-ad50-1af2e9cb7d52	\N	{}
62bc33b1-bb60-4783-99d3-b3da483a6ddb	campuses	coastal/3	\N	2025-01-26 03:01:27.449872+00	2025-01-26 03:01:27.449872+00	2025-01-26 03:01:27.449872+00	{"eTag": "\\"66c3207ea68d19811e4c8ce3d11a15cb\\"", "size": 1001621, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:27.440Z", "contentLength": 1001621, "httpStatusCode": 200}	eaafcc1c-a199-4da3-b731-a1a4eaf69fb0	\N	{}
53363bb9-aaa1-41bf-833a-5e77cd4299f1	campuses	coastal/6	\N	2025-01-26 03:01:27.985707+00	2025-01-26 03:01:27.985707+00	2025-01-26 03:01:27.985707+00	{"eTag": "\\"9dc7fbcfb3a76af5f2fb71f159eba232\\"", "size": 45600, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:27.974Z", "contentLength": 45600, "httpStatusCode": 200}	97cca4f4-36ed-4e6a-a732-51b6c0484c29	\N	{}
0e2feda8-c1cb-413c-801d-7509cd41d9a8	campuses	coastal/7	\N	2025-01-26 03:01:28.776781+00	2025-01-26 03:01:28.776781+00	2025-01-26 03:01:28.776781+00	{"eTag": "\\"dbafbd687051f8c1c469a707ec1667a2\\"", "size": 19131, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:28.771Z", "contentLength": 19131, "httpStatusCode": 200}	dd96c903-fb7c-4bda-9dc6-16b8b6511a80	\N	{}
6f1d2ee4-a34a-446e-8f11-775c0dab02fd	campuses	coloradocollege/8	\N	2025-01-26 03:01:52.099161+00	2025-01-26 03:01:52.099161+00	2025-01-26 03:01:52.099161+00	{"eTag": "\\"3f7a5a1580d621f376453680cba9b79c\\"", "size": 386, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:52.096Z", "contentLength": 386, "httpStatusCode": 200}	ecb3ab6c-201c-4338-b9f1-f314bb337cc4	\N	{}
955ea854-7752-4fbb-a5f4-1baf666d4cbf	campuses	coastal/8	\N	2025-01-26 03:01:29.282106+00	2025-01-26 03:01:29.282106+00	2025-01-26 03:01:29.282106+00	{"eTag": "\\"4dbbe18369de61e6c209d7f477ab5fe5\\"", "size": 13375, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:29.276Z", "contentLength": 13375, "httpStatusCode": 200}	f66683c1-e2bd-4ac6-8d8c-a247a096b9dc	\N	{}
d1e6a2ba-2c2e-4282-8073-15efde5b6c49	campuses	fitnyc/5	\N	2025-01-26 03:02:45.583307+00	2025-01-26 03:02:45.583307+00	2025-01-26 03:02:45.583307+00	{"eTag": "\\"bae8f8ed00ede5175bc0a645aeb4ecdc\\"", "size": 164481, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:45.577Z", "contentLength": 164481, "httpStatusCode": 200}	6f8ffc78-71ae-4ab1-8b4d-77713eb8740c	\N	{}
bf11c300-dc97-4d73-8015-b016e259bc69	campuses	coastal/9	\N	2025-01-26 03:01:29.81503+00	2025-01-26 03:01:29.81503+00	2025-01-26 03:01:29.81503+00	{"eTag": "\\"9431f6f71aeab73efd5a144af95c4b69\\"", "size": 43239, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:29.809Z", "contentLength": 43239, "httpStatusCode": 200}	c6f04d4f-4475-4cfd-89f6-b120eeaf5bc3	\N	{}
a766d3af-0159-4143-9e90-81e4f08bc938	campuses	coloradocollege/9	\N	2025-01-26 03:01:52.617734+00	2025-01-26 03:01:52.617734+00	2025-01-26 03:01:52.617734+00	{"eTag": "\\"1c7dff1d1a0b14c0eedcf9834a11bd43\\"", "size": 305466, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:52.610Z", "contentLength": 305466, "httpStatusCode": 200}	2004dd8f-9fd3-45dd-84af-c9a43d7527af	\N	{}
99b0d96f-ede5-4049-b37b-d350fb68b09e	campuses	colgate/0	\N	2025-01-26 03:01:30.773063+00	2025-01-26 03:01:30.773063+00	2025-01-26 03:01:30.773063+00	{"eTag": "\\"d8dfb69c7ffc0c016559dfb4c95cfeda\\"", "size": 521793, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:30.761Z", "contentLength": 521793, "httpStatusCode": 200}	65b72022-51ef-4718-935e-b7698eabbf47	\N	{}
744a6a36-75bc-494e-b23a-b73712d75656	campuses	colgate/1	\N	2025-01-26 03:01:31.467095+00	2025-01-26 03:01:31.467095+00	2025-01-26 03:01:31.467095+00	{"eTag": "\\"5ee2e4daea6648b0a7d8528411d254fe\\"", "size": 630356, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:31.456Z", "contentLength": 630356, "httpStatusCode": 200}	ec4c7eaa-736a-40ad-9ae9-e9cf71a2c5ff	\N	{}
1df4aebd-8007-46bf-aef6-036e32c51ba7	campuses	colostate/0	\N	2025-01-26 03:01:53.506369+00	2025-01-26 03:01:53.506369+00	2025-01-26 03:01:53.506369+00	{"eTag": "\\"416acf4cb16c70ed94baed3a4a056631\\"", "size": 2485610, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:53.475Z", "contentLength": 2485610, "httpStatusCode": 200}	39a58fcf-4710-47f4-a540-f82bf6434404	\N	{}
4fb3afb5-a2a9-4d1f-a37c-18633fe2adb4	campuses	colgate/2	\N	2025-01-26 03:01:32.106919+00	2025-01-26 03:01:32.106919+00	2025-01-26 03:01:32.106919+00	{"eTag": "\\"753e431135051fdcfec7f3af2f83a344\\"", "size": 361268, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:32.098Z", "contentLength": 361268, "httpStatusCode": 200}	93e05c27-192b-4818-bae4-aa237e216df7	\N	{}
56c0211b-efcb-4779-8663-9f7dacdc173e	campuses	colgate/3	\N	2025-01-26 03:01:32.852504+00	2025-01-26 03:01:32.852504+00	2025-01-26 03:01:32.852504+00	{"eTag": "\\"0bad0d9ab824c75461d95c2a70903ab0\\"", "size": 792562, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:32.844Z", "contentLength": 792562, "httpStatusCode": 200}	fed618c2-f83d-4fb5-89a5-221992e41d96	\N	{}
7eb32076-0ef6-4124-8b4c-0df24d5fa46f	campuses	colgate/4	\N	2025-01-26 03:01:33.253456+00	2025-01-26 03:01:33.253456+00	2025-01-26 03:01:33.253456+00	{"eTag": "\\"f2950af60ad33a56eb3a3e5722f6cb38\\"", "size": 69158, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:33.226Z", "contentLength": 69158, "httpStatusCode": 200}	e4165f15-197c-4ad6-93f3-9d3e77fe0212	\N	{}
2d99ed78-f42e-470e-8b10-aea27d2655c5	campuses	colgate/5	\N	2025-01-26 03:01:34.200968+00	2025-01-26 03:01:34.200968+00	2025-01-26 03:01:34.200968+00	{"eTag": "\\"cdbe5efad1dea4831a6bf9ba6b07cf11\\"", "size": 1859382, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:34.184Z", "contentLength": 1859382, "httpStatusCode": 200}	a1717dc4-e8c4-405f-9190-b5c0e43329c0	\N	{}
3d1f1718-ef71-4e05-b219-08905df3270e	campuses	colgate/6	\N	2025-01-26 03:01:34.719161+00	2025-01-26 03:01:34.719161+00	2025-01-26 03:01:34.719161+00	{"eTag": "\\"c4ef959a30afabaaf71076ca76659616\\"", "size": 53274, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:34.713Z", "contentLength": 53274, "httpStatusCode": 200}	6bc303b7-2eb8-4877-8119-17d1c3083f9a	\N	{}
83f2aef7-b717-4ee2-a554-c53bd00bff45	campuses	colgate/7	\N	2025-01-26 03:01:35.142246+00	2025-01-26 03:01:35.142246+00	2025-01-26 03:01:35.142246+00	{"eTag": "\\"164a1a7d4e483b5680e5594e381e6265\\"", "size": 57871, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:35.137Z", "contentLength": 57871, "httpStatusCode": 200}	0028d7c8-828e-4945-8c3b-d32645a7cdeb	\N	{}
25e6c63f-d60c-4f90-bc3a-7236b7f82e6a	campuses	colgate/8	\N	2025-01-26 03:01:35.878127+00	2025-01-26 03:01:35.878127+00	2025-01-26 03:01:35.878127+00	{"eTag": "\\"c68ab73717e3f532ac15be6ca1d46675\\"", "size": 740609, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:35.872Z", "contentLength": 740609, "httpStatusCode": 200}	95666d04-f3ba-46bf-8bb0-725a5f171996	\N	{}
6db43420-3d7d-42da-bda8-f9d22c4c681a	campuses	colgate/9	\N	2025-01-26 03:01:36.515825+00	2025-01-26 03:01:36.515825+00	2025-01-26 03:01:36.515825+00	{"eTag": "\\"e60192731ee5de3819210b44086f8c50\\"", "size": 688790, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:36.500Z", "contentLength": 688790, "httpStatusCode": 200}	47a3ea6c-53ce-473c-bb79-d6650c8609da	\N	{}
a9fbd650-d61d-4d78-9e0e-f4c50256b7d2	campuses	cofc/0	\N	2025-01-26 03:01:37.144088+00	2025-01-26 03:01:37.144088+00	2025-01-26 03:01:37.144088+00	{"eTag": "\\"54e0249aebde5b9798487b6ab3f5b19f\\"", "size": 462258, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:37.133Z", "contentLength": 462258, "httpStatusCode": 200}	b564d433-00ba-40d3-a6fd-825c9b2fe79c	\N	{}
71143ae7-9a71-4fed-a234-b48c09969d9f	campuses	cofc/2	\N	2025-01-26 03:01:38.050379+00	2025-01-26 03:01:38.050379+00	2025-01-26 03:01:38.050379+00	{"eTag": "\\"59098ab0c2560b70454042f1e755ff2d\\"", "size": 375353, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:38.037Z", "contentLength": 375353, "httpStatusCode": 200}	b72661a4-d809-47b8-a887-7587bb678ed2	\N	{}
3d0a3803-d963-4241-b45a-30313ede76df	campuses	colostate/1	\N	2025-01-26 03:01:54.245345+00	2025-01-26 03:01:54.245345+00	2025-01-26 03:01:54.245345+00	{"eTag": "\\"33e026d833604c9b8c2027e158a216e6\\"", "size": 606845, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:54.229Z", "contentLength": 606845, "httpStatusCode": 200}	0efc6892-f672-4135-9afb-096f8130ef7b	\N	{}
02fb2070-05ec-49ba-817b-22ccdd4c3f70	campuses	cofc/3	\N	2025-01-26 03:01:38.541774+00	2025-01-26 03:01:38.541774+00	2025-01-26 03:01:38.541774+00	{"eTag": "\\"4b62995b235883e3e33f39e8bdab6c50\\"", "size": 482925, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:38.526Z", "contentLength": 482925, "httpStatusCode": 200}	98d4557e-e4fc-45cf-90cf-adac08bc1cc1	\N	{}
d53cc41a-25e4-4240-9b65-2330ae6a1ae9	campuses	fitnyc/6	\N	2025-01-26 03:02:46.00005+00	2025-01-26 03:02:46.00005+00	2025-01-26 03:02:46.00005+00	{"eTag": "\\"9fe3cb2b7313dc79bb477bc8fde184a7\\"", "size": 146, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:45.997Z", "contentLength": 146, "httpStatusCode": 200}	754351b8-bc91-406a-9ce6-b74efcf0f2aa	\N	{}
3a6013c8-023f-43a3-8ec7-bff7ec386377	campuses	cofc/4	\N	2025-01-26 03:01:38.970412+00	2025-01-26 03:01:38.970412+00	2025-01-26 03:01:38.970412+00	{"eTag": "\\"10756f9c6b65f105c1a02fc8185fd288\\"", "size": 268610, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:38.965Z", "contentLength": 268610, "httpStatusCode": 200}	4448c155-2ff2-47eb-8be8-d12ff674b5f2	\N	{}
c3c2851f-0d3b-44ab-a4e1-6f635b09d226	campuses	colostate/2	\N	2025-01-26 03:01:54.80471+00	2025-01-26 03:01:54.80471+00	2025-01-26 03:01:54.80471+00	{"eTag": "\\"cee2e88c89ac1b3c2a88f85078daf3ce\\"", "size": 980453, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:54.789Z", "contentLength": 980453, "httpStatusCode": 200}	4a6deb21-b080-4669-bfa9-ca8526554cec	\N	{}
749491f2-2acc-477b-bb15-d422d38c7cd6	campuses	cofc/5	\N	2025-01-26 03:01:39.423734+00	2025-01-26 03:01:39.423734+00	2025-01-26 03:01:39.423734+00	{"eTag": "\\"58960a1e2b9b2f24916485bdb8e3e630\\"", "size": 457337, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:39.420Z", "contentLength": 457337, "httpStatusCode": 200}	bc413086-3b3a-4bae-a825-803d7c5b94c9	\N	{}
58040e70-2d48-4579-b47f-5f2dae9906d3	campuses	juniata/1	\N	2025-01-26 21:06:44.473548+00	2025-01-26 21:06:44.473548+00	2025-01-26 21:06:44.473548+00	{"eTag": "\\"892c9d411061b22afd9cd69b37a132eb\\"", "size": 386, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:06:44.469Z", "contentLength": 386, "httpStatusCode": 200}	d8a05d7d-11cc-4c86-88ac-e4b91ce7ff34	\N	{}
e1669b01-152d-4abb-ad6a-d165b03098a5	campuses	cofc/6	\N	2025-01-26 03:01:40.471022+00	2025-01-26 03:01:40.471022+00	2025-01-26 03:01:40.471022+00	{"eTag": "\\"ff25a16ae32e9a7c418c3099ce2fed0f\\"", "size": 449992, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:40.462Z", "contentLength": 449992, "httpStatusCode": 200}	f7f5c06b-5b6d-47f1-ac34-bf959ff81959	\N	{}
1f0a914a-dd17-4f55-9f79-15207e98edd2	campuses	colostate/3	\N	2025-01-26 03:01:55.575786+00	2025-01-26 03:01:55.575786+00	2025-01-26 03:01:55.575786+00	{"eTag": "\\"ec7bfd19601822912204a16e4031d122\\"", "size": 693116, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:55.564Z", "contentLength": 693116, "httpStatusCode": 200}	8876acc4-1d46-4f69-99d6-fa3df98feee0	\N	{}
298b37ba-1954-4b94-8399-5bf27f5711cc	campuses	cofc/7	\N	2025-01-26 03:01:40.979318+00	2025-01-26 03:01:40.979318+00	2025-01-26 03:01:40.979318+00	{"eTag": "\\"d539bbb63cff1496f9f77df58de37103\\"", "size": 341929, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:40.973Z", "contentLength": 341929, "httpStatusCode": 200}	ac179be3-75a3-4bef-bab0-1f4aa853e7c1	\N	{}
244c9a2b-1466-40b3-a47f-a6bfd00f96eb	campuses	fitnyc/7	\N	2025-01-26 03:02:46.681486+00	2025-01-26 03:02:46.681486+00	2025-01-26 03:02:46.681486+00	{"eTag": "\\"f017d1726dfbfba5a2b2dc2b239c3916\\"", "size": 72538, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:46.676Z", "contentLength": 72538, "httpStatusCode": 200}	7237275c-e589-4ec5-ad46-bafd8bdb151b	\N	{}
94cd7984-04bf-46c4-9228-fe69fbbd34c9	campuses	cofc/8	\N	2025-01-26 03:01:41.462019+00	2025-01-26 03:01:41.462019+00	2025-01-26 03:01:41.462019+00	{"eTag": "\\"725b789d4ea0c13885ee6df3819e9c08\\"", "size": 494943, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:41.435Z", "contentLength": 494943, "httpStatusCode": 200}	1b30b5a3-290f-4b4d-9beb-9804a2d66667	\N	{}
4ff21440-9b58-41b6-9c4e-1d181cdcb8c0	campuses	colostate/4	\N	2025-01-26 03:01:56.164728+00	2025-01-26 03:01:56.164728+00	2025-01-26 03:01:56.164728+00	{"eTag": "\\"d39bab7e5ae926dbf7a53c5a198d93f2\\"", "size": 174306, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:56.149Z", "contentLength": 174306, "httpStatusCode": 200}	c276e457-4546-4ab0-ac07-11557dae2121	\N	{}
bca63c56-4167-46c3-9856-9ca1675224ae	campuses	cofc/9	\N	2025-01-26 03:01:42.060164+00	2025-01-26 03:01:42.060164+00	2025-01-26 03:01:42.060164+00	{"eTag": "\\"76ca381e9b5bf42017f170f6325a5b96\\"", "size": 839496, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:42.051Z", "contentLength": 839496, "httpStatusCode": 200}	1e6f5fce-a4d4-4c50-a8d1-3aced94af7b2	\N	{}
51110000-d1e4-4e24-8bad-ef79bf1b28af	campuses	csi.cuny/0	\N	2025-01-26 03:01:42.872877+00	2025-01-26 03:01:42.872877+00	2025-01-26 03:01:42.872877+00	{"eTag": "\\"9750db9eeec5d8d437224a607cd8b35f\\"", "size": 57278, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:42.841Z", "contentLength": 57278, "httpStatusCode": 200}	b9a21c77-744f-4ea8-b0f9-8ed1cbaa8632	\N	{}
d771ec0c-efdb-474f-914d-cea7e772c2a5	campuses	colostate/5	\N	2025-01-26 03:01:56.775553+00	2025-01-26 03:01:56.775553+00	2025-01-26 03:01:56.775553+00	{"eTag": "\\"0d1858cc1d3d2816a277093e7fd7a119\\"", "size": 597602, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:56.762Z", "contentLength": 597602, "httpStatusCode": 200}	ce4ff204-0c7e-4a85-86e3-ab77cc9c5716	\N	{}
fc771b1a-eab8-4070-95d9-d156651bb3ab	campuses	colostate/6	\N	2025-01-26 03:01:57.468078+00	2025-01-26 03:01:57.468078+00	2025-01-26 03:01:57.468078+00	{"eTag": "\\"9a9d1cf1dfad1087b94fed1363b49eb6\\"", "size": 702288, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:57.453Z", "contentLength": 702288, "httpStatusCode": 200}	7b01c953-e43b-4698-80b6-de0a40909776	\N	{}
1d9136fe-8bdb-4101-b509-291c28b930ea	campuses	colostate/7	\N	2025-01-26 03:01:57.924185+00	2025-01-26 03:01:57.924185+00	2025-01-26 03:01:57.924185+00	{"eTag": "\\"31daec9b0f437361cf9de6b3f0e60978\\"", "size": 126835, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:57.918Z", "contentLength": 126835, "httpStatusCode": 200}	a944ffca-8e7b-45c7-a82c-687824725c8d	\N	{}
c270bd22-09b1-4158-89cd-d5751d4f6ce0	campuses	colostate/8	\N	2025-01-26 03:01:58.529236+00	2025-01-26 03:01:58.529236+00	2025-01-26 03:01:58.529236+00	{"eTag": "\\"7a0d6bb8592425a70394ba8060574ca5\\"", "size": 112532, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:58.524Z", "contentLength": 112532, "httpStatusCode": 200}	3aa98425-3d82-4b40-a600-0a9c67adb22d	\N	{}
17bbb5cf-5799-4fdc-b00d-d725190e6b17	campuses	fitnyc/8	\N	2025-01-26 03:02:47.059992+00	2025-01-26 03:02:47.059992+00	2025-01-26 03:02:47.059992+00	{"eTag": "\\"9fe3cb2b7313dc79bb477bc8fde184a7\\"", "size": 146, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:47.056Z", "contentLength": 146, "httpStatusCode": 200}	5dd2e8ad-6202-45e1-8557-7604eb0af51f	\N	{}
f7c529e7-e0ad-4981-a5ed-ec1aab62efc2	campuses	colostate/9	\N	2025-01-26 03:01:59.089849+00	2025-01-26 03:01:59.089849+00	2025-01-26 03:01:59.089849+00	{"eTag": "\\"5cbdc4e56bced3ebe9108047790e9f00\\"", "size": 453316, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:59.081Z", "contentLength": 453316, "httpStatusCode": 200}	7a069721-c9e9-4e7f-8b5e-6008c0fd9592	\N	{}
18c644fe-91d3-4b14-a79b-d028f0da33f7	campuses	creighton/0	\N	2025-01-26 03:01:59.629765+00	2025-01-26 03:01:59.629765+00	2025-01-26 03:01:59.629765+00	{"eTag": "\\"3eb74d231705ed41bea244922e59d891\\"", "size": 128425, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:59.614Z", "contentLength": 128425, "httpStatusCode": 200}	a1a1762e-860a-4514-89ee-4e1f96320c16	\N	{}
d8f872bc-e898-4d89-9b0e-222b99d9382b	campuses	fitnyc/9	\N	2025-01-26 03:02:47.668788+00	2025-01-26 03:02:47.668788+00	2025-01-26 03:02:47.668788+00	{"eTag": "\\"9fe3cb2b7313dc79bb477bc8fde184a7\\"", "size": 146, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:47.664Z", "contentLength": 146, "httpStatusCode": 200}	05836c0c-ba0e-48b2-a6be-7afe80dc500a	\N	{}
a2800cad-32b5-4924-9653-467220f3d1ed	campuses	creighton/1	\N	2025-01-26 03:01:59.989954+00	2025-01-26 03:01:59.989954+00	2025-01-26 03:01:59.989954+00	{"eTag": "\\"df63b9acef8b200ee1f8378a2865ce3a\\"", "size": 120264, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:01:59.987Z", "contentLength": 120264, "httpStatusCode": 200}	2f293c0d-be8a-43f7-a8b1-3d14a2f7cd9f	\N	{}
cd5f89f9-f09c-4c32-a698-5b8f58d02ecb	campuses	juniata/2	\N	2025-01-26 21:06:44.717692+00	2025-01-26 21:06:44.717692+00	2025-01-26 21:06:44.717692+00	{"eTag": "\\"5c7fef6d68788a4c640e2b5d02887eff\\"", "size": 386, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:06:44.713Z", "contentLength": 386, "httpStatusCode": 200}	9be72755-5f03-4194-9415-d049228fe431	\N	{}
65f51071-4561-461a-acf8-f7a77a99b87f	campuses	creighton/2	\N	2025-01-26 03:02:00.404562+00	2025-01-26 03:02:00.404562+00	2025-01-26 03:02:00.404562+00	{"eTag": "\\"8e0f2e23006e702a5a8a06efd8128af0\\"", "size": 95441, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:00.400Z", "contentLength": 95441, "httpStatusCode": 200}	279728bc-b8e5-463c-ac88-9e88632bfcf5	\N	{}
09163717-b349-4685-bdb2-05bc3ba73e15	campuses	fitchburgstate/0	\N	2025-01-26 03:02:48.265048+00	2025-01-26 03:02:48.265048+00	2025-01-26 03:02:48.265048+00	{"eTag": "\\"28b0e0cf62974d6db127b0fef731bafe\\"", "size": 574615, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:48.254Z", "contentLength": 574615, "httpStatusCode": 200}	b8ed5391-749c-4d5d-8b0d-662367b3638b	\N	{}
2e4e9b65-c043-4eb2-89b9-4a92f842845d	campuses	creighton/3	\N	2025-01-26 03:02:00.861672+00	2025-01-26 03:02:00.861672+00	2025-01-26 03:02:00.861672+00	{"eTag": "\\"a5263e988abbd6292022d5fb2c0ba8f5\\"", "size": 236855, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:00.852Z", "contentLength": 236855, "httpStatusCode": 200}	a80daa20-3ba8-402e-ad65-e1b096291300	\N	{}
d09a9730-c796-4aff-be33-cf0ecdcbdcd4	campuses	creighton/4	\N	2025-01-26 03:02:01.54223+00	2025-01-26 03:02:01.54223+00	2025-01-26 03:02:01.54223+00	{"eTag": "\\"e7fe227c269e143be7e0a0281ab10af5\\"", "size": 450892, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:01.525Z", "contentLength": 450892, "httpStatusCode": 200}	07503760-964a-4e56-a693-b9caa7372dac	\N	{}
77f97c57-3e23-44fc-8f9c-a7b80c1ca8e3	campuses	creighton/5	\N	2025-01-26 03:02:02.054394+00	2025-01-26 03:02:02.054394+00	2025-01-26 03:02:02.054394+00	{"eTag": "\\"10a72acf7e87c5c7e1f48985506bc26c\\"", "size": 274077, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:02.029Z", "contentLength": 274077, "httpStatusCode": 200}	9a76988d-6ae8-45c9-9fa7-36f29084e323	\N	{}
808c2d98-4d84-4cc1-96cf-0e308a5cbaef	campuses	creighton/6	\N	2025-01-26 03:02:02.44688+00	2025-01-26 03:02:02.44688+00	2025-01-26 03:02:02.44688+00	{"eTag": "\\"966e9094c1715e6758b653a4218ee1e2\\"", "size": 201344, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:02.439Z", "contentLength": 201344, "httpStatusCode": 200}	4fb0f7dc-0032-4e02-ace6-5090f9083a00	\N	{}
30ef5959-9034-4255-8930-879740a7c3bb	campuses	creighton/7	\N	2025-01-26 03:02:02.876874+00	2025-01-26 03:02:02.876874+00	2025-01-26 03:02:02.876874+00	{"eTag": "\\"d7e22739304551fb1409cb7f38e598d8\\"", "size": 82116, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:02.871Z", "contentLength": 82116, "httpStatusCode": 200}	c10c24f8-9351-4416-903d-d7a91235b771	\N	{}
bd3dfe50-9551-487d-b9c6-23f6e841fb31	campuses	creighton/8	\N	2025-01-26 03:02:03.325693+00	2025-01-26 03:02:03.325693+00	2025-01-26 03:02:03.325693+00	{"eTag": "\\"8919074105073d3a1675cf2d36856b7e\\"", "size": 309915, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:03.317Z", "contentLength": 309915, "httpStatusCode": 200}	e39614e5-b01d-491f-b8ca-6df14b6ca8bb	\N	{}
3feefcae-29c4-4c73-80c4-6c7ca384a155	campuses	creighton/9	\N	2025-01-26 03:02:03.670886+00	2025-01-26 03:02:03.670886+00	2025-01-26 03:02:03.670886+00	{"eTag": "\\"7f5d268b7fc234a884b832f7366aaae0\\"", "size": 64311, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:03.668Z", "contentLength": 64311, "httpStatusCode": 200}	9be1d608-2c42-41a2-9d73-5a6d1e20f6dc	\N	{}
cb3e8311-61e2-4cd8-bbe5-78084b8f81f4	campuses	dsu/1	\N	2025-01-26 03:02:04.280905+00	2025-01-26 03:02:04.280905+00	2025-01-26 03:02:04.280905+00	{"eTag": "\\"ba158c9e3360cf87efe11414ed3bd8fc\\"", "size": 51660, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:04.277Z", "contentLength": 51660, "httpStatusCode": 200}	56645e56-8d8c-4b89-acd6-43c1792d588c	\N	{}
ebf30a8d-bff6-4537-99c8-1fec533b7c70	campuses	dsu/2	\N	2025-01-26 03:02:04.927338+00	2025-01-26 03:02:04.927338+00	2025-01-26 03:02:04.927338+00	{"eTag": "\\"8f71af394af5a1f930190d7225d7f449\\"", "size": 117117, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:04.924Z", "contentLength": 117117, "httpStatusCode": 200}	73fed810-dd1c-4232-83e6-a7a560604755	\N	{}
5a24d9c1-3c5e-467f-85f3-6580f93297c4	campuses	daltonstate/4	\N	2025-01-26 03:02:06.006735+00	2025-01-26 03:02:06.006735+00	2025-01-26 03:02:06.006735+00	{"eTag": "\\"7b434e16669d8b6d3d84252e6976f586\\"", "size": 10834, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:06.000Z", "contentLength": 10834, "httpStatusCode": 200}	fc194524-0e56-4a6a-addc-59a9e40670cb	\N	{}
c6f3c951-f619-46ea-a875-15bc5ec0ff8f	campuses	fitchburgstate/1	\N	2025-01-26 03:02:48.638655+00	2025-01-26 03:02:48.638655+00	2025-01-26 03:02:48.638655+00	{"eTag": "\\"75072e62d83dbea4d4fbe298d8fec858\\"", "size": 148773, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:48.633Z", "contentLength": 148773, "httpStatusCode": 200}	417dc133-072c-4a1f-8b27-1b26d843d61c	\N	{}
ed765bda-11e0-4040-acd7-d3fa001f4479	campuses	daltonstate/9	\N	2025-01-26 03:02:06.93382+00	2025-01-26 03:02:06.93382+00	2025-01-26 03:02:06.93382+00	{"eTag": "\\"cb83d2099deb2704ae65a9b6f0736b05\\"", "size": 2618376, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:06.899Z", "contentLength": 2618376, "httpStatusCode": 200}	36a056b7-122c-4ac0-9bb3-0aa96e382bfa	\N	{}
cf096a64-a4cf-48e2-b76b-233f2d1e5de7	campuses	juniata/3	\N	2025-01-26 21:06:44.955668+00	2025-01-26 21:06:44.955668+00	2025-01-26 21:06:44.955668+00	{"eTag": "\\"52ecebe3f88c20e089ed60bdd1b73287\\"", "size": 449, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:06:44.952Z", "contentLength": 449, "httpStatusCode": 200}	d9b7ebc9-d82c-4d21-ab35-3059d430abb9	\N	{}
e653ffd6-00a7-4150-b787-2c9025460c32	campuses	dartmouth/0	\N	2025-01-26 03:02:07.683368+00	2025-01-26 03:02:07.683368+00	2025-01-26 03:02:07.683368+00	{"eTag": "\\"8d8a4e65822b4c47ed1a470409a31635\\"", "size": 287454, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:07.675Z", "contentLength": 287454, "httpStatusCode": 200}	6256a783-d7bc-46cb-b690-2e4fbb361555	\N	{}
94584585-55de-437f-8219-138a36a30260	campuses	fitchburgstate/2	\N	2025-01-26 03:02:49.028052+00	2025-01-26 03:02:49.028052+00	2025-01-26 03:02:49.028052+00	{"eTag": "\\"2ac526003ee0a0fad417438ff23afcec\\"", "size": 122568, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:49.020Z", "contentLength": 122568, "httpStatusCode": 200}	241cb43b-49c4-4d9c-ba1d-22ff0e669ed4	\N	{}
75ca7eb0-9822-4f1d-8017-85b806ed5aea	campuses	dartmouth/1	\N	2025-01-26 03:02:08.792581+00	2025-01-26 03:02:08.792581+00	2025-01-26 03:02:08.792581+00	{"eTag": "\\"23d059d2d7d89faa758c040e5dada6a5\\"", "size": 147238, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:08.786Z", "contentLength": 147238, "httpStatusCode": 200}	bca629f5-e764-493a-828c-a93ee8715c9c	\N	{}
84eda588-1e9f-432c-bcdd-3436830992c5	campuses	dartmouth/2	\N	2025-01-26 03:02:09.26187+00	2025-01-26 03:02:09.26187+00	2025-01-26 03:02:09.26187+00	{"eTag": "\\"b3659b6460059d682dea4d5586c5cec8\\"", "size": 100988, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:09.257Z", "contentLength": 100988, "httpStatusCode": 200}	d599ee44-f27a-4455-a1ae-6b17650c71f2	\N	{}
e45bba15-f70e-4f2d-93c9-d1294a7b14e9	campuses	fitchburgstate/3	\N	2025-01-26 03:02:49.479323+00	2025-01-26 03:02:49.479323+00	2025-01-26 03:02:49.479323+00	{"eTag": "\\"7aa3d28d8a834aeedd85fe4ea080fe81\\"", "size": 254740, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:49.471Z", "contentLength": 254740, "httpStatusCode": 200}	117bf934-79fa-4f6c-9980-9cafad477251	\N	{}
3fd435a5-9148-4856-8200-86ce9bad887c	campuses	dartmouth/3	\N	2025-01-26 03:02:10.282624+00	2025-01-26 03:02:10.282624+00	2025-01-26 03:02:10.282624+00	{"eTag": "\\"8d94761e09a967d88a80432311561b06\\"", "size": 2701006, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:10.243Z", "contentLength": 2701006, "httpStatusCode": 200}	7c9dc6f5-11c5-4e2e-b8af-011066649651	\N	{}
8fe0244e-acb0-479b-bf1a-2bdbe1f4c501	campuses	dartmouth/4	\N	2025-01-26 03:02:10.618451+00	2025-01-26 03:02:10.618451+00	2025-01-26 03:02:10.618451+00	{"eTag": "\\"6dc97dc720d105d9ea4a7e5bebbbbe79\\"", "size": 68764, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:10.615Z", "contentLength": 68764, "httpStatusCode": 200}	b4f320e4-a44e-4d06-a9fb-a0b1fc52619e	\N	{}
bb8cbf99-25fc-4ef6-9a50-a2ac83811f61	campuses	dartmouth/5	\N	2025-01-26 03:02:11.09172+00	2025-01-26 03:02:11.09172+00	2025-01-26 03:02:11.09172+00	{"eTag": "\\"62e156a4bdb582a4f584058bb8d84fc9\\"", "size": 447350, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:11.081Z", "contentLength": 447350, "httpStatusCode": 200}	a72a0214-cfef-4ca3-9c4c-654b12bfcf33	\N	{}
80da8d30-0da0-4200-8a10-64b3056e7059	campuses	dartmouth/6	\N	2025-01-26 03:02:11.562999+00	2025-01-26 03:02:11.562999+00	2025-01-26 03:02:11.562999+00	{"eTag": "\\"84f9a9ec0d1ed067826cb2fa1730ef6b\\"", "size": 329340, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:11.559Z", "contentLength": 329340, "httpStatusCode": 200}	7c7adaac-dbcf-4f72-afb9-bb09e5ea195d	\N	{}
9331b1bb-fbed-4d00-bdb7-4eb2a948e23b	campuses	dartmouth/7	\N	2025-01-26 03:02:12.049518+00	2025-01-26 03:02:12.049518+00	2025-01-26 03:02:12.049518+00	{"eTag": "\\"b5d33137746c1e7c0a1044f6a3172d77\\"", "size": 216208, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:12.045Z", "contentLength": 216208, "httpStatusCode": 200}	20e86112-a4b0-478c-98db-714fc3b56bf5	\N	{}
3e8cf985-5a08-4eb4-87a3-93ecef9a5f81	campuses	dartmouth/8	\N	2025-01-26 03:02:12.527018+00	2025-01-26 03:02:12.527018+00	2025-01-26 03:02:12.527018+00	{"eTag": "\\"5072964a028e41227b062c26d1f93d26\\"", "size": 312911, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:12.520Z", "contentLength": 312911, "httpStatusCode": 200}	68b2bbc9-db8d-4b96-876e-ff2aeec33bc7	\N	{}
b9af9fce-1c10-4ff8-b3f6-6969cb2c1109	campuses	dartmouth/9	\N	2025-01-26 03:02:13.12084+00	2025-01-26 03:02:13.12084+00	2025-01-26 03:02:13.12084+00	{"eTag": "\\"96df0bcda96002bc242e31123b9eb3bd\\"", "size": 543684, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:13.108Z", "contentLength": 543684, "httpStatusCode": 200}	5f0c9052-1649-4bee-8979-2e522d7984ed	\N	{}
b7c2e6fd-b550-416f-8905-f417741979a7	campuses	denison/0	\N	2025-01-26 03:02:14.496381+00	2025-01-26 03:02:14.496381+00	2025-01-26 03:02:14.496381+00	{"eTag": "\\"97f0294c73e38b2b2714bda0156ca75d\\"", "size": 11170873, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:14.428Z", "contentLength": 11170873, "httpStatusCode": 200}	fd742d4b-7e72-48dd-bb9d-8b38217c7af0	\N	{}
2465662a-bcc4-4d01-850d-471a3e882441	campuses	denison/1	\N	2025-01-26 03:02:15.05061+00	2025-01-26 03:02:15.05061+00	2025-01-26 03:02:15.05061+00	{"eTag": "\\"ff030cdeee33149380fb105368ea94b4\\"", "size": 283685, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:15.044Z", "contentLength": 283685, "httpStatusCode": 200}	ddbc5898-ceb8-42e7-a4da-c914c806b9dd	\N	{}
8908f2bc-e087-43c5-8900-6eb7d6766e81	campuses	denison/2	\N	2025-01-26 03:02:15.568803+00	2025-01-26 03:02:15.568803+00	2025-01-26 03:02:15.568803+00	{"eTag": "\\"a1e21d040d7b3cb34c49e0e4d80d5de2\\"", "size": 237369, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:15.560Z", "contentLength": 237369, "httpStatusCode": 200}	ac5e0d16-4a99-4d9b-844d-83592153e8ee	\N	{}
f7f9f694-786b-4f2f-95ef-dea55051602a	campuses	fitchburgstate/4	\N	2025-01-26 03:02:49.919817+00	2025-01-26 03:02:49.919817+00	2025-01-26 03:02:49.919817+00	{"eTag": "\\"7cb5c73ee8312096a9e480b884e9bcfb\\"", "size": 171336, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:49.916Z", "contentLength": 171336, "httpStatusCode": 200}	9d2219d0-a1fc-410e-8626-680fd9ed77e7	\N	{}
9bb3ed17-9fa6-427d-bd85-d9b07d2826b4	campuses	denison/3	\N	2025-01-26 03:02:16.0991+00	2025-01-26 03:02:16.0991+00	2025-01-26 03:02:16.0991+00	{"eTag": "\\"5d9354b42f9ebb3ca5f709586014b9f9\\"", "size": 644619, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:16.078Z", "contentLength": 644619, "httpStatusCode": 200}	b87a45b4-c005-4b04-a992-94db96cf37c5	\N	{}
9d37b917-353c-40d3-a3f0-8f6ae87b731f	campuses	juniata/4	\N	2025-01-26 21:06:45.42838+00	2025-01-26 21:06:45.42838+00	2025-01-26 21:06:45.42838+00	{"eTag": "\\"ccf0f7ae2e6537f3396ea2cf0544f876\\"", "size": 451, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:06:45.422Z", "contentLength": 451, "httpStatusCode": 200}	3697823c-d071-41da-b476-c4b426464f00	\N	{}
b84a841e-9a3c-4e91-8f37-3d2f928bdda8	campuses	denison/4	\N	2025-01-26 03:02:16.617807+00	2025-01-26 03:02:16.617807+00	2025-01-26 03:02:16.617807+00	{"eTag": "\\"37f2ab551edbd95377eb697ce69b64f6\\"", "size": 91975, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:16.611Z", "contentLength": 91975, "httpStatusCode": 200}	4f7f84df-07bd-4f67-9d30-5716d28515b5	\N	{}
05223cc2-3165-47c2-bad1-5f1d877bfc56	campuses	fitchburgstate/5	\N	2025-01-26 03:02:50.34554+00	2025-01-26 03:02:50.34554+00	2025-01-26 03:02:50.34554+00	{"eTag": "\\"85fa8cb60b5d0136e5ffb8eb8757e72c\\"", "size": 177571, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:50.342Z", "contentLength": 177571, "httpStatusCode": 200}	1091db2a-d0bb-48bd-951e-a8413b485e77	\N	{}
4efa8b91-54bb-4164-befe-87dac3c9ba28	campuses	denison/5	\N	2025-01-26 03:02:17.323373+00	2025-01-26 03:02:17.323373+00	2025-01-26 03:02:17.323373+00	{"eTag": "\\"446c0b915e322fd2d3546721c2805ac7\\"", "size": 197677, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:17.309Z", "contentLength": 197677, "httpStatusCode": 200}	790a1601-90e1-4500-ab94-fe993a22bb97	\N	{}
13fd066b-ff86-4738-9dd1-606f0825a530	campuses	denison/6	\N	2025-01-26 03:02:17.941637+00	2025-01-26 03:02:17.941637+00	2025-01-26 03:02:17.941637+00	{"eTag": "\\"fcff5da482d2cf0eaba64d7de80becb2\\"", "size": 2216465, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:17.923Z", "contentLength": 2216465, "httpStatusCode": 200}	e046da7b-9f7c-4204-984a-7ddb34ba06bc	\N	{}
17953d6a-d518-47da-9e15-626eac039c0b	campuses	fitchburgstate/6	\N	2025-01-26 03:02:50.734395+00	2025-01-26 03:02:50.734395+00	2025-01-26 03:02:50.734395+00	{"eTag": "\\"4f67e096078c1e6bafe1905e69512448\\"", "size": 189551, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:50.731Z", "contentLength": 189551, "httpStatusCode": 200}	a39e985d-aa03-4b4c-af0c-e7da4dda7838	\N	{}
3f9af035-1311-46d8-beb6-5c4cccfc9d3d	campuses	denison/7	\N	2025-01-26 03:02:18.551558+00	2025-01-26 03:02:18.551558+00	2025-01-26 03:02:18.551558+00	{"eTag": "\\"d067126c1b1870d9d337f7648776a9ca\\"", "size": 92331, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:18.544Z", "contentLength": 92331, "httpStatusCode": 200}	f2c4f0b5-e469-4224-9ffc-39d60f626aa1	\N	{}
34264bcb-5e9f-4276-8f5c-f37ad97e409e	campuses	denison/8	\N	2025-01-26 03:02:19.603807+00	2025-01-26 03:02:19.603807+00	2025-01-26 03:02:19.603807+00	{"eTag": "\\"db071005d88994caaff1e44384c82ac7\\"", "size": 8215134, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:19.548Z", "contentLength": 8215134, "httpStatusCode": 200}	99f9f0c9-f51d-4d7f-bbd2-2953e362fcb9	\N	{}
d0e58668-5286-4f67-9092-9146e5e14f9f	campuses	digipen/0	\N	2025-01-26 03:02:20.395811+00	2025-01-26 03:02:20.395811+00	2025-01-26 03:02:20.395811+00	{"eTag": "\\"8f071cac53f124476e8bb255355409b9\\"", "size": 246318, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:20.377Z", "contentLength": 246318, "httpStatusCode": 200}	76d4a6c3-55f8-4914-b1e4-a6c55722ade9	\N	{}
3f54f67b-fc84-4b4b-95c8-07341172327e	campuses	digipen/1	\N	2025-01-26 03:02:20.788113+00	2025-01-26 03:02:20.788113+00	2025-01-26 03:02:20.788113+00	{"eTag": "\\"80365c98d474f74cfcc39be703968927\\"", "size": 79933, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:20.779Z", "contentLength": 79933, "httpStatusCode": 200}	2df011d7-c7b5-432f-aa07-161f0937ab28	\N	{}
80868059-81bc-46f5-a544-fcc22c5502a2	campuses	digipen/2	\N	2025-01-26 03:02:21.136914+00	2025-01-26 03:02:21.136914+00	2025-01-26 03:02:21.136914+00	{"eTag": "\\"90fd9b35d45bbf6276799a1cd1b0d933\\"", "size": 48994, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:21.133Z", "contentLength": 48994, "httpStatusCode": 200}	275c2eb8-0715-4e0e-aa11-5c20c8a64ffc	\N	{}
886ef729-e0bd-43e3-b5ea-b531ed60b957	campuses	digipen/3	\N	2025-01-26 03:02:21.580197+00	2025-01-26 03:02:21.580197+00	2025-01-26 03:02:21.580197+00	{"eTag": "\\"bd06cc79494b48915c73eb8ee056c111\\"", "size": 95432, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:21.571Z", "contentLength": 95432, "httpStatusCode": 200}	33818998-bc95-4c19-a9b9-fc331d4d85ac	\N	{}
188446d1-24c2-4866-93aa-5453cd8f7e3e	campuses	digipen/4	\N	2025-01-26 03:02:22.037768+00	2025-01-26 03:02:22.037768+00	2025-01-26 03:02:22.037768+00	{"eTag": "\\"ebc8152158eb8fc67e18d695bc95a399\\"", "size": 172516, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:22.031Z", "contentLength": 172516, "httpStatusCode": 200}	87eaab99-66e6-47d6-bb83-e7d7826a107a	\N	{}
88693f6d-ff6c-4626-9500-9259a0360412	campuses	digipen/5	\N	2025-01-26 03:02:22.476311+00	2025-01-26 03:02:22.476311+00	2025-01-26 03:02:22.476311+00	{"eTag": "\\"29ef9f5cd53961ad6f177f9d48e87fa2\\"", "size": 146544, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:22.470Z", "contentLength": 146544, "httpStatusCode": 200}	f7bd6f5a-7b5a-4bf2-b74e-e75cf885aaf1	\N	{}
65075f40-1441-45f1-8bb7-de029823fb7b	campuses	digipen/6	\N	2025-01-26 03:02:23.035756+00	2025-01-26 03:02:23.035756+00	2025-01-26 03:02:23.035756+00	{"eTag": "\\"466a2b95a167bb8c3a43dc8377ee62ab\\"", "size": 513385, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:23.025Z", "contentLength": 513385, "httpStatusCode": 200}	db3ba019-83ab-4864-885b-884c129b59db	\N	{}
6bf53ba8-ecc5-4776-898b-18efadb122c2	campuses	digipen/7	\N	2025-01-26 03:02:23.547164+00	2025-01-26 03:02:23.547164+00	2025-01-26 03:02:23.547164+00	{"eTag": "\\"46f753df2d7913b1dbb131602dfec331\\"", "size": 417844, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:23.538Z", "contentLength": 417844, "httpStatusCode": 200}	f185fafc-f4c1-4f25-9bd8-b98e51dfc5fb	\N	{}
0d8abea8-8437-4d70-a1d0-cfc07b1d6aee	campuses	fitchburgstate/7	\N	2025-01-26 03:02:51.107561+00	2025-01-26 03:02:51.107561+00	2025-01-26 03:02:51.107561+00	{"eTag": "\\"0e451939e6956e51efab9ba38bce6665\\"", "size": 142457, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:51.102Z", "contentLength": 142457, "httpStatusCode": 200}	00f7776d-5861-4975-9cc7-daca927cdb4d	\N	{}
fe080e46-2e61-4147-a43d-8418297d2715	campuses	digipen/8	\N	2025-01-26 03:02:24.006221+00	2025-01-26 03:02:24.006221+00	2025-01-26 03:02:24.006221+00	{"eTag": "\\"16ec8b84952947c90a89118ebb74e46d\\"", "size": 213892, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:24.000Z", "contentLength": 213892, "httpStatusCode": 200}	1cfb0494-c4cc-45fb-8903-5db705bcc414	\N	{}
4e80ed79-a4a9-4249-9aed-7678d0aec004	campuses	juniata/5	\N	2025-01-26 21:06:45.831984+00	2025-01-26 21:06:45.831984+00	2025-01-26 21:06:45.831984+00	{"eTag": "\\"067863d2ad0f3772a8ad6a6a55e90c26\\"", "size": 86362, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:06:45.825Z", "contentLength": 86362, "httpStatusCode": 200}	9a277955-b05c-48aa-ac38-4364bd081b8c	\N	{}
bb062c0f-d75e-4c54-8fca-2b452a4ba093	campuses	digipen/9	\N	2025-01-26 03:02:24.411483+00	2025-01-26 03:02:24.411483+00	2025-01-26 03:02:24.411483+00	{"eTag": "\\"0e51bdbf46baf58324f1599262ee9b57\\"", "size": 92834, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:24.408Z", "contentLength": 92834, "httpStatusCode": 200}	60dd8eee-acbf-492a-9faf-2de44dce7a64	\N	{}
6a1c6d6e-41cc-47af-9658-a2b68fbbf11c	campuses	fitchburgstate/8	\N	2025-01-26 03:02:51.519548+00	2025-01-26 03:02:51.519548+00	2025-01-26 03:02:51.519548+00	{"eTag": "\\"4883d663c9c8d1455f00043ee23ca12d\\"", "size": 226032, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:51.513Z", "contentLength": 226032, "httpStatusCode": 200}	c54cf7cd-0fd5-4e7b-9811-ae5b11739d93	\N	{}
c70ff7bf-6c6b-4419-a93e-f1a59da08457	campuses	dixie/0	\N	2025-01-26 03:02:25.107582+00	2025-01-26 03:02:25.107582+00	2025-01-26 03:02:25.107582+00	{"eTag": "\\"eef6405eb9387e92b9d1b109bec5a7e0\\"", "size": 87411, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:25.103Z", "contentLength": 87411, "httpStatusCode": 200}	612ef0fb-1bf9-4510-83c8-e3ac4aef95a6	\N	{}
da865685-4d66-47a4-bab2-74a061b228dd	campuses	dixie/1	\N	2025-01-26 03:02:25.59913+00	2025-01-26 03:02:25.59913+00	2025-01-26 03:02:25.59913+00	{"eTag": "\\"cbb87650ea6497b14d3017cb0a885e00\\"", "size": 114291, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:25.592Z", "contentLength": 114291, "httpStatusCode": 200}	0f2efc18-0ff1-495b-8b8b-60f42d2126bc	\N	{}
02faabcf-5180-4735-8a61-93a6c9236b05	campuses	fitchburgstate/9	\N	2025-01-26 03:02:51.883784+00	2025-01-26 03:02:51.883784+00	2025-01-26 03:02:51.883784+00	{"eTag": "\\"d47f3a7be3601441d79241709851883d\\"", "size": 131027, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:51.878Z", "contentLength": 131027, "httpStatusCode": 200}	20998766-854a-4bd0-a857-bd9a3fbc8560	\N	{}
cad20ea1-4422-46cb-bcb9-12d3db6fc581	campuses	dixie/2	\N	2025-01-26 03:02:27.309919+00	2025-01-26 03:02:27.309919+00	2025-01-26 03:02:27.309919+00	{"eTag": "\\"caaf2e402cd442295afe09eb293aec2c\\"", "size": 195528, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:27.283Z", "contentLength": 195528, "httpStatusCode": 200}	9d822cc4-6b26-4755-ace0-44e7cde3a0fa	\N	{}
368ad7c9-1c4a-48be-a24c-d3fb3f6f5e48	campuses	dixie/3	\N	2025-01-26 03:02:27.837196+00	2025-01-26 03:02:27.837196+00	2025-01-26 03:02:27.837196+00	{"eTag": "\\"b118b9767c452e3337789bd58c04a18a\\"", "size": 88086, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:27.831Z", "contentLength": 88086, "httpStatusCode": 200}	ba61eb6f-b00f-42cc-9d9b-c3494ff0ed09	\N	{}
0b2b1e53-4fb3-414b-bd31-3728005ca814	campuses	dixie/4	\N	2025-01-26 03:02:28.376193+00	2025-01-26 03:02:28.376193+00	2025-01-26 03:02:28.376193+00	{"eTag": "\\"737b4b2ed3247b69bd587b5a07cbbe96\\"", "size": 454176, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:28.364Z", "contentLength": 454176, "httpStatusCode": 200}	ad034598-77ba-48bb-9b03-7dd86e386341	\N	{}
6d3a070b-306f-4346-98f3-262ed12af2ee	campuses	dixie/5	\N	2025-01-26 03:02:28.906416+00	2025-01-26 03:02:28.906416+00	2025-01-26 03:02:28.906416+00	{"eTag": "\\"9f76c7dbf6c75dd1443190c319974a15\\"", "size": 75073, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:28.901Z", "contentLength": 75073, "httpStatusCode": 200}	75c15c3f-7017-418f-9f38-92af2520de7f	\N	{}
510b491c-8827-4dd8-8fdd-7808cfe56df3	campuses	dixie/6	\N	2025-01-26 03:02:29.525807+00	2025-01-26 03:02:29.525807+00	2025-01-26 03:02:29.525807+00	{"eTag": "\\"3428a703d418607926e7b6006aa2068d\\"", "size": 151260, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:29.518Z", "contentLength": 151260, "httpStatusCode": 200}	772d8c41-2a1c-40eb-b085-234d51606296	\N	{}
2ac17124-30ec-4a5b-a262-f40146127a2c	campuses	dixie/7	\N	2025-01-26 03:02:30.088778+00	2025-01-26 03:02:30.088778+00	2025-01-26 03:02:30.088778+00	{"eTag": "\\"2722ac8ba72e2db15bc00621645d95e8\\"", "size": 158639, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:30.086Z", "contentLength": 158639, "httpStatusCode": 200}	188c2fbb-cd7d-4858-85d0-e589234f99be	\N	{}
3504e770-c055-4ece-8f38-4bdde2c44135	campuses	dixie/8	\N	2025-01-26 03:02:30.720566+00	2025-01-26 03:02:30.720566+00	2025-01-26 03:02:30.720566+00	{"eTag": "\\"cb84c8d500cd9e0ab9fd58aa05f02924\\"", "size": 224227, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:30.713Z", "contentLength": 224227, "httpStatusCode": 200}	6da97d7c-27a1-4dbc-9e62-9f88208f18d0	\N	{}
959a92e3-fa9b-4a21-b653-00f40f314009	campuses	dixie/9	\N	2025-01-26 03:02:31.018959+00	2025-01-26 03:02:31.018959+00	2025-01-26 03:02:31.018959+00	{"eTag": "\\"e7a1649246309ad8f00b486dce47eab9\\"", "size": 45528, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:31.015Z", "contentLength": 45528, "httpStatusCode": 200}	4aeab901-8509-4440-b88d-37bafdc00f9c	\N	{}
2773407e-edbe-4087-9f8b-f15675782b3c	campuses	dom/0	\N	2025-01-26 03:02:31.775434+00	2025-01-26 03:02:31.775434+00	2025-01-26 03:02:31.775434+00	{"eTag": "\\"8ad054c0764c850f36fc4d98df2e53e8\\"", "size": 332669, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:31.767Z", "contentLength": 332669, "httpStatusCode": 200}	de136d3b-04f8-4ed3-8432-7c1153ec56a9	\N	{}
b6b8b9a1-6025-4f09-9bbb-5541cc545583	campuses	dom/2	\N	2025-01-26 03:02:32.767452+00	2025-01-26 03:02:32.767452+00	2025-01-26 03:02:32.767452+00	{"eTag": "\\"228b0519d95ac832ffb9a0b2fb4f3eec\\"", "size": 115240, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:32.762Z", "contentLength": 115240, "httpStatusCode": 200}	ca3c8128-db30-4e6a-8c16-82062eefcec4	\N	{}
9c7923a8-bd34-47b0-8e46-f50d4b5e030b	campuses	flsouthern/0	\N	2025-01-26 03:02:53.010272+00	2025-01-26 03:02:53.010272+00	2025-01-26 03:02:53.010272+00	{"eTag": "\\"76a90b3edc4a870bf584cb01e690f798\\"", "size": 120902, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:53.004Z", "contentLength": 120902, "httpStatusCode": 200}	2fbbca34-69f1-454c-8c3b-ea3552f001c8	\N	{}
66f2d5f7-ab7f-4583-bbab-69a8d4993695	campuses	dom/3	\N	2025-01-26 03:02:33.419008+00	2025-01-26 03:02:33.419008+00	2025-01-26 03:02:33.419008+00	{"eTag": "\\"053aabe7f7ca4804248fdd8fe5e835c2\\"", "size": 369247, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:33.408Z", "contentLength": 369247, "httpStatusCode": 200}	e98155e3-4e22-457b-b5c8-ed360f4879f3	\N	{}
0eaef3fe-a729-44d6-b825-7e8d76060cb1	campuses	juniata/6	\N	2025-01-26 21:06:46.211686+00	2025-01-26 21:06:46.211686+00	2025-01-26 21:06:46.211686+00	{"eTag": "\\"9e38c20a965ccff7d3e249bd1ddb2083\\"", "size": 468, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:06:46.208Z", "contentLength": 468, "httpStatusCode": 200}	88e57479-c56a-4a90-9ce2-7dd4edea8027	\N	{}
113727bb-55f3-4cce-9757-a4377a3cd374	campuses	dom/4	\N	2025-01-26 03:02:33.884192+00	2025-01-26 03:02:33.884192+00	2025-01-26 03:02:33.884192+00	{"eTag": "\\"857b2d21cc3bc283cf27c741caeaeef6\\"", "size": 19946, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:33.881Z", "contentLength": 19946, "httpStatusCode": 200}	81e01a88-b246-41c6-9ae3-b1d8e3967cea	\N	{}
808b000c-4220-4da5-9267-b5e91c455cc2	campuses	flsouthern/1	\N	2025-01-26 03:02:53.863247+00	2025-01-26 03:02:53.863247+00	2025-01-26 03:02:53.863247+00	{"eTag": "\\"acd7c30aab58e09fcb1c181bded9cf15\\"", "size": 129924, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:53.857Z", "contentLength": 129924, "httpStatusCode": 200}	ebf4ae6e-0f2b-4673-8fe6-44a8449959b1	\N	{}
6be76ed4-3c22-4dce-b1c8-ee3f555953df	campuses	dom/5	\N	2025-01-26 03:02:34.51641+00	2025-01-26 03:02:34.51641+00	2025-01-26 03:02:34.51641+00	{"eTag": "\\"a0c5979926778326d0cf167825d14a67\\"", "size": 519845, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:34.502Z", "contentLength": 519845, "httpStatusCode": 200}	851ad141-3582-48a4-99f5-7afc9154c436	\N	{}
63ed15bf-d37e-48ab-aa3a-f6dc74231367	campuses	dom/6	\N	2025-01-26 03:02:34.985391+00	2025-01-26 03:02:34.985391+00	2025-01-26 03:02:34.985391+00	{"eTag": "\\"b79ace003741e66f48a285e77d895333\\"", "size": 109399, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:34.979Z", "contentLength": 109399, "httpStatusCode": 200}	6805a3ea-47d6-4d95-bb71-653f7766f40b	\N	{}
c0a185ea-72d6-4d54-8f21-def187552c93	campuses	flsouthern/2	\N	2025-01-26 03:02:54.789591+00	2025-01-26 03:02:54.789591+00	2025-01-26 03:02:54.789591+00	{"eTag": "\\"0ee17056e76ef8833b4603f3773ac5b2\\"", "size": 708039, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:54.775Z", "contentLength": 708039, "httpStatusCode": 200}	2b6de620-58b8-4d34-81ab-6ff7ef15363c	\N	{}
da3b9d3d-0bb3-4855-8dda-3b98b4dfa246	campuses	dom/7	\N	2025-01-26 03:02:35.514182+00	2025-01-26 03:02:35.514182+00	2025-01-26 03:02:35.514182+00	{"eTag": "\\"f6fb7d3c68f8e44134778a2f73bf3b05\\"", "size": 184279, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:35.509Z", "contentLength": 184279, "httpStatusCode": 200}	71c7e671-5747-44dd-91b6-47c8d166ed2f	\N	{}
0d328259-cc6e-439a-8810-19d2f3b24cae	campuses	dom/8	\N	2025-01-26 03:02:36.007467+00	2025-01-26 03:02:36.007467+00	2025-01-26 03:02:36.007467+00	{"eTag": "\\"0cb392cb1767a46f442161c4360bb5dd\\"", "size": 149280, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:36.003Z", "contentLength": 149280, "httpStatusCode": 200}	76b9f7cf-898e-45d2-8033-c12a136f56c8	\N	{}
bfd4a104-daaa-49f2-b221-eac9b577b302	campuses	flsouthern/3	\N	2025-01-26 03:02:55.497393+00	2025-01-26 03:02:55.497393+00	2025-01-26 03:02:55.497393+00	{"eTag": "\\"ec7c8ba6b91f82c05c16a7b4192c97df\\"", "size": 26343, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:55.492Z", "contentLength": 26343, "httpStatusCode": 200}	fa283359-4481-4451-828d-ce5e55eb2db0	\N	{}
ff023cac-be1d-43ee-98bc-0e0630679d1a	campuses	dom/9	\N	2025-01-26 03:02:36.510144+00	2025-01-26 03:02:36.510144+00	2025-01-26 03:02:36.510144+00	{"eTag": "\\"a9648bc9a4dded0d384e7c1596b3f17b\\"", "size": 112700, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:36.490Z", "contentLength": 112700, "httpStatusCode": 200}	1158df09-bc20-4fd3-84e5-9b0432f32f80	\N	{}
06104c1a-9f6f-492e-9369-0806a4f8a7ff	campuses	emory/0	\N	2025-01-26 03:02:37.358543+00	2025-01-26 03:02:37.358543+00	2025-01-26 03:02:37.358543+00	{"eTag": "\\"1ce0ca76b5f3561bff33c92a788b1622\\"", "size": 790768, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:37.351Z", "contentLength": 790768, "httpStatusCode": 200}	d0b4c635-be8b-4661-94d3-b5fdb6086d4c	\N	{}
67286735-1302-4dec-988f-a865d836c09b	campuses	emory/1	\N	2025-01-26 03:02:38.233511+00	2025-01-26 03:02:38.233511+00	2025-01-26 03:02:38.233511+00	{"eTag": "\\"2c3a22efa4a9b8ce4ec4b65dd81ace90\\"", "size": 1570770, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:38.209Z", "contentLength": 1570770, "httpStatusCode": 200}	dc2bfab5-331d-4277-b312-a13363824caf	\N	{}
073091fa-1f2b-4173-897f-be3e85200fba	campuses	emory/2	\N	2025-01-26 03:02:38.734344+00	2025-01-26 03:02:38.734344+00	2025-01-26 03:02:38.734344+00	{"eTag": "\\"74ea778c3f0ad1c28677cd5eb542c897\\"", "size": 115709, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:38.728Z", "contentLength": 115709, "httpStatusCode": 200}	74144b7f-ab18-417a-b825-58dba272bcb5	\N	{}
5b45de6b-0726-413f-8fea-649ccffcc257	campuses	emory/3	\N	2025-01-26 03:02:39.307145+00	2025-01-26 03:02:39.307145+00	2025-01-26 03:02:39.307145+00	{"eTag": "\\"e03f65e9faa959974cb5c76e8c0da801\\"", "size": 245511, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:39.299Z", "contentLength": 245511, "httpStatusCode": 200}	c60365db-dcff-4cab-bfe4-e34366f9c9ce	\N	{}
b092644e-e957-4859-94d8-c811918432e0	campuses	emory/4	\N	2025-01-26 03:02:40.030784+00	2025-01-26 03:02:40.030784+00	2025-01-26 03:02:40.030784+00	{"eTag": "\\"b85dfe4037584f3483d339fc77821b5b\\"", "size": 426992, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:40.018Z", "contentLength": 426992, "httpStatusCode": 200}	70b306a3-05c0-4ed6-a685-7b7ae289f8bf	\N	{}
5ef0f955-28bf-4f14-8d1a-0ff9cf9d853c	campuses	emory/5	\N	2025-01-26 03:02:40.494042+00	2025-01-26 03:02:40.494042+00	2025-01-26 03:02:40.494042+00	{"eTag": "\\"d00235c0ccb1d78df2b4e94c120cb6f8\\"", "size": 130676, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:40.490Z", "contentLength": 130676, "httpStatusCode": 200}	6c331302-5bd2-4159-a4b6-d18484308845	\N	{}
ef22c0de-b957-40e6-a1ca-4dbfa5544e4d	campuses	emory/6	\N	2025-01-26 03:02:41.156541+00	2025-01-26 03:02:41.156541+00	2025-01-26 03:02:41.156541+00	{"eTag": "\\"710d56185f35ea563c6a122e3879e905\\"", "size": 1441496, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:41.140Z", "contentLength": 1441496, "httpStatusCode": 200}	7dd4c914-73fd-468c-b859-a5524886d48e	\N	{}
e6a51716-decb-4461-af9c-92b53e793ec5	campuses	oberlin/3	\N	2025-01-26 21:09:45.566771+00	2025-01-26 21:09:45.566771+00	2025-01-26 21:09:45.566771+00	{"eTag": "\\"0bad9b3dcf54ecce002ad03a74c2731e\\"", "size": 93704, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:45.561Z", "contentLength": 93704, "httpStatusCode": 200}	08b1898c-777e-41b3-995a-0363ab960e13	\N	{}
00ba1a8e-274e-4371-8839-01968314416d	campuses	emory/7	\N	2025-01-26 03:02:41.641793+00	2025-01-26 03:02:41.641793+00	2025-01-26 03:02:41.641793+00	{"eTag": "\\"6c5efcbe56bc890a2597b569629b6d17\\"", "size": 265641, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:41.633Z", "contentLength": 265641, "httpStatusCode": 200}	159a4d6e-28b6-4596-a1f2-3a3f7c890ed6	\N	{}
0cf63c8d-af82-4d5b-9af5-9507d13515f5	campuses	flsouthern/4	\N	2025-01-26 03:02:56.736298+00	2025-01-26 03:02:56.736298+00	2025-01-26 03:02:56.736298+00	{"eTag": "\\"f021fd422145ce3985c6f96fce3ade3b\\"", "size": 4662744, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:56.696Z", "contentLength": 4662744, "httpStatusCode": 200}	92e91aea-6430-4e45-be56-21cec199ecbe	\N	{}
ebed047b-24bb-43f1-90bd-ec3bb6df6b46	campuses	emory/8	\N	2025-01-26 03:02:42.122771+00	2025-01-26 03:02:42.122771+00	2025-01-26 03:02:42.122771+00	{"eTag": "\\"5466a34188c781118529f236631c0c06\\"", "size": 238579, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:42.119Z", "contentLength": 238579, "httpStatusCode": 200}	20a652ad-1f5d-4c4f-bfc4-308bb042c268	\N	{}
0dce30b2-ca1c-4179-856c-58bf0f376aa7	campuses	juniata/7	\N	2025-01-26 21:06:46.460772+00	2025-01-26 21:06:46.460772+00	2025-01-26 21:06:46.460772+00	{"eTag": "\\"d1ee391016163aad7414fce3fe9f5dbc\\"", "size": 388, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:06:46.457Z", "contentLength": 388, "httpStatusCode": 200}	8bafbdd3-b6d0-4cc0-a9f4-a05bf77642fc	\N	{}
48433adb-a1cf-4c56-b488-17b4a6d44f39	campuses	emory/9	\N	2025-01-26 03:02:42.553376+00	2025-01-26 03:02:42.553376+00	2025-01-26 03:02:42.553376+00	{"eTag": "\\"0aeb80fe217060c0c642265c789ee6d3\\"", "size": 111951, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:42.548Z", "contentLength": 111951, "httpStatusCode": 200}	7d4a2d25-ebf1-4b17-a4af-a4a74eee808b	\N	{}
98e5f42c-7c39-4006-9606-c757dfbdfb57	campuses	flsouthern/5	\N	2025-01-26 03:02:57.487819+00	2025-01-26 03:02:57.487819+00	2025-01-26 03:02:57.487819+00	{"eTag": "\\"52ebe0ac5a94a3069163ec53d071f029\\"", "size": 63803, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:57.482Z", "contentLength": 63803, "httpStatusCode": 200}	b3628aad-ec82-4786-a362-7451739eeb2b	\N	{}
79ece192-9b61-42cf-a5e5-5f6283fea08e	campuses	fitnyc/0	\N	2025-01-26 03:02:43.09632+00	2025-01-26 03:02:43.09632+00	2025-01-26 03:02:43.09632+00	{"eTag": "\\"9fe3cb2b7313dc79bb477bc8fde184a7\\"", "size": 146, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:43.093Z", "contentLength": 146, "httpStatusCode": 200}	5fbb894d-095b-4f97-851c-6e65c049fd86	\N	{}
84139eab-83c7-418a-bf54-a733f18644c0	campuses	flsouthern/6	\N	2025-01-26 03:02:58.472085+00	2025-01-26 03:02:58.472085+00	2025-01-26 03:02:58.472085+00	{"eTag": "\\"89f9ba2071a8cc6197856b85d0d6b511\\"", "size": 2789866, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:58.447Z", "contentLength": 2789866, "httpStatusCode": 200}	dfa6a07a-be49-4542-b991-380aa5cc9418	\N	{}
8b23a7e2-d3db-47bd-9b97-cd9a73b99a8d	campuses	juniata/8	\N	2025-01-26 21:06:46.778914+00	2025-01-26 21:06:46.778914+00	2025-01-26 21:06:46.778914+00	{"eTag": "\\"b0d99764c52f55602f24b1b3d661d820\\"", "size": 39339, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:06:46.775Z", "contentLength": 39339, "httpStatusCode": 200}	728009ee-97a7-4d89-81c4-b15290815112	\N	{}
8537dafb-596a-4f50-9ac0-28759f28c6c7	campuses	flsouthern/7	\N	2025-01-26 03:02:59.881612+00	2025-01-26 03:02:59.881612+00	2025-01-26 03:02:59.881612+00	{"eTag": "\\"115ee3eda72eead1d75ebfb52b8aa569\\"", "size": 12639177, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:02:59.773Z", "contentLength": 12639177, "httpStatusCode": 200}	3fb3a794-0f43-4c51-8446-a83b9026655d	\N	{}
555a8e47-ddd9-4bbc-b345-3c342ce6d434	campuses	flsouthern/9	\N	2025-01-26 03:03:00.526488+00	2025-01-26 03:03:00.526488+00	2025-01-26 03:03:00.526488+00	{"eTag": "\\"cc2a13ba0d463c7b4c45396a25f072e8\\"", "size": 89560, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:00.520Z", "contentLength": 89560, "httpStatusCode": 200}	12fb050b-cdda-4c85-8756-922453d0d067	\N	{}
883ce05c-2ee7-40d4-9ec8-3699ff1d1fd7	campuses	georgefox/0	\N	2025-01-26 03:03:01.359071+00	2025-01-26 03:03:01.359071+00	2025-01-26 03:03:01.359071+00	{"eTag": "\\"ccf6294a62766a89953e039ac8249578\\"", "size": 81265, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:01.356Z", "contentLength": 81265, "httpStatusCode": 200}	483830e8-d2fa-4f08-ae87-c8a5eb1613b8	\N	{}
75e8ca4e-bbfe-4c89-9503-f0e0a12d66b1	campuses	georgefox/1	\N	2025-01-26 03:03:02.115964+00	2025-01-26 03:03:02.115964+00	2025-01-26 03:03:02.115964+00	{"eTag": "\\"1a018e70fbbea32c256fed9ba7a08603\\"", "size": 113481, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:02.111Z", "contentLength": 113481, "httpStatusCode": 200}	46ae9f57-15f8-4d02-8f92-9450b44e03e5	\N	{}
20afcb7c-c6d8-4f7f-b35e-795202b63b10	campuses	georgefox/2	\N	2025-01-26 03:03:02.89077+00	2025-01-26 03:03:02.89077+00	2025-01-26 03:03:02.89077+00	{"eTag": "\\"5655c6a792180eb53efd8963bfce19eb\\"", "size": 197497, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:02.880Z", "contentLength": 197497, "httpStatusCode": 200}	1d700f76-1f39-407a-b9a6-4a5e790d267b	\N	{}
c1d90070-607b-4c10-8ff0-0194d668fe47	campuses	georgefox/3	\N	2025-01-26 03:03:03.685372+00	2025-01-26 03:03:03.685372+00	2025-01-26 03:03:03.685372+00	{"eTag": "\\"eb10117c942ae3bf64d0ef641ecc345d\\"", "size": 181534, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:03.677Z", "contentLength": 181534, "httpStatusCode": 200}	d7ec0baf-88d6-41a6-abb7-c93bf59a789f	\N	{}
41ff7d1c-5ff8-43a3-816b-76ad5b6febf3	campuses	georgefox/4	\N	2025-01-26 03:03:04.634733+00	2025-01-26 03:03:04.634733+00	2025-01-26 03:03:04.634733+00	{"eTag": "\\"cf69294e12fdad2701cccfd19a666102\\"", "size": 900088, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:04.609Z", "contentLength": 900088, "httpStatusCode": 200}	b7e54245-3088-4000-9a0c-323336be519d	\N	{}
026668e7-2ebc-4c7f-8c49-d5a72eb25d1f	campuses	georgefox/5	\N	2025-01-26 03:03:05.323981+00	2025-01-26 03:03:05.323981+00	2025-01-26 03:03:05.323981+00	{"eTag": "\\"0591d6edb42d16b628b5e2186aff5485\\"", "size": 49652, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:05.318Z", "contentLength": 49652, "httpStatusCode": 200}	395b6fbc-df70-4e90-ab82-f3767ed010b6	\N	{}
41843de4-f6a8-499f-94f5-c990a6e7dc10	campuses	juniata/9	\N	2025-01-26 21:06:47.045756+00	2025-01-26 21:06:47.045756+00	2025-01-26 21:06:47.045756+00	{"eTag": "\\"ad2b9f82807bd22c999fd34a0104e8f6\\"", "size": 388, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:06:47.041Z", "contentLength": 388, "httpStatusCode": 200}	94a6e9d4-f0a2-4474-9ae6-f7bc27df5302	\N	{}
d956562d-a4db-401e-9d59-aafc741e67f6	campuses	georgefox/6	\N	2025-01-26 03:03:06.03526+00	2025-01-26 03:03:06.03526+00	2025-01-26 03:03:06.03526+00	{"eTag": "\\"263d7c19458bead108a6ba427b9edaa8\\"", "size": 69764, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:06.031Z", "contentLength": 69764, "httpStatusCode": 200}	1ba3137e-dd94-40af-ab2e-d0eee4098c53	\N	{}
bbcb7b0b-2813-4ecf-b483-523d495d1549	campuses	oberlin/4	\N	2025-01-26 21:09:46.371567+00	2025-01-26 21:09:46.371567+00	2025-01-26 21:09:46.371567+00	{"eTag": "\\"e39b8c215661b63444d75ad917f3fb5e\\"", "size": 147089, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:46.364Z", "contentLength": 147089, "httpStatusCode": 200}	c77d4fcc-7fb5-4240-800c-8ded69ec34b9	\N	{}
e27d62ca-5e0d-47e1-b7f4-8a7a0cbca7eb	campuses	georgefox/7	\N	2025-01-26 03:03:06.812992+00	2025-01-26 03:03:06.812992+00	2025-01-26 03:03:06.812992+00	{"eTag": "\\"edc1f53d4a87285dcf720c1c83cd6fb5\\"", "size": 244456, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:06.806Z", "contentLength": 244456, "httpStatusCode": 200}	16ab3f67-391e-4e19-967a-103591e5e7b4	\N	{}
e8e7d81a-0ffc-402a-bbc8-3e05a2815999	campuses	lander/0	\N	2025-01-26 21:06:47.661943+00	2025-01-26 21:06:47.661943+00	2025-01-26 21:06:47.661943+00	{"eTag": "\\"05f6010aae14f6b9846eb5e04423615c\\"", "size": 171917, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:06:47.656Z", "contentLength": 171917, "httpStatusCode": 200}	be8136a2-04a2-4405-9b3a-34ef12f96906	\N	{}
20d064cd-ed34-4ee0-93d2-2fc364a43d92	campuses	georgefox/8	\N	2025-01-26 03:03:07.522361+00	2025-01-26 03:03:07.522361+00	2025-01-26 03:03:07.522361+00	{"eTag": "\\"a03763f43c1a203b55a005ad4e03ebcb\\"", "size": 98383, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:07.518Z", "contentLength": 98383, "httpStatusCode": 200}	6c04d145-9a4b-4b08-815f-bbf9bd24d99a	\N	{}
ad5ebf41-31d5-4ea8-801d-535e00032571	campuses	georgefox/9	\N	2025-01-26 03:03:08.207729+00	2025-01-26 03:03:08.207729+00	2025-01-26 03:03:08.207729+00	{"eTag": "\\"9ba0cf2e5e88e292a722f65a08c43bfe\\"", "size": 84457, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:08.202Z", "contentLength": 84457, "httpStatusCode": 200}	81c740e8-7644-48ac-abd8-addd0ac506ef	\N	{}
9e9cf140-792e-40e9-a0a4-4ed875721b66	campuses	lander/9	\N	2025-01-26 21:06:48.058025+00	2025-01-26 21:06:48.058025+00	2025-01-26 21:06:48.058025+00	{"eTag": "\\"057cfd744596cec821f2205c53a7da5a\\"", "size": 26610, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:06:48.054Z", "contentLength": 26610, "httpStatusCode": 200}	6deb390d-04c4-425a-9ce8-067c4c880c2f	\N	{}
552594a2-0bd4-4b8e-8623-d39f494c5761	campuses	gwu/0	\N	2025-01-26 03:03:08.816526+00	2025-01-26 03:03:08.816526+00	2025-01-26 03:03:08.816526+00	{"eTag": "\\"93ccb18907f56397c39bcae652f8ca8f\\"", "size": 189029, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:08.811Z", "contentLength": 189029, "httpStatusCode": 200}	96dda670-938d-4f21-ba1c-d89feab26131	\N	{}
7c21c39d-f708-4c34-8030-3a9b49d66b94	campuses	gwu/1	\N	2025-01-26 03:03:09.440726+00	2025-01-26 03:03:09.440726+00	2025-01-26 03:03:09.440726+00	{"eTag": "\\"5e46ee7eaf57f83f5a7b06a1076fbe21\\"", "size": 278765, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:09.432Z", "contentLength": 278765, "httpStatusCode": 200}	7d83efce-4229-4f9f-90ad-3e7f947c4e7e	\N	{}
ed162f93-47f5-4cf4-9804-74bd7180c883	campuses	mcdaniel/0	\N	2025-01-26 21:06:48.499259+00	2025-01-26 21:06:48.499259+00	2025-01-26 21:06:48.499259+00	{"eTag": "\\"0d19881da8ef1afdde521249931b7781\\"", "size": 80094, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:06:48.495Z", "contentLength": 80094, "httpStatusCode": 200}	f622bfde-d261-4d08-b061-2c19f0c472e8	\N	{}
27200c2e-bfd6-470b-851c-f360688c17f6	campuses	gwu/2	\N	2025-01-26 03:03:10.172731+00	2025-01-26 03:03:10.172731+00	2025-01-26 03:03:10.172731+00	{"eTag": "\\"e9237331f557905ac43c101cad484bd5\\"", "size": 784826, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:10.157Z", "contentLength": 784826, "httpStatusCode": 200}	03a85d40-8bc3-48df-bb44-756cc024d7b0	\N	{}
ff3dc052-6244-42f4-8aed-11bc968a07de	campuses	gwu/3	\N	2025-01-26 03:03:10.944123+00	2025-01-26 03:03:10.944123+00	2025-01-26 03:03:10.944123+00	{"eTag": "\\"0959947925565b1a9153a871abc00517\\"", "size": 1214620, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:10.935Z", "contentLength": 1214620, "httpStatusCode": 200}	906c133d-ba7b-4264-9202-d3e8f5763835	\N	{}
6ad3374c-df61-43a0-9189-360ed1a41c0d	campuses	gwu/4	\N	2025-01-26 03:03:11.686927+00	2025-01-26 03:03:11.686927+00	2025-01-26 03:03:11.686927+00	{"eTag": "\\"b76c06b55b92c7e14d79b825c1cf2dd0\\"", "size": 711665, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:11.674Z", "contentLength": 711665, "httpStatusCode": 200}	f2721136-25df-4716-8787-c2486caddcc0	\N	{}
1bfd887b-46d6-4830-9167-93b1c1e46533	campuses	gwu/5	\N	2025-01-26 03:03:12.510078+00	2025-01-26 03:03:12.510078+00	2025-01-26 03:03:12.510078+00	{"eTag": "\\"e218094252005c31011cee377059e5cf\\"", "size": 2016404, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:12.479Z", "contentLength": 2016404, "httpStatusCode": 200}	4771453e-b4d0-4810-8730-104d75dc3cdf	\N	{}
5f0bcda8-2730-42d7-ba77-1dfc0c4d69ee	campuses	gwu/6	\N	2025-01-26 03:03:13.098667+00	2025-01-26 03:03:13.098667+00	2025-01-26 03:03:13.098667+00	{"eTag": "\\"23de98b1bf9aa1513ea48224058ac597\\"", "size": 151772, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:13.093Z", "contentLength": 151772, "httpStatusCode": 200}	f3a6a258-b6ef-4494-b906-095e54a2e58a	\N	{}
23c26173-cea9-49bd-b44b-401c9ce772c4	campuses	gwu/7	\N	2025-01-26 03:03:13.842163+00	2025-01-26 03:03:13.842163+00	2025-01-26 03:03:13.842163+00	{"eTag": "\\"e05370c0ce8a8f36b39afe10c916ef8b\\"", "size": 1433314, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:13.822Z", "contentLength": 1433314, "httpStatusCode": 200}	5a9ae7b5-d13a-42d5-a860-e5489e2bf9fc	\N	{}
031d5804-1bfb-4791-8d33-ed244f40050d	campuses	gwu/8	\N	2025-01-26 03:03:14.151185+00	2025-01-26 03:03:14.151185+00	2025-01-26 03:03:14.151185+00	{"eTag": "\\"7ba3f92b0e1974d66d3b754b9899e469\\"", "size": 386, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:14.147Z", "contentLength": 386, "httpStatusCode": 200}	0c37c7a3-540b-4fa4-9119-741120c73dcc	\N	{}
78af1b05-53ec-487d-8e23-5b5feed695a1	campuses	gwu/9	\N	2025-01-26 03:03:14.705642+00	2025-01-26 03:03:14.705642+00	2025-01-26 03:03:14.705642+00	{"eTag": "\\"262bbe4133aaab92e7b77a4382029be8\\"", "size": 158605, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:14.697Z", "contentLength": 158605, "httpStatusCode": 200}	36198dac-c55b-4b0b-8f0e-2f80bbec6a0a	\N	{}
295e6487-49e6-4839-b68c-38db1a473917	campuses	georgetown/0	\N	2025-01-26 03:03:15.305222+00	2025-01-26 03:03:15.305222+00	2025-01-26 03:03:15.305222+00	{"eTag": "\\"d886f22828fb8b7fd9a0d2e2aa2cb1de\\"", "size": 482093, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:15.296Z", "contentLength": 482093, "httpStatusCode": 200}	8482040d-d82a-4f50-bdb7-de953616a2d1	\N	{}
811d83e2-6acc-42e3-a26d-536f695d4b5d	campuses	mcdaniel/1	\N	2025-01-26 21:06:49.6961+00	2025-01-26 21:06:49.6961+00	2025-01-26 21:06:49.6961+00	{"eTag": "\\"c8addf518f55a1074915438bc6daafa8\\"", "size": 254416, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:06:49.679Z", "contentLength": 254416, "httpStatusCode": 200}	f1ce480a-b730-4563-be76-0eefda13b901	\N	{}
39c02962-4bbc-496c-9540-2bf174b54e16	campuses	georgetown/1	\N	2025-01-26 03:03:15.923099+00	2025-01-26 03:03:15.923099+00	2025-01-26 03:03:15.923099+00	{"eTag": "\\"9069e42c19db05a67be10ca61fc879c7\\"", "size": 1114288, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:15.915Z", "contentLength": 1114288, "httpStatusCode": 200}	3093274d-2db0-409d-b082-f6496d943c6d	\N	{}
5ee092f5-acc2-4ba5-8818-98b85411265e	campuses	oberlin/5	\N	2025-01-26 21:09:47.447169+00	2025-01-26 21:09:47.447169+00	2025-01-26 21:09:47.447169+00	{"eTag": "\\"8016f869ea8ebea6ef0f79365fd159d2\\"", "size": 214713, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:47.441Z", "contentLength": 214713, "httpStatusCode": 200}	bddc6734-4249-4539-bc47-ebd4028b90fb	\N	{}
d1b856ba-3f88-4e39-8053-145aa0814655	campuses	georgetown/2	\N	2025-01-26 03:03:16.646764+00	2025-01-26 03:03:16.646764+00	2025-01-26 03:03:16.646764+00	{"eTag": "\\"b8033419e3de79af4367f15d9b2023bc\\"", "size": 547643, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:16.642Z", "contentLength": 547643, "httpStatusCode": 200}	50ad44f2-d691-468c-bb53-3925d06913a7	\N	{}
29f030fe-ddf3-4347-b0b2-2afb384f839a	campuses	mcdaniel/2	\N	2025-01-26 21:06:50.125529+00	2025-01-26 21:06:50.125529+00	2025-01-26 21:06:50.125529+00	{"eTag": "\\"ad1cc5ee0eea58f784a119ccaa44ad19\\"", "size": 61440, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:06:50.122Z", "contentLength": 61440, "httpStatusCode": 200}	c9d2d689-877d-44d0-b219-3ca3ba82788d	\N	{}
f3f47823-696d-415e-83c4-c4586d175b6e	campuses	georgetown/3	\N	2025-01-26 03:03:17.116371+00	2025-01-26 03:03:17.116371+00	2025-01-26 03:03:17.116371+00	{"eTag": "\\"79cac7f6c739e31c88c24d58f8344c44\\"", "size": 173156, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:17.108Z", "contentLength": 173156, "httpStatusCode": 200}	9e35fa33-3c35-47eb-9d16-f6deffd164a1	\N	{}
25d76623-f1c1-4a9e-ac33-824e112fe67e	campuses	georgetown/4	\N	2025-01-26 03:03:17.742822+00	2025-01-26 03:03:17.742822+00	2025-01-26 03:03:17.742822+00	{"eTag": "\\"1b10ed40403de87a9f16989c3d0c2301\\"", "size": 108649, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:17.738Z", "contentLength": 108649, "httpStatusCode": 200}	3ea9c623-575e-48eb-bfba-4d6e80882aca	\N	{}
6c556a33-c7ca-4a44-99de-7be2967b2ba4	campuses	mcdaniel/3	\N	2025-01-26 21:06:50.520633+00	2025-01-26 21:06:50.520633+00	2025-01-26 21:06:50.520633+00	{"eTag": "\\"61ddd45c86146850a614e53ca75f0c46\\"", "size": 4866, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:06:50.517Z", "contentLength": 4866, "httpStatusCode": 200}	d6734fda-cddd-4997-bca0-ba1692a59e84	\N	{}
d501f8c8-cdcb-4f83-84fd-e842240f6ca2	campuses	georgetown/5	\N	2025-01-26 03:03:18.152534+00	2025-01-26 03:03:18.152534+00	2025-01-26 03:03:18.152534+00	{"eTag": "\\"9e9a1b295ffb570d6e29bef4f40cc0a2\\"", "size": 58098, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:18.148Z", "contentLength": 58098, "httpStatusCode": 200}	83d9eddf-ad0e-436d-840a-070cea74bb37	\N	{}
24724377-2f02-4e70-b9af-9a524c389f9e	campuses	georgetown/6	\N	2025-01-26 03:03:18.745906+00	2025-01-26 03:03:18.745906+00	2025-01-26 03:03:18.745906+00	{"eTag": "\\"3f96dfb69df7f9bde971650a436634b9\\"", "size": 292588, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:18.736Z", "contentLength": 292588, "httpStatusCode": 200}	a0b40da1-18cc-4c01-8b51-bd98a5e89ba8	\N	{}
36882dd7-c63b-4ecb-9ed1-185fd2826b46	campuses	georgetown/7	\N	2025-01-26 03:03:19.167743+00	2025-01-26 03:03:19.167743+00	2025-01-26 03:03:19.167743+00	{"eTag": "\\"96975033ec50c68eee931385a87a4504\\"", "size": 66384, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:19.162Z", "contentLength": 66384, "httpStatusCode": 200}	bac524bc-4387-457a-a514-5e7073f80ea4	\N	{}
82623427-f630-466b-baa8-b586c9ea2a48	campuses	georgetown/8	\N	2025-01-26 03:03:19.667724+00	2025-01-26 03:03:19.667724+00	2025-01-26 03:03:19.667724+00	{"eTag": "\\"254a9e653cdd2595a1836b74c28d43fb\\"", "size": 571063, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:19.652Z", "contentLength": 571063, "httpStatusCode": 200}	ec67ec95-7881-4f96-9f67-db71f93e2fca	\N	{}
6d4b2117-adfc-4828-8f00-30f6dbfe58ad	campuses	georgetown/9	\N	2025-01-26 03:03:20.103827+00	2025-01-26 03:03:20.103827+00	2025-01-26 03:03:20.103827+00	{"eTag": "\\"e12585464d1096319e45d375a1b03341\\"", "size": 262787, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:20.097Z", "contentLength": 262787, "httpStatusCode": 200}	47717b19-7059-42e9-bf2c-9c8d8f180e1b	\N	{}
e4b300bd-5032-4ff5-9fd3-4b5f1fadfb38	campuses	hmc/0	\N	2025-01-26 03:03:20.792899+00	2025-01-26 03:03:20.792899+00	2025-01-26 03:03:20.792899+00	{"eTag": "\\"0b55154c09ff59d4727be0cfa94c0a78\\"", "size": 98520, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:20.789Z", "contentLength": 98520, "httpStatusCode": 200}	2b90743d-3863-4ce1-a778-b8004bb30b55	\N	{}
dd8e3ebb-3554-466d-a971-53de84fdd2c9	campuses	hmc/1	\N	2025-01-26 03:03:21.568232+00	2025-01-26 03:03:21.568232+00	2025-01-26 03:03:21.568232+00	{"eTag": "\\"fc448e9ecfa1106536fd98a66923a0a3\\"", "size": 236666, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:21.560Z", "contentLength": 236666, "httpStatusCode": 200}	5f0ee761-ac72-4bb3-af11-43cc8ab57b92	\N	{}
d72c87c8-76d8-47f8-981d-9ddcba219dce	campuses	hmc/2	\N	2025-01-26 03:03:22.254527+00	2025-01-26 03:03:22.254527+00	2025-01-26 03:03:22.254527+00	{"eTag": "\\"a17bb1a4d6c3774f3b0c7805ce6679e1\\"", "size": 641904, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:22.241Z", "contentLength": 641904, "httpStatusCode": 200}	3ae9e02f-12d5-4017-82c0-b3d4079905b6	\N	{}
645f533c-14d7-442b-82d5-005239723c95	campuses	hmc/3	\N	2025-01-26 03:03:22.867316+00	2025-01-26 03:03:22.867316+00	2025-01-26 03:03:22.867316+00	{"eTag": "\\"8dafa0c1aece3b0bbcbc106fe6b0e23b\\"", "size": 274522, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:22.861Z", "contentLength": 274522, "httpStatusCode": 200}	b7e3f51b-e3d8-4698-aacc-afd07dcb467a	\N	{}
99a0d86c-d64d-4d65-9439-48e8edb7e334	campuses	menlo/0	\N	2025-01-26 21:06:54.323173+00	2025-01-26 21:06:54.323173+00	2025-01-26 21:06:54.323173+00	{"eTag": "\\"95fde6fe65670669f554161a7f07598a\\"", "size": 197199, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:06:54.319Z", "contentLength": 197199, "httpStatusCode": 200}	d549136b-584e-4572-9ebb-5f86f020d6fb	\N	{}
1bc58e53-55b2-490e-acca-aef5a6cde7ba	campuses	hmc/4	\N	2025-01-26 03:03:23.494801+00	2025-01-26 03:03:23.494801+00	2025-01-26 03:03:23.494801+00	{"eTag": "\\"85265bfeff768a6c5076dd34baaaf3f3\\"", "size": 316931, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:23.485Z", "contentLength": 316931, "httpStatusCode": 200}	c3ea412e-e3de-47b5-8021-5da83c9c6285	\N	{}
27776c27-1810-4733-b196-8c6727d8d099	campuses	oberlin/6	\N	2025-01-26 21:09:47.76568+00	2025-01-26 21:09:47.76568+00	2025-01-26 21:09:47.76568+00	{"eTag": "\\"632fb9244b67f9936d4c91417039677c\\"", "size": 49505, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:47.761Z", "contentLength": 49505, "httpStatusCode": 200}	826acdb4-7e37-4e7d-aba6-4372bde2c79f	\N	{}
f51b9888-b428-4e5c-aa93-f2004b2beac4	campuses	hmc/5	\N	2025-01-26 03:03:24.029703+00	2025-01-26 03:03:24.029703+00	2025-01-26 03:03:24.029703+00	{"eTag": "\\"a2fa4cb93ea193d712c7f949a3672a3f\\"", "size": 108388, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:24.024Z", "contentLength": 108388, "httpStatusCode": 200}	3fc77466-bdc5-4f6b-b727-a90a7d761123	\N	{}
01b42d87-a753-4d86-975d-ab33436f976d	campuses	methodist/0	\N	2025-01-26 21:06:55.207547+00	2025-01-26 21:06:55.207547+00	2025-01-26 21:06:55.207547+00	{"eTag": "\\"c9efeedb31b253bef81ff2160e60f882\\"", "size": 75884, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:06:55.203Z", "contentLength": 75884, "httpStatusCode": 200}	c444b5c5-b8be-42a2-8ffa-0add5d8368b7	\N	{}
0e6e49ec-b04e-4ac0-8584-db7dc46f21e8	campuses	hmc/6	\N	2025-01-26 03:03:24.511364+00	2025-01-26 03:03:24.511364+00	2025-01-26 03:03:24.511364+00	{"eTag": "\\"d199881b13bd4b00ce1db172fe24ee75\\"", "size": 43039, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:24.507Z", "contentLength": 43039, "httpStatusCode": 200}	79f85183-926a-40e6-9e66-32df6ed2b6ce	\N	{}
3583cc3c-d303-40ca-8c54-11453a9ca3e4	campuses	hmc/7	\N	2025-01-26 03:03:25.112225+00	2025-01-26 03:03:25.112225+00	2025-01-26 03:03:25.112225+00	{"eTag": "\\"5d8632a8df70f9c532683ab7e9dfa6e0\\"", "size": 190186, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:25.105Z", "contentLength": 190186, "httpStatusCode": 200}	9515f849-4e6b-4088-8886-1ff7d18772fa	\N	{}
74e5b827-8e82-4519-a921-50bd8c7064d8	campuses	methodist/1	\N	2025-01-26 21:06:55.657324+00	2025-01-26 21:06:55.657324+00	2025-01-26 21:06:55.657324+00	{"eTag": "\\"4b7bbddf051770aa172ccb7f83838d37\\"", "size": 60261, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:06:55.652Z", "contentLength": 60261, "httpStatusCode": 200}	4a90e015-9aad-4d6a-b045-5987b450f102	\N	{}
266fdccf-9c84-451a-80e6-a6a3222f8f57	campuses	hmc/8	\N	2025-01-26 03:03:25.777881+00	2025-01-26 03:03:25.777881+00	2025-01-26 03:03:25.777881+00	{"eTag": "\\"826ab93d20f62ac250d3cf8e24e173fb\\"", "size": 404111, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:25.764Z", "contentLength": 404111, "httpStatusCode": 200}	83d877e3-a244-461c-b49d-a10de9c295c2	\N	{}
1fff80c1-9a6b-4ca8-a928-1a21d4ad358e	campuses	howard/0	\N	2025-01-26 03:03:26.457596+00	2025-01-26 03:03:26.457596+00	2025-01-26 03:03:26.457596+00	{"eTag": "\\"d978e02c05597c766914c8fedabed5c3\\"", "size": 405217, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:26.446Z", "contentLength": 405217, "httpStatusCode": 200}	159ecae5-8cf9-4808-af20-73604e93e131	\N	{}
1c37920f-74ff-4303-bb5f-07666df4c3fd	campuses	methodist/2	\N	2025-01-26 21:06:56.187537+00	2025-01-26 21:06:56.187537+00	2025-01-26 21:06:56.187537+00	{"eTag": "\\"57df37952cb557fdd967ae04bff778d7\\"", "size": 117968, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:06:56.181Z", "contentLength": 117968, "httpStatusCode": 200}	48852e4f-0b32-434c-889d-bed636a14478	\N	{}
4987a7df-071d-4eaf-93a3-dfe2ab8ff919	campuses	howard/1	\N	2025-01-26 03:03:27.087688+00	2025-01-26 03:03:27.087688+00	2025-01-26 03:03:27.087688+00	{"eTag": "\\"7c439fcb71990a6a8dfc763c42007764\\"", "size": 349508, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:27.083Z", "contentLength": 349508, "httpStatusCode": 200}	0a3c3b7f-e5ff-40ab-8e1d-bf4ed2473b4d	\N	{}
bd3578a2-ddfa-401b-9cee-c071dd7bd234	campuses	howard/2	\N	2025-01-26 03:03:27.528574+00	2025-01-26 03:03:27.528574+00	2025-01-26 03:03:27.528574+00	{"eTag": "\\"e45049889c4b9f7216d9d865e884d36b\\"", "size": 61141, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:27.521Z", "contentLength": 61141, "httpStatusCode": 200}	63ce9166-9ebf-46ad-9d98-a99a81285d4d	\N	{}
405304e2-2ea6-4fdf-90da-f1a9a685825a	campuses	howard/3	\N	2025-01-26 03:03:27.98892+00	2025-01-26 03:03:27.98892+00	2025-01-26 03:03:27.98892+00	{"eTag": "\\"6d8ca9d306bc07b98b8f21df1076bc59\\"", "size": 72413, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:27.983Z", "contentLength": 72413, "httpStatusCode": 200}	f07b43ea-b790-4d83-89b1-bdb9899257f2	\N	{}
00e380f9-6d29-4460-b702-86075be771c5	campuses	howard/4	\N	2025-01-26 03:03:28.556873+00	2025-01-26 03:03:28.556873+00	2025-01-26 03:03:28.556873+00	{"eTag": "\\"789ea32727f477d16288c87c9a31fa62\\"", "size": 405110, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:28.547Z", "contentLength": 405110, "httpStatusCode": 200}	7157c715-5d5a-4fbb-b4f8-0274067d78e2	\N	{}
23448761-c0aa-4116-8f0c-4a330b0deca3	campuses	howard/5	\N	2025-01-26 03:03:29.008157+00	2025-01-26 03:03:29.008157+00	2025-01-26 03:03:29.008157+00	{"eTag": "\\"774491a9e1775f6bb55875d304616580\\"", "size": 80735, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:29.004Z", "contentLength": 80735, "httpStatusCode": 200}	4c4f225d-048a-4ded-9ae6-0d7da42eec08	\N	{}
e6731fc5-44fd-45f4-802c-b6f37dd20298	campuses	howard/6	\N	2025-01-26 03:03:29.479206+00	2025-01-26 03:03:29.479206+00	2025-01-26 03:03:29.479206+00	{"eTag": "\\"a0e52bdd6b6ec2595faec82a9fa7cfe6\\"", "size": 73219, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:29.476Z", "contentLength": 73219, "httpStatusCode": 200}	b9a7cdce-1140-47c3-8be6-3085a3bd5095	\N	{}
cdfd09fe-4f7e-423e-afd0-4c0639d05ffd	campuses	howard/7	\N	2025-01-26 03:03:30.068346+00	2025-01-26 03:03:30.068346+00	2025-01-26 03:03:30.068346+00	{"eTag": "\\"e171a9dd34adb412f0489d6ff5825fb7\\"", "size": 281538, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:30.059Z", "contentLength": 281538, "httpStatusCode": 200}	abd104da-63f9-49ad-921c-43bbe0c05004	\N	{}
a87a4cff-8767-44fb-a037-36ea5123c42c	campuses	howard/8	\N	2025-01-26 03:03:30.731031+00	2025-01-26 03:03:30.731031+00	2025-01-26 03:03:30.731031+00	{"eTag": "\\"d70edf5339d908a72e97e653abc482fc\\"", "size": 164961, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:30.721Z", "contentLength": 164961, "httpStatusCode": 200}	79618d74-ca66-41bb-9cee-43cbb677de98	\N	{}
210c1d22-c6c4-4b7b-9978-4e32147bf173	campuses	ucsb/8	\N	2025-01-26 21:13:45.951558+00	2025-01-26 21:13:45.951558+00	2025-01-26 21:13:45.951558+00	{"eTag": "\\"ee75213c1558b17f269419f91028b658\\"", "size": 127426, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:45.943Z", "contentLength": 127426, "httpStatusCode": 200}	72bb8aa1-f32f-4816-be9b-6e85477ba824	\N	{}
458939c1-444a-4754-bb52-fb568e640937	campuses	howard/9	\N	2025-01-26 03:03:31.338819+00	2025-01-26 03:03:31.338819+00	2025-01-26 03:03:31.338819+00	{"eTag": "\\"dc375c04381f7ec4a3f33393792c870d\\"", "size": 308415, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:31.330Z", "contentLength": 308415, "httpStatusCode": 200}	7867cefe-ca52-4089-85aa-ad9311bd689e	\N	{}
1e8fa699-0d07-47ea-8ce8-d1dee9621e5b	campuses	methodist/3	\N	2025-01-26 21:06:56.658282+00	2025-01-26 21:06:56.658282+00	2025-01-26 21:06:56.658282+00	{"eTag": "\\"40099debfc19cf358052a4996ecade03\\"", "size": 167575, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:06:56.655Z", "contentLength": 167575, "httpStatusCode": 200}	709a9be5-d8f1-48f9-abe0-415cc1d05351	\N	{}
53348461-cb8c-4faf-bee6-d52b02af3d65	campuses	iit/0	\N	2025-01-26 03:03:31.825373+00	2025-01-26 03:03:31.825373+00	2025-01-26 03:03:31.825373+00	{"eTag": "\\"e7e02d150774f7d828a9f1ee77025897\\"", "size": 37116, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:31.820Z", "contentLength": 37116, "httpStatusCode": 200}	3c3316da-4ff9-4529-b596-3fd0630ec68d	\N	{}
039d53e2-e6f0-40b3-b6b1-fad2813a9cbb	campuses	oberlin/7	\N	2025-01-26 21:09:48.598652+00	2025-01-26 21:09:48.598652+00	2025-01-26 21:09:48.598652+00	{"eTag": "\\"887d5a8fcfd83057462106d50997e5a1\\"", "size": 59089, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:48.581Z", "contentLength": 59089, "httpStatusCode": 200}	61bdda62-bd38-43c9-add8-28a1815427e8	\N	{}
94289b6a-4a17-4d31-9c4f-44056a91bc7c	campuses	iit/1	\N	2025-01-26 03:03:32.423347+00	2025-01-26 03:03:32.423347+00	2025-01-26 03:03:32.423347+00	{"eTag": "\\"63288c229245d11bce5be9c4ea5950a1\\"", "size": 414906, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:32.413Z", "contentLength": 414906, "httpStatusCode": 200}	a0b6961e-2506-4d52-a5b8-e9f9c339476a	\N	{}
9af04032-5d27-4341-a04a-37a865d22d43	campuses	methodist/4	\N	2025-01-26 21:06:57.052224+00	2025-01-26 21:06:57.052224+00	2025-01-26 21:06:57.052224+00	{"eTag": "\\"32c3c33c13b91e15c5c776a7f9a9629f\\"", "size": 151312, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:06:57.045Z", "contentLength": 151312, "httpStatusCode": 200}	e18e0d99-1850-42cd-835d-49c4ed7d68d4	\N	{}
b875f894-14c9-4817-aa9b-3ee85f3d4147	campuses	iit/2	\N	2025-01-26 03:03:32.932767+00	2025-01-26 03:03:32.932767+00	2025-01-26 03:03:32.932767+00	{"eTag": "\\"8f044798f69ad6545d98e0f5062bdec9\\"", "size": 176484, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:32.926Z", "contentLength": 176484, "httpStatusCode": 200}	7302221b-5be5-4a18-bd00-1f59221175c2	\N	{}
6f10d0cc-95e9-4a29-b0fd-4732418d4733	campuses	iit/3	\N	2025-01-26 03:03:33.483632+00	2025-01-26 03:03:33.483632+00	2025-01-26 03:03:33.483632+00	{"eTag": "\\"76995369552a559b2f04428ac9127e25\\"", "size": 281112, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:33.473Z", "contentLength": 281112, "httpStatusCode": 200}	ba509166-8cd3-4db7-8a5b-932551fdc706	\N	{}
69816235-0e62-4793-9583-0be5f1e0d8d3	campuses	methodist/5	\N	2025-01-26 21:06:57.557622+00	2025-01-26 21:06:57.557622+00	2025-01-26 21:06:57.557622+00	{"eTag": "\\"6a9da86641dd222475ee5f2675ec15ae\\"", "size": 163280, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:06:57.551Z", "contentLength": 163280, "httpStatusCode": 200}	b73393b5-be98-4764-b83e-ec631cecc665	\N	{}
fc060d9d-239a-42b3-82ae-01980ddf098c	campuses	iit/4	\N	2025-01-26 03:03:34.007302+00	2025-01-26 03:03:34.007302+00	2025-01-26 03:03:34.007302+00	{"eTag": "\\"9194fcfa9cef8801f58d05a21cac96e5\\"", "size": 189436, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:34.003Z", "contentLength": 189436, "httpStatusCode": 200}	27c5cdae-7adb-413a-a3fb-9e48f9ac649d	\N	{}
e0aaca40-302b-43aa-ba42-45867a4d0673	campuses	iit/5	\N	2025-01-26 03:03:34.64089+00	2025-01-26 03:03:34.64089+00	2025-01-26 03:03:34.64089+00	{"eTag": "\\"c2159746210c075423ea4eccb992cf19\\"", "size": 420799, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:34.618Z", "contentLength": 420799, "httpStatusCode": 200}	39e14f77-d292-46d6-ba4e-f7a1aa38ecb3	\N	{}
06144afa-2325-46d1-bc69-1a90be9196b9	campuses	iit/6	\N	2025-01-26 03:03:34.990228+00	2025-01-26 03:03:34.990228+00	2025-01-26 03:03:34.990228+00	{"eTag": "\\"be40d2dd1513d1b3b9da2b7ec9fa44bc\\"", "size": 11694, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:34.985Z", "contentLength": 11694, "httpStatusCode": 200}	8c29326d-2310-43ec-b4b2-2a982c053baf	\N	{}
23d4b993-924c-41ce-bcad-400373b3d5c7	campuses	iit/7	\N	2025-01-26 03:03:35.600659+00	2025-01-26 03:03:35.600659+00	2025-01-26 03:03:35.600659+00	{"eTag": "\\"2f2300b761c7e2696e21cbd5416a0808\\"", "size": 505114, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:35.586Z", "contentLength": 505114, "httpStatusCode": 200}	1341ea66-0339-451c-987b-898de9fc71e5	\N	{}
49ed6e44-8c18-4132-93e5-63916ddeae58	campuses	iit/8	\N	2025-01-26 03:03:36.136609+00	2025-01-26 03:03:36.136609+00	2025-01-26 03:03:36.136609+00	{"eTag": "\\"f3ea622e383bdc57a85b0b95000aeb74\\"", "size": 208716, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:36.127Z", "contentLength": 208716, "httpStatusCode": 200}	d4a398cb-0b24-4a60-b22f-6f0e4134a608	\N	{}
f40ab07a-cb53-40bd-83c8-8bb5a33e8daa	campuses	iit/9	\N	2025-01-26 03:03:36.677981+00	2025-01-26 03:03:36.677981+00	2025-01-26 03:03:36.677981+00	{"eTag": "\\"8bfd3e5bf70a0920c1a7add0203bcfff\\"", "size": 294509, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:36.670Z", "contentLength": 294509, "httpStatusCode": 200}	d4f2939f-55c5-4de9-bb95-eb46ab220290	\N	{}
62039588-4307-4355-ab72-6f0618beb124	campuses	iusb/0	\N	2025-01-26 03:03:37.379053+00	2025-01-26 03:03:37.379053+00	2025-01-26 03:03:37.379053+00	{"eTag": "\\"33dae2abe4ebee9929bf84d8499c9801\\"", "size": 341435, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:37.363Z", "contentLength": 341435, "httpStatusCode": 200}	45ba18dc-446a-459d-8476-4bbc1c226d8a	\N	{}
55673c88-d525-4e2a-b7f8-e01c02cb61d8	campuses	iusb/1	\N	2025-01-26 03:03:37.920581+00	2025-01-26 03:03:37.920581+00	2025-01-26 03:03:37.920581+00	{"eTag": "\\"235a7a617eff2befba9e58c92fca3e66\\"", "size": 110940, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:37.916Z", "contentLength": 110940, "httpStatusCode": 200}	c5ec7466-9176-404e-92ee-e9c5fc07dfe6	\N	{}
f917b8f4-2e28-4650-a425-3452d531ea1e	campuses	iusb/2	\N	2025-01-26 03:03:38.479785+00	2025-01-26 03:03:38.479785+00	2025-01-26 03:03:38.479785+00	{"eTag": "\\"cc5acb4f3615c2433467f3edf867716b\\"", "size": 117926, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:38.475Z", "contentLength": 117926, "httpStatusCode": 200}	65ad5215-af54-4e9a-a527-6f500c212184	\N	{}
ae79057b-6240-4c6f-8630-2f657de864b8	campuses	methodist/6	\N	2025-01-26 21:06:58.12767+00	2025-01-26 21:06:58.12767+00	2025-01-26 21:06:58.12767+00	{"eTag": "\\"0c2e9b36dbdc92e082f11d7df42b5ab2\\"", "size": 92139, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:06:58.121Z", "contentLength": 92139, "httpStatusCode": 200}	ff0a71e5-33f0-4f7a-bbd3-243ffed0e057	\N	{}
ea72b468-8b11-4746-bb29-e656a4fd5c66	campuses	iusb/3	\N	2025-01-26 03:03:39.499351+00	2025-01-26 03:03:39.499351+00	2025-01-26 03:03:39.499351+00	{"eTag": "\\"b15a7652c847af71aa53772333022847\\"", "size": 798713, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:39.493Z", "contentLength": 798713, "httpStatusCode": 200}	d97feed6-521e-4fe8-88c6-28cbe5ddae97	\N	{}
c2827005-56a1-494d-ad57-ea3fcc419979	campuses	oberlin/8	\N	2025-01-26 21:09:49.083731+00	2025-01-26 21:09:49.083731+00	2025-01-26 21:09:49.083731+00	{"eTag": "\\"fec34b4cd6428169019d1109cfa9fbf4\\"", "size": 124794, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:49.079Z", "contentLength": 124794, "httpStatusCode": 200}	823f112d-a611-4d4c-aaae-5370f897009a	\N	{}
474e2673-99b9-45d5-b762-1517743f5d69	campuses	iusb/4	\N	2025-01-26 03:03:40.054489+00	2025-01-26 03:03:40.054489+00	2025-01-26 03:03:40.054489+00	{"eTag": "\\"4884cbf2271819fa4528ce5222fef494\\"", "size": 556873, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:40.044Z", "contentLength": 556873, "httpStatusCode": 200}	01ee628e-a92f-43b7-9d3e-491341b561b8	\N	{}
3a655fa0-54b6-4812-a62b-78b61ad2755a	campuses	methodist/7	\N	2025-01-26 21:06:58.632995+00	2025-01-26 21:06:58.632995+00	2025-01-26 21:06:58.632995+00	{"eTag": "\\"b72a12f27c6687dbee90702c12ab8b9e\\"", "size": 110097, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:06:58.625Z", "contentLength": 110097, "httpStatusCode": 200}	0e74ffba-1008-4388-b22b-eef1a6aa469d	\N	{}
1c2e9ecc-6adb-4c3b-bf6d-8f9d4d3f4f17	campuses	iusb/5	\N	2025-01-26 03:03:40.932638+00	2025-01-26 03:03:40.932638+00	2025-01-26 03:03:40.932638+00	{"eTag": "\\"88e831c447a10b0306854d88dfaf97b1\\"", "size": 1119858, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:40.919Z", "contentLength": 1119858, "httpStatusCode": 200}	9da5c1ba-2542-4c12-83ac-c8e42a910441	\N	{}
36436363-c67c-42c0-acaa-e7e1819cee60	campuses	uww/5	\N	2025-01-26 21:17:45.874291+00	2025-01-26 21:17:45.874291+00	2025-01-26 21:17:45.874291+00	{"eTag": "\\"b01faa83850a8260bd74f73d54abd4f9\\"", "size": 208139, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:45.867Z", "contentLength": 208139, "httpStatusCode": 200}	1783448e-666b-436d-a325-1b89f2ed3cba	\N	{}
b191ea0d-f86e-4f3a-a5ef-58b78041df4c	campuses	iusb/6	\N	2025-01-26 03:03:41.400804+00	2025-01-26 03:03:41.400804+00	2025-01-26 03:03:41.400804+00	{"eTag": "\\"79a8031777275f5336823773d5175a9c\\"", "size": 132546, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:41.395Z", "contentLength": 132546, "httpStatusCode": 200}	da8d36ad-4ab0-4f7b-81ff-f46f6a08580e	\N	{}
6341d230-e303-4a8d-a3f6-4d87fef2a423	campuses	methodist/8	\N	2025-01-26 21:06:59.163429+00	2025-01-26 21:06:59.163429+00	2025-01-26 21:06:59.163429+00	{"eTag": "\\"695c3d3a5fe0e81a8660d51bf65e53ce\\"", "size": 64457, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:06:59.157Z", "contentLength": 64457, "httpStatusCode": 200}	30603b7c-b1a4-4d54-9e48-1929e6371634	\N	{}
156592de-6c83-4ae2-9d8f-7628b4b4c053	campuses	iusb/7	\N	2025-01-26 03:03:42.410285+00	2025-01-26 03:03:42.410285+00	2025-01-26 03:03:42.410285+00	{"eTag": "\\"af72487797556e7ac93c34caa05e1b03\\"", "size": 1645364, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:42.390Z", "contentLength": 1645364, "httpStatusCode": 200}	cff8f48a-9bd3-4727-a492-b2d6a5bc5967	\N	{}
789abcaa-9c9b-41b3-8da2-61dbd81c125d	campuses	oberlin/9	\N	2025-01-26 21:09:49.772711+00	2025-01-26 21:09:49.772711+00	2025-01-26 21:09:49.772711+00	{"eTag": "\\"9e9380aae217bb8a08327756f82f3845\\"", "size": 99285, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:49.594Z", "contentLength": 99285, "httpStatusCode": 200}	fa434113-563a-4407-89d1-1e49e202b13d	\N	{}
4b4eb99a-9454-4dad-bc52-3c3ea5a3b49b	campuses	iusb/8	\N	2025-01-26 03:03:42.883882+00	2025-01-26 03:03:42.883882+00	2025-01-26 03:03:42.883882+00	{"eTag": "\\"8c07eebb44f8232e1fe3d5f552bf9a24\\"", "size": 164575, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:42.873Z", "contentLength": 164575, "httpStatusCode": 200}	4e7243b7-b037-4173-b2c7-2bebc25207d2	\N	{}
5c37c3a2-6e45-43e5-9201-4a375452b680	campuses	methodist/9	\N	2025-01-26 21:06:59.602892+00	2025-01-26 21:06:59.602892+00	2025-01-26 21:06:59.602892+00	{"eTag": "\\"473290cc2d16eaf21b9e4e5d4c362e3c\\"", "size": 56380, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:06:59.598Z", "contentLength": 56380, "httpStatusCode": 200}	4562c4f2-29c9-4600-b6f9-3be2a7959865	\N	{}
7870624d-c891-4be1-9897-3caea7a17bde	campuses	msudenver/0	\N	2025-01-26 21:07:00.153354+00	2025-01-26 21:07:00.153354+00	2025-01-26 21:07:00.153354+00	{"eTag": "\\"8941bf99ddfb4e06f5f3cb14cd1125a9\\"", "size": 98819, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:07:00.147Z", "contentLength": 98819, "httpStatusCode": 200}	6376bd98-1854-4864-8b8b-7b7d08846dbf	\N	{}
ca251be9-c208-4190-91da-19c328eace29	campuses	msudenver/1	\N	2025-01-26 21:07:00.785729+00	2025-01-26 21:07:00.785729+00	2025-01-26 21:07:00.785729+00	{"eTag": "\\"86e075356000051f3b5dcf22206e2fd4\\"", "size": 689438, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:07:00.778Z", "contentLength": 689438, "httpStatusCode": 200}	857d9d05-1419-4867-9957-5c4c17826522	\N	{}
c97a2fa3-1b68-4545-98d6-d197505e6d78	campuses	msudenver/2	\N	2025-01-26 21:07:01.469894+00	2025-01-26 21:07:01.469894+00	2025-01-26 21:07:01.469894+00	{"eTag": "\\"24a7e3c94c16bb75324848a3fcb8d06b\\"", "size": 174068, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:07:01.462Z", "contentLength": 174068, "httpStatusCode": 200}	cdc62c89-f37b-4b86-977a-b5f903d4f4ec	\N	{}
bd207bd6-efe9-4f3b-9f88-71d85df30201	campuses	msudenver/3	\N	2025-01-26 21:07:02.132634+00	2025-01-26 21:07:02.132634+00	2025-01-26 21:07:02.132634+00	{"eTag": "\\"9b9b853dd6e43f82c3eae312196a5107\\"", "size": 277532, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:07:02.127Z", "contentLength": 277532, "httpStatusCode": 200}	2fae04b8-9c0c-4aa6-87e6-b83901194a63	\N	{}
c14f4340-5293-4436-b420-b999bb56bc21	campuses	msudenver/4	\N	2025-01-26 21:07:02.613775+00	2025-01-26 21:07:02.613775+00	2025-01-26 21:07:02.613775+00	{"eTag": "\\"5ce05d99a7062ae9b2fde9ed1e863b8a\\"", "size": 280243, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:07:02.604Z", "contentLength": 280243, "httpStatusCode": 200}	50dda332-733f-4e2d-aeb0-b9df86f8d9d0	\N	{}
9744fdcb-918f-4909-b722-799f1f0984fd	campuses	iusb/9	\N	2025-01-26 03:03:45.062432+00	2025-01-26 03:03:45.062432+00	2025-01-26 03:03:45.062432+00	{"eTag": "\\"152262decd1b400f85f174d1716d6510\\"", "size": 5484885, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:45.004Z", "contentLength": 5484885, "httpStatusCode": 200}	50d59d30-204f-41f5-a29e-0391e3841dab	\N	{}
b3a7d5c4-310e-47a5-bf26-37d8d309d464	campuses	pba/0	\N	2025-01-26 21:09:50.447145+00	2025-01-26 21:09:50.447145+00	2025-01-26 21:09:50.447145+00	{"eTag": "\\"91b9f2223eea606a0455043c00382845\\"", "size": 399947, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:50.438Z", "contentLength": 399947, "httpStatusCode": 200}	9fc7c14d-bf40-499f-9bdd-502fd006e8d0	\N	{}
dbf80d5b-ae1e-412d-a21f-9c1303942a83	campuses	ius/0	\N	2025-01-26 03:03:45.502948+00	2025-01-26 03:03:45.502948+00	2025-01-26 03:03:45.502948+00	{"eTag": "\\"c77cfbe6ec571444283cbf75129e5799\\"", "size": 63446, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:45.497Z", "contentLength": 63446, "httpStatusCode": 200}	c0f7fd2b-5f7a-48fe-ad69-ff0c77c5c959	\N	{}
57124d97-1980-4761-8712-c99eee2f18dd	campuses	msudenver/5	\N	2025-01-26 21:07:03.13066+00	2025-01-26 21:07:03.13066+00	2025-01-26 21:07:03.13066+00	{"eTag": "\\"28a41f553e72a4db037ddb936bb24dc5\\"", "size": 204330, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:07:03.125Z", "contentLength": 204330, "httpStatusCode": 200}	ea331901-e647-4219-8f7b-dd4d57f50d38	\N	{}
7215baa9-6b5b-4bc9-b7eb-a9abcc166bea	campuses	ius/1	\N	2025-01-26 03:03:46.222588+00	2025-01-26 03:03:46.222588+00	2025-01-26 03:03:46.222588+00	{"eTag": "\\"862ca637a79f423db384605e2e3e2163\\"", "size": 8686, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:46.218Z", "contentLength": 8686, "httpStatusCode": 200}	72b54eaa-3953-40e9-9ff6-d16410c56d56	\N	{}
134ae65d-5399-4888-8b15-6cb03b3af18d	campuses	msu/4	\N	2025-01-26 21:08:08.6545+00	2025-01-26 21:08:08.6545+00	2025-01-26 21:08:08.6545+00	{"eTag": "\\"185dd5ec503c683da355a50e70f25c68\\"", "size": 212, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:08.650Z", "contentLength": 212, "httpStatusCode": 200}	b894d8bd-c333-43fc-85f9-f8cf52d3db11	\N	{}
fd6eb290-735e-440f-85eb-48a0b087b626	campuses	ius/2	\N	2025-01-26 03:03:46.649361+00	2025-01-26 03:03:46.649361+00	2025-01-26 03:03:46.649361+00	{"eTag": "\\"36d049388999934e2672c4056a0510a0\\"", "size": 366674, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:46.642Z", "contentLength": 366674, "httpStatusCode": 200}	09111899-4b47-47f0-be68-3418ca3e1f86	\N	{}
a08f106f-8264-43be-8b6d-9a9d4f7762fb	campuses	ius/4	\N	2025-01-26 03:03:47.652163+00	2025-01-26 03:03:47.652163+00	2025-01-26 03:03:47.652163+00	{"eTag": "\\"02f3acff20ab73ef3ed0dbf35cd64f0e\\"", "size": 349602, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:47.642Z", "contentLength": 349602, "httpStatusCode": 200}	b969614c-cd43-477c-a06b-ea78f488d556	\N	{}
4b913bca-845d-42a2-9097-a571d25f4931	campuses	msu/5	\N	2025-01-26 21:08:09.373657+00	2025-01-26 21:08:09.373657+00	2025-01-26 21:08:09.373657+00	{"eTag": "\\"e66ee31f87bc8801724df82c792a9554\\"", "size": 1370544, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:09.363Z", "contentLength": 1370544, "httpStatusCode": 200}	1e3d10d5-f0e7-4a38-ae2b-59b421f82a20	\N	{}
156277ef-7f9c-43f1-8ce5-ec3fdf38850e	campuses	ius/5	\N	2025-01-26 03:03:48.360511+00	2025-01-26 03:03:48.360511+00	2025-01-26 03:03:48.360511+00	{"eTag": "\\"8ba6a0198a0fc39b1a8ba24f8d1eede4\\"", "size": 717114, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:48.349Z", "contentLength": 717114, "httpStatusCode": 200}	d28742d0-ee33-43da-a971-8b35f55f9253	\N	{}
4cd1e746-3de9-4080-ad26-35e7fb434234	campuses	ius/6	\N	2025-01-26 03:03:49.130713+00	2025-01-26 03:03:49.130713+00	2025-01-26 03:03:49.130713+00	{"eTag": "\\"984995c9eb23bd9d96c5aaffbf77fdaa\\"", "size": 104708, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:49.123Z", "contentLength": 104708, "httpStatusCode": 200}	a2aefeca-af5f-4c2f-93b6-aa7657984a6b	\N	{}
fd3e7188-5c29-46cb-afd8-6d0e52bc5900	campuses	msu/6	\N	2025-01-26 21:08:09.875939+00	2025-01-26 21:08:09.875939+00	2025-01-26 21:08:09.875939+00	{"eTag": "\\"7ef579031c45289b13ca42f7bc593d21\\"", "size": 569297, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:09.869Z", "contentLength": 569297, "httpStatusCode": 200}	a7ed2c12-42e5-4082-850a-3e730f13f03a	\N	{}
0a50bdfe-8b33-452f-8df1-c6280559e95b	campuses	ius/7	\N	2025-01-26 03:03:50.010302+00	2025-01-26 03:03:50.010302+00	2025-01-26 03:03:50.010302+00	{"eTag": "\\"d6fbe1da05cd918d45e03d8e4f059eb1\\"", "size": 116234, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:50.003Z", "contentLength": 116234, "httpStatusCode": 200}	03206135-9699-45c3-919d-8dba2dc2bf56	\N	{}
8f4b245a-ecf7-4379-acc1-54ea626b1755	campuses	ius/8	\N	2025-01-26 03:03:50.937653+00	2025-01-26 03:03:50.937653+00	2025-01-26 03:03:50.937653+00	{"eTag": "\\"3e4448d6617a86f287f7a82df1c73d4d\\"", "size": 99910, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:50.912Z", "contentLength": 99910, "httpStatusCode": 200}	41694888-2705-4c5d-a8c2-36766186b21f	\N	{}
fa40e6e4-5d46-440a-8573-ded6b11d6b51	campuses	ius/9	\N	2025-01-26 03:03:51.788311+00	2025-01-26 03:03:51.788311+00	2025-01-26 03:03:51.788311+00	{"eTag": "\\"e6a5c602951e589cf1eb0ee02012392d\\"", "size": 67200, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:51.782Z", "contentLength": 67200, "httpStatusCode": 200}	2a1d5fde-e59c-4f71-bcd4-52373838b5b6	\N	{}
57e8d5d8-c58f-4f5d-a36e-489823f64c79	campuses	ithaca/0	\N	2025-01-26 03:03:52.452727+00	2025-01-26 03:03:52.452727+00	2025-01-26 03:03:52.452727+00	{"eTag": "\\"88034358ed197e65ca78adba5124b320\\"", "size": 151989, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:52.446Z", "contentLength": 151989, "httpStatusCode": 200}	d35e675d-ec16-448d-9702-8fb07503fb4c	\N	{}
9e7c7c43-d817-4558-bc53-c4e499820786	campuses	ithaca/1	\N	2025-01-26 03:03:52.999806+00	2025-01-26 03:03:52.999806+00	2025-01-26 03:03:52.999806+00	{"eTag": "\\"2f3f8b027f7c53b0e924005b54ab7268\\"", "size": 118319, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:52.975Z", "contentLength": 118319, "httpStatusCode": 200}	3a858611-05c4-4196-88aa-d760b4abd5f5	\N	{}
8473cd77-f585-47c7-aa30-3d7604936ab6	campuses	ithaca/2	\N	2025-01-26 03:03:53.556112+00	2025-01-26 03:03:53.556112+00	2025-01-26 03:03:53.556112+00	{"eTag": "\\"cf756a58d8ecd867581263e51447faee\\"", "size": 106175, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:53.547Z", "contentLength": 106175, "httpStatusCode": 200}	9feac6e1-5100-4105-8b5d-dbefe483496b	\N	{}
ade45293-8f43-4324-8d91-2e8a586c18dc	campuses	ithaca/3	\N	2025-01-26 03:03:54.23456+00	2025-01-26 03:03:54.23456+00	2025-01-26 03:03:54.23456+00	{"eTag": "\\"9bc928c00cb8bd7e7880bb58cb0be2ff\\"", "size": 619756, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:54.221Z", "contentLength": 619756, "httpStatusCode": 200}	4e1ff805-e0bf-44f7-aed9-755bc5fc5dd5	\N	{}
c361c5ac-c775-40f2-92d4-c9355c371d1a	campuses	ithaca/4	\N	2025-01-26 03:03:54.792761+00	2025-01-26 03:03:54.792761+00	2025-01-26 03:03:54.792761+00	{"eTag": "\\"6d26c86c0393db40f4a398c565c31aca\\"", "size": 119148, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:54.786Z", "contentLength": 119148, "httpStatusCode": 200}	13c0c1af-d99e-4942-89d5-8b59b4e7dbe4	\N	{}
c9dcebcd-1db0-40da-ba71-7c439d9326ca	campuses	ucsb/9	\N	2025-01-26 21:13:46.623397+00	2025-01-26 21:13:46.623397+00	2025-01-26 21:13:46.623397+00	{"eTag": "\\"84f71432d175f80f21874c54717e418a\\"", "size": 194939, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:46.619Z", "contentLength": 194939, "httpStatusCode": 200}	79cf5cf2-1bc1-4faf-aa16-f8b399b4c427	\N	{}
8ab68997-be07-48ac-aeed-994fbde56167	campuses	ithaca/5	\N	2025-01-26 03:03:55.3497+00	2025-01-26 03:03:55.3497+00	2025-01-26 03:03:55.3497+00	{"eTag": "\\"3523d59d0e9afe5ed3c32971989b66ab\\"", "size": 252222, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:55.344Z", "contentLength": 252222, "httpStatusCode": 200}	636125ee-5649-4b52-82ca-03cb39afab9b	\N	{}
a16f67ec-7060-49ae-ae08-f69e3a52030c	campuses	msu/0	\N	2025-01-26 21:08:04.520608+00	2025-01-26 21:08:04.520608+00	2025-01-26 21:08:04.520608+00	{"eTag": "\\"f1fc4c9de1ae9a15e339e273cb73d17c\\"", "size": 2860116, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:04.478Z", "contentLength": 2860116, "httpStatusCode": 200}	904043a6-736e-45e3-b5ba-5f89dc973b39	\N	{}
9839bf53-d348-42c1-a670-4daad7263140	campuses	ithaca/6	\N	2025-01-26 03:03:55.904299+00	2025-01-26 03:03:55.904299+00	2025-01-26 03:03:55.904299+00	{"eTag": "\\"a53449d09ad04fd9a5cc793a0f5c6a14\\"", "size": 170435, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:55.898Z", "contentLength": 170435, "httpStatusCode": 200}	4adb7251-8d49-42fe-9b16-b9a1c5eaaaac	\N	{}
02c9e609-ba22-48ce-90e9-68324f65c925	campuses	pba/1	\N	2025-01-26 21:09:50.851608+00	2025-01-26 21:09:50.851608+00	2025-01-26 21:09:50.851608+00	{"eTag": "\\"cc895fe98d1aa4a4bc2c479d2d532699\\"", "size": 262124, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:50.846Z", "contentLength": 262124, "httpStatusCode": 200}	64a208a1-dbd3-4f84-bf8f-b453bb2e3fa8	\N	{}
08d565ce-11bb-47a8-85d3-3072e886b54a	campuses	ithaca/7	\N	2025-01-26 03:03:56.423579+00	2025-01-26 03:03:56.423579+00	2025-01-26 03:03:56.423579+00	{"eTag": "\\"e1747fd74775aa4314fa1d79743970c9\\"", "size": 89670, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:56.419Z", "contentLength": 89670, "httpStatusCode": 200}	34dd0735-12eb-47d7-80c8-a132a6225ba2	\N	{}
cf16cfd5-5ae3-4505-8875-7278ab6361c1	campuses	msu/1	\N	2025-01-26 21:08:05.914273+00	2025-01-26 21:08:05.914273+00	2025-01-26 21:08:05.914273+00	{"eTag": "\\"926640cdfd31f9a58e466410643ea93f\\"", "size": 12302456, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:05.698Z", "contentLength": 12302456, "httpStatusCode": 200}	361927f5-9f69-425d-9f40-5a873d2e5702	\N	{}
b7d062ca-baba-4666-b855-dcd769fdcb13	campuses	ithaca/8	\N	2025-01-26 03:03:56.987866+00	2025-01-26 03:03:56.987866+00	2025-01-26 03:03:56.987866+00	{"eTag": "\\"d72f587b7b6b155b3bd805731eb99b1c\\"", "size": 152219, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:56.981Z", "contentLength": 152219, "httpStatusCode": 200}	e4c00eae-0eaf-4da1-9d42-6747588f0094	\N	{}
6aac9168-27cc-42e8-b61b-6b5e593a9ede	campuses	ithaca/9	\N	2025-01-26 03:03:57.568549+00	2025-01-26 03:03:57.568549+00	2025-01-26 03:03:57.568549+00	{"eTag": "\\"d5626ed422e68a2f018a9d87e2b3fb82\\"", "size": 287953, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:57.560Z", "contentLength": 287953, "httpStatusCode": 200}	c3df1c01-c2d0-444d-8eaf-5bd0171d7bff	\N	{}
904a02d1-67b6-4aa6-9a1d-fd9cc7936a69	campuses	msu/2	\N	2025-01-26 21:08:06.715602+00	2025-01-26 21:08:06.715602+00	2025-01-26 21:08:06.715602+00	{"eTag": "\\"8b241c2234ed12f633d91967f9ca54c1\\"", "size": 1440691, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:06.700Z", "contentLength": 1440691, "httpStatusCode": 200}	aefa1941-ab11-4246-9fd6-49739b6fd1a4	\N	{}
cc638b95-d23e-4bff-91a8-33cd0429be73	campuses	jmu/0	\N	2025-01-26 03:03:58.253384+00	2025-01-26 03:03:58.253384+00	2025-01-26 03:03:58.253384+00	{"eTag": "\\"56dca717e8ef3c4e1d2fbfa3e302708c\\"", "size": 297148, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:58.249Z", "contentLength": 297148, "httpStatusCode": 200}	2d878e5b-5d0a-480d-813c-ca6bae355b25	\N	{}
023b6680-606b-452b-ace0-0c6cbf6d6e32	campuses	jmu/1	\N	2025-01-26 03:03:59.09482+00	2025-01-26 03:03:59.09482+00	2025-01-26 03:03:59.09482+00	{"eTag": "\\"d4dcc68aab081289956057e29cca4f89\\"", "size": 373700, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:59.086Z", "contentLength": 373700, "httpStatusCode": 200}	1c3bfb96-83aa-44c1-b4eb-9825e4293295	\N	{}
25e868bc-0f09-4b5a-bad3-69920ae7b6cd	campuses	msu/3	\N	2025-01-26 21:08:07.927426+00	2025-01-26 21:08:07.927426+00	2025-01-26 21:08:07.927426+00	{"eTag": "\\"f2dd0bc566c36bfd60c71727dbbd5b96\\"", "size": 2169980, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:07.908Z", "contentLength": 2169980, "httpStatusCode": 200}	6a031cf8-0062-44dd-8b76-ef51d12a64ab	\N	{}
0c820410-f906-4545-861d-8abf38ff6e24	campuses	jmu/2	\N	2025-01-26 03:03:59.711015+00	2025-01-26 03:03:59.711015+00	2025-01-26 03:03:59.711015+00	{"eTag": "\\"bd397a2d41b8a7dcebb7c1c13f0bcd16\\"", "size": 110795, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:03:59.705Z", "contentLength": 110795, "httpStatusCode": 200}	3c485063-c9f1-40de-9312-52dee387cc43	\N	{}
a49baa6d-350a-4e1a-99db-bead940be456	campuses	jmu/3	\N	2025-01-26 03:04:00.214685+00	2025-01-26 03:04:00.214685+00	2025-01-26 03:04:00.214685+00	{"eTag": "\\"438da1df2ece89b9f1be2ce404ccb492\\"", "size": 202006, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:04:00.206Z", "contentLength": 202006, "httpStatusCode": 200}	b3a0ed65-959a-496f-b518-db1c85b78d20	\N	{}
7a6e36db-343c-40de-9502-a45c1a474143	campuses	jmu/4	\N	2025-01-26 03:04:00.677677+00	2025-01-26 03:04:00.677677+00	2025-01-26 03:04:00.677677+00	{"eTag": "\\"9b1164afe2a15edf4db3738f8092f0d3\\"", "size": 138149, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:04:00.674Z", "contentLength": 138149, "httpStatusCode": 200}	3bd863cd-e16b-44f5-8277-44fa9bcb0093	\N	{}
5bf5bd46-3a7a-4104-a151-ee38a836a426	campuses	jmu/5	\N	2025-01-26 03:04:01.314273+00	2025-01-26 03:04:01.314273+00	2025-01-26 03:04:01.314273+00	{"eTag": "\\"c7c29bf845b4486a635d8257ee6cbe8e\\"", "size": 1566681, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:04:01.305Z", "contentLength": 1566681, "httpStatusCode": 200}	979c37a6-abd0-4d2b-b59b-99f936274c83	\N	{}
f94bc266-ff66-4260-98c2-dd1365df2546	campuses	jmu/6	\N	2025-01-26 03:04:01.895642+00	2025-01-26 03:04:01.895642+00	2025-01-26 03:04:01.895642+00	{"eTag": "\\"83f314a0407d0bfa8b39b5c0cabf173c\\"", "size": 65677, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T03:04:01.891Z", "contentLength": 65677, "httpStatusCode": 200}	55a6c590-8879-4e4b-bd75-041cdf965fd7	\N	{}
817a81a5-0b7d-4313-b077-39ff68dfa04a	campuses	msu/7	\N	2025-01-26 21:08:10.446316+00	2025-01-26 21:08:10.446316+00	2025-01-26 21:08:10.446316+00	{"eTag": "\\"2d5bffd961805261349a36424ca94efb\\"", "size": 1570110, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:10.433Z", "contentLength": 1570110, "httpStatusCode": 200}	9aca45e9-1f1d-4360-96b0-f23298dfbd87	\N	{}
7dd5c4fb-22eb-449a-a2f2-26cc2027c311	campuses	pba/2	\N	2025-01-26 21:09:51.251809+00	2025-01-26 21:09:51.251809+00	2025-01-26 21:09:51.251809+00	{"eTag": "\\"e8afe263cf5fdf2ea59b73433f7e7aac\\"", "size": 246421, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:51.248Z", "contentLength": 246421, "httpStatusCode": 200}	9b241441-6ed1-459e-9cfa-b5559e5f229d	\N	{}
b1d0f898-64e7-4d0d-8a22-01b9f3c02abc	campuses	msu/8	\N	2025-01-26 21:08:10.961156+00	2025-01-26 21:08:10.961156+00	2025-01-26 21:08:10.961156+00	{"eTag": "\\"f26679ed340e3de430879e1e67245001\\"", "size": 301626, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:10.957Z", "contentLength": 301626, "httpStatusCode": 200}	a75af624-8454-4b7f-96da-20027a1a630a	\N	{}
e47f67a5-57af-41c4-8459-3dbb5775115c	campuses	mtsu/0	\N	2025-01-26 21:08:11.905442+00	2025-01-26 21:08:11.905442+00	2025-01-26 21:08:11.905442+00	{"eTag": "\\"4c9aa8d6a3563974ef0bccd926c40069\\"", "size": 663758, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:11.893Z", "contentLength": 663758, "httpStatusCode": 200}	141a3ef5-5ceb-4fab-a211-71077feabf21	\N	{}
d3e7f499-ca70-49b0-9cc3-72cbd0aeaacd	campuses	pba/3	\N	2025-01-26 21:09:51.89647+00	2025-01-26 21:09:51.89647+00	2025-01-26 21:09:51.89647+00	{"eTag": "\\"749fe734b5e0f4250a9709c63b8ba6dd\\"", "size": 314571, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:51.867Z", "contentLength": 314571, "httpStatusCode": 200}	601e4287-13f7-43ec-bdd5-90bbf7c547e0	\N	{}
47a08a37-4cf6-49ac-a713-4a3213221baa	campuses	mtsu/1	\N	2025-01-26 21:08:12.360373+00	2025-01-26 21:08:12.360373+00	2025-01-26 21:08:12.360373+00	{"eTag": "\\"1f8a0ab01c801ff7e0d06c318a25512e\\"", "size": 379436, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:12.353Z", "contentLength": 379436, "httpStatusCode": 200}	d2cfb3aa-d25c-4d31-adf3-849135692137	\N	{}
bc1dd0bc-6ca9-42e3-a14f-f222db375f94	campuses	uca/0	\N	2025-01-26 21:13:49.545139+00	2025-01-26 21:13:49.545139+00	2025-01-26 21:13:49.545139+00	{"eTag": "\\"8d650788b0c13846d1ef87315e82ba59\\"", "size": 2763216, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:49.523Z", "contentLength": 2763216, "httpStatusCode": 200}	54106ea7-b842-44e1-8397-39735435afab	\N	{}
db4606d7-897a-4d93-85aa-c560935f8e58	campuses	mtsu/2	\N	2025-01-26 21:08:12.654799+00	2025-01-26 21:08:12.654799+00	2025-01-26 21:08:12.654799+00	{"eTag": "\\"9fe3cb2b7313dc79bb477bc8fde184a7\\"", "size": 146, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:12.651Z", "contentLength": 146, "httpStatusCode": 200}	667ba90d-4645-4490-9aff-f4b06f449396	\N	{}
1b71bca6-5174-4c3e-b6fc-86f3267e4e11	campuses	pba/4	\N	2025-01-26 21:09:52.641956+00	2025-01-26 21:09:52.641956+00	2025-01-26 21:09:52.641956+00	{"eTag": "\\"6348e3afaefe69f77c95c1afbe4b02ed\\"", "size": 295027, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:52.635Z", "contentLength": 295027, "httpStatusCode": 200}	38c57f95-70e3-4a98-a3c6-19c78816c8a8	\N	{}
3eb41cfe-4e5a-4efa-a692-581e542cbacc	campuses	mtsu/3	\N	2025-01-26 21:08:13.23189+00	2025-01-26 21:08:13.23189+00	2025-01-26 21:08:13.23189+00	{"eTag": "\\"5387b5ed92f24be59b8a2daa836e1728\\"", "size": 257859, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:13.224Z", "contentLength": 257859, "httpStatusCode": 200}	d42217f0-909b-414a-9095-57cd6d4a04cd	\N	{}
a2d49a6a-40dd-4cef-80ae-e26d61f81c64	campuses	mtsu/4	\N	2025-01-26 21:08:13.752332+00	2025-01-26 21:08:13.752332+00	2025-01-26 21:08:13.752332+00	{"eTag": "\\"b16fd33c54d324c10a2e20c2146124cb\\"", "size": 716690, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:13.738Z", "contentLength": 716690, "httpStatusCode": 200}	2804122a-0971-4328-8fc3-3d0b872194b4	\N	{}
d64fb6ea-cb72-46d5-88d5-ec776af80805	campuses	pba/5	\N	2025-01-26 21:09:53.129057+00	2025-01-26 21:09:53.129057+00	2025-01-26 21:09:53.129057+00	{"eTag": "\\"017ed2bf71778932a9757f100448bc1b\\"", "size": 376775, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:53.115Z", "contentLength": 376775, "httpStatusCode": 200}	c6af65b4-400c-4119-9e0e-79846bf6b30f	\N	{}
c90636e3-0369-4329-9145-4bd7f3fcdf7e	campuses	mtsu/5	\N	2025-01-26 21:08:14.339098+00	2025-01-26 21:08:14.339098+00	2025-01-26 21:08:14.339098+00	{"eTag": "\\"75fcc7c5dcd0361391bf7d504638dfde\\"", "size": 1120470, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:14.325Z", "contentLength": 1120470, "httpStatusCode": 200}	c46a072c-205f-4a6e-a29e-2c6245117fb2	\N	{}
f2470f71-d4fa-4b32-b700-e97ba18f5e61	campuses	mtsu/6	\N	2025-01-26 21:08:15.028986+00	2025-01-26 21:08:15.028986+00	2025-01-26 21:08:15.028986+00	{"eTag": "\\"9fe3cb2b7313dc79bb477bc8fde184a7\\"", "size": 146, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:15.025Z", "contentLength": 146, "httpStatusCode": 200}	f9c332c6-725f-42ff-ba60-c15cea7e1ab5	\N	{}
b26773fc-a55f-4fa8-9a81-98c2462d29d1	campuses	mtsu/7	\N	2025-01-26 21:08:15.531726+00	2025-01-26 21:08:15.531726+00	2025-01-26 21:08:15.531726+00	{"eTag": "\\"d48d1efe2a6487ad65e18b676cb01377\\"", "size": 254243, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:15.523Z", "contentLength": 254243, "httpStatusCode": 200}	3a1104b2-8ce8-4401-b8f1-41196a2bffa5	\N	{}
bfd4942c-e0c0-4396-a362-98688d6aeda6	campuses	mtsu/8	\N	2025-01-26 21:08:16.189087+00	2025-01-26 21:08:16.189087+00	2025-01-26 21:08:16.189087+00	{"eTag": "\\"9691ddc65a7eedbcf7fae25916ce1466\\"", "size": 1170151, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:16.128Z", "contentLength": 1170151, "httpStatusCode": 200}	043bc68c-f296-40c4-8eed-8a08df49dd99	\N	{}
edb0f33d-ca78-4f63-a2bf-0b449c0dbaa7	campuses	mtsu/9	\N	2025-01-26 21:08:16.642978+00	2025-01-26 21:08:16.642978+00	2025-01-26 21:08:16.642978+00	{"eTag": "\\"c16577c41d39c13b677c3467bc63ec92\\"", "size": 133826, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:16.636Z", "contentLength": 133826, "httpStatusCode": 200}	9f85a509-0988-46d7-a6d5-dba52da10fd9	\N	{}
bca17fd0-3087-4669-875e-0e47795d136f	campuses	millersville/0	\N	2025-01-26 21:08:16.952086+00	2025-01-26 21:08:16.952086+00	2025-01-26 21:08:16.952086+00	{"eTag": "\\"bb8f534fbff5ee61a95af9c4740ae043\\"", "size": 199, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:16.949Z", "contentLength": 199, "httpStatusCode": 200}	30a9bda1-27ac-4065-9c54-f905516435e6	\N	{}
b48e1043-b9e6-4540-ab80-e0609065484a	campuses	millersville/1	\N	2025-01-26 21:08:17.17602+00	2025-01-26 21:08:17.17602+00	2025-01-26 21:08:17.17602+00	{"eTag": "\\"bb8f534fbff5ee61a95af9c4740ae043\\"", "size": 199, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:17.169Z", "contentLength": 199, "httpStatusCode": 200}	629701c4-85bf-45ec-a786-deb56c614df9	\N	{}
37ac308a-a4e5-4488-af08-b5fb00946cb7	campuses	millersville/2	\N	2025-01-26 21:08:17.904302+00	2025-01-26 21:08:17.904302+00	2025-01-26 21:08:17.904302+00	{"eTag": "\\"56641abb4d9da7384c7edaaabbd719b7\\"", "size": 915888, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:17.892Z", "contentLength": 915888, "httpStatusCode": 200}	34fcc732-c230-4884-8328-ab38c71aff58	\N	{}
9d13939d-aac4-4af3-b8e0-6941783dbc79	campuses	pba/6	\N	2025-01-26 21:09:53.632476+00	2025-01-26 21:09:53.632476+00	2025-01-26 21:09:53.632476+00	{"eTag": "\\"717e644555897e95c3d823e99cedf0f5\\"", "size": 412711, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:53.624Z", "contentLength": 412711, "httpStatusCode": 200}	272d9d15-000d-4a4c-a6b3-de8bf4d53a46	\N	{}
58c61710-a37c-4916-84b6-69a5618b153d	campuses	millersville/3	\N	2025-01-26 21:08:18.141033+00	2025-01-26 21:08:18.141033+00	2025-01-26 21:08:18.141033+00	{"eTag": "\\"bb8f534fbff5ee61a95af9c4740ae043\\"", "size": 199, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:18.138Z", "contentLength": 199, "httpStatusCode": 200}	cf217885-4dcb-446c-aeb8-bea061efec67	\N	{}
bfbf8115-aeff-4d8d-be07-e9fd4acd32da	campuses	millersville/4	\N	2025-01-26 21:08:18.367749+00	2025-01-26 21:08:18.367749+00	2025-01-26 21:08:18.367749+00	{"eTag": "\\"bb8f534fbff5ee61a95af9c4740ae043\\"", "size": 199, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:18.363Z", "contentLength": 199, "httpStatusCode": 200}	3b5cb77a-e005-4f85-a069-27d91e0b8dc3	\N	{}
ecf6daaa-dbfb-4829-a78b-f2b68b619e3b	campuses	pba/7	\N	2025-01-26 21:09:54.101+00	2025-01-26 21:09:54.101+00	2025-01-26 21:09:54.101+00	{"eTag": "\\"93d7bbd4ec35f5081c7c3f39386ad5e7\\"", "size": 301592, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:54.082Z", "contentLength": 301592, "httpStatusCode": 200}	3bb3e72f-0153-4016-bc7f-d66bfaf0a948	\N	{}
d0adfe7e-5908-48ec-b184-a6baf890ea83	campuses	millersville/5	\N	2025-01-26 21:08:18.625233+00	2025-01-26 21:08:18.625233+00	2025-01-26 21:08:18.625233+00	{"eTag": "\\"bb8f534fbff5ee61a95af9c4740ae043\\"", "size": 199, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:18.622Z", "contentLength": 199, "httpStatusCode": 200}	8d3f4adf-1d55-435b-bc4d-1efd5fe1efe8	\N	{}
ac59c29b-9020-4be2-a784-64d1f1c53b56	campuses	millersville/6	\N	2025-01-26 21:08:18.84071+00	2025-01-26 21:08:18.84071+00	2025-01-26 21:08:18.84071+00	{"eTag": "\\"bb8f534fbff5ee61a95af9c4740ae043\\"", "size": 199, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:18.839Z", "contentLength": 199, "httpStatusCode": 200}	b21628c3-a015-4974-a2c3-272c39249d02	\N	{}
a40befac-220d-4fce-8862-bdae700a6a4e	campuses	pba/8	\N	2025-01-26 21:09:54.566605+00	2025-01-26 21:09:54.566605+00	2025-01-26 21:09:54.566605+00	{"eTag": "\\"58614df7a722a6a8690b39d9e8a84f4e\\"", "size": 282348, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:54.562Z", "contentLength": 282348, "httpStatusCode": 200}	b2cfe9a0-f7bc-494e-8150-744e4f74b380	\N	{}
d13c1d6e-bb22-4606-8b4a-53151337b122	campuses	millersville/7	\N	2025-01-26 21:08:19.39891+00	2025-01-26 21:08:19.39891+00	2025-01-26 21:08:19.39891+00	{"eTag": "\\"8528d83968b29107c5df338f7c18a16b\\"", "size": 386708, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:19.392Z", "contentLength": 386708, "httpStatusCode": 200}	f273ba93-e527-4f0f-be60-d5a5ef0fea87	\N	{}
02e627ff-e334-4cb7-a6ba-d2fea3265373	campuses	millersville/8	\N	2025-01-26 21:08:20.047858+00	2025-01-26 21:08:20.047858+00	2025-01-26 21:08:20.047858+00	{"eTag": "\\"c24ea96cdee87a8e8af440b786ae7ddf\\"", "size": 245991, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:20.039Z", "contentLength": 245991, "httpStatusCode": 200}	a3a2adef-ba7a-4f1c-9c5e-63dfb70e5de8	\N	{}
f5bcdf57-0d4e-4293-88ee-9811c40b2b5e	campuses	pba/9	\N	2025-01-26 21:09:55.075074+00	2025-01-26 21:09:55.075074+00	2025-01-26 21:09:55.075074+00	{"eTag": "\\"ba373cd7735d7f186579f51bb815493e\\"", "size": 189193, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:55.068Z", "contentLength": 189193, "httpStatusCode": 200}	0f7a7491-20a7-4c0c-a870-0a35ea3f2b25	\N	{}
09782a1c-2365-4463-a756-bf962777f2e1	campuses	millersville/9	\N	2025-01-26 21:08:20.286486+00	2025-01-26 21:08:20.286486+00	2025-01-26 21:08:20.286486+00	{"eTag": "\\"bb8f534fbff5ee61a95af9c4740ae043\\"", "size": 199, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:20.280Z", "contentLength": 199, "httpStatusCode": 200}	1796b55d-dcf9-4482-9c4c-a4b318b3eba4	\N	{}
7c683240-68c4-4ed6-a22d-be1daf2881f7	campuses	minotstateu/0	\N	2025-01-26 21:08:20.915069+00	2025-01-26 21:08:20.915069+00	2025-01-26 21:08:20.915069+00	{"eTag": "\\"355d6ee97ee85209b9ae69905efd2b67\\"", "size": 296031, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:20.908Z", "contentLength": 296031, "httpStatusCode": 200}	1fa306f3-dcc8-4621-a762-a0c900587c6f	\N	{}
5515e5e9-3c69-4b3c-9d33-499e4314b606	campuses	minotstateu/1	\N	2025-01-26 21:08:21.447215+00	2025-01-26 21:08:21.447215+00	2025-01-26 21:08:21.447215+00	{"eTag": "\\"a6bdb2791d649924181338bd30f389a4\\"", "size": 346903, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:21.439Z", "contentLength": 346903, "httpStatusCode": 200}	688f8b4e-d7cf-41b5-b3c6-381d14a2cc42	\N	{}
90d7a0a0-1c9d-4bc1-8be8-24c3a9983dd6	campuses	minotstateu/2	\N	2025-01-26 21:08:21.840898+00	2025-01-26 21:08:21.840898+00	2025-01-26 21:08:21.840898+00	{"eTag": "\\"38126bfc0160768f30fbc3e1aa56a3bc\\"", "size": 62470, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:21.837Z", "contentLength": 62470, "httpStatusCode": 200}	7d6d1192-6091-4d44-be49-bbbcc170c534	\N	{}
cf691ec9-46a0-4379-b2cc-3067130102e8	campuses	minotstateu/3	\N	2025-01-26 21:08:22.20446+00	2025-01-26 21:08:22.20446+00	2025-01-26 21:08:22.20446+00	{"eTag": "\\"d99f443fe7c4d048305505d86bcaa142\\"", "size": 30244, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:22.201Z", "contentLength": 30244, "httpStatusCode": 200}	03485b6a-f0c5-4d49-8483-859f3f537d29	\N	{}
115f5bb6-3a93-4fc2-922e-69b696ebd11c	campuses	minotstateu/4	\N	2025-01-26 21:08:22.628555+00	2025-01-26 21:08:22.628555+00	2025-01-26 21:08:22.628555+00	{"eTag": "\\"b9e83a8cf661c3a2568d0229f5e2cb36\\"", "size": 93935, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:22.622Z", "contentLength": 93935, "httpStatusCode": 200}	7bb90696-0894-4371-933d-67deec89f3ad	\N	{}
98e0197b-2488-454c-99bd-d1a27e96eadf	campuses	minotstateu/5	\N	2025-01-26 21:08:23.056909+00	2025-01-26 21:08:23.056909+00	2025-01-26 21:08:23.056909+00	{"eTag": "\\"7b375f7078aa42d3f02273b2d6547b3c\\"", "size": 91724, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:23.052Z", "contentLength": 91724, "httpStatusCode": 200}	7e5ffd35-dd3e-4231-b723-f765385b65bd	\N	{}
1e97dbfe-22dd-4983-83ca-fdd675be8825	campuses	minotstateu/6	\N	2025-01-26 21:08:23.544008+00	2025-01-26 21:08:23.544008+00	2025-01-26 21:08:23.544008+00	{"eTag": "\\"58fc2da98fcd05565b04949d761309d5\\"", "size": 260442, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:23.538Z", "contentLength": 260442, "httpStatusCode": 200}	46cced7d-785b-464c-896d-a99097649951	\N	{}
ca208591-cd3f-43f8-913c-dd320f2c9544	campuses	uca/1	\N	2025-01-26 21:13:53.609772+00	2025-01-26 21:13:53.609772+00	2025-01-26 21:13:53.609772+00	{"eTag": "\\"7d58a27af942ca04786590e933661955\\"", "size": 3979061, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:53.543Z", "contentLength": 3979061, "httpStatusCode": 200}	32f7c7c1-052e-427d-acf8-0387750f3298	\N	{}
985424e1-c74a-404c-9532-7b9b7bfbc78a	campuses	minotstateu/7	\N	2025-01-26 21:08:23.92372+00	2025-01-26 21:08:23.92372+00	2025-01-26 21:08:23.92372+00	{"eTag": "\\"84fb76098f59a9c2ba745e764fc99ab7\\"", "size": 47809, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:23.918Z", "contentLength": 47809, "httpStatusCode": 200}	12df599e-ba43-4792-a574-0d3a9d80c526	\N	{}
05fb3e7f-aa27-480e-bcba-2d4dd6f8437c	campuses	pointloma/0	\N	2025-01-26 21:09:55.553885+00	2025-01-26 21:09:55.553885+00	2025-01-26 21:09:55.553885+00	{"eTag": "\\"e908a0155faa0a743d67743ee4f3f480\\"", "size": 102794, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:55.548Z", "contentLength": 102794, "httpStatusCode": 200}	753ce1e8-cfb9-4b3f-9d22-83b3eb67165c	\N	{}
aa01434f-b84b-44df-a66c-2a521c3f7038	campuses	minotstateu/8	\N	2025-01-26 21:08:24.431103+00	2025-01-26 21:08:24.431103+00	2025-01-26 21:08:24.431103+00	{"eTag": "\\"df1ee2788ab94e3367ce398d99c0547a\\"", "size": 274561, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:24.419Z", "contentLength": 274561, "httpStatusCode": 200}	d99508d3-8ecf-4833-a3f4-1315bd665d06	\N	{}
f757254b-2e81-4e5b-b72a-cf4791d6acc1	campuses	minotstateu/9	\N	2025-01-26 21:08:25.363517+00	2025-01-26 21:08:25.363517+00	2025-01-26 21:08:25.363517+00	{"eTag": "\\"41ab528243ebac6e0f19513ead24c814\\"", "size": 5411141, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:25.319Z", "contentLength": 5411141, "httpStatusCode": 200}	30cc30b7-8019-4c96-b05f-f1a6abedbb6e	\N	{}
19758c94-9674-43a4-8c99-c12d30399c32	campuses	pointloma/1	\N	2025-01-26 21:09:55.871355+00	2025-01-26 21:09:55.871355+00	2025-01-26 21:09:55.871355+00	{"eTag": "\\"fe88aa02b6f945ba879112c1fc9cbb02\\"", "size": 33082, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:55.861Z", "contentLength": 33082, "httpStatusCode": 200}	349a0efe-8e09-4d76-b0a2-b9836903e05a	\N	{}
fc7d18e7-7726-499c-a5ce-c8e0bcbea382	campuses	monmouth/0	\N	2025-01-26 21:08:26.013613+00	2025-01-26 21:08:26.013613+00	2025-01-26 21:08:26.013613+00	{"eTag": "\\"b79ac89554f6b6c4bc506ffe5a98066f\\"", "size": 174824, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:26.001Z", "contentLength": 174824, "httpStatusCode": 200}	55e96a54-473f-4c83-bbcc-54f39d12d567	\N	{}
54958df1-c1bb-48cc-8069-4646882cbd43	campuses	monmouth/1	\N	2025-01-26 21:08:26.620564+00	2025-01-26 21:08:26.620564+00	2025-01-26 21:08:26.620564+00	{"eTag": "\\"1b32fa5e78d12e1f5fe826363a6c83c7\\"", "size": 194100, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:26.611Z", "contentLength": 194100, "httpStatusCode": 200}	52fa09a9-5f6d-4cdc-9c28-3914bdade07f	\N	{}
c7df98c8-67b9-4b96-aa68-4965bc23813a	campuses	pointloma/2	\N	2025-01-26 21:09:56.811767+00	2025-01-26 21:09:56.811767+00	2025-01-26 21:09:56.811767+00	{"eTag": "\\"0026910de3aa01163a2668189a4c01af\\"", "size": 488031, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:56.805Z", "contentLength": 488031, "httpStatusCode": 200}	84e97f48-85aa-45db-9a47-0ae8b91df10c	\N	{}
4b84a0ac-f416-404c-bbd3-1b1eb07a87ee	campuses	monmouth/2	\N	2025-01-26 21:08:27.168722+00	2025-01-26 21:08:27.168722+00	2025-01-26 21:08:27.168722+00	{"eTag": "\\"1de514e3f10a0878f6b31496636f8dcf\\"", "size": 529087, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:27.162Z", "contentLength": 529087, "httpStatusCode": 200}	3c6df9f5-c5c3-47e5-8581-08790fd2b1ab	\N	{}
ef797ac4-d33e-4f1b-8e10-e3913fc3d031	campuses	monmouth/3	\N	2025-01-26 21:08:27.766184+00	2025-01-26 21:08:27.766184+00	2025-01-26 21:08:27.766184+00	{"eTag": "\\"6c4fcb5e14bbc0ac3b1933a0f30e13e0\\"", "size": 335628, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:27.758Z", "contentLength": 335628, "httpStatusCode": 200}	0066777f-3ebd-436c-821a-4a6ba7680a7e	\N	{}
9aea8eee-6848-42f5-af5d-210aa1f5a9ea	campuses	monmouth/4	\N	2025-01-26 21:08:28.23315+00	2025-01-26 21:08:28.23315+00	2025-01-26 21:08:28.23315+00	{"eTag": "\\"9fe3cb2b7313dc79bb477bc8fde184a7\\"", "size": 146, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:28.228Z", "contentLength": 146, "httpStatusCode": 200}	df7a6160-6182-4e46-ace7-c8abcb7895a0	\N	{}
50c7d72d-4935-4856-a6dd-fd1d8b0efc19	campuses	monmouth/5	\N	2025-01-26 21:08:28.946368+00	2025-01-26 21:08:28.946368+00	2025-01-26 21:08:28.946368+00	{"eTag": "\\"0f3f99b00e98dc4b4c6f2f1456d01d10\\"", "size": 725555, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:28.891Z", "contentLength": 725555, "httpStatusCode": 200}	e97c1681-9b25-437c-8721-5d01b589fe1f	\N	{}
fcc3f133-82c1-4aed-94c0-edec4fca6685	campuses	monmouth/6	\N	2025-01-26 21:08:29.435739+00	2025-01-26 21:08:29.435739+00	2025-01-26 21:08:29.435739+00	{"eTag": "\\"6fe8109a09eca1905985a930dbd1426c\\"", "size": 14681, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:29.432Z", "contentLength": 14681, "httpStatusCode": 200}	0bcad588-0ff8-4259-b79a-ca3740226c0f	\N	{}
480c56d1-b8b9-4882-a4da-676f3e719467	campuses	monmouth/7	\N	2025-01-26 21:08:30.498264+00	2025-01-26 21:08:30.498264+00	2025-01-26 21:08:30.498264+00	{"eTag": "\\"f23ea8f7f3e9bc586677ec41e357f5f8\\"", "size": 686518, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:30.353Z", "contentLength": 686518, "httpStatusCode": 200}	adb715e7-33b5-4764-b90d-8758075f89fb	\N	{}
0a53bbdf-8706-4530-ba1c-4e32e5b3037a	campuses	monmouth/8	\N	2025-01-26 21:08:31.253748+00	2025-01-26 21:08:31.253748+00	2025-01-26 21:08:31.253748+00	{"eTag": "\\"f7184d1fc64f0cb488d13e72a2600d2b\\"", "size": 605223, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:31.248Z", "contentLength": 605223, "httpStatusCode": 200}	8d7530e3-d4ba-49e7-b0cb-88f69827bf9b	\N	{}
1474299b-8dc9-43e8-a6b6-5c6f54ba463d	campuses	monmouth/9	\N	2025-01-26 21:08:31.806065+00	2025-01-26 21:08:31.806065+00	2025-01-26 21:08:31.806065+00	{"eTag": "\\"51cba8449d217151389b31a146b1b934\\"", "size": 459340, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:31.798Z", "contentLength": 459340, "httpStatusCode": 200}	059a97de-dda2-4005-a230-6bfaf681685a	\N	{}
b20d484d-29b1-4c41-a9f0-35bdb264f17e	campuses	mtholyoke/0	\N	2025-01-26 21:08:32.408062+00	2025-01-26 21:08:32.408062+00	2025-01-26 21:08:32.408062+00	{"eTag": "\\"662a3b06de68304a5cf5a5616c5688cb\\"", "size": 219174, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:32.396Z", "contentLength": 219174, "httpStatusCode": 200}	88798a58-3f6b-4371-abe4-e7a3b23cefa1	\N	{}
524971e1-b9f0-43db-80f3-55e1113c4a2b	campuses	pointloma/3	\N	2025-01-26 21:09:57.499223+00	2025-01-26 21:09:57.499223+00	2025-01-26 21:09:57.499223+00	{"eTag": "\\"7c286ef8fac30af8bd3078da83415271\\"", "size": 333605, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:57.490Z", "contentLength": 333605, "httpStatusCode": 200}	46fec996-c154-458d-9708-cc8d5a042f06	\N	{}
ef5daa48-dae6-4d18-8d85-1ce677cc6f2a	campuses	mtholyoke/1	\N	2025-01-26 21:08:33.404657+00	2025-01-26 21:08:33.404657+00	2025-01-26 21:08:33.404657+00	{"eTag": "\\"cfe1db67adb0fdebc22f52faf1ef6dba\\"", "size": 4958214, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:33.349Z", "contentLength": 4958214, "httpStatusCode": 200}	30180283-f759-4c70-bf6a-eb2b2f102294	\N	{}
40b5b912-bb32-4028-8991-2df89112d34b	campuses	uca/2	\N	2025-01-26 21:13:54.088067+00	2025-01-26 21:13:54.088067+00	2025-01-26 21:13:54.088067+00	{"eTag": "\\"3f4bdccc5631f6bef5573764b0695d4f\\"", "size": 13657, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:54.084Z", "contentLength": 13657, "httpStatusCode": 200}	5195a3ef-225a-4350-ade5-942323cf25bd	\N	{}
fc8ca0fe-ac09-4fe8-9c59-9d2d9b9bf579	campuses	mtholyoke/2	\N	2025-01-26 21:08:34.080186+00	2025-01-26 21:08:34.080186+00	2025-01-26 21:08:34.080186+00	{"eTag": "\\"8e0904257816b05d59682a465aa4fc27\\"", "size": 402898, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:34.073Z", "contentLength": 402898, "httpStatusCode": 200}	8d37d669-a148-4fc0-a769-999ae502a64a	\N	{}
13832ae0-a182-4644-b804-953a7cd8192b	campuses	pointloma/4	\N	2025-01-26 21:09:58.560698+00	2025-01-26 21:09:58.560698+00	2025-01-26 21:09:58.560698+00	{"eTag": "\\"eeb161094455b3ea27e736ed6af1ad37\\"", "size": 489516, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:58.493Z", "contentLength": 489516, "httpStatusCode": 200}	f914ab8a-acc0-4f34-a73c-b9550b5cd1d3	\N	{}
c1fdcf69-a40e-4a2e-a09b-e7ed6730174a	campuses	mtholyoke/3	\N	2025-01-26 21:08:34.548074+00	2025-01-26 21:08:34.548074+00	2025-01-26 21:08:34.548074+00	{"eTag": "\\"883bffaba6f1f0d538bc891859dae4eb\\"", "size": 148409, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:34.543Z", "contentLength": 148409, "httpStatusCode": 200}	8cb547c8-fbde-4fdf-9143-401b679a7c49	\N	{}
d3713031-280f-43d3-96da-5c932ac38e5f	campuses	mtholyoke/4	\N	2025-01-26 21:08:34.957608+00	2025-01-26 21:08:34.957608+00	2025-01-26 21:08:34.957608+00	{"eTag": "\\"34250cf07678a91196116cfb140d3565\\"", "size": 146822, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:34.933Z", "contentLength": 146822, "httpStatusCode": 200}	8fcd7508-a73e-432c-8ed4-cbdb35afb304	\N	{}
cc21745d-73ba-4802-a2ef-c8cb154c30ca	campuses	pointloma/5	\N	2025-01-26 21:09:59.287089+00	2025-01-26 21:09:59.287089+00	2025-01-26 21:09:59.287089+00	{"eTag": "\\"fb0cbb5e648e5bc40cb731c3bf070f3b\\"", "size": 153237, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:59.281Z", "contentLength": 153237, "httpStatusCode": 200}	e78e22a1-b447-4437-8e25-4f4ceba143a6	\N	{}
77cd290c-359e-4102-8626-7a7b82585263	campuses	mtholyoke/5	\N	2025-01-26 21:08:35.283308+00	2025-01-26 21:08:35.283308+00	2025-01-26 21:08:35.283308+00	{"eTag": "\\"46b7196f596e57dd731a2e7ce8674562\\"", "size": 386, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:35.280Z", "contentLength": 386, "httpStatusCode": 200}	62b900d9-5930-4f49-afd6-cb20a7a7fb92	\N	{}
cc828468-6b52-4d5f-aee5-0fb00b9d701a	campuses	mtholyoke/6	\N	2025-01-26 21:08:35.769728+00	2025-01-26 21:08:35.769728+00	2025-01-26 21:08:35.769728+00	{"eTag": "\\"dd3748d5372ab1c71c12d0440492a1bd\\"", "size": 530360, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:35.757Z", "contentLength": 530360, "httpStatusCode": 200}	d8dfd522-d614-45ab-9abc-8744220a85c0	\N	{}
fd035725-0e63-4479-b1f0-c79e8a0519a9	campuses	mtholyoke/7	\N	2025-01-26 21:08:36.404268+00	2025-01-26 21:08:36.404268+00	2025-01-26 21:08:36.404268+00	{"eTag": "\\"31423605f744fe0b481ec7532a287fd8\\"", "size": 63238, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:36.393Z", "contentLength": 63238, "httpStatusCode": 200}	6573208a-69e2-48a7-8a09-e010054fc0b3	\N	{}
c1b5a07c-bcd2-4813-8fe0-c3d7d16d5b3c	campuses	mtholyoke/8	\N	2025-01-26 21:08:36.673713+00	2025-01-26 21:08:36.673713+00	2025-01-26 21:08:36.673713+00	{"eTag": "\\"34593b2037523199fb95f5453db61648\\"", "size": 386, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:36.669Z", "contentLength": 386, "httpStatusCode": 200}	7d1530c0-1862-4136-883c-1bb49ae9eaf1	\N	{}
53cbdf71-f1fd-48c5-8f31-9c40a04d9613	campuses	mtholyoke/9	\N	2025-01-26 21:08:37.374657+00	2025-01-26 21:08:37.374657+00	2025-01-26 21:08:37.374657+00	{"eTag": "\\"6f9ec228b9660bf07529c9d1077fd92c\\"", "size": 790377, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:37.332Z", "contentLength": 790377, "httpStatusCode": 200}	8a18f1a8-7cef-4e10-b9a9-b89344ae1534	\N	{}
275bc9f9-f1f5-473e-9515-cdfec12e634e	campuses	nl/0	\N	2025-01-26 21:08:38.058388+00	2025-01-26 21:08:38.058388+00	2025-01-26 21:08:38.058388+00	{"eTag": "\\"85bef38cc9ab95512e59ab81da771c03\\"", "size": 441623, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:38.046Z", "contentLength": 441623, "httpStatusCode": 200}	b26a4a9f-b4d2-4ffd-a24f-1df7cb215c20	\N	{}
a118b782-3bf3-4aee-b6bb-1a9d800cc650	campuses	nl/1	\N	2025-01-26 21:08:38.876822+00	2025-01-26 21:08:38.876822+00	2025-01-26 21:08:38.876822+00	{"eTag": "\\"da425377c0b6012679e84bbb2b7266da\\"", "size": 976840, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:38.801Z", "contentLength": 976840, "httpStatusCode": 200}	2d5466fd-2d43-4b1b-a8b0-0cea37436bf7	\N	{}
2a2234da-7af9-4ade-9457-8c2701515a6c	campuses	nl/2	\N	2025-01-26 21:08:39.712058+00	2025-01-26 21:08:39.712058+00	2025-01-26 21:08:39.712058+00	{"eTag": "\\"843a191a87a822fa4388433a8f2ea726\\"", "size": 999889, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:39.696Z", "contentLength": 999889, "httpStatusCode": 200}	d76b4f7a-45e9-48f6-a446-1334fa38d771	\N	{}
fce4d3fa-bc9b-40d0-b134-d4942ec474b3	campuses	nl/3	\N	2025-01-26 21:08:40.306325+00	2025-01-26 21:08:40.306325+00	2025-01-26 21:08:40.306325+00	{"eTag": "\\"e57ea8bf86f67c8222b6df21784367ea\\"", "size": 318415, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:40.294Z", "contentLength": 318415, "httpStatusCode": 200}	076226de-e423-4990-aae3-e9824a4eb295	\N	{}
9d489431-dc29-44e0-bdf6-61a9469f276d	campuses	nl/4	\N	2025-01-26 21:08:40.711322+00	2025-01-26 21:08:40.711322+00	2025-01-26 21:08:40.711322+00	{"eTag": "\\"8363b0fba4797249ed765a8ce1327d30\\"", "size": 78605, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:40.699Z", "contentLength": 78605, "httpStatusCode": 200}	4ecae3f2-795f-4825-88e5-ab97dc179e78	\N	{}
6d35993c-bcdc-43bd-b771-f32d863db46a	campuses	pomona/0	\N	2025-01-26 21:10:00.043454+00	2025-01-26 21:10:00.043454+00	2025-01-26 21:10:00.043454+00	{"eTag": "\\"6ab1b906ad58dbfe1bbadb502c68926b\\"", "size": 495978, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:00.030Z", "contentLength": 495978, "httpStatusCode": 200}	6d507e6a-4d6a-4a43-9c84-150524bb53cb	\N	{}
4c55478c-1639-4984-a075-40411bbadfd9	campuses	nl/5	\N	2025-01-26 21:08:41.334313+00	2025-01-26 21:08:41.334313+00	2025-01-26 21:08:41.334313+00	{"eTag": "\\"d6725661c77514039e0daa31d939f683\\"", "size": 561104, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:41.327Z", "contentLength": 561104, "httpStatusCode": 200}	2b7af151-2491-4eaf-b53a-90ff37bb7b19	\N	{}
ee7566ef-60f2-4dc4-9be8-4fee7206a193	campuses	uca/3	\N	2025-01-26 21:13:54.745074+00	2025-01-26 21:13:54.745074+00	2025-01-26 21:13:54.745074+00	{"eTag": "\\"62d73f2c2006ce3c141f07a772c10dbb\\"", "size": 36444, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:54.743Z", "contentLength": 36444, "httpStatusCode": 200}	abea0f17-53b6-446b-9ed0-4bfa734f8364	\N	{}
3afe07da-44d1-4ff4-bfb3-62367b7e8fb7	campuses	nl/6	\N	2025-01-26 21:08:41.833222+00	2025-01-26 21:08:41.833222+00	2025-01-26 21:08:41.833222+00	{"eTag": "\\"bab8b2d48edd57f733eb3848b35a1220\\"", "size": 373651, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:41.828Z", "contentLength": 373651, "httpStatusCode": 200}	a14680f8-1d8d-4b7c-b489-8eccbb499f86	\N	{}
82d80d8b-c98d-4673-889d-3fdc5ab77cef	campuses	pomona/1	\N	2025-01-26 21:10:00.686472+00	2025-01-26 21:10:00.686472+00	2025-01-26 21:10:00.686472+00	{"eTag": "\\"19490e5e64592b641b128b29b272ff0d\\"", "size": 941722, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:00.674Z", "contentLength": 941722, "httpStatusCode": 200}	effddab2-e2e6-455e-9713-6987dbd0825b	\N	{}
09f6e523-a45f-4d01-938e-939009632ea3	campuses	nl/7	\N	2025-01-26 21:08:42.36677+00	2025-01-26 21:08:42.36677+00	2025-01-26 21:08:42.36677+00	{"eTag": "\\"cb769561a0ba856499bb10eef562d4f7\\"", "size": 355684, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:42.359Z", "contentLength": 355684, "httpStatusCode": 200}	b2f96bf6-e0e2-443a-b907-9d6ebcac0cb2	\N	{}
ad5db105-d7eb-4b42-8c8c-f54bb1f3f0b9	campuses	uww/6	\N	2025-01-26 21:17:46.601398+00	2025-01-26 21:17:46.601398+00	2025-01-26 21:17:46.601398+00	{"eTag": "\\"e4a849e78f201f69ceffb263028ec013\\"", "size": 712817, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:46.591Z", "contentLength": 712817, "httpStatusCode": 200}	a436656f-fe6d-43fb-ae75-02395749aa2c	\N	{}
f7bcf83a-c5d9-4298-a034-8de7d0e84172	campuses	nl/8	\N	2025-01-26 21:08:42.816471+00	2025-01-26 21:08:42.816471+00	2025-01-26 21:08:42.816471+00	{"eTag": "\\"332068f00c2840088b3574485e88adb8\\"", "size": 125558, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:42.811Z", "contentLength": 125558, "httpStatusCode": 200}	55764ebb-df24-4efa-a35a-5d6f159e7a97	\N	{}
4178bc8c-e3cb-4f91-9f39-9ddd52bf7039	campuses	pomona/2	\N	2025-01-26 21:10:01.025249+00	2025-01-26 21:10:01.025249+00	2025-01-26 21:10:01.025249+00	{"eTag": "\\"6bc4e6932a94d2d23171e91af43ed227\\"", "size": 86127, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:01.019Z", "contentLength": 86127, "httpStatusCode": 200}	15f5df04-95cc-41c7-a8c6-2b8a3de1b1eb	\N	{}
41e5d9a3-b0ed-4b70-a401-59fe5a96f052	campuses	nl/9	\N	2025-01-26 21:08:43.207221+00	2025-01-26 21:08:43.207221+00	2025-01-26 21:08:43.207221+00	{"eTag": "\\"3e993e051180b7fdf81bc44682036963\\"", "size": 89519, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:43.198Z", "contentLength": 89519, "httpStatusCode": 200}	1c8d8f43-c6a2-43bc-a841-12feed21346f	\N	{}
966a5e85-7fb8-4cbb-854c-c22b6995fbb6	campuses	uca/4	\N	2025-01-26 21:13:55.163798+00	2025-01-26 21:13:55.163798+00	2025-01-26 21:13:55.163798+00	{"eTag": "\\"7e619eb3eefe157b75b1493548685950\\"", "size": 11303, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:55.161Z", "contentLength": 11303, "httpStatusCode": 200}	61ff993d-c0e4-49f3-94c2-9179daf22b67	\N	{}
cf014699-ccd2-4e4b-8491-ac9a4aaba53a	campuses	nmsu/0	\N	2025-01-26 21:08:43.698152+00	2025-01-26 21:08:43.698152+00	2025-01-26 21:08:43.698152+00	{"eTag": "\\"b88432b85e82eff7764e326bf9d3fcbe\\"", "size": 176467, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:43.693Z", "contentLength": 176467, "httpStatusCode": 200}	e09eb0b5-f4da-410a-91f6-e345dbff2517	\N	{}
400b135b-0611-40c9-be12-397a5eef8cdb	campuses	pomona/3	\N	2025-01-26 21:10:01.469014+00	2025-01-26 21:10:01.469014+00	2025-01-26 21:10:01.469014+00	{"eTag": "\\"7a13c327a1ce0786f6f7a49ade11a1f8\\"", "size": 293789, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:01.464Z", "contentLength": 293789, "httpStatusCode": 200}	23b11946-e9fa-4c05-93bf-685b9af648db	\N	{}
e50700d3-e0f6-479b-aaa9-209a7f79b25a	campuses	nmsu/1	\N	2025-01-26 21:08:44.330935+00	2025-01-26 21:08:44.330935+00	2025-01-26 21:08:44.330935+00	{"eTag": "\\"78ed9bb22d3f93489990b0f86b96afec\\"", "size": 798063, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:44.319Z", "contentLength": 798063, "httpStatusCode": 200}	744ea290-1ee0-4dd0-a315-6fec7a5fecff	\N	{}
cc3fbbbb-ed18-4fa6-bb86-3af44a9ea9be	campuses	nmsu/2	\N	2025-01-26 21:08:44.778844+00	2025-01-26 21:08:44.778844+00	2025-01-26 21:08:44.778844+00	{"eTag": "\\"2831d83aaf907fbce7b21c45837a2086\\"", "size": 394133, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:44.767Z", "contentLength": 394133, "httpStatusCode": 200}	3a0c9ffe-e750-4d64-80c9-0629a732fe25	\N	{}
df27b1af-9189-4580-b04d-6d581c1ac160	campuses	pomona/4	\N	2025-01-26 21:10:02.986271+00	2025-01-26 21:10:02.986271+00	2025-01-26 21:10:02.986271+00	{"eTag": "\\"b5e0847671cc5c0fc8589f9188047d25\\"", "size": 148238, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:02.978Z", "contentLength": 148238, "httpStatusCode": 200}	24451ea1-be65-4a0f-b890-9c6f86c59ca6	\N	{}
9b0925b9-371b-4fde-83a5-7fbed5eb0ec4	campuses	pomona/5	\N	2025-01-26 21:10:05.322764+00	2025-01-26 21:10:05.322764+00	2025-01-26 21:10:05.322764+00	{"eTag": "\\"6c541f99ad789cd15a530277fec14e70\\"", "size": 1074241, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:05.308Z", "contentLength": 1074241, "httpStatusCode": 200}	0fe98863-31e8-4117-9955-8bcc2636e825	\N	{}
62dc8d15-397e-4064-8f9c-37938ae8b556	campuses	pomona/6	\N	2025-01-26 21:10:05.816053+00	2025-01-26 21:10:05.816053+00	2025-01-26 21:10:05.816053+00	{"eTag": "\\"d64458c3d5e68aeb146985bce72f35be\\"", "size": 528542, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:05.799Z", "contentLength": 528542, "httpStatusCode": 200}	b7ec1a57-a624-4488-bbf2-b4eafce3f4f9	\N	{}
d25b75d9-181e-4bc9-bf63-300ff52fbe7f	campuses	nmsu/3	\N	2025-01-26 21:08:46.553842+00	2025-01-26 21:08:46.553842+00	2025-01-26 21:08:46.553842+00	{"eTag": "\\"0a64009e4087c15cd8f0df43d63b4c3f\\"", "size": 812706, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:46.539Z", "contentLength": 812706, "httpStatusCode": 200}	93d6c257-b8f6-4741-a03d-52231868720d	\N	{}
fd938771-7846-481e-a6a5-43f856e086a4	campuses	pomona/7	\N	2025-01-26 21:10:06.570138+00	2025-01-26 21:10:06.570138+00	2025-01-26 21:10:06.570138+00	{"eTag": "\\"fb7ebde4cd7c07bf6aa8725accd41a90\\"", "size": 143740, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:06.563Z", "contentLength": 143740, "httpStatusCode": 200}	4a201cbe-932a-4bdd-b030-faf80eae649a	\N	{}
081f0564-da54-4503-93fa-a1e4a28d1f94	campuses	nmsu/4	\N	2025-01-26 21:08:48.291434+00	2025-01-26 21:08:48.291434+00	2025-01-26 21:08:48.291434+00	{"eTag": "\\"1c457966ef6b427ca23658063001a494\\"", "size": 1510744, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:48.229Z", "contentLength": 1510744, "httpStatusCode": 200}	edf85ec2-d3ee-4037-83a6-66ce660cf91f	\N	{}
33a204a8-a37d-4641-8b5d-98632ebafb0e	campuses	uca/5	\N	2025-01-26 21:13:56.258729+00	2025-01-26 21:13:56.258729+00	2025-01-26 21:13:56.258729+00	{"eTag": "\\"685c5c02a9c80058c899f09cd0c26f74\\"", "size": 359590, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:56.253Z", "contentLength": 359590, "httpStatusCode": 200}	0d7c19af-3d14-4d08-8f3c-4697cc1f4418	\N	{}
37d8e740-a3e6-4e70-9c41-9dc422488a6d	campuses	nmsu/5	\N	2025-01-26 21:08:48.744655+00	2025-01-26 21:08:48.744655+00	2025-01-26 21:08:48.744655+00	{"eTag": "\\"4cf43298c9135f9904d145e651e9060c\\"", "size": 153096, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:48.734Z", "contentLength": 153096, "httpStatusCode": 200}	66060e77-a438-407a-98d7-7259faa5f6c6	\N	{}
311fe377-a18d-4257-9542-4d3709fada10	campuses	pomona/8	\N	2025-01-26 21:10:07.474236+00	2025-01-26 21:10:07.474236+00	2025-01-26 21:10:07.474236+00	{"eTag": "\\"f23b2cd66ded9fc0852887f3a5818803\\"", "size": 282514, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:07.469Z", "contentLength": 282514, "httpStatusCode": 200}	bdce05cc-a03b-4b78-ab04-df09b9c655b7	\N	{}
81b28172-2560-445f-9ee6-6a6a04cb7052	campuses	nmsu/6	\N	2025-01-26 21:08:49.33391+00	2025-01-26 21:08:49.33391+00	2025-01-26 21:08:49.33391+00	{"eTag": "\\"bc72b2a89d7ac89ec5f942c7caadc5a9\\"", "size": 217271, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:49.329Z", "contentLength": 217271, "httpStatusCode": 200}	664bd6fc-ef97-4e3e-932a-7515a96329dd	\N	{}
d0f67dc5-6725-4c07-b2bd-09fb419962f1	campuses	nmsu/7	\N	2025-01-26 21:08:49.789229+00	2025-01-26 21:08:49.789229+00	2025-01-26 21:08:49.789229+00	{"eTag": "\\"3511d040bab1056381a33f85d044d35d\\"", "size": 307895, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:49.783Z", "contentLength": 307895, "httpStatusCode": 200}	59c55eae-6b5e-4ed7-ba31-796cb71dfcad	\N	{}
7fea2b7d-f526-48ab-8c58-0bb304c87d92	campuses	pomona/9	\N	2025-01-26 21:10:07.762639+00	2025-01-26 21:10:07.762639+00	2025-01-26 21:10:07.762639+00	{"eTag": "\\"7110fde42f788daa6f98051f2deb26bf\\"", "size": 37321, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:07.759Z", "contentLength": 37321, "httpStatusCode": 200}	3f962b09-4acd-4a7a-a43f-551dbcf93a0a	\N	{}
f0b07efa-e554-45b2-8791-d55ccf377fa0	campuses	nmsu/8	\N	2025-01-26 21:08:50.251051+00	2025-01-26 21:08:50.251051+00	2025-01-26 21:08:50.251051+00	{"eTag": "\\"64290b13878d774d0cfc1ee3ea71464d\\"", "size": 310672, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:50.243Z", "contentLength": 310672, "httpStatusCode": 200}	a50cd309-3301-43a5-9130-92b5216b37fb	\N	{}
9128cb44-d8fe-4949-98be-84095c7978cc	campuses	nmsu/9	\N	2025-01-26 21:08:50.962775+00	2025-01-26 21:08:50.962775+00	2025-01-26 21:08:50.962775+00	{"eTag": "\\"9ba35039df841be0d277bf684b1ef9d1\\"", "size": 171525, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:50.946Z", "contentLength": 171525, "httpStatusCode": 200}	73aa633d-175b-400a-a348-025bd7d68de3	\N	{}
a293a3be-f033-4103-863e-c62eb8971533	campuses	nyit/0	\N	2025-01-26 21:08:51.215176+00	2025-01-26 21:08:51.215176+00	2025-01-26 21:08:51.215176+00	{"eTag": "\\"dbacfd4398e7a52fe673ef30c251ba99\\"", "size": 386, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:51.211Z", "contentLength": 386, "httpStatusCode": 200}	745b290e-060a-41af-a132-e9be72da5c99	\N	{}
f33d8405-d14b-48f1-8a3f-f2e07cd6dc23	campuses	nyit/1	\N	2025-01-26 21:08:51.708825+00	2025-01-26 21:08:51.708825+00	2025-01-26 21:08:51.708825+00	{"eTag": "\\"deb0dc8b27c65646a3cb86dffc056b15\\"", "size": 53509, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:51.704Z", "contentLength": 53509, "httpStatusCode": 200}	6aa093d8-312f-48d9-80c7-f076c41801ab	\N	{}
9ef09791-3595-4aac-8e6e-655d73ace268	campuses	nyit/2	\N	2025-01-26 21:08:52.85999+00	2025-01-26 21:08:52.85999+00	2025-01-26 21:08:52.85999+00	{"eTag": "\\"4ec72285a71a1430a45ea299e0e39ab1\\"", "size": 262117, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:52.852Z", "contentLength": 262117, "httpStatusCode": 200}	a8531273-fd97-4dc7-9f7c-6e28e3ac14b3	\N	{}
054df47e-2ed8-4485-90cc-521cdf0a4e0c	campuses	nyit/3	\N	2025-01-26 21:08:53.323153+00	2025-01-26 21:08:53.323153+00	2025-01-26 21:08:53.323153+00	{"eTag": "\\"33c2bc036d37a1855969ae43e3023902\\"", "size": 63664, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:53.315Z", "contentLength": 63664, "httpStatusCode": 200}	bdde37dd-21f0-48db-b1d6-d572ffce159a	\N	{}
505b7971-3124-4cda-8078-c5a37b80fd2f	campuses	nyit/4	\N	2025-01-26 21:08:53.978761+00	2025-01-26 21:08:53.978761+00	2025-01-26 21:08:53.978761+00	{"eTag": "\\"d16b4b134ad905aaf626909b9f8026a5\\"", "size": 288771, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:53.967Z", "contentLength": 288771, "httpStatusCode": 200}	ce0a6eef-d8e9-4cb2-b2ec-51716a5a10de	\N	{}
102165e8-7dc0-443b-904f-3b49e4e0fbf4	campuses	nyit/5	\N	2025-01-26 21:08:55.095994+00	2025-01-26 21:08:55.095994+00	2025-01-26 21:08:55.095994+00	{"eTag": "\\"0e431e5074229449c18583a0d193e4f6\\"", "size": 146082, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:55.067Z", "contentLength": 146082, "httpStatusCode": 200}	27fac444-db21-4c97-bab1-4a76740e41d3	\N	{}
267ea2ce-ac81-4f29-bc96-60a3b1c90b24	campuses	nyit/6	\N	2025-01-26 21:08:56.142764+00	2025-01-26 21:08:56.142764+00	2025-01-26 21:08:56.142764+00	{"eTag": "\\"8f500a1296cf1785d77718debd84f799\\"", "size": 248820, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:56.138Z", "contentLength": 248820, "httpStatusCode": 200}	174eaaa5-9b9c-4a45-9d51-eda85e2c531f	\N	{}
cc34a5c9-8956-4e45-a53b-1a916d3aa95c	campuses	nyit/7	\N	2025-01-26 21:08:56.477532+00	2025-01-26 21:08:56.477532+00	2025-01-26 21:08:56.477532+00	{"eTag": "\\"908376b66343e1c7e36f4674ac8b8f09\\"", "size": 73436, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:56.474Z", "contentLength": 73436, "httpStatusCode": 200}	35f8b054-b9cc-4a98-886d-1c2f27c0af96	\N	{}
a1bce42e-cbb4-4831-b5f3-835eaa8ed8e5	campuses	nyit/8	\N	2025-01-26 21:08:57.211583+00	2025-01-26 21:08:57.211583+00	2025-01-26 21:08:57.211583+00	{"eTag": "\\"21807479c59f1d72c736ef61fb84efea\\"", "size": 243978, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:57.206Z", "contentLength": 243978, "httpStatusCode": 200}	73007d82-e0f8-40a9-999b-b272f86f1d2c	\N	{}
bcf1022b-7de5-4e9c-8aec-61aeb89f3ad5	campuses	researchcollege/0	\N	2025-01-26 21:10:08.256955+00	2025-01-26 21:10:08.256955+00	2025-01-26 21:10:08.256955+00	{"eTag": "\\"5eac0d8c38c607e8d43b2ff4aab919a2\\"", "size": 16072, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:08.253Z", "contentLength": 16072, "httpStatusCode": 200}	7c359bc9-05a0-427c-9332-c762190fb3e9	\N	{}
0a2af1c2-5ff2-43fe-a26f-8cf5208319dc	campuses	nyit/9	\N	2025-01-26 21:08:58.4696+00	2025-01-26 21:08:58.4696+00	2025-01-26 21:08:58.4696+00	{"eTag": "\\"ebbd7cb39e78ec01e97482c386491c40\\"", "size": 375347, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:58.453Z", "contentLength": 375347, "httpStatusCode": 200}	354f988b-0e6f-45b2-9d8e-9404ac778c8f	\N	{}
f9749117-bc61-4283-a38d-316a73aa6f61	campuses	uca/6	\N	2025-01-26 21:13:56.803923+00	2025-01-26 21:13:56.803923+00	2025-01-26 21:13:56.803923+00	{"eTag": "\\"a4bac12be6c6461f972d0fa0c9d61360\\"", "size": 27338, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:56.790Z", "contentLength": 27338, "httpStatusCode": 200}	447326cf-9381-4b1b-9f50-e07dca03d408	\N	{}
6ab5b38b-9728-4d2b-86be-7a2290064baf	campuses	newmanu/0	\N	2025-01-26 21:08:59.497293+00	2025-01-26 21:08:59.497293+00	2025-01-26 21:08:59.497293+00	{"eTag": "\\"5f8c7b903130c45d8956b5958f690370\\"", "size": 179370, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:08:59.469Z", "contentLength": 179370, "httpStatusCode": 200}	930f71e0-7a0f-4950-925c-34f068ff7972	\N	{}
d073fcee-cf38-4d7d-9f6c-452aa04be017	campuses	researchcollege/1	\N	2025-01-26 21:10:08.612166+00	2025-01-26 21:10:08.612166+00	2025-01-26 21:10:08.612166+00	{"eTag": "\\"077434589a5bb4b5c621079b2ad56c61\\"", "size": 12763, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:08.608Z", "contentLength": 12763, "httpStatusCode": 200}	d6f52d7a-c4ba-4bca-9615-472391c954ac	\N	{}
a1434405-49ef-468a-8f20-93bb5c869194	campuses	newmanu/1	\N	2025-01-26 21:09:00.22134+00	2025-01-26 21:09:00.22134+00	2025-01-26 21:09:00.22134+00	{"eTag": "\\"1690c9613dad99e1dcf30215f18748e5\\"", "size": 127246, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:00.214Z", "contentLength": 127246, "httpStatusCode": 200}	e2a3de30-f13b-4828-8e53-355d2e38143b	\N	{}
aab465c4-1803-4cc2-bb1e-3abcd654d1d4	campuses	newmanu/2	\N	2025-01-26 21:09:00.999556+00	2025-01-26 21:09:00.999556+00	2025-01-26 21:09:00.999556+00	{"eTag": "\\"bdcecba681302bd73517384f8ffff456\\"", "size": 165440, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:00.974Z", "contentLength": 165440, "httpStatusCode": 200}	b911d8d2-37a3-496f-a5ca-9c89423ab49f	\N	{}
772bd103-cf47-4338-885d-5d859bb1717c	campuses	researchcollege/2	\N	2025-01-26 21:10:08.993329+00	2025-01-26 21:10:08.993329+00	2025-01-26 21:10:08.993329+00	{"eTag": "\\"d176d6f836268d177a74b61ae46fa684\\"", "size": 20098, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:08.989Z", "contentLength": 20098, "httpStatusCode": 200}	d6b454bc-694f-4768-9ffe-ec094dbaddbc	\N	{}
add1291a-a4f3-4392-b581-c0247f6b1906	campuses	newmanu/3	\N	2025-01-26 21:09:01.652787+00	2025-01-26 21:09:01.652787+00	2025-01-26 21:09:01.652787+00	{"eTag": "\\"371a32a8e7fdf5f441da0a709b817b51\\"", "size": 360123, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:01.642Z", "contentLength": 360123, "httpStatusCode": 200}	f74a7346-2d2f-4396-822f-04b193810c7e	\N	{}
f4c4c159-78c2-4353-b9ca-14eb6f42af07	campuses	newmanu/4	\N	2025-01-26 21:09:02.575389+00	2025-01-26 21:09:02.575389+00	2025-01-26 21:09:02.575389+00	{"eTag": "\\"0d814ea7b9eb185c399157b93698b15d\\"", "size": 127049, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:02.553Z", "contentLength": 127049, "httpStatusCode": 200}	45da739c-2e1c-47b0-8b31-66ee608e2afe	\N	{}
59c355b4-e0c0-4f3b-b9b2-bea785e21425	campuses	newmanu/5	\N	2025-01-26 21:09:03.558092+00	2025-01-26 21:09:03.558092+00	2025-01-26 21:09:03.558092+00	{"eTag": "\\"f542724aa8444ded8413c181cbd1e28c\\"", "size": 104140, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:03.553Z", "contentLength": 104140, "httpStatusCode": 200}	e67d3cb5-9462-4239-9759-b34bc5b03f25	\N	{}
b400ed15-6eac-460e-824c-ffb830a89827	campuses	newmanu/6	\N	2025-01-26 21:09:04.254487+00	2025-01-26 21:09:04.254487+00	2025-01-26 21:09:04.254487+00	{"eTag": "\\"d450d8be60427df25888a7d4e295bff0\\"", "size": 126089, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:04.248Z", "contentLength": 126089, "httpStatusCode": 200}	35b7850f-35e4-4a01-9fe0-ab9adcea3034	\N	{}
2dff9412-3fd4-44bc-adfc-f0436eaf7394	campuses	newmanu/7	\N	2025-01-26 21:09:04.80924+00	2025-01-26 21:09:04.80924+00	2025-01-26 21:09:04.80924+00	{"eTag": "\\"38ccbf2f8e908ede37a83603d8901093\\"", "size": 219120, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:04.799Z", "contentLength": 219120, "httpStatusCode": 200}	ec93c4e4-7646-4ff7-aaf5-67c9936f7650	\N	{}
1d5e263c-033a-49f0-88c1-4151cb9d025d	campuses	newmanu/8	\N	2025-01-26 21:09:05.648552+00	2025-01-26 21:09:05.648552+00	2025-01-26 21:09:05.648552+00	{"eTag": "\\"03e360e7828f83e138957c1fb978d6f5\\"", "size": 452155, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:05.639Z", "contentLength": 452155, "httpStatusCode": 200}	3d37dad9-407f-4ae7-a961-0c817ba7a771	\N	{}
b28fcd8a-2796-4919-b22a-acab003bced0	campuses	newmanu/9	\N	2025-01-26 21:09:06.47998+00	2025-01-26 21:09:06.47998+00	2025-01-26 21:09:06.47998+00	{"eTag": "\\"9c9c1329744add578e8686d69a57af4a\\"", "size": 118937, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:06.426Z", "contentLength": 118937, "httpStatusCode": 200}	71e98756-7f46-4621-b17e-bc036ca22630	\N	{}
d27d5f94-6f59-4600-9364-90605bca1552	campuses	neiu/0	\N	2025-01-26 21:09:07.029244+00	2025-01-26 21:09:07.029244+00	2025-01-26 21:09:07.029244+00	{"eTag": "\\"3f7c9cd3e2c53c5e3c22b6c8a2918dea\\"", "size": 117098, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:07.024Z", "contentLength": 117098, "httpStatusCode": 200}	26f5abbd-4baa-4f80-b38f-4137b8d2ef06	\N	{}
5e80c95c-228d-4b07-addf-e6e4431d4aa0	campuses	neiu/1	\N	2025-01-26 21:09:07.569802+00	2025-01-26 21:09:07.569802+00	2025-01-26 21:09:07.569802+00	{"eTag": "\\"4a513fe17290d088037de9791663e24a\\"", "size": 276023, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:07.560Z", "contentLength": 276023, "httpStatusCode": 200}	92466058-b3ef-4344-bc94-5f226dd003e6	\N	{}
5353e647-c33f-4e14-9fc8-23664aecee26	campuses	neiu/2	\N	2025-01-26 21:09:08.019095+00	2025-01-26 21:09:08.019095+00	2025-01-26 21:09:08.019095+00	{"eTag": "\\"0320d6a6c2f574909879b3a4b429037d\\"", "size": 107826, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:08.016Z", "contentLength": 107826, "httpStatusCode": 200}	9e0a0813-31d8-4eac-8db3-4f377b3a7d18	\N	{}
6ade41f5-0f72-4377-a0bd-96341cfd7dd5	campuses	researchcollege/3	\N	2025-01-26 21:10:09.368442+00	2025-01-26 21:10:09.368442+00	2025-01-26 21:10:09.368442+00	{"eTag": "\\"0eee2f905f640287325965a4d6511d02\\"", "size": 10022, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:09.366Z", "contentLength": 10022, "httpStatusCode": 200}	c89b74b7-5c83-4a8a-a4ca-51961c117890	\N	{}
a63b01de-f832-44ea-b546-4fcbf817663f	campuses	neiu/3	\N	2025-01-26 21:09:08.449236+00	2025-01-26 21:09:08.449236+00	2025-01-26 21:09:08.449236+00	{"eTag": "\\"90301d4f20486a6a04b0b580c45af49f\\"", "size": 112449, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:08.444Z", "contentLength": 112449, "httpStatusCode": 200}	07fe3d75-127e-4f4a-8946-a3df76b04ed2	\N	{}
63f24737-4ec2-4b1d-9584-a930d4bc409c	campuses	uca/7	\N	2025-01-26 21:13:57.626667+00	2025-01-26 21:13:57.626667+00	2025-01-26 21:13:57.626667+00	{"eTag": "\\"2f38127fb265f00a7514c0d3c2d0d78f\\"", "size": 3895855, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:57.591Z", "contentLength": 3895855, "httpStatusCode": 200}	e957e29d-d280-4b1a-a292-365272d4d829	\N	{}
4896ec02-ad55-4fe1-8fcf-21c9065819f2	campuses	neiu/5	\N	2025-01-26 21:09:08.888427+00	2025-01-26 21:09:08.888427+00	2025-01-26 21:09:08.888427+00	{"eTag": "\\"3473ef95d9700015ca9168c0e737b593\\"", "size": 104654, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:08.884Z", "contentLength": 104654, "httpStatusCode": 200}	9de9b9d4-dc69-4e47-b462-85171f055a9a	\N	{}
df8c1050-35d0-434c-8977-5795495fefa0	campuses	researchcollege/4	\N	2025-01-26 21:10:09.857979+00	2025-01-26 21:10:09.857979+00	2025-01-26 21:10:09.857979+00	{"eTag": "\\"622527cf729db71761fb7e65bfe881f5\\"", "size": 126994, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:09.852Z", "contentLength": 126994, "httpStatusCode": 200}	e4b0c586-4b89-46a1-b74c-09739322d2f8	\N	{}
17513ba9-408e-4014-ad9a-18177194e66d	campuses	neiu/6	\N	2025-01-26 21:09:09.616526+00	2025-01-26 21:09:09.616526+00	2025-01-26 21:09:09.616526+00	{"eTag": "\\"b168210f7846fb5b78c6fb8d261fcaec\\"", "size": 56766, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:09.612Z", "contentLength": 56766, "httpStatusCode": 200}	815fb9dc-c85b-453c-bf25-78c397872b1f	\N	{}
25a3d413-5a72-4f67-a33b-6010168554f3	campuses	neiu/7	\N	2025-01-26 21:09:10.11838+00	2025-01-26 21:09:10.11838+00	2025-01-26 21:09:10.11838+00	{"eTag": "\\"d95e3382aa003ef69637d2bbd5e7bad2\\"", "size": 251212, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:10.114Z", "contentLength": 251212, "httpStatusCode": 200}	f2205fc3-e6ec-4a4c-87ec-5d2e545982bc	\N	{}
70730c4b-1b47-4ae2-bde1-1e72021fea2a	campuses	researchcollege/5	\N	2025-01-26 21:10:10.207227+00	2025-01-26 21:10:10.207227+00	2025-01-26 21:10:10.207227+00	{"eTag": "\\"b5dda662414166b9bfac65070ac669d9\\"", "size": 10785, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:10.203Z", "contentLength": 10785, "httpStatusCode": 200}	f8927234-8e1d-4533-9de0-cb8e7ba54b3c	\N	{}
909192aa-b454-4c92-a02a-7bda390696ef	campuses	neiu/9	\N	2025-01-26 21:09:10.562024+00	2025-01-26 21:09:10.562024+00	2025-01-26 21:09:10.562024+00	{"eTag": "\\"3c7fa8eba5ae2ef050a242180cfc4ab4\\"", "size": 103867, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:10.558Z", "contentLength": 103867, "httpStatusCode": 200}	040ea999-7f28-430c-a391-f80686f8ab34	\N	{}
27550362-11da-43eb-b36a-d0f185248e99	campuses	nau/0	\N	2025-01-26 21:09:11.697559+00	2025-01-26 21:09:11.697559+00	2025-01-26 21:09:11.697559+00	{"eTag": "\\"db7527587c408907a364785ab07571a5\\"", "size": 1821910, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:11.662Z", "contentLength": 1821910, "httpStatusCode": 200}	65e24860-3a0d-4eb8-b5fc-b851c996affa	\N	{}
2babe24d-becb-472f-a7e0-e275a9959db7	campuses	nau/1	\N	2025-01-26 21:09:12.331616+00	2025-01-26 21:09:12.331616+00	2025-01-26 21:09:12.331616+00	{"eTag": "\\"0a7b4f3b861710f2ff42c1e3c8b11482\\"", "size": 67026, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:12.323Z", "contentLength": 67026, "httpStatusCode": 200}	4967a3e8-2917-454b-9c7a-5619e220a8e7	\N	{}
cbe49453-a81f-40e5-8d48-44ff4d3ff2da	campuses	nau/2	\N	2025-01-26 21:09:12.940659+00	2025-01-26 21:09:12.940659+00	2025-01-26 21:09:12.940659+00	{"eTag": "\\"5d768a852da200c6e7e9404cdc2ad155\\"", "size": 98526, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:12.936Z", "contentLength": 98526, "httpStatusCode": 200}	7be7d8ec-fa3f-44d4-a12c-1b83f019aca7	\N	{}
004e5faf-4930-44ef-b528-cbf6f8b9df4e	campuses	nau/3	\N	2025-01-26 21:09:13.722231+00	2025-01-26 21:09:13.722231+00	2025-01-26 21:09:13.722231+00	{"eTag": "\\"c42d044b906e1fe43287d5948f575f4e\\"", "size": 945374, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:13.701Z", "contentLength": 945374, "httpStatusCode": 200}	ff4e0c85-b0c4-4a9c-843d-89acdc8b6d41	\N	{}
f852a584-8cf5-4d90-9dd4-477f90143999	campuses	nau/4	\N	2025-01-26 21:09:14.480825+00	2025-01-26 21:09:14.480825+00	2025-01-26 21:09:14.480825+00	{"eTag": "\\"9268b51e66a16996a3c885f38f50ed15\\"", "size": 768749, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:14.467Z", "contentLength": 768749, "httpStatusCode": 200}	56121b44-5e0e-4c26-9521-e63d34821451	\N	{}
a98aa4cc-09ea-48ea-b709-2e13674b25f6	campuses	nau/5	\N	2025-01-26 21:09:15.486391+00	2025-01-26 21:09:15.486391+00	2025-01-26 21:09:15.486391+00	{"eTag": "\\"399c8f13737070fc6def3e591a20fbbf\\"", "size": 253216, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:15.349Z", "contentLength": 253216, "httpStatusCode": 200}	544c9f4a-d0d7-4c90-af97-a847df2e04d3	\N	{}
323fdc89-6f94-40e0-b782-5d7665a7d5ad	campuses	nau/6	\N	2025-01-26 21:09:16.530603+00	2025-01-26 21:09:16.530603+00	2025-01-26 21:09:16.530603+00	{"eTag": "\\"3404ad41353e01088aa7fac4286d0cee\\"", "size": 760303, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:16.459Z", "contentLength": 760303, "httpStatusCode": 200}	f4b3caa3-dba0-4815-be10-54394984799e	\N	{}
e16d3e33-82d6-44d1-95e5-62e7bd96e1cb	campuses	nau/7	\N	2025-01-26 21:09:17.125037+00	2025-01-26 21:09:17.125037+00	2025-01-26 21:09:17.125037+00	{"eTag": "\\"78e124dc9781d4974146406361d6d6ed\\"", "size": 100070, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:17.114Z", "contentLength": 100070, "httpStatusCode": 200}	8cf89dd2-e0b2-41a2-99f9-0e1de3deaf27	\N	{}
99641037-5d48-4396-ae95-8a7b99cc9e50	campuses	nau/8	\N	2025-01-26 21:09:17.885477+00	2025-01-26 21:09:17.885477+00	2025-01-26 21:09:17.885477+00	{"eTag": "\\"af3f84f6164bdc7924cbd428294da4c0\\"", "size": 1065100, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:17.877Z", "contentLength": 1065100, "httpStatusCode": 200}	14d3d30a-1483-4e28-8177-de0ed025fd34	\N	{}
82fd522c-9a45-4018-9383-3f84e29afafb	campuses	nau/9	\N	2025-01-26 21:09:18.511729+00	2025-01-26 21:09:18.511729+00	2025-01-26 21:09:18.511729+00	{"eTag": "\\"98e969901d1e8490edcc07cd1c7a6d39\\"", "size": 130798, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:18.502Z", "contentLength": 130798, "httpStatusCode": 200}	23cd26db-293c-4489-aeee-cc17b1196256	\N	{}
e8eb9762-f464-40e7-b6a9-0691c0347471	campuses	researchcollege/6	\N	2025-01-26 21:10:10.722636+00	2025-01-26 21:10:10.722636+00	2025-01-26 21:10:10.722636+00	{"eTag": "\\"8af5b958e3df6cb7d3faa545a7026b34\\"", "size": 123381, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:10.710Z", "contentLength": 123381, "httpStatusCode": 200}	bac0edc2-d111-45c0-94e7-f8d67230b1a2	\N	{}
8f5bfe8d-3d36-45d4-b56b-9abbcf04e835	campuses	niu/0	\N	2025-01-26 21:09:19.197655+00	2025-01-26 21:09:19.197655+00	2025-01-26 21:09:19.197655+00	{"eTag": "\\"cc7602a59599e3133db40665884b80de\\"", "size": 611893, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:19.191Z", "contentLength": 611893, "httpStatusCode": 200}	316fd4a4-47fd-4194-ab82-8b6780eb6f87	\N	{}
df2faebf-93d4-46b2-9d0d-762fdf452740	campuses	uww/7	\N	2025-01-26 21:17:47.439037+00	2025-01-26 21:17:47.439037+00	2025-01-26 21:17:47.439037+00	{"eTag": "\\"129f9b8fbd10564788d1e5a27d09b40a\\"", "size": 550259, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:47.390Z", "contentLength": 550259, "httpStatusCode": 200}	356118cb-317d-401a-8cd3-2ebe052d793a	\N	{}
f159aad5-1752-4e99-9292-4947d51bdc54	campuses	niu/1	\N	2025-01-26 21:09:19.911419+00	2025-01-26 21:09:19.911419+00	2025-01-26 21:09:19.911419+00	{"eTag": "\\"2e36b191b45a9e2dee7699aaa3785abb\\"", "size": 897966, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:19.894Z", "contentLength": 897966, "httpStatusCode": 200}	190fb926-7536-43e2-82df-6d8c75fd8d4d	\N	{}
c100a68d-9529-423e-b3dd-7e07ddab2ab5	campuses	researchcollege/7	\N	2025-01-26 21:10:11.266047+00	2025-01-26 21:10:11.266047+00	2025-01-26 21:10:11.266047+00	{"eTag": "\\"7518a9530887298ddf6e9a423d42118e\\"", "size": 153867, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:11.256Z", "contentLength": 153867, "httpStatusCode": 200}	7eed046d-3df4-4fae-a7a2-2adc60a97470	\N	{}
12edd488-b173-4c38-80d3-df4df34d692d	campuses	niu/2	\N	2025-01-26 21:09:20.410958+00	2025-01-26 21:09:20.410958+00	2025-01-26 21:09:20.410958+00	{"eTag": "\\"192af9c4854fc9a9195321e0e5659ef2\\"", "size": 156302, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:20.406Z", "contentLength": 156302, "httpStatusCode": 200}	1c73ed8f-4136-4264-9603-afd6f2457869	\N	{}
83a6d758-d643-43c2-aa39-341d9b468522	campuses	uca/8	\N	2025-01-26 21:13:58.230039+00	2025-01-26 21:13:58.230039+00	2025-01-26 21:13:58.230039+00	{"eTag": "\\"7d56c02fa7ad6c1c9897caeb6563acf7\\"", "size": 36866, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:58.222Z", "contentLength": 36866, "httpStatusCode": 200}	afb0af2a-9ee4-4b98-a81f-cb17bc1fcbe6	\N	{}
9f7ebf57-a40d-4ca8-995f-72bbb4a07a34	campuses	niu/3	\N	2025-01-26 21:09:20.967737+00	2025-01-26 21:09:20.967737+00	2025-01-26 21:09:20.967737+00	{"eTag": "\\"3320b6d05e03c7d82d5b2ab71665a6e1\\"", "size": 186019, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:20.962Z", "contentLength": 186019, "httpStatusCode": 200}	c8c67824-55b8-47c4-ad22-9c52e9a25984	\N	{}
20aea57d-f901-414d-a004-edfee8d38272	campuses	researchcollege/8	\N	2025-01-26 21:10:11.616069+00	2025-01-26 21:10:11.616069+00	2025-01-26 21:10:11.616069+00	{"eTag": "\\"aa017fe6ad64f23d2859da854666ba81\\"", "size": 10447, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:11.613Z", "contentLength": 10447, "httpStatusCode": 200}	e4b8f1c3-f2ee-4ccc-bb69-4bdc1e366bef	\N	{}
30fb666e-672e-4fcd-8f99-9877a1b3e6f9	campuses	niu/4	\N	2025-01-26 21:09:21.568678+00	2025-01-26 21:09:21.568678+00	2025-01-26 21:09:21.568678+00	{"eTag": "\\"59c520dea75be8b6e891198246c55e89\\"", "size": 133470, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:21.564Z", "contentLength": 133470, "httpStatusCode": 200}	c738b94b-1766-4223-8264-734e7da95ac1	\N	{}
9a8247cf-ad38-4060-9e31-4acb4dd7a2cb	campuses	niu/5	\N	2025-01-26 21:09:22.068077+00	2025-01-26 21:09:22.068077+00	2025-01-26 21:09:22.068077+00	{"eTag": "\\"9fc2a383f00efcae9fafcc4f418ff757\\"", "size": 185497, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:22.060Z", "contentLength": 185497, "httpStatusCode": 200}	9514e482-9bba-4c6d-ac38-35a114d6feba	\N	{}
2cf031d2-097b-464f-8769-80f1d0b85f7d	campuses	niu/6	\N	2025-01-26 21:09:22.528661+00	2025-01-26 21:09:22.528661+00	2025-01-26 21:09:22.528661+00	{"eTag": "\\"53f58b63d4aecb7bf2944bc9f38604be\\"", "size": 131970, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:22.523Z", "contentLength": 131970, "httpStatusCode": 200}	1271bc1e-198c-4019-8255-d369f3cfde5e	\N	{}
96d4cc18-9410-4218-ac61-2ac696f6d3b4	campuses	niu/7	\N	2025-01-26 21:09:23.155607+00	2025-01-26 21:09:23.155607+00	2025-01-26 21:09:23.155607+00	{"eTag": "\\"f7c797e4b86bf634bf1c901e8e09d674\\"", "size": 997517, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:23.148Z", "contentLength": 997517, "httpStatusCode": 200}	7e567ed9-bbb0-4ebc-9023-8a3e348efe06	\N	{}
2ad76c25-4aae-436d-9f7a-0c8cbe431a18	campuses	niu/8	\N	2025-01-26 21:09:23.614395+00	2025-01-26 21:09:23.614395+00	2025-01-26 21:09:23.614395+00	{"eTag": "\\"a23f5a4531518a86d999f30b047779a6\\"", "size": 176685, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:23.607Z", "contentLength": 176685, "httpStatusCode": 200}	ddc0956f-ce49-4e88-8215-64cd54330147	\N	{}
234b96b5-4504-4535-a1c7-e4a2954ab5e0	campuses	niu/9	\N	2025-01-26 21:09:24.086705+00	2025-01-26 21:09:24.086705+00	2025-01-26 21:09:24.086705+00	{"eTag": "\\"5bb157f290d7d6e75a925835e858cf86\\"", "size": 74446, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:24.079Z", "contentLength": 74446, "httpStatusCode": 200}	1384ea14-6d95-4ddf-b791-b05e81cd60fd	\N	{}
8e23cec4-2408-422d-8d75-67df42223eb7	campuses	northwestern/0	\N	2025-01-26 21:09:24.830939+00	2025-01-26 21:09:24.830939+00	2025-01-26 21:09:24.830939+00	{"eTag": "\\"533798be48946c35c37dbfb15798930f\\"", "size": 343842, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:24.825Z", "contentLength": 343842, "httpStatusCode": 200}	85447125-817d-4d1d-bc16-343ed57675d1	\N	{}
90bd7dbb-c87c-4983-863c-541c04cd1d2f	campuses	northwestern/1	\N	2025-01-26 21:09:25.434754+00	2025-01-26 21:09:25.434754+00	2025-01-26 21:09:25.434754+00	{"eTag": "\\"2164b3d6ea49f3d243d2b481c3067f6c\\"", "size": 205770, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:25.417Z", "contentLength": 205770, "httpStatusCode": 200}	a5c68273-69e1-428f-8be3-fb9e07a0ca67	\N	{}
790a9e94-8ea5-44ff-860b-3044cb283654	campuses	northwestern/2	\N	2025-01-26 21:09:26.268519+00	2025-01-26 21:09:26.268519+00	2025-01-26 21:09:26.268519+00	{"eTag": "\\"954aa6d5a7772d67c2c1c2587f76edf9\\"", "size": 2746502, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:26.240Z", "contentLength": 2746502, "httpStatusCode": 200}	ee128e4e-8fb7-4195-8f75-c7be19d5cdef	\N	{}
ad9532f2-5069-4423-be85-6e83fd98b761	campuses	northwestern/3	\N	2025-01-26 21:09:26.720495+00	2025-01-26 21:09:26.720495+00	2025-01-26 21:09:26.720495+00	{"eTag": "\\"e6f4f9d3af49847186223b9697f96d1e\\"", "size": 219064, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:26.714Z", "contentLength": 219064, "httpStatusCode": 200}	4c5b98bc-fd92-408e-94ce-405968b27628	\N	{}
27a3579a-f5b3-4d4a-b203-53cf0f585160	campuses	researchcollege/9	\N	2025-01-26 21:10:12.126329+00	2025-01-26 21:10:12.126329+00	2025-01-26 21:10:12.126329+00	{"eTag": "\\"704ae8fea41b04ac4fa7d862f3bc9872\\"", "size": 163329, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:12.119Z", "contentLength": 163329, "httpStatusCode": 200}	84f50163-55fc-40e2-bb40-81fe50386023	\N	{}
2d942922-f95a-4b76-8ced-b87a00dff64a	campuses	northwestern/4	\N	2025-01-26 21:09:27.83474+00	2025-01-26 21:09:27.83474+00	2025-01-26 21:09:27.83474+00	{"eTag": "\\"8c3294e404db8a2801b094319f657006\\"", "size": 161068, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:27.832Z", "contentLength": 161068, "httpStatusCode": 200}	c6f1d681-bc88-4a4c-9fad-e0055175fbab	\N	{}
c1263dca-65a0-446f-ace0-ea250fa32cf1	campuses	uca/9	\N	2025-01-26 21:13:58.804656+00	2025-01-26 21:13:58.804656+00	2025-01-26 21:13:58.804656+00	{"eTag": "\\"59ea79eae26b785e84022cd0e749dfe2\\"", "size": 44982, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:58.798Z", "contentLength": 44982, "httpStatusCode": 200}	56cd3337-0390-48e8-87f7-66e79e33fcbc	\N	{}
ed7e2be4-b8dc-4b90-beac-f4564f1df17e	campuses	northwestern/5	\N	2025-01-26 21:09:28.776877+00	2025-01-26 21:09:28.776877+00	2025-01-26 21:09:28.776877+00	{"eTag": "\\"ebf6e7d5882d9deec1404e69bccc1246\\"", "size": 5380184, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:28.741Z", "contentLength": 5380184, "httpStatusCode": 200}	ac4cf1c8-4165-4136-b719-7a9f3d26ecd1	\N	{}
2cb8f7bb-fc99-4ccc-8103-4a68b8d9380e	campuses	ric/0	\N	2025-01-26 21:10:12.899986+00	2025-01-26 21:10:12.899986+00	2025-01-26 21:10:12.899986+00	{"eTag": "\\"a12eb8ac11725eb1fa141e1aa3c6401d\\"", "size": 367845, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:12.895Z", "contentLength": 367845, "httpStatusCode": 200}	ff9f8474-6680-428b-8d64-d56080e2a064	\N	{}
6cef8e64-2d4e-4eb0-9f83-79211626ff5c	campuses	northwestern/6	\N	2025-01-26 21:09:29.474989+00	2025-01-26 21:09:29.474989+00	2025-01-26 21:09:29.474989+00	{"eTag": "\\"22d583171865098bc095b4009b10c7de\\"", "size": 167672, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:29.452Z", "contentLength": 167672, "httpStatusCode": 200}	93eff3b4-0260-41f8-8dd2-83bdf99f35b3	\N	{}
73a41114-c956-4526-b2e2-61a4630342c4	campuses	northwestern/7	\N	2025-01-26 21:09:29.873072+00	2025-01-26 21:09:29.873072+00	2025-01-26 21:09:29.873072+00	{"eTag": "\\"1780fe2a0255e3c4b3dcbb3db1d3231e\\"", "size": 185573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:29.867Z", "contentLength": 185573, "httpStatusCode": 200}	b505eab3-e2ab-4e58-a755-f9b9a6c94c84	\N	{}
45815a23-7c46-43ba-9320-1ed9b75ee0c9	campuses	ric/1	\N	2025-01-26 21:10:13.548815+00	2025-01-26 21:10:13.548815+00	2025-01-26 21:10:13.548815+00	{"eTag": "\\"607243a8a994b0b39e550dff670422b8\\"", "size": 431515, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:13.539Z", "contentLength": 431515, "httpStatusCode": 200}	4e639982-3891-4fdf-8cbc-439c3827ba85	\N	{}
2fe86ad8-8919-4a8f-9232-a15e6afc8b0c	campuses	northwestern/8	\N	2025-01-26 21:09:30.484337+00	2025-01-26 21:09:30.484337+00	2025-01-26 21:09:30.484337+00	{"eTag": "\\"a568b85144a5f797d74387abf77e1f56\\"", "size": 433355, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:30.476Z", "contentLength": 433355, "httpStatusCode": 200}	6372139b-6a68-487e-8d21-caddb0ae8af8	\N	{}
856d3719-f428-405c-9fba-0f08180982ab	campuses	northwestern/9	\N	2025-01-26 21:09:31.058782+00	2025-01-26 21:09:31.058782+00	2025-01-26 21:09:31.058782+00	{"eTag": "\\"1e1293a8026069bd7db31ea829405576\\"", "size": 560181, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:31.053Z", "contentLength": 560181, "httpStatusCode": 200}	280d91f8-d437-4eda-b1b2-cba56e3ad469	\N	{}
8b345c5c-2128-4665-a85d-4644471a6785	campuses	norwich/0	\N	2025-01-26 21:09:31.680205+00	2025-01-26 21:09:31.680205+00	2025-01-26 21:09:31.680205+00	{"eTag": "\\"7f0b00cd2370d1d1de97d18ec5e2106f\\"", "size": 499958, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:31.670Z", "contentLength": 499958, "httpStatusCode": 200}	c9a776e3-3168-434e-889f-f8de486e30b1	\N	{}
489f777a-5c26-4cae-aa1e-11270dd63763	campuses	norwich/1	\N	2025-01-26 21:09:32.022323+00	2025-01-26 21:09:32.022323+00	2025-01-26 21:09:32.022323+00	{"eTag": "\\"4066ba1393e1e973029c281f61cee89a\\"", "size": 109633, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:32.020Z", "contentLength": 109633, "httpStatusCode": 200}	c57d0161-7a95-46db-9b57-428a8ed6cb57	\N	{}
b9c88e2d-dac5-4902-8f12-642e9791698c	campuses	norwich/2	\N	2025-01-26 21:09:32.331158+00	2025-01-26 21:09:32.331158+00	2025-01-26 21:09:32.331158+00	{"eTag": "\\"ac6e0d9c0768112e4b8c9a9f5411513e\\"", "size": 74445, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:32.327Z", "contentLength": 74445, "httpStatusCode": 200}	6d2b1fd9-597f-463e-b5b5-723d610cdc4f	\N	{}
5048c8ff-b7e6-49d8-868f-e9668fc88b85	campuses	norwich/3	\N	2025-01-26 21:09:32.535727+00	2025-01-26 21:09:32.535727+00	2025-01-26 21:09:32.535727+00	{"eTag": "\\"e96e5429d9becb8f819b4c5ccf2001e1\\"", "size": 12947, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:32.532Z", "contentLength": 12947, "httpStatusCode": 200}	2fd9c1fa-365f-4d66-a4d3-18b1f0de3bc3	\N	{}
59e049fb-212a-407b-aa33-428f1fa6e1e8	campuses	norwich/4	\N	2025-01-26 21:09:32.926929+00	2025-01-26 21:09:32.926929+00	2025-01-26 21:09:32.926929+00	{"eTag": "\\"bd93a92c0a26502ae114bb88567ad478\\"", "size": 178073, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:32.921Z", "contentLength": 178073, "httpStatusCode": 200}	47325789-fac4-4694-9c70-0d2fcfa04a86	\N	{}
522f1d84-4ca0-4916-bb0b-73d9db1b2d6b	campuses	norwich/5	\N	2025-01-26 21:09:33.268681+00	2025-01-26 21:09:33.268681+00	2025-01-26 21:09:33.268681+00	{"eTag": "\\"c541c4fc7ddf952f1b3741e70e4338b4\\"", "size": 97708, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:33.264Z", "contentLength": 97708, "httpStatusCode": 200}	fe012752-c410-48c0-b842-e68968bd1c36	\N	{}
6086a495-1409-4cc0-b462-b6ae8e5a7aad	campuses	norwich/6	\N	2025-01-26 21:09:34.203143+00	2025-01-26 21:09:34.203143+00	2025-01-26 21:09:34.203143+00	{"eTag": "\\"6654c45df83caef78cdde29d1192a2d2\\"", "size": 5725827, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:34.160Z", "contentLength": 5725827, "httpStatusCode": 200}	779883db-ff30-493e-a3ef-ff4d9cf65709	\N	{}
b1753d08-6171-4253-9510-11bdff1efe7f	campuses	norwich/7	\N	2025-01-26 21:09:34.528215+00	2025-01-26 21:09:34.528215+00	2025-01-26 21:09:34.528215+00	{"eTag": "\\"dc996da63efd97ad03096ade5c5ec977\\"", "size": 45654, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:34.518Z", "contentLength": 45654, "httpStatusCode": 200}	9774b46c-2efc-4906-b584-87928b47face	\N	{}
9bff0de3-ebdc-4241-b6f3-6b600a20a1fe	campuses	ric/2	\N	2025-01-26 21:10:14.16857+00	2025-01-26 21:10:14.16857+00	2025-01-26 21:10:14.16857+00	{"eTag": "\\"9d36af97028c227a077b7dea2d73cf23\\"", "size": 517779, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:14.156Z", "contentLength": 517779, "httpStatusCode": 200}	c24515ba-9ea6-4319-b760-454f76e2fe39	\N	{}
d18f5e3e-c705-4195-9558-ff25cb0a924f	campuses	norwich/8	\N	2025-01-26 21:09:35.12277+00	2025-01-26 21:09:35.12277+00	2025-01-26 21:09:35.12277+00	{"eTag": "\\"d2461495e0ef33a46c88c54bae030e3d\\"", "size": 46476, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:35.117Z", "contentLength": 46476, "httpStatusCode": 200}	35ea22c0-4163-4817-bcb5-19ea9193ca8c	\N	{}
fec5073f-811d-458b-87c2-4ca8c1919503	campuses	uc/0	\N	2025-01-26 21:13:59.544294+00	2025-01-26 21:13:59.544294+00	2025-01-26 21:13:59.544294+00	{"eTag": "\\"c2c27c82bef9d0342cd33d3371c38961\\"", "size": 126013, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:59.537Z", "contentLength": 126013, "httpStatusCode": 200}	36abe156-c90c-4ab5-944e-fef8dfe4707a	\N	{}
f8afa481-ad5b-49a5-a21f-c23e11f1240a	campuses	norwich/9	\N	2025-01-26 21:09:43.599364+00	2025-01-26 21:09:43.599364+00	2025-01-26 21:09:43.599364+00	{"eTag": "\\"47093018cca93b9f2bb560fd1d5282b6\\"", "size": 2231416, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:43.540Z", "contentLength": 2231416, "httpStatusCode": 200}	37bd3349-3928-4f2f-bdba-4a1072f1ca4c	\N	{}
ef7e43a2-ca46-4ae3-aaa9-d36d5c350f1c	campuses	ric/3	\N	2025-01-26 21:10:14.761456+00	2025-01-26 21:10:14.761456+00	2025-01-26 21:10:14.761456+00	{"eTag": "\\"802d3b92cc4d746259a6af3f9594b64e\\"", "size": 430097, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:14.753Z", "contentLength": 430097, "httpStatusCode": 200}	eec37c77-6e5d-4e91-bb85-83a2f89b789c	\N	{}
0f0f081b-e8af-4075-9547-78a651f7d2f8	campuses	oberlin/0	\N	2025-01-26 21:09:44.152767+00	2025-01-26 21:09:44.152767+00	2025-01-26 21:09:44.152767+00	{"eTag": "\\"1d534fc53c5029305baa124c60229f48\\"", "size": 204081, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:44.140Z", "contentLength": 204081, "httpStatusCode": 200}	54d172b0-2c6e-4a78-b366-98f5bc30251d	\N	{}
8004bdbf-3dad-49b5-9ad3-d69646790ebf	campuses	uww/8	\N	2025-01-26 21:17:48.096109+00	2025-01-26 21:17:48.096109+00	2025-01-26 21:17:48.096109+00	{"eTag": "\\"6c95d1e2267c71e02910c3f4ae44b78b\\"", "size": 403094, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:48.091Z", "contentLength": 403094, "httpStatusCode": 200}	1c7e6ffd-16f6-49ed-92c9-6942509e0651	\N	{}
7b374566-433f-471b-93cc-6ae04bea51a9	campuses	oberlin/1	\N	2025-01-26 21:09:44.621545+00	2025-01-26 21:09:44.621545+00	2025-01-26 21:09:44.621545+00	{"eTag": "\\"fbbc2dd4aefadb7370690c1d0eba6880\\"", "size": 427531, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:44.609Z", "contentLength": 427531, "httpStatusCode": 200}	a0a5c927-c4d9-4b2f-86da-f258eb5f2841	\N	{}
424df608-2b8d-4afb-9df1-363d16795e40	campuses	ric/4	\N	2025-01-26 21:10:15.338309+00	2025-01-26 21:10:15.338309+00	2025-01-26 21:10:15.338309+00	{"eTag": "\\"507d73815d3fd6cbfada6f5330a7f16d\\"", "size": 140990, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:15.332Z", "contentLength": 140990, "httpStatusCode": 200}	1905b422-4ba3-493f-b413-71b9a4a59807	\N	{}
e74dbfcc-77bb-44f5-9418-054c3c55b472	campuses	oberlin/2	\N	2025-01-26 21:09:45.144529+00	2025-01-26 21:09:45.144529+00	2025-01-26 21:09:45.144529+00	{"eTag": "\\"95f5f7379a281c44e4a6c26b267d70f1\\"", "size": 295904, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:09:45.135Z", "contentLength": 295904, "httpStatusCode": 200}	52472e73-a294-467c-bdad-27c2ec6d16a7	\N	{}
19436721-0418-4a99-9717-f52c996cf75f	campuses	uc/1	\N	2025-01-26 21:14:01.484194+00	2025-01-26 21:14:01.484194+00	2025-01-26 21:14:01.484194+00	{"eTag": "\\"d4e0256fcff759750f6ebad1eb639687\\"", "size": 3630659, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:01.423Z", "contentLength": 3630659, "httpStatusCode": 200}	f787314b-d0c7-4d82-83df-0322b4e0473f	\N	{}
d7080550-ea1b-4f5b-adda-5ec6b5aee0ff	campuses	ric/5	\N	2025-01-26 21:10:15.877481+00	2025-01-26 21:10:15.877481+00	2025-01-26 21:10:15.877481+00	{"eTag": "\\"c78c2a1ab01de5b5068c9e583ec5b3a4\\"", "size": 186165, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:15.874Z", "contentLength": 186165, "httpStatusCode": 200}	511b4aa4-be43-484d-94ba-7bd3b6491155	\N	{}
35b88427-78d0-405d-87d4-faf5599c0f10	campuses	ric/6	\N	2025-01-26 21:10:16.552826+00	2025-01-26 21:10:16.552826+00	2025-01-26 21:10:16.552826+00	{"eTag": "\\"001eddcab57912297ddfd57d0f4cec00\\"", "size": 1068324, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:16.546Z", "contentLength": 1068324, "httpStatusCode": 200}	5408630e-932a-4eb3-9341-f47f1b9a714d	\N	{}
a2151d89-2e23-4890-a37a-c7c3b2c70da0	campuses	ric/7	\N	2025-01-26 21:10:17.071089+00	2025-01-26 21:10:17.071089+00	2025-01-26 21:10:17.071089+00	{"eTag": "\\"e89acfddd3540955377cc961ccd7a631\\"", "size": 187102, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:17.066Z", "contentLength": 187102, "httpStatusCode": 200}	212f966f-c1c2-463a-8a79-fb0bc9462e2c	\N	{}
a0474309-8961-42c6-8112-faee88ece0e1	campuses	ric/8	\N	2025-01-26 21:10:17.594735+00	2025-01-26 21:10:17.594735+00	2025-01-26 21:10:17.594735+00	{"eTag": "\\"d5f834d4003343f7553ddd58838d6150\\"", "size": 120487, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:17.585Z", "contentLength": 120487, "httpStatusCode": 200}	78b1e744-90b3-44a4-bbfe-cde46fadba97	\N	{}
78c57e7b-bbcb-4f0d-88bb-65157cd638be	campuses	ric/9	\N	2025-01-26 21:10:18.133968+00	2025-01-26 21:10:18.133968+00	2025-01-26 21:10:18.133968+00	{"eTag": "\\"7926e87697f4f36cd08155eec4882cc8\\"", "size": 195590, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:18.127Z", "contentLength": 195590, "httpStatusCode": 200}	aa5edb01-1ad0-4110-90ce-ff87b4fbe808	\N	{}
8dc4c3c8-70aa-47bf-a799-12c08d7f863b	campuses	rice/0	\N	2025-01-26 21:10:18.906277+00	2025-01-26 21:10:18.906277+00	2025-01-26 21:10:18.906277+00	{"eTag": "\\"bdd480b9c3f83b3cfc547b2332f3d97a\\"", "size": 1473353, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:18.896Z", "contentLength": 1473353, "httpStatusCode": 200}	2c0bd01c-fd20-4792-9f19-f0477c2bfe04	\N	{}
fbc8a88e-ef57-4741-acea-27cffb64de5b	campuses	rice/1	\N	2025-01-26 21:10:19.50238+00	2025-01-26 21:10:19.50238+00	2025-01-26 21:10:19.50238+00	{"eTag": "\\"b75b0472712a81f16ff9254af973be8b\\"", "size": 746695, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:19.492Z", "contentLength": 746695, "httpStatusCode": 200}	dde7484d-2ec9-49af-8301-b8e0cfbcd79d	\N	{}
d11e8a25-6c9b-4a1a-a097-7b6065808cf7	campuses	rice/2	\N	2025-01-26 21:10:19.955811+00	2025-01-26 21:10:19.955811+00	2025-01-26 21:10:19.955811+00	{"eTag": "\\"ef4c329d437a3cfd50aefc0a7263c6f7\\"", "size": 57148, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:19.953Z", "contentLength": 57148, "httpStatusCode": 200}	8e7fba65-bf31-4032-89f9-a5a2cd127a30	\N	{}
998db365-d92a-4214-a55c-c2980eff4416	campuses	uc/2	\N	2025-01-26 21:14:02.0941+00	2025-01-26 21:14:02.0941+00	2025-01-26 21:14:02.0941+00	{"eTag": "\\"72ca561a0cdb19d0d398f2981cf5fc48\\"", "size": 211645, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:02.075Z", "contentLength": 211645, "httpStatusCode": 200}	3a8022c7-5fd5-462b-bd80-3ec7c25104bb	\N	{}
b08696be-2030-476f-a2c7-59caea7f8523	campuses	rice/3	\N	2025-01-26 21:10:20.3318+00	2025-01-26 21:10:20.3318+00	2025-01-26 21:10:20.3318+00	{"eTag": "\\"fd72982c777fdfac58bd91f3ab42c396\\"", "size": 132764, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:20.327Z", "contentLength": 132764, "httpStatusCode": 200}	2cf85404-03e7-45fe-8921-34e3054990ff	\N	{}
b61554c3-ebdc-4ef5-a849-ba019cefd9ab	campuses	rice/4	\N	2025-01-26 21:10:20.88756+00	2025-01-26 21:10:20.88756+00	2025-01-26 21:10:20.88756+00	{"eTag": "\\"25a447151ba78e92b99b57e6d01c7b29\\"", "size": 69993, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:20.882Z", "contentLength": 69993, "httpStatusCode": 200}	7bf6d69b-929a-4f76-8659-e8b02143de36	\N	{}
4773b986-b7ef-442c-ac77-b22820329e49	campuses	uc/3	\N	2025-01-26 21:14:02.701674+00	2025-01-26 21:14:02.701674+00	2025-01-26 21:14:02.701674+00	{"eTag": "\\"a0bef2d2c6f4813c044e189d4c315054\\"", "size": 166822, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:02.698Z", "contentLength": 166822, "httpStatusCode": 200}	7fa33596-c29c-4227-aa28-b62e3ec8e510	\N	{}
3f9431bc-c1f3-4dd9-831c-3df6a4d26ca9	campuses	rice/5	\N	2025-01-26 21:10:21.515432+00	2025-01-26 21:10:21.515432+00	2025-01-26 21:10:21.515432+00	{"eTag": "\\"6477d50a6e8fed1171d3ff81f1f4fa98\\"", "size": 190476, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:21.510Z", "contentLength": 190476, "httpStatusCode": 200}	29a09c6e-4761-41f7-aa8f-6984ae35fe85	\N	{}
d99d710b-e417-4f25-abc8-e76b451a181a	campuses	rice/6	\N	2025-01-26 21:10:22.002246+00	2025-01-26 21:10:22.002246+00	2025-01-26 21:10:22.002246+00	{"eTag": "\\"7ecb69042d52ad14fc5aae18ec8ff7a0\\"", "size": 132078, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:21.996Z", "contentLength": 132078, "httpStatusCode": 200}	95b648a3-0622-46ca-9ae4-1c56d225861f	\N	{}
bb50a5a9-8ddb-4e40-a999-94d3ce891021	campuses	uc/4	\N	2025-01-26 21:14:03.469129+00	2025-01-26 21:14:03.469129+00	2025-01-26 21:14:03.469129+00	{"eTag": "\\"b7c573113f9f8a29e6844ff4b2294c73\\"", "size": 494979, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:03.453Z", "contentLength": 494979, "httpStatusCode": 200}	2f3d0d6f-2a50-48b3-ba37-12b436128d1d	\N	{}
c0ab7a73-14f5-4ebb-b1ad-333a52f7bea3	campuses	rice/7	\N	2025-01-26 21:10:22.788069+00	2025-01-26 21:10:22.788069+00	2025-01-26 21:10:22.788069+00	{"eTag": "\\"7114989ed84977f6f9816c932a9cfa00\\"", "size": 3135762, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:22.759Z", "contentLength": 3135762, "httpStatusCode": 200}	1b44edf3-d46e-4cc9-a4d1-da090606afb4	\N	{}
babfbc1c-f4c6-42f1-9b69-1198b9299991	campuses	rice/8	\N	2025-01-26 21:10:23.218683+00	2025-01-26 21:10:23.218683+00	2025-01-26 21:10:23.218683+00	{"eTag": "\\"e8950e9d1187de7228cbb9279330539c\\"", "size": 42183, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:23.204Z", "contentLength": 42183, "httpStatusCode": 200}	53bdf336-a3cf-40d1-9ecd-2f5af389bf54	\N	{}
d36a9d24-a6d5-4127-8014-0a8a20354395	campuses	uc/5	\N	2025-01-26 21:14:04.12002+00	2025-01-26 21:14:04.12002+00	2025-01-26 21:14:04.12002+00	{"eTag": "\\"24a594958e040c66587a7c2cb5373e13\\"", "size": 529520, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:04.105Z", "contentLength": 529520, "httpStatusCode": 200}	69eef6d8-a393-4991-bb6e-5b43200305ca	\N	{}
5d0070ff-9742-49aa-8663-8fffff6d931e	campuses	rice/9	\N	2025-01-26 21:10:23.751157+00	2025-01-26 21:10:23.751157+00	2025-01-26 21:10:23.751157+00	{"eTag": "\\"ad4404c586f24dc1a84a5630cbefd0d0\\"", "size": 271870, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:23.744Z", "contentLength": 271870, "httpStatusCode": 200}	11150787-860a-4456-8744-2288f61199c1	\N	{}
8e0ffbd1-98cd-460f-90ea-9f8ffe7ee6ba	campuses	rocky/0	\N	2025-01-26 21:10:24.519506+00	2025-01-26 21:10:24.519506+00	2025-01-26 21:10:24.519506+00	{"eTag": "\\"889267a8a158c83eb11364ea36de3498\\"", "size": 170448, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:24.507Z", "contentLength": 170448, "httpStatusCode": 200}	59119cc8-033a-49f6-a4f9-e2d60e924c2e	\N	{}
fb265636-a4e8-494e-a9db-f7ff2806a9fe	campuses	rocky/1	\N	2025-01-26 21:10:25.069892+00	2025-01-26 21:10:25.069892+00	2025-01-26 21:10:25.069892+00	{"eTag": "\\"608f72743511b64704c94e43002e4548\\"", "size": 127244, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:25.063Z", "contentLength": 127244, "httpStatusCode": 200}	bcd7b393-c83f-41a5-9768-d2946ff38c73	\N	{}
ee6d0779-3de5-4fbf-9b28-ab90138f98a9	campuses	rocky/3	\N	2025-01-26 21:10:25.465105+00	2025-01-26 21:10:25.465105+00	2025-01-26 21:10:25.465105+00	{"eTag": "\\"2fa6511216517e005de430da773e304f\\"", "size": 245978, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:25.460Z", "contentLength": 245978, "httpStatusCode": 200}	802ee175-2311-411f-ac5a-97e1fcf5f8ee	\N	{}
1ed18281-07ae-4957-8ff7-74a30ec624b5	campuses	rocky/4	\N	2025-01-26 21:10:26.310897+00	2025-01-26 21:10:26.310897+00	2025-01-26 21:10:26.310897+00	{"eTag": "\\"0d91f62eea17a8fe1be030b8ec386ba0\\"", "size": 650887, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:26.301Z", "contentLength": 650887, "httpStatusCode": 200}	53e236a0-d343-4c04-84e4-cd1ac6c3b7e6	\N	{}
489d32e1-aa2a-4acd-8ed7-164705b6c3cd	campuses	rocky/5	\N	2025-01-26 21:10:26.829541+00	2025-01-26 21:10:26.829541+00	2025-01-26 21:10:26.829541+00	{"eTag": "\\"effd63bdde5ee2d8bc6a1d08ec114a8b\\"", "size": 133194, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:26.824Z", "contentLength": 133194, "httpStatusCode": 200}	5ed2e529-810e-4f42-a8d7-53c13ac28736	\N	{}
947f5fcd-fbea-4a26-851d-ff26aee9fbd7	campuses	rocky/6	\N	2025-01-26 21:10:27.315579+00	2025-01-26 21:10:27.315579+00	2025-01-26 21:10:27.315579+00	{"eTag": "\\"cd2a52327d6182e08c89bdfe07fd3763\\"", "size": 111115, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:27.310Z", "contentLength": 111115, "httpStatusCode": 200}	e44e9ea9-8290-4793-a13f-93684f6c4d60	\N	{}
17c720c8-091b-44a6-8935-11dc0450d186	campuses	rocky/8	\N	2025-01-26 21:10:27.858378+00	2025-01-26 21:10:27.858378+00	2025-01-26 21:10:27.858378+00	{"eTag": "\\"d736a06806bb1677bf6ba1f703513ac4\\"", "size": 178513, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:27.853Z", "contentLength": 178513, "httpStatusCode": 200}	5999e80a-97a1-4dbe-b759-38f86e4d385d	\N	{}
f10d6b9e-f021-4edd-b23c-5cfed0e9f429	campuses	uc/6	\N	2025-01-26 21:14:05.70881+00	2025-01-26 21:14:05.70881+00	2025-01-26 21:14:05.70881+00	{"eTag": "\\"85b4b1656e412af191c43072ca488829\\"", "size": 2914491, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:05.670Z", "contentLength": 2914491, "httpStatusCode": 200}	93500b4e-2729-4c08-8109-c10dfda05d32	\N	{}
825d07b6-722f-4c87-8ab5-3381ce8a2b9b	campuses	rocky/9	\N	2025-01-26 21:10:28.41878+00	2025-01-26 21:10:28.41878+00	2025-01-26 21:10:28.41878+00	{"eTag": "\\"1c80aa849174f552f5e6ede512c7b654\\"", "size": 223929, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:28.409Z", "contentLength": 223929, "httpStatusCode": 200}	b06745ed-f5a7-4acf-b1eb-c2ae42a5d07e	\N	{}
a1f28fe8-41c1-4855-af54-c5213c62392f	campuses	uww/9	\N	2025-01-26 21:17:48.676112+00	2025-01-26 21:17:48.676112+00	2025-01-26 21:17:48.676112+00	{"eTag": "\\"c84583365f2788827156996eae1a5407\\"", "size": 124108, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:48.671Z", "contentLength": 124108, "httpStatusCode": 200}	19254e95-dfaa-4632-9248-3defdb938831	\N	{}
1e67f3aa-d93b-432c-b488-8e7b4694e8c1	campuses	slu/0	\N	2025-01-26 21:10:28.735731+00	2025-01-26 21:10:28.735731+00	2025-01-26 21:10:28.735731+00	{"eTag": "\\"92521efc1abbe6a8e899e480cc816b2a\\"", "size": 386, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:28.733Z", "contentLength": 386, "httpStatusCode": 200}	e5aea1dc-ab76-41d8-ab78-d8051565fbf4	\N	{}
f6ca1182-e4e5-4f7a-bc53-ae0d8cac4c4f	campuses	uc/7	\N	2025-01-26 21:14:06.590402+00	2025-01-26 21:14:06.590402+00	2025-01-26 21:14:06.590402+00	{"eTag": "\\"75d4621726081756d62480f232beda34\\"", "size": 163337, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:06.583Z", "contentLength": 163337, "httpStatusCode": 200}	4530e09a-2373-42fe-87e6-4f13dbbe90f2	\N	{}
e23cf85a-5caa-41a4-a2f4-11e2546d8f22	campuses	slu/1	\N	2025-01-26 21:10:29.338027+00	2025-01-26 21:10:29.338027+00	2025-01-26 21:10:29.338027+00	{"eTag": "\\"52491792127b5b96b0c4b53611664a2f\\"", "size": 621269, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:29.321Z", "contentLength": 621269, "httpStatusCode": 200}	c2cf7f4f-b2d0-486f-b426-e711c6da6e3b	\N	{}
56aff004-538f-44c6-ab64-cc6483fa104e	campuses	slu/2	\N	2025-01-26 21:10:29.932005+00	2025-01-26 21:10:29.932005+00	2025-01-26 21:10:29.932005+00	{"eTag": "\\"95c803290a767055e22906fd96f4475d\\"", "size": 257810, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:29.923Z", "contentLength": 257810, "httpStatusCode": 200}	df7e87c6-dc49-45fe-b916-17a143785a20	\N	{}
09e40119-fad4-4d68-a6e7-0a5e381c9ab5	campuses	uc/8	\N	2025-01-26 21:14:07.103767+00	2025-01-26 21:14:07.103767+00	2025-01-26 21:14:07.103767+00	{"eTag": "\\"933c5142866685b30e454e2dbd5ec331\\"", "size": 193976, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:07.100Z", "contentLength": 193976, "httpStatusCode": 200}	091d40cd-cb29-42d7-9632-a3c09837ad64	\N	{}
f1aec3b3-7afd-4232-9454-26eb3430bf72	campuses	slu/3	\N	2025-01-26 21:10:30.506898+00	2025-01-26 21:10:30.506898+00	2025-01-26 21:10:30.506898+00	{"eTag": "\\"ceb6c6e969c42146c58925b4eb9fb99a\\"", "size": 432083, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:30.495Z", "contentLength": 432083, "httpStatusCode": 200}	00a4518d-bc3f-4383-810a-aee90b9e729b	\N	{}
260ef1a8-aacb-44ba-afce-900f177872da	campuses	slu/4	\N	2025-01-26 21:10:31.36322+00	2025-01-26 21:10:31.36322+00	2025-01-26 21:10:31.36322+00	{"eTag": "\\"f343dca56b2e7ab62f2901e95190d06a\\"", "size": 77232, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:31.360Z", "contentLength": 77232, "httpStatusCode": 200}	e8208d08-5fe2-48d3-8e52-22d0eae89dc8	\N	{}
0acf4fe8-2ab3-429b-b925-a17c4b05ad4f	campuses	uc/9	\N	2025-01-26 21:14:08.110082+00	2025-01-26 21:14:08.110082+00	2025-01-26 21:14:08.110082+00	{"eTag": "\\"85bf3d71b6c04c36b0aeb0861912c0f5\\"", "size": 1499348, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:08.085Z", "contentLength": 1499348, "httpStatusCode": 200}	62e71c89-6417-4758-ba9c-b8f79a0a018e	\N	{}
29031e30-9907-4b76-8607-9ad064192911	campuses	slu/5	\N	2025-01-26 21:10:32.376676+00	2025-01-26 21:10:32.376676+00	2025-01-26 21:10:32.376676+00	{"eTag": "\\"5686fb34752352566409f759104017cf\\"", "size": 1052940, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:32.355Z", "contentLength": 1052940, "httpStatusCode": 200}	c2cebf1d-5879-49a8-90ee-ad3cb56560b2	\N	{}
a975b9a5-dbf6-477e-89a1-77c1db214159	campuses	slu/6	\N	2025-01-26 21:10:32.762671+00	2025-01-26 21:10:32.762671+00	2025-01-26 21:10:32.762671+00	{"eTag": "\\"55993d82861e3fc6cd353920c417fdcd\\"", "size": 154249, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:32.754Z", "contentLength": 154249, "httpStatusCode": 200}	4d019c36-a29b-4e3f-a838-a2a2cbda15d4	\N	{}
d15efd10-f716-4399-ae7a-bf659f1e7428	campuses	slu/7	\N	2025-01-26 21:10:33.430453+00	2025-01-26 21:10:33.430453+00	2025-01-26 21:10:33.430453+00	{"eTag": "\\"5aaa648afe66b414acaf2aaf8a57ce0f\\"", "size": 88779, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:33.425Z", "contentLength": 88779, "httpStatusCode": 200}	e85cc8f7-b73b-4345-81dc-5633dc4d6f3f	\N	{}
88f8bd70-75c9-4d09-8f86-f9de82ef9f94	campuses	slu/8	\N	2025-01-26 21:10:33.939905+00	2025-01-26 21:10:33.939905+00	2025-01-26 21:10:33.939905+00	{"eTag": "\\"a7b28e1435c8d89e986da1059aad669b\\"", "size": 165421, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:33.932Z", "contentLength": 165421, "httpStatusCode": 200}	f85a57c9-c662-4fa7-8590-b940deef52e5	\N	{}
027f8cec-6da6-4686-a2fc-c5f0a61e8b86	campuses	slu/9	\N	2025-01-26 21:10:34.508188+00	2025-01-26 21:10:34.508188+00	2025-01-26 21:10:34.508188+00	{"eTag": "\\"3b3d21aaf292721f7606e6073bfcdda5\\"", "size": 255107, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:34.500Z", "contentLength": 255107, "httpStatusCode": 200}	150e9fc7-72a9-402c-9b9c-b489c62070dd	\N	{}
450dbc2f-500e-4264-b6fb-c9c594947844	campuses	sdcc/0	\N	2025-01-26 21:10:35.149211+00	2025-01-26 21:10:35.149211+00	2025-01-26 21:10:35.149211+00	{"eTag": "\\"06641dfc74fa7d748e2589986546b1d6\\"", "size": 222764, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:35.137Z", "contentLength": 222764, "httpStatusCode": 200}	6b3dbc94-c486-4028-a935-b3b2dd4b5395	\N	{}
1bacdba9-1ffe-4477-84ed-3c641a550514	campuses	sdcc/1	\N	2025-01-26 21:10:35.670121+00	2025-01-26 21:10:35.670121+00	2025-01-26 21:10:35.670121+00	{"eTag": "\\"89cd3bf220299d06f76ca7f6a6d5dc99\\"", "size": 573397, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:35.656Z", "contentLength": 573397, "httpStatusCode": 200}	2ed6d7ed-fc0b-4ac9-be29-0013ebc00b41	\N	{}
27ecb99d-5c7c-45c9-9b8b-2346e7f5d5a6	campuses	sdcc/2	\N	2025-01-26 21:10:36.12431+00	2025-01-26 21:10:36.12431+00	2025-01-26 21:10:36.12431+00	{"eTag": "\\"dc97d2ad9a901d47f9cfa7eade90f190\\"", "size": 326494, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:36.113Z", "contentLength": 326494, "httpStatusCode": 200}	f13d0952-724f-41f5-931e-b938b9447990	\N	{}
544f9877-efb5-4ec2-99a0-809e4359dd69	campuses	colorado/0	\N	2025-01-26 21:14:08.701086+00	2025-01-26 21:14:08.701086+00	2025-01-26 21:14:08.701086+00	{"eTag": "\\"ce693e3214b9bf01028921ade69d4ce5\\"", "size": 244194, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:08.692Z", "contentLength": 244194, "httpStatusCode": 200}	59e25319-0f59-49c8-b065-d430adbbccea	\N	{}
9cdeaaf7-5bd1-4da2-aab4-732c50c17898	campuses	sdcc/3	\N	2025-01-26 21:10:36.502949+00	2025-01-26 21:10:36.502949+00	2025-01-26 21:10:36.502949+00	{"eTag": "\\"0033d08804512870f1b2342ead2f09c2\\"", "size": 116629, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:36.493Z", "contentLength": 116629, "httpStatusCode": 200}	951bb62b-e157-4afe-bf86-505f11077199	\N	{}
d731309c-a6d4-479e-adb3-a4e4dc61f267	campuses	ursuline/0	\N	2025-01-26 21:17:49.284235+00	2025-01-26 21:17:49.284235+00	2025-01-26 21:17:49.284235+00	{"eTag": "\\"1f671dcc8a2d31658bb0a80430ad6562\\"", "size": 571648, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:49.274Z", "contentLength": 571648, "httpStatusCode": 200}	c7968163-7811-4615-8307-5ac6c7696da6	\N	{}
db63d76a-c357-4341-98fd-819d0bf81b80	campuses	sdcc/4	\N	2025-01-26 21:10:36.862951+00	2025-01-26 21:10:36.862951+00	2025-01-26 21:10:36.862951+00	{"eTag": "\\"d8343d68f7b9cbd04524b55ca5b1274e\\"", "size": 96704, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:36.859Z", "contentLength": 96704, "httpStatusCode": 200}	52f8b6e4-f42a-413d-89cc-83430f079110	\N	{}
fcf2919c-84e0-4ef7-971a-2aba861b5020	campuses	colorado/1	\N	2025-01-26 21:14:09.644008+00	2025-01-26 21:14:09.644008+00	2025-01-26 21:14:09.644008+00	{"eTag": "\\"67a655ee13c4bafc0b5ac78654b3ed46\\"", "size": 209288, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:09.640Z", "contentLength": 209288, "httpStatusCode": 200}	a820c7b2-9410-4851-9bcd-a1eb4a75b93f	\N	{}
de684df1-a948-4332-912b-5af61bc00eee	campuses	sdcc/5	\N	2025-01-26 21:10:37.295048+00	2025-01-26 21:10:37.295048+00	2025-01-26 21:10:37.295048+00	{"eTag": "\\"f0065742899c1161ea4de6f4f2c45060\\"", "size": 171152, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:37.276Z", "contentLength": 171152, "httpStatusCode": 200}	048787ee-9e14-4029-bc19-3e3954f7a427	\N	{}
99619842-39b5-4ebd-858f-e0ea680723ae	campuses	sdcc/6	\N	2025-01-26 21:10:37.755862+00	2025-01-26 21:10:37.755862+00	2025-01-26 21:10:37.755862+00	{"eTag": "\\"24218914498680ecc22d9b9883673d0a\\"", "size": 314367, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:37.750Z", "contentLength": 314367, "httpStatusCode": 200}	e210a5bc-31d9-402b-8b10-dd1b9aeb9cc6	\N	{}
e7f88051-0c07-4d4d-a380-8b88d58118cb	campuses	colorado/2	\N	2025-01-26 21:14:10.134044+00	2025-01-26 21:14:10.134044+00	2025-01-26 21:14:10.134044+00	{"eTag": "\\"6d64c47671b38bb45529b212d4e5cc98\\"", "size": 300853, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:10.125Z", "contentLength": 300853, "httpStatusCode": 200}	0ef67c85-a8da-41af-93c1-bc23ddef6eff	\N	{}
8025a9ec-fdd3-4123-96f1-b9b589b79914	campuses	sdcc/7	\N	2025-01-26 21:10:38.046157+00	2025-01-26 21:10:38.046157+00	2025-01-26 21:10:38.046157+00	{"eTag": "\\"82e3f4012333d33d7f13f20894e3dc7d\\"", "size": 27407, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:38.042Z", "contentLength": 27407, "httpStatusCode": 200}	4ffebfe0-3ffe-4e86-9013-97a8c076134c	\N	{}
b9b56d52-aab3-46cb-a13d-46f827c708cf	campuses	sdcc/8	\N	2025-01-26 21:10:38.549842+00	2025-01-26 21:10:38.549842+00	2025-01-26 21:10:38.549842+00	{"eTag": "\\"c9108fb49cb8702d6d404cc4796948ca\\"", "size": 528404, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:38.537Z", "contentLength": 528404, "httpStatusCode": 200}	eb5ecd3f-c8a9-4c08-a87d-c6ff111d6895	\N	{}
43e451b9-1512-4d15-b1c1-57b6eec82209	campuses	sdcc/9	\N	2025-01-26 21:10:38.894647+00	2025-01-26 21:10:38.894647+00	2025-01-26 21:10:38.894647+00	{"eTag": "\\"9a3b397398ac19672c18423b2f33b8ab\\"", "size": 82799, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:38.891Z", "contentLength": 82799, "httpStatusCode": 200}	7e8759d2-69c1-4223-aae8-bb50abe6a189	\N	{}
8af0dcd4-e2cc-42fb-9506-fd922ca1343c	campuses	sdsu/0	\N	2025-01-26 21:10:39.733423+00	2025-01-26 21:10:39.733423+00	2025-01-26 21:10:39.733423+00	{"eTag": "\\"33a5162e9c77b53f2665f5b35aa38535\\"", "size": 53823, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:39.730Z", "contentLength": 53823, "httpStatusCode": 200}	a6f0eff6-e915-4de5-a011-9f14127cb243	\N	{}
8f1f53a8-6f21-4090-b051-6daa6f825674	campuses	sdsu/1	\N	2025-01-26 21:10:40.769619+00	2025-01-26 21:10:40.769619+00	2025-01-26 21:10:40.769619+00	{"eTag": "\\"ccac7840ccf22d651c69485ef0e600ef\\"", "size": 1210697, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:40.753Z", "contentLength": 1210697, "httpStatusCode": 200}	03de0a4b-9975-4f14-8e04-3adb6a08f508	\N	{}
9f6f3cb1-9ad9-4164-89a4-7220bd7114ca	campuses	sdsu/2	\N	2025-01-26 21:10:41.302428+00	2025-01-26 21:10:41.302428+00	2025-01-26 21:10:41.302428+00	{"eTag": "\\"9a9027e56265d74bd3e0fa47e447e235\\"", "size": 641783, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:41.293Z", "contentLength": 641783, "httpStatusCode": 200}	8d5f9461-7481-4fc9-95c2-1af8dd1465bf	\N	{}
8b9d813d-c01d-4c9e-bb3f-b015daba1276	campuses	sdsu/3	\N	2025-01-26 21:10:41.701796+00	2025-01-26 21:10:41.701796+00	2025-01-26 21:10:41.701796+00	{"eTag": "\\"ce07fea4b77771c3d950ce1b7f6e0f11\\"", "size": 296487, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:41.691Z", "contentLength": 296487, "httpStatusCode": 200}	7741fc03-8b0e-4670-887c-14ac4df4f5e3	\N	{}
fc5ba275-7e82-4433-b94f-f03c05b32f22	campuses	sdsu/4	\N	2025-01-26 21:10:42.698689+00	2025-01-26 21:10:42.698689+00	2025-01-26 21:10:42.698689+00	{"eTag": "\\"3e1b7531574cf19ca760c6319da1c5c1\\"", "size": 3440675, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:42.663Z", "contentLength": 3440675, "httpStatusCode": 200}	aaa88544-3600-4925-a142-abfed49e7da4	\N	{}
33676fd0-4b29-45c5-9842-5f45660e1b0a	campuses	sdsu/5	\N	2025-01-26 21:10:43.41972+00	2025-01-26 21:10:43.41972+00	2025-01-26 21:10:43.41972+00	{"eTag": "\\"de09fdf5d817e0a9a9a0adae24be2f00\\"", "size": 1622191, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:43.400Z", "contentLength": 1622191, "httpStatusCode": 200}	74e9a604-82f8-4b5c-b60d-63dda34746c6	\N	{}
67ea4817-3e13-4a7d-8aab-5c02cdff4724	campuses	sdsu/6	\N	2025-01-26 21:10:43.980007+00	2025-01-26 21:10:43.980007+00	2025-01-26 21:10:43.980007+00	{"eTag": "\\"c35320079fbc309616e5caaf38611cba\\"", "size": 278072, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:43.975Z", "contentLength": 278072, "httpStatusCode": 200}	15c8966d-03d1-401a-a12c-707126fe2d84	\N	{}
fe40247f-692a-4773-a1f8-d037c88f68dd	campuses	sdsu/7	\N	2025-01-26 21:10:44.597908+00	2025-01-26 21:10:44.597908+00	2025-01-26 21:10:44.597908+00	{"eTag": "\\"495aa417176cf77b3dbbfd14526bec03\\"", "size": 460790, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:44.580Z", "contentLength": 460790, "httpStatusCode": 200}	7955d6bb-057d-43d9-8aa2-59226d1656d2	\N	{}
6cc7bced-645a-4e20-b1eb-df24b9ed1d09	campuses	colorado/3	\N	2025-01-26 21:14:10.493103+00	2025-01-26 21:14:10.493103+00	2025-01-26 21:14:10.493103+00	{"eTag": "\\"c60e8e1474254ec5e4044658c1878f46\\"", "size": 386, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:10.489Z", "contentLength": 386, "httpStatusCode": 200}	cdbad5fe-4649-4cef-aa96-eab593bac2ec	\N	{}
6f2d562c-a444-43dc-89af-af7f898eac3b	campuses	sdsu/8	\N	2025-01-26 21:10:45.161749+00	2025-01-26 21:10:45.161749+00	2025-01-26 21:10:45.161749+00	{"eTag": "\\"fcb18dc197bc9c8911e391611cd673a3\\"", "size": 816452, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:45.144Z", "contentLength": 816452, "httpStatusCode": 200}	e4728990-851e-4711-ab03-81e3dc97ff68	\N	{}
025967c4-0f6a-4c33-8f36-4635ed6b6c11	campuses	colorado/4	\N	2025-01-26 21:14:10.923723+00	2025-01-26 21:14:10.923723+00	2025-01-26 21:14:10.923723+00	{"eTag": "\\"e8696b6b472de94679e80ba0344bd381\\"", "size": 37206, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:10.918Z", "contentLength": 37206, "httpStatusCode": 200}	d9606b65-ac90-43ff-8b4e-d0e71b1e59c3	\N	{}
506b3c3f-1ece-4ff1-af49-342aad49948e	campuses	usu/0	\N	2025-01-26 21:17:49.779004+00	2025-01-26 21:17:49.779004+00	2025-01-26 21:17:49.779004+00	{"eTag": "\\"53a095cae492bc11e00b8d83387f1dec\\"", "size": 277, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:49.774Z", "contentLength": 277, "httpStatusCode": 200}	2012c50b-2ba1-4856-b71b-6528d6ab45ac	\N	{}
94203156-9fb0-4ef8-b042-0582c63b9822	campuses	colorado/5	\N	2025-01-26 21:14:11.321121+00	2025-01-26 21:14:11.321121+00	2025-01-26 21:14:11.321121+00	{"eTag": "\\"ef878d6651a0316633664acc6a0d7a13\\"", "size": 237773, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:11.312Z", "contentLength": 237773, "httpStatusCode": 200}	17368ff3-25a0-432b-ad92-496b7733bb58	\N	{}
161c4062-1f35-460a-85eb-d70893f46c8d	campuses	colorado/6	\N	2025-01-26 21:14:12.021432+00	2025-01-26 21:14:12.021432+00	2025-01-26 21:14:12.021432+00	{"eTag": "\\"6e4f321332bd9974b8ae400d4f825259\\"", "size": 179165, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:12.015Z", "contentLength": 179165, "httpStatusCode": 200}	110efe1e-084f-46c2-9b2b-9ac80a02113b	\N	{}
b079b2d5-ae2e-4bbd-80e1-ddcbc2ea3f38	campuses	usu/1	\N	2025-01-26 21:17:50.072838+00	2025-01-26 21:17:50.072838+00	2025-01-26 21:17:50.072838+00	{"eTag": "\\"53a095cae492bc11e00b8d83387f1dec\\"", "size": 277, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:50.070Z", "contentLength": 277, "httpStatusCode": 200}	e9e9356d-4c5b-4761-9c39-25a7544c2aad	\N	{}
64ebd583-fe5b-4b6c-9782-20591155e33f	campuses	colorado/7	\N	2025-01-26 21:14:12.322489+00	2025-01-26 21:14:12.322489+00	2025-01-26 21:14:12.322489+00	{"eTag": "\\"90a258aa03aac96cfd391286f46b3b06\\"", "size": 16271, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:12.318Z", "contentLength": 16271, "httpStatusCode": 200}	1ea85db2-6a2f-4f92-8012-c764ae31426b	\N	{}
f26770b2-f124-4c7c-89ce-1ede5f738b38	campuses	colorado/8	\N	2025-01-26 21:14:13.229437+00	2025-01-26 21:14:13.229437+00	2025-01-26 21:14:13.229437+00	{"eTag": "\\"18deeaac0f7458cb49f89c6496e7d4e9\\"", "size": 1515776, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:13.208Z", "contentLength": 1515776, "httpStatusCode": 200}	bb1f6783-fd56-4b06-b8ba-0d3d66e7301c	\N	{}
6fb6ad11-a007-45c3-a126-6f966359ecbd	campuses	usu/2	\N	2025-01-26 21:17:50.368159+00	2025-01-26 21:17:50.368159+00	2025-01-26 21:17:50.368159+00	{"eTag": "\\"53a095cae492bc11e00b8d83387f1dec\\"", "size": 277, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:50.363Z", "contentLength": 277, "httpStatusCode": 200}	728bf10e-4ac8-48c0-bd05-932378d39fb8	\N	{}
0a2cf388-fcb4-490e-ad69-473734468fb2	campuses	colorado/9	\N	2025-01-26 21:14:14.020857+00	2025-01-26 21:14:14.020857+00	2025-01-26 21:14:14.020857+00	{"eTag": "\\"7702176ed412f1a14c1cab71eb0f7733\\"", "size": 123689, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:14.015Z", "contentLength": 123689, "httpStatusCode": 200}	05632ad3-a1c3-451f-9551-fc3b2d67d53a	\N	{}
44b67532-86a6-4248-9ac1-d251f3f05130	campuses	uccs/0	\N	2025-01-26 21:14:14.728497+00	2025-01-26 21:14:14.728497+00	2025-01-26 21:14:14.728497+00	{"eTag": "\\"15b937c91056bf8aeeef400cde3886aa\\"", "size": 250509, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:14.721Z", "contentLength": 250509, "httpStatusCode": 200}	f6410cfb-d6ab-4631-9d9e-1f1fe16d415f	\N	{}
0a6a2559-d119-4a7d-9f0d-31099c8882d8	campuses	uccs/1	\N	2025-01-26 21:14:15.448933+00	2025-01-26 21:14:15.448933+00	2025-01-26 21:14:15.448933+00	{"eTag": "\\"34d10b0cf1cafba0a154829ca18a6a6f\\"", "size": 1730196, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:15.419Z", "contentLength": 1730196, "httpStatusCode": 200}	3ac8ba2b-19c8-4954-a8af-6fc5378cedc5	\N	{}
9a7114eb-8e9a-48e9-bff9-043787e21d58	campuses	uccs/2	\N	2025-01-26 21:14:15.924746+00	2025-01-26 21:14:15.924746+00	2025-01-26 21:14:15.924746+00	{"eTag": "\\"e3955f454be00fc26e1a0c116ea47abe\\"", "size": 106157, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:15.916Z", "contentLength": 106157, "httpStatusCode": 200}	8d10cd8f-2f00-4b63-826f-66622735c919	\N	{}
b16ff234-14e8-4bf1-96fd-27ce79f628a2	campuses	uccs/3	\N	2025-01-26 21:14:16.650515+00	2025-01-26 21:14:16.650515+00	2025-01-26 21:14:16.650515+00	{"eTag": "\\"3d3e50540f833eae91fd2501d19c1bfa\\"", "size": 1108847, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:16.630Z", "contentLength": 1108847, "httpStatusCode": 200}	838db871-d55e-4777-90bb-6174fe41f342	\N	{}
ed33392a-d6ef-4fb3-a2f4-e91bcace7706	campuses	uccs/4	\N	2025-01-26 21:14:17.439468+00	2025-01-26 21:14:17.439468+00	2025-01-26 21:14:17.439468+00	{"eTag": "\\"7049c2b311fb4f7ae95c22eaeb3deab6\\"", "size": 2190145, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:17.401Z", "contentLength": 2190145, "httpStatusCode": 200}	18b2fe97-66a5-447a-a457-305b788e2be9	\N	{}
d9ff2428-59b5-476f-94b1-fb4b772c76b0	campuses	uccs/5	\N	2025-01-26 21:14:17.934912+00	2025-01-26 21:14:17.934912+00	2025-01-26 21:14:17.934912+00	{"eTag": "\\"cb4af8887d05d6beabac5d17f670dd43\\"", "size": 179957, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:17.925Z", "contentLength": 179957, "httpStatusCode": 200}	e4f44fbf-2060-45c6-971f-5b9a6ed69444	\N	{}
3f3d8bd7-6fa9-49e6-9040-2bcdd5c9f352	campuses	sdsu/9	\N	2025-01-26 21:10:45.866108+00	2025-01-26 21:10:45.866108+00	2025-01-26 21:10:45.866108+00	{"eTag": "\\"478ac1b20e5057d2603ce219c3293c04\\"", "size": 20759, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:45.862Z", "contentLength": 20759, "httpStatusCode": 200}	b06e4407-55a6-47d7-b970-fdf6a9bbaf54	\N	{}
aa0d2cec-2060-476a-b223-3dab10b8548e	campuses	usu/3	\N	2025-01-26 21:17:50.665256+00	2025-01-26 21:17:50.665256+00	2025-01-26 21:17:50.665256+00	{"eTag": "\\"53a095cae492bc11e00b8d83387f1dec\\"", "size": 277, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:50.661Z", "contentLength": 277, "httpStatusCode": 200}	60f54d8e-d212-42e3-9d44-792e12066efa	\N	{}
abb9cfd4-fd88-4467-a34c-b3e81586acea	campuses	sva/0	\N	2025-01-26 21:10:46.524126+00	2025-01-26 21:10:46.524126+00	2025-01-26 21:10:46.524126+00	{"eTag": "\\"239fabba3809ea3d33b072d6a54ae4d6\\"", "size": 93097, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:46.519Z", "contentLength": 93097, "httpStatusCode": 200}	c07dee63-64d1-4a1f-aa70-39520a3bb6c8	\N	{}
4a684eea-ecfd-4f3a-b12a-b85f811a2b99	campuses	uccs/6	\N	2025-01-26 21:14:18.563673+00	2025-01-26 21:14:18.563673+00	2025-01-26 21:14:18.563673+00	{"eTag": "\\"814c69e2e4e9e60986fa6f9702146281\\"", "size": 400043, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:18.554Z", "contentLength": 400043, "httpStatusCode": 200}	40034f10-a4b8-4472-b53c-aef6945c730c	\N	{}
f0aaf9bb-5d3b-49ff-915f-7c7de5fc1571	campuses	sva/1	\N	2025-01-26 21:10:47.362549+00	2025-01-26 21:10:47.362549+00	2025-01-26 21:10:47.362549+00	{"eTag": "\\"7670a34c4c3ea3498d0641657ddee3d8\\"", "size": 1562557, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:47.341Z", "contentLength": 1562557, "httpStatusCode": 200}	6f456c23-d1ad-4095-9aa9-2f50bc192682	\N	{}
0918d814-e015-42b8-8958-07b72a1d2f17	campuses	sva/2	\N	2025-01-26 21:10:48.029749+00	2025-01-26 21:10:48.029749+00	2025-01-26 21:10:48.029749+00	{"eTag": "\\"59b0a8830c96991d7fc0468976af7eb1\\"", "size": 756439, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:48.019Z", "contentLength": 756439, "httpStatusCode": 200}	719c68b9-b417-456d-be6b-ba1cb1e4f968	\N	{}
9194c8c7-83bd-4fbe-a35e-fd880dc56133	campuses	uccs/7	\N	2025-01-26 21:14:19.116707+00	2025-01-26 21:14:19.116707+00	2025-01-26 21:14:19.116707+00	{"eTag": "\\"5a554b3c7a05e85ce2c64a2db7b0cc5e\\"", "size": 193828, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:19.110Z", "contentLength": 193828, "httpStatusCode": 200}	0f3b3b5b-a376-42c4-94a6-f7cae2067c99	\N	{}
858dbdad-fb73-4f46-95fc-2afb0cd2c705	campuses	sva/3	\N	2025-01-26 21:10:48.531339+00	2025-01-26 21:10:48.531339+00	2025-01-26 21:10:48.531339+00	{"eTag": "\\"158d55720a1f9b9336beebfeeb85978c\\"", "size": 218971, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:48.523Z", "contentLength": 218971, "httpStatusCode": 200}	50b66787-80ac-485d-99c3-d0ed1f37333c	\N	{}
0f8562f3-7f1b-475c-a11a-d60327dcbcb9	campuses	sva/4	\N	2025-01-26 21:10:49.182691+00	2025-01-26 21:10:49.182691+00	2025-01-26 21:10:49.182691+00	{"eTag": "\\"33db9db5b0f1c64d4f72405f6c0ad334\\"", "size": 1292053, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:49.172Z", "contentLength": 1292053, "httpStatusCode": 200}	0562567e-0404-4460-bcb0-dc1fae76ddcf	\N	{}
861ed73a-fa54-4194-98f5-250e330c94d8	campuses	uccs/8	\N	2025-01-26 21:14:19.815998+00	2025-01-26 21:14:19.815998+00	2025-01-26 21:14:19.815998+00	{"eTag": "\\"7e138efcc1e17b2c99bd62aa90186e6d\\"", "size": 981568, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:19.797Z", "contentLength": 981568, "httpStatusCode": 200}	6734667f-c0b8-4b63-9fcf-cc8f9b734840	\N	{}
fe3d77ff-e92c-4c0c-b7a1-f44598ed23a6	campuses	sva/5	\N	2025-01-26 21:10:50.079568+00	2025-01-26 21:10:50.079568+00	2025-01-26 21:10:50.079568+00	{"eTag": "\\"b857ed71c38a0850dd25d40af61eb6bd\\"", "size": 3724059, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:50.040Z", "contentLength": 3724059, "httpStatusCode": 200}	5eda8b01-8287-4a8c-87c7-f69a481610c8	\N	{}
774477ce-9b4c-414d-82f5-e4cdcdafa302	campuses	sva/6	\N	2025-01-26 21:10:50.639438+00	2025-01-26 21:10:50.639438+00	2025-01-26 21:10:50.639438+00	{"eTag": "\\"43bfd7ffe2a32f5dca601e14916445e6\\"", "size": 214410, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:50.631Z", "contentLength": 214410, "httpStatusCode": 200}	fabad86b-0ce7-4078-af27-3cecaefbcfd0	\N	{}
22557c33-ae24-4e74-aac5-fa4ae3dfd59c	campuses	sva/7	\N	2025-01-26 21:10:51.172217+00	2025-01-26 21:10:51.172217+00	2025-01-26 21:10:51.172217+00	{"eTag": "\\"37630363e6e50455991121ca3eca7788\\"", "size": 373156, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:51.164Z", "contentLength": 373156, "httpStatusCode": 200}	cbfedb24-4728-4b42-af9f-8ed1c364d531	\N	{}
24db4b3b-58f0-4c85-bcb8-446928acc124	campuses	sva/8	\N	2025-01-26 21:10:51.771581+00	2025-01-26 21:10:51.771581+00	2025-01-26 21:10:51.771581+00	{"eTag": "\\"f6fd72b594f56cf577ca3774dc04041c\\"", "size": 587118, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:51.758Z", "contentLength": 587118, "httpStatusCode": 200}	0ebe5741-a004-4308-a417-db8dd8085d33	\N	{}
5df31706-d919-4159-83e8-d1b0d9aa59ee	campuses	sva/9	\N	2025-01-26 21:10:52.230127+00	2025-01-26 21:10:52.230127+00	2025-01-26 21:10:52.230127+00	{"eTag": "\\"a4af3302fa06992d773834ea0341b531\\"", "size": 105307, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:52.226Z", "contentLength": 105307, "httpStatusCode": 200}	b5cfa1ec-0f80-4ead-99b1-759d4a0685d1	\N	{}
2c80d037-2ffa-4192-b3e0-74895b1135f7	campuses	shu/0	\N	2025-01-26 21:10:52.952447+00	2025-01-26 21:10:52.952447+00	2025-01-26 21:10:52.952447+00	{"eTag": "\\"0d0173cd8a4f814abeefdffc147bfe6e\\"", "size": 42282, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:52.950Z", "contentLength": 42282, "httpStatusCode": 200}	a4b65962-0e77-42ca-a114-32ff786a855b	\N	{}
2528f468-cb19-4b5a-9575-4c8491806bf2	campuses	shu/1	\N	2025-01-26 21:10:53.607728+00	2025-01-26 21:10:53.607728+00	2025-01-26 21:10:53.607728+00	{"eTag": "\\"0ed2a64268251f2b88c6c3af320305f4\\"", "size": 838100, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:53.592Z", "contentLength": 838100, "httpStatusCode": 200}	2f68a15e-ff69-4fd4-b11a-616eeada32f3	\N	{}
113f619d-3429-4bec-acb4-a90ffeae801b	campuses	shu/2	\N	2025-01-26 21:10:54.15161+00	2025-01-26 21:10:54.15161+00	2025-01-26 21:10:54.15161+00	{"eTag": "\\"5344fa70b9390bf268c005e4610896df\\"", "size": 45951, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:54.140Z", "contentLength": 45951, "httpStatusCode": 200}	eaedfa5e-3a85-4b10-9c0c-1df14f7e7653	\N	{}
8771ece6-4714-4d16-9196-4a27fe88a050	campuses	shu/3	\N	2025-01-26 21:10:54.990173+00	2025-01-26 21:10:54.990173+00	2025-01-26 21:10:54.990173+00	{"eTag": "\\"94fbd1d33442bf511e06d2071480ef93\\"", "size": 145077, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:54.984Z", "contentLength": 145077, "httpStatusCode": 200}	79f622cb-2d24-4082-ac06-509c1754b62c	\N	{}
14b264fb-65c8-435d-95cb-eb217be5d17c	campuses	shu/4	\N	2025-01-26 21:10:55.506619+00	2025-01-26 21:10:55.506619+00	2025-01-26 21:10:55.506619+00	{"eTag": "\\"9b2656ce20a9d225f278002ff452b871\\"", "size": 26573, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:55.499Z", "contentLength": 26573, "httpStatusCode": 200}	0bda8d16-1cd9-4b81-9b20-56aa537bdd80	\N	{}
4b310c40-d826-4608-b656-4ba4ca7608a8	campuses	uccs/9	\N	2025-01-26 21:14:20.396152+00	2025-01-26 21:14:20.396152+00	2025-01-26 21:14:20.396152+00	{"eTag": "\\"c60dd73c601c41d98d50202511f3819e\\"", "size": 246887, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:20.388Z", "contentLength": 246887, "httpStatusCode": 200}	008428b7-44ad-4ec4-86f8-967b9d72554a	\N	{}
8cacde04-fda2-4d22-b869-638967242369	campuses	shu/6	\N	2025-01-26 21:10:56.37736+00	2025-01-26 21:10:56.37736+00	2025-01-26 21:10:56.37736+00	{"eTag": "\\"d9e4388af87cac434477c186feffb38b\\"", "size": 94427, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:56.373Z", "contentLength": 94427, "httpStatusCode": 200}	7c4d7fc8-3251-48bc-a378-e40cd9cdec42	\N	{}
a85f89ab-fb49-476c-bd7f-5574577e03cc	campuses	usu/4	\N	2025-01-26 21:17:50.966244+00	2025-01-26 21:17:50.966244+00	2025-01-26 21:17:50.966244+00	{"eTag": "\\"53a095cae492bc11e00b8d83387f1dec\\"", "size": 277, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:50.963Z", "contentLength": 277, "httpStatusCode": 200}	1e254060-7cc4-4f0b-a55e-5aa7f966d669	\N	{}
2fb95f49-539b-4b9f-9125-0458df0c5f0a	campuses	shu/7	\N	2025-01-26 21:10:56.891928+00	2025-01-26 21:10:56.891928+00	2025-01-26 21:10:56.891928+00	{"eTag": "\\"9e5a84712bc847351851d765f9c3c2c2\\"", "size": 29859, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:56.888Z", "contentLength": 29859, "httpStatusCode": 200}	25387db4-1325-4147-83f5-ccd4a1983b23	\N	{}
e2c02c27-b15e-4b61-8482-71ef1c23a7e0	campuses	udel/0	\N	2025-01-26 21:14:21.13338+00	2025-01-26 21:14:21.13338+00	2025-01-26 21:14:21.13338+00	{"eTag": "\\"77884ba34a0f8dacf55da7b0c18039c4\\"", "size": 282039, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:21.123Z", "contentLength": 282039, "httpStatusCode": 200}	ecdb144f-f57c-4991-9cef-5c87da1239be	\N	{}
1fa7d517-5676-42d0-aba5-6ff31f55f7df	campuses	shu/8	\N	2025-01-26 21:10:57.522333+00	2025-01-26 21:10:57.522333+00	2025-01-26 21:10:57.522333+00	{"eTag": "\\"27d36ac792849d41752fd2661dd5a171\\"", "size": 225194, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:57.515Z", "contentLength": 225194, "httpStatusCode": 200}	0f0465b5-cbc2-4c81-ae92-34494cb9ce94	\N	{}
f4477038-3bdc-4019-9de2-4ba4643c3292	campuses	shu/9	\N	2025-01-26 21:10:58.557087+00	2025-01-26 21:10:58.557087+00	2025-01-26 21:10:58.557087+00	{"eTag": "\\"24e5508b9ec9db988bece37072a26d2e\\"", "size": 963819, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:58.542Z", "contentLength": 963819, "httpStatusCode": 200}	043ae9b7-a5de-49a6-bfa1-b9b4598ae6d3	\N	{}
b2ee170f-25ec-45c0-aa46-1ba465c8f544	campuses	udel/1	\N	2025-01-26 21:14:21.66789+00	2025-01-26 21:14:21.66789+00	2025-01-26 21:14:21.66789+00	{"eTag": "\\"0abe6724f9fc5811cd3ca9530ae81260\\"", "size": 282660, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:21.663Z", "contentLength": 282660, "httpStatusCode": 200}	f76d004f-c136-4bec-a571-e8895d1e3c63	\N	{}
3224bd8a-90cc-481b-b392-c115c2451984	campuses	setonhill/0	\N	2025-01-26 21:10:59.273838+00	2025-01-26 21:10:59.273838+00	2025-01-26 21:10:59.273838+00	{"eTag": "\\"7aad585a2bcae001c1dd1df2d416bac2\\"", "size": 324029, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:59.269Z", "contentLength": 324029, "httpStatusCode": 200}	11cf8b45-53c1-4ff9-a00a-e2b29be6d2bd	\N	{}
b4b0c82e-e26a-429d-9e95-a81283158df4	campuses	setonhill/1	\N	2025-01-26 21:10:59.892294+00	2025-01-26 21:10:59.892294+00	2025-01-26 21:10:59.892294+00	{"eTag": "\\"f458f2bf440248028ac1128f6f5f1525\\"", "size": 465810, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:10:59.888Z", "contentLength": 465810, "httpStatusCode": 200}	a97522ef-1cbc-4d1c-a598-807fa353fa7c	\N	{}
40254104-a02a-4379-94af-f2a6ac1385a6	campuses	udel/2	\N	2025-01-26 21:14:22.179667+00	2025-01-26 21:14:22.179667+00	2025-01-26 21:14:22.179667+00	{"eTag": "\\"9155e3bd3c3202e27915759d5459a38f\\"", "size": 106651, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:22.175Z", "contentLength": 106651, "httpStatusCode": 200}	5395831a-c512-4555-92fb-3d54ea7f8fee	\N	{}
665ec103-a36f-4437-8818-c6b7ab7e6a3b	campuses	setonhill/2	\N	2025-01-26 21:11:00.416252+00	2025-01-26 21:11:00.416252+00	2025-01-26 21:11:00.416252+00	{"eTag": "\\"3bc65d9a95c3f6a0d52c73146239793f\\"", "size": 291076, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:00.409Z", "contentLength": 291076, "httpStatusCode": 200}	0503ac1a-6ed4-4d74-94ed-6313097623c7	\N	{}
444e4510-1c1b-4af0-adc0-f50d880cd0c2	campuses	setonhill/3	\N	2025-01-26 21:11:00.994474+00	2025-01-26 21:11:00.994474+00	2025-01-26 21:11:00.994474+00	{"eTag": "\\"a698b97c9bf054fac6781aa7dce024dc\\"", "size": 401867, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:00.982Z", "contentLength": 401867, "httpStatusCode": 200}	c0c79469-e67c-4a72-b812-7bbc8ad9b747	\N	{}
c295c25f-cb2b-4db5-8c33-897f8f4df8da	campuses	setonhill/4	\N	2025-01-26 21:11:01.552561+00	2025-01-26 21:11:01.552561+00	2025-01-26 21:11:01.552561+00	{"eTag": "\\"92538c0311566f0859230dbdc0d7e2cf\\"", "size": 338318, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:01.543Z", "contentLength": 338318, "httpStatusCode": 200}	fb93c4c6-7d30-480b-9683-e5dedabc3a4b	\N	{}
8bab358b-d94d-4f62-944c-caa0e6ecab9a	campuses	setonhill/5	\N	2025-01-26 21:11:02.118779+00	2025-01-26 21:11:02.118779+00	2025-01-26 21:11:02.118779+00	{"eTag": "\\"99e69c80b9ecdb8c841ba65f6fd7fa4b\\"", "size": 260714, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:02.114Z", "contentLength": 260714, "httpStatusCode": 200}	91bb6f19-5f2c-48b1-8552-530dcff1b172	\N	{}
5828004d-537d-4a73-84b2-f9df0acce8d5	campuses	setonhill/6	\N	2025-01-26 21:11:02.734449+00	2025-01-26 21:11:02.734449+00	2025-01-26 21:11:02.734449+00	{"eTag": "\\"2305a34e64f6157aac00fca3bbab6ef1\\"", "size": 712676, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:02.729Z", "contentLength": 712676, "httpStatusCode": 200}	bd10e47f-9759-4487-b75a-6e65c74e961a	\N	{}
accf2393-d6e8-428e-8454-57db508bd8a9	campuses	setonhill/7	\N	2025-01-26 21:11:03.250993+00	2025-01-26 21:11:03.250993+00	2025-01-26 21:11:03.250993+00	{"eTag": "\\"a9ac51df386215347fbf94d060038cf7\\"", "size": 142785, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:03.244Z", "contentLength": 142785, "httpStatusCode": 200}	b3d9ea39-7849-495e-aeb5-23b1ead2d6a4	\N	{}
a3c68c04-54ce-4df1-af33-3008dd4159b2	campuses	setonhill/8	\N	2025-01-26 21:11:03.83312+00	2025-01-26 21:11:03.83312+00	2025-01-26 21:11:03.83312+00	{"eTag": "\\"1753d36a292d41f1c5b89073ba744211\\"", "size": 690063, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:03.820Z", "contentLength": 690063, "httpStatusCode": 200}	e879e026-477f-4198-b7d7-7774dc015f8c	\N	{}
a7bcabe8-babe-4d41-a94c-8f2aac9defe4	campuses	setonhill/9	\N	2025-01-26 21:11:04.418782+00	2025-01-26 21:11:04.418782+00	2025-01-26 21:11:04.418782+00	{"eTag": "\\"3caeb8eb72cb2b56b8e7463995de227f\\"", "size": 304021, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:04.408Z", "contentLength": 304021, "httpStatusCode": 200}	0e10464d-272c-4f8f-8b83-452d794ff905	\N	{}
a638e64b-ef2d-4cdf-847c-52f6afd42979	campuses	smith/0	\N	2025-01-26 21:11:05.591696+00	2025-01-26 21:11:05.591696+00	2025-01-26 21:11:05.591696+00	{"eTag": "\\"162bd9748c4e3e88a62c3d19e6cd35e3\\"", "size": 160570, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:05.587Z", "contentLength": 160570, "httpStatusCode": 200}	fa80b9ce-5355-47aa-9aa0-9496da6a10ef	\N	{}
9c092b11-5ef4-4d62-a2cb-d788a7b4cc25	campuses	udel/3	\N	2025-01-26 21:14:22.696114+00	2025-01-26 21:14:22.696114+00	2025-01-26 21:14:22.696114+00	{"eTag": "\\"5e05be206cd69abfd89213773c2d2aae\\"", "size": 188510, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:22.692Z", "contentLength": 188510, "httpStatusCode": 200}	9af85988-3a54-4dc0-bf3e-991f2adb7224	\N	{}
73c72b1d-a3bb-4698-992e-017b9749a2e8	campuses	smith/1	\N	2025-01-26 21:11:06.225221+00	2025-01-26 21:11:06.225221+00	2025-01-26 21:11:06.225221+00	{"eTag": "\\"b80f01b6de9d9b7ea16a3cd572fba9f1\\"", "size": 1042155, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:06.214Z", "contentLength": 1042155, "httpStatusCode": 200}	44fdc492-6043-4c32-bba0-645708a738f2	\N	{}
256167a1-ee39-4184-b0d0-e07805c31907	campuses	usu/5	\N	2025-01-26 21:17:51.441428+00	2025-01-26 21:17:51.441428+00	2025-01-26 21:17:51.441428+00	{"eTag": "\\"5130e25c9b2c45a8f2f2d06fc393e4e8\\"", "size": 278, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:51.438Z", "contentLength": 278, "httpStatusCode": 200}	3bd24934-7243-41ce-b12e-0e20f21c61fa	\N	{}
3cb4668f-256a-4e02-8ea9-d45e27d49cb5	campuses	smith/2	\N	2025-01-26 21:11:06.521874+00	2025-01-26 21:11:06.521874+00	2025-01-26 21:11:06.521874+00	{"eTag": "\\"c5a864a4ad61180aa36fded4762e0e8d\\"", "size": 45871, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:06.516Z", "contentLength": 45871, "httpStatusCode": 200}	cab0805f-612b-4d9b-ad3c-f167c3059a0b	\N	{}
947bab8a-5afd-4c5e-85d0-b2ede5ee5470	campuses	udel/4	\N	2025-01-26 21:14:23.234882+00	2025-01-26 21:14:23.234882+00	2025-01-26 21:14:23.234882+00	{"eTag": "\\"f697e3d3d39dbaec4ae077609bf8c1bb\\"", "size": 230520, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:23.226Z", "contentLength": 230520, "httpStatusCode": 200}	19abd77a-52c7-43be-bcc7-b104291ac49e	\N	{}
20729748-c0d8-47d9-bf56-77a6280eb4c4	campuses	smith/3	\N	2025-01-26 21:11:07.282431+00	2025-01-26 21:11:07.282431+00	2025-01-26 21:11:07.282431+00	{"eTag": "\\"187141e24fddf0fa03c97f48c808832a\\"", "size": 5017548, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:07.241Z", "contentLength": 5017548, "httpStatusCode": 200}	ec610353-70b2-4421-a069-7d317ef54be3	\N	{}
4308f46e-c9ee-4b2d-a24f-67b18598d3bb	campuses	smith/4	\N	2025-01-26 21:11:08.008742+00	2025-01-26 21:11:08.008742+00	2025-01-26 21:11:08.008742+00	{"eTag": "\\"8b09c4e0c7fe17cb88f8fd95c025c07e\\"", "size": 551413, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:07.996Z", "contentLength": 551413, "httpStatusCode": 200}	8ac38145-395c-43e4-aa73-5873a544407e	\N	{}
c815b07e-11a1-460d-9cfa-605da5b0236a	campuses	udel/5	\N	2025-01-26 21:14:23.748783+00	2025-01-26 21:14:23.748783+00	2025-01-26 21:14:23.748783+00	{"eTag": "\\"89fc9379856004d37bccce835cf04395\\"", "size": 203456, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:23.742Z", "contentLength": 203456, "httpStatusCode": 200}	7f2843b7-ecfd-4fad-aaaa-cfc511c81ac8	\N	{}
11fe6f05-f652-43a7-be39-eeb208afd93c	campuses	smith/5	\N	2025-01-26 21:11:08.815327+00	2025-01-26 21:11:08.815327+00	2025-01-26 21:11:08.815327+00	{"eTag": "\\"64eb0ad06165907eea2a4e1179be13cb\\"", "size": 520075, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:08.808Z", "contentLength": 520075, "httpStatusCode": 200}	1c071c0d-5e07-416d-86b8-36b4bd22ba06	\N	{}
485879ca-3b97-4020-8aba-4fd474cd0f54	campuses	smith/6	\N	2025-01-26 21:11:09.909242+00	2025-01-26 21:11:09.909242+00	2025-01-26 21:11:09.909242+00	{"eTag": "\\"1bc9c231d7c228212cef1af2afe8eb65\\"", "size": 213291, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:09.901Z", "contentLength": 213291, "httpStatusCode": 200}	bd843b76-32bd-4016-a9df-5691a03f5761	\N	{}
389a8427-1dda-4887-9694-63ab54ee9c98	campuses	smith/7	\N	2025-01-26 21:11:10.403127+00	2025-01-26 21:11:10.403127+00	2025-01-26 21:11:10.403127+00	{"eTag": "\\"f19f6fc637884875c3083fcf5b2bf238\\"", "size": 442615, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:10.394Z", "contentLength": 442615, "httpStatusCode": 200}	ba7b190a-2727-429f-a871-3f7e21298072	\N	{}
0f2acec7-544e-4ed0-a368-cb302ad915da	campuses	smith/8	\N	2025-01-26 21:11:10.949302+00	2025-01-26 21:11:10.949302+00	2025-01-26 21:11:10.949302+00	{"eTag": "\\"0da0e803e01207e5cc2e7223ff4fcc84\\"", "size": 97282, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:10.937Z", "contentLength": 97282, "httpStatusCode": 200}	f51001a4-213b-4a6c-88e7-9e7712cb69b3	\N	{}
b0322488-881c-4cba-93b6-2e6ba5098a4a	campuses	smith/9	\N	2025-01-26 21:11:11.381196+00	2025-01-26 21:11:11.381196+00	2025-01-26 21:11:11.381196+00	{"eTag": "\\"a2ee5a9af19934307abad11823d2d586\\"", "size": 305946, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:11.373Z", "contentLength": 305946, "httpStatusCode": 200}	7ede0dbd-dd31-4ad4-abce-f87287ba50e4	\N	{}
5398481a-8720-42b0-bbd5-c0bb261321e3	campuses	siue/0	\N	2025-01-26 21:11:12.595131+00	2025-01-26 21:11:12.595131+00	2025-01-26 21:11:12.595131+00	{"eTag": "\\"36b697d168de0a99fda9793a3fa179a1\\"", "size": 1592788, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:12.575Z", "contentLength": 1592788, "httpStatusCode": 200}	84ebd9ec-d837-4d00-8cea-a9024231ac5c	\N	{}
c557e878-0867-478a-8476-3772de6874c2	campuses	siue/1	\N	2025-01-26 21:11:13.576231+00	2025-01-26 21:11:13.576231+00	2025-01-26 21:11:13.576231+00	{"eTag": "\\"cfa7b4733b06f01489a3f3435988dc0e\\"", "size": 1342303, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:13.556Z", "contentLength": 1342303, "httpStatusCode": 200}	7a0951e5-f048-44d1-b87c-f963ad3a89cc	\N	{}
4f10a071-9b26-4a95-85b0-633ad0a65c78	campuses	siue/2	\N	2025-01-26 21:11:13.9959+00	2025-01-26 21:11:13.9959+00	2025-01-26 21:11:13.9959+00	{"eTag": "\\"8a7fd79b2d683c03dfafc733b081134e\\"", "size": 49797, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:13.992Z", "contentLength": 49797, "httpStatusCode": 200}	4d154684-d032-419f-929e-a137276d0cc2	\N	{}
04ac53d5-38e8-4ad5-bd5f-414d0662d404	campuses	siue/3	\N	2025-01-26 21:11:14.86757+00	2025-01-26 21:11:14.86757+00	2025-01-26 21:11:14.86757+00	{"eTag": "\\"3fee3e5c261fd4b75555a528932d9b5e\\"", "size": 1780377, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:14.834Z", "contentLength": 1780377, "httpStatusCode": 200}	e41c30ae-a7d7-4a8c-88e9-073a64be7cfb	\N	{}
aa342770-515f-4c06-9403-3197f93e2217	campuses	udel/6	\N	2025-01-26 21:14:24.335795+00	2025-01-26 21:14:24.335795+00	2025-01-26 21:14:24.335795+00	{"eTag": "\\"8363f508863a3a29aa6591a38d5c7e1f\\"", "size": 464453, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:24.326Z", "contentLength": 464453, "httpStatusCode": 200}	dc390cee-4826-45ca-bb50-73bcd193d7b4	\N	{}
f0f02408-b40e-475a-8e30-c20e4feb88c3	campuses	siue/4	\N	2025-01-26 21:11:15.475733+00	2025-01-26 21:11:15.475733+00	2025-01-26 21:11:15.475733+00	{"eTag": "\\"bdf80cf6cc146b72a9b288d5d8a4a7db\\"", "size": 1008791, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:15.462Z", "contentLength": 1008791, "httpStatusCode": 200}	54c90348-f72f-492c-be1c-16cf89dedbc7	\N	{}
20ebfa2c-7b97-43e1-9e94-01d1d37dd8fd	campuses	usu/6	\N	2025-01-26 21:17:51.745979+00	2025-01-26 21:17:51.745979+00	2025-01-26 21:17:51.745979+00	{"eTag": "\\"53a095cae492bc11e00b8d83387f1dec\\"", "size": 277, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:51.743Z", "contentLength": 277, "httpStatusCode": 200}	02b4f181-af0a-4563-a8bd-d2575bac6b3c	\N	{}
47b50ed2-a8be-47c5-8e88-438439a7f796	campuses	siue/5	\N	2025-01-26 21:11:17.51923+00	2025-01-26 21:11:17.51923+00	2025-01-26 21:11:17.51923+00	{"eTag": "\\"f86b5705059daaef6e7de44c29ed5ace\\"", "size": 84850, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:17.514Z", "contentLength": 84850, "httpStatusCode": 200}	df75d54c-3dc3-4b58-b0a0-0e8a86e1203d	\N	{}
05b57078-3b87-4784-a007-7d4918291800	campuses	udel/7	\N	2025-01-26 21:14:24.85465+00	2025-01-26 21:14:24.85465+00	2025-01-26 21:14:24.85465+00	{"eTag": "\\"732a744a889cc59ce7b287e2a691adc4\\"", "size": 160131, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:24.850Z", "contentLength": 160131, "httpStatusCode": 200}	b3614db9-c87b-4a6f-8ce5-75f85bee082f	\N	{}
82975d6d-65e2-4495-b257-0066f9e305c2	campuses	siue/6	\N	2025-01-26 21:11:18.440604+00	2025-01-26 21:11:18.440604+00	2025-01-26 21:11:18.440604+00	{"eTag": "\\"fb695703c1e2e6d7fd1e25e8014ec1d0\\"", "size": 1434655, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:18.421Z", "contentLength": 1434655, "httpStatusCode": 200}	4169acb2-e515-4a95-ab66-f8d63bffc30e	\N	{}
b1d81039-4c47-460c-a7b7-af3f0d7f58e4	campuses	siue/7	\N	2025-01-26 21:11:18.836109+00	2025-01-26 21:11:18.836109+00	2025-01-26 21:11:18.836109+00	{"eTag": "\\"44f9563b932e89732ee03053a72e21ef\\"", "size": 48368, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:18.832Z", "contentLength": 48368, "httpStatusCode": 200}	95b6e875-d99c-4ece-b1d3-e5fc53012259	\N	{}
92f88965-78c1-46a4-bce2-64c74bb31b38	campuses	udel/8	\N	2025-01-26 21:14:25.34161+00	2025-01-26 21:14:25.34161+00	2025-01-26 21:14:25.34161+00	{"eTag": "\\"0c159753b691d14bcf263805fc1905d7\\"", "size": 55327, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:25.336Z", "contentLength": 55327, "httpStatusCode": 200}	d9e1d6f0-8fe9-45b5-bb21-dc89049998a1	\N	{}
353410b4-105e-4685-8bae-c52249a14edb	campuses	siue/8	\N	2025-01-26 21:11:19.169128+00	2025-01-26 21:11:19.169128+00	2025-01-26 21:11:19.169128+00	{"eTag": "\\"25a98108261c555d537590a41f541f7d\\"", "size": 52439, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:19.167Z", "contentLength": 52439, "httpStatusCode": 200}	d2215a20-171b-45ec-8340-bf0b87c53a6b	\N	{}
0a9301ec-d793-4658-b08d-cb35209bbaba	campuses	siue/9	\N	2025-01-26 21:11:19.940968+00	2025-01-26 21:11:19.940968+00	2025-01-26 21:11:19.940968+00	{"eTag": "\\"3069c67df497e25763a7c454119b5bf0\\"", "size": 1027424, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:19.913Z", "contentLength": 1027424, "httpStatusCode": 200}	66033e05-6f1b-4421-be59-8e4a2a84ebcc	\N	{}
b3ffeec6-52be-4d71-aa38-561245e511db	campuses	udel/9	\N	2025-01-26 21:14:26.146767+00	2025-01-26 21:14:26.146767+00	2025-01-26 21:14:26.146767+00	{"eTag": "\\"6a6ce0b230d4e52f291e538103c8e5f4\\"", "size": 1837007, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:26.127Z", "contentLength": 1837007, "httpStatusCode": 200}	21fb865a-2089-417e-ba00-5eba20cf6e27	\N	{}
9bb427df-57d7-4911-891b-170308c1ea46	campuses	stetson/0	\N	2025-01-26 21:11:20.51151+00	2025-01-26 21:11:20.51151+00	2025-01-26 21:11:20.51151+00	{"eTag": "\\"ca8c95b614c391b29d2d6bdebefad2fe\\"", "size": 83736, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:20.505Z", "contentLength": 83736, "httpStatusCode": 200}	8189969b-0364-45d1-8e30-794401b20697	\N	{}
42b51510-3fa9-4a64-8c40-ed745323694a	campuses	stetson/1	\N	2025-01-26 21:11:21.310543+00	2025-01-26 21:11:21.310543+00	2025-01-26 21:11:21.310543+00	{"eTag": "\\"7602dc8730b5b399f8906ca8ff3edb85\\"", "size": 988208, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:21.297Z", "contentLength": 988208, "httpStatusCode": 200}	96074561-1010-4535-a4b4-7e1551cb63f3	\N	{}
df949344-f343-4520-bf4c-66b6cc322fe5	campuses	stetson/2	\N	2025-01-26 21:11:21.794602+00	2025-01-26 21:11:21.794602+00	2025-01-26 21:11:21.794602+00	{"eTag": "\\"44edf028e3cd33cc0baaa421c4b9afe3\\"", "size": 276208, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:21.785Z", "contentLength": 276208, "httpStatusCode": 200}	25de2ef2-9721-4559-8ff0-e98971934b86	\N	{}
2fa5bd01-dc59-4e7d-8179-096ad3ae161b	campuses	stetson/3	\N	2025-01-26 21:11:22.523083+00	2025-01-26 21:11:22.523083+00	2025-01-26 21:11:22.523083+00	{"eTag": "\\"43f49af9dbe382e6afd0b28880e0ead6\\"", "size": 333847, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:22.516Z", "contentLength": 333847, "httpStatusCode": 200}	fd75bc27-b7ed-4040-88bf-6036f3c2655a	\N	{}
7e0f64b6-be7d-400a-8b63-f337328294a5	campuses	stetson/4	\N	2025-01-26 21:11:23.11207+00	2025-01-26 21:11:23.11207+00	2025-01-26 21:11:23.11207+00	{"eTag": "\\"8ebb504326a47038d53ae58d11e9a831\\"", "size": 21276, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:23.109Z", "contentLength": 21276, "httpStatusCode": 200}	834eb903-672f-4186-be3b-96c4946a0e3e	\N	{}
66fba2d6-8412-4314-8c32-bdc8dc928950	campuses	stetson/5	\N	2025-01-26 21:11:23.773241+00	2025-01-26 21:11:23.773241+00	2025-01-26 21:11:23.773241+00	{"eTag": "\\"9003d8c4c96d880a1f31c934d1f9334b\\"", "size": 262368, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:23.763Z", "contentLength": 262368, "httpStatusCode": 200}	a4958482-8d5d-4e57-a926-d155b824c738	\N	{}
529cec72-30dc-4b08-b7e8-ab5f3f1f5633	campuses	stetson/6	\N	2025-01-26 21:11:24.304341+00	2025-01-26 21:11:24.304341+00	2025-01-26 21:11:24.304341+00	{"eTag": "\\"279b828a3005a149e4bdbea049783f42\\"", "size": 38177, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:24.298Z", "contentLength": 38177, "httpStatusCode": 200}	319d5947-7c37-4328-8f47-6f087f436456	\N	{}
5acae590-f3c5-40c9-9dda-67ae3a3844a5	campuses	stetson/7	\N	2025-01-26 21:11:25.030458+00	2025-01-26 21:11:25.030458+00	2025-01-26 21:11:25.030458+00	{"eTag": "\\"43f2fa2a3c8b88ed6e846001098aad6c\\"", "size": 859662, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:25.011Z", "contentLength": 859662, "httpStatusCode": 200}	0a012bc1-9c72-47f1-90a5-e37f7fbcc52a	\N	{}
0ec52ded-52ee-4ce2-a6cc-4816c9dc8e81	campuses	du/0	\N	2025-01-26 21:14:26.6839+00	2025-01-26 21:14:26.6839+00	2025-01-26 21:14:26.6839+00	{"eTag": "\\"1d18479d7cefb2db8292c08b3db9f270\\"", "size": 420076, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:26.669Z", "contentLength": 420076, "httpStatusCode": 200}	c92d7a8d-d5cb-4538-8a28-9ddedf5c568b	\N	{}
2319b88f-4cfa-47e5-85fa-6831abd121d0	campuses	stetson/8	\N	2025-01-26 21:11:25.544822+00	2025-01-26 21:11:25.544822+00	2025-01-26 21:11:25.544822+00	{"eTag": "\\"ccead1adf45eb0418cf076231a7907a3\\"", "size": 132233, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:25.536Z", "contentLength": 132233, "httpStatusCode": 200}	91c8ada1-f0d9-473e-9c6c-c3fe43319a9f	\N	{}
f0b91966-cc51-438c-a983-d7d334a902aa	campuses	stetson/9	\N	2025-01-26 21:11:26.11469+00	2025-01-26 21:11:26.11469+00	2025-01-26 21:11:26.11469+00	{"eTag": "\\"e327481b60eb7d13baf6ffb0c1a0d471\\"", "size": 36114, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:11:26.109Z", "contentLength": 36114, "httpStatusCode": 200}	fa61b19c-3c98-4cee-beae-3019d408546a	\N	{}
ab419d84-0f6f-49cd-8ce7-3198dcfa77e3	campuses	du/1	\N	2025-01-26 21:14:27.330231+00	2025-01-26 21:14:27.330231+00	2025-01-26 21:14:27.330231+00	{"eTag": "\\"7bee9dc8811e2443f03aff4636fff00c\\"", "size": 558413, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:27.319Z", "contentLength": 558413, "httpStatusCode": 200}	ad49a4e5-44f8-46a5-a9ee-5c5f3e4ed8b3	\N	{}
a89faf6e-cb8f-4e1c-91cc-d4a463375586	campuses	uvu/0	\N	2025-01-26 21:17:55.794959+00	2025-01-26 21:17:55.794959+00	2025-01-26 21:17:55.794959+00	{"eTag": "\\"7d6c65e65523b700f3acf6fd6c7b453f\\"", "size": 37065, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:55.791Z", "contentLength": 37065, "httpStatusCode": 200}	e8f6af58-9d5d-4d72-83f0-ea907ab89512	\N	{}
d349e9f6-88f7-41ab-a91d-04f713490ee1	campuses	du/2	\N	2025-01-26 21:14:27.992876+00	2025-01-26 21:14:27.992876+00	2025-01-26 21:14:27.992876+00	{"eTag": "\\"badb416096af36294c0f8baf2d545134\\"", "size": 913534, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:27.984Z", "contentLength": 913534, "httpStatusCode": 200}	7b6c1e46-da03-460f-a4e0-cbdc4a8a4739	\N	{}
571a72ba-7e87-4c80-a983-1e7b832631d0	campuses	du/3	\N	2025-01-26 21:14:28.398044+00	2025-01-26 21:14:28.398044+00	2025-01-26 21:14:28.398044+00	{"eTag": "\\"8592b036a63586e08ddd9132cb2466d5\\"", "size": 205708, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:28.390Z", "contentLength": 205708, "httpStatusCode": 200}	51e5c5a0-2660-4c48-96cc-a981402d08cc	\N	{}
b2e95962-eccf-4730-8a5d-5fa8ba0977f9	campuses	uvu/1	\N	2025-01-26 21:17:56.098758+00	2025-01-26 21:17:56.098758+00	2025-01-26 21:17:56.098758+00	{"eTag": "\\"bdf7affaa1c8e208594b1a95d3df238b\\"", "size": 37176, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:56.096Z", "contentLength": 37176, "httpStatusCode": 200}	d4e5d12b-7f00-410f-9a33-88419991d686	\N	{}
18adefb3-87f5-4e83-b344-690de4989483	campuses	du/4	\N	2025-01-26 21:14:28.92187+00	2025-01-26 21:14:28.92187+00	2025-01-26 21:14:28.92187+00	{"eTag": "\\"394932e05e8d08796c18b97d4e65f8fd\\"", "size": 691974, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:28.907Z", "contentLength": 691974, "httpStatusCode": 200}	4e366395-d366-46ee-a666-3acd4c380d9f	\N	{}
1d8e1f97-8207-4bfc-bfb4-0acd8aba2e00	campuses	du/5	\N	2025-01-26 21:14:29.425982+00	2025-01-26 21:14:29.425982+00	2025-01-26 21:14:29.425982+00	{"eTag": "\\"aa60b657093da508966c62063d992c35\\"", "size": 190779, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:29.420Z", "contentLength": 190779, "httpStatusCode": 200}	5461ddd2-8c69-418b-a690-215f147329fc	\N	{}
80b998da-bc71-4c40-a9f8-a47e99a8e47d	campuses	uvu/2	\N	2025-01-26 21:17:56.382076+00	2025-01-26 21:17:56.382076+00	2025-01-26 21:17:56.382076+00	{"eTag": "\\"777ad53885ce777de2d952c1a3351e95\\"", "size": 37130, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:56.378Z", "contentLength": 37130, "httpStatusCode": 200}	7db11df8-6952-4290-bbf7-f5b072764574	\N	{}
cab8fd10-7593-4e6c-aac4-602073c49b6d	campuses	du/6	\N	2025-01-26 21:14:29.791901+00	2025-01-26 21:14:29.791901+00	2025-01-26 21:14:29.791901+00	{"eTag": "\\"d5f550caba1b4d93cec37711b226d03f\\"", "size": 123159, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:29.785Z", "contentLength": 123159, "httpStatusCode": 200}	49f626b3-b458-48a9-8779-868c6243e45d	\N	{}
882e887a-8c9b-45b9-9829-ed9af0071a21	campuses	du/7	\N	2025-01-26 21:14:30.441762+00	2025-01-26 21:14:30.441762+00	2025-01-26 21:14:30.441762+00	{"eTag": "\\"03b36600e2b530226575e64185eafafd\\"", "size": 192481, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:30.433Z", "contentLength": 192481, "httpStatusCode": 200}	01ca60f6-5c45-42b8-8900-8ff796e8f26f	\N	{}
2f8f5585-361c-414d-808e-a930d4f4eb68	campuses	du/8	\N	2025-01-26 21:14:30.934907+00	2025-01-26 21:14:30.934907+00	2025-01-26 21:14:30.934907+00	{"eTag": "\\"9fe3cb2b7313dc79bb477bc8fde184a7\\"", "size": 146, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:30.926Z", "contentLength": 146, "httpStatusCode": 200}	24b45a44-bf57-4fff-8c1a-17b6a2f88047	\N	{}
09a71de9-ad02-405b-b66f-89715b47b02f	campuses	du/9	\N	2025-01-26 21:14:31.67588+00	2025-01-26 21:14:31.67588+00	2025-01-26 21:14:31.67588+00	{"eTag": "\\"7abf416853e465365e75626ad2c107df\\"", "size": 576503, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:31.639Z", "contentLength": 576503, "httpStatusCode": 200}	f87cc8e2-7ef2-4407-b64e-ca1661a438d3	\N	{}
65d76da5-134f-4529-bc03-0fc22b6705cc	campuses	uh/0	\N	2025-01-26 21:14:32.168739+00	2025-01-26 21:14:32.168739+00	2025-01-26 21:14:32.168739+00	{"eTag": "\\"bc1b1bb7a962127611d4aa62c0fd9d71\\"", "size": 72528, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:32.163Z", "contentLength": 72528, "httpStatusCode": 200}	6b9523a8-6d20-405f-86bf-f3417c720199	\N	{}
27705e61-26c3-4cb4-b62f-2434d3baa7d8	campuses	uh/1	\N	2025-01-26 21:14:32.846856+00	2025-01-26 21:14:32.846856+00	2025-01-26 21:14:32.846856+00	{"eTag": "\\"f02f51975d9f8775b5cb3c31b7020bea\\"", "size": 433445, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:32.839Z", "contentLength": 433445, "httpStatusCode": 200}	c0aac524-c764-4f6a-97bd-91b74921092a	\N	{}
b8729c20-f7e7-4599-bad7-346280f04a67	campuses	uh/2	\N	2025-01-26 21:14:33.541659+00	2025-01-26 21:14:33.541659+00	2025-01-26 21:14:33.541659+00	{"eTag": "\\"8dfaa769b844c5012c115bd606aa6937\\"", "size": 464885, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:33.532Z", "contentLength": 464885, "httpStatusCode": 200}	290a0cc2-3c96-4a40-b63f-e28ca0044f71	\N	{}
2b5c33e5-538b-47bb-9ee7-6d3130da9e95	campuses	albany/1	\N	2025-01-26 21:12:28.192616+00	2025-01-26 21:12:28.192616+00	2025-01-26 21:12:28.192616+00	{"eTag": "\\"8680a0ec138059f243d6fe9c7238b3c6\\"", "size": 549866, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:28.181Z", "contentLength": 549866, "httpStatusCode": 200}	3eeb8d71-6db0-4378-9841-f91d7368a398	\N	{}
5a3ff4cd-f852-4c15-921e-cb9232978627	campuses	uvu/3	\N	2025-01-26 21:17:56.716208+00	2025-01-26 21:17:56.716208+00	2025-01-26 21:17:56.716208+00	{"eTag": "\\"8ce2d984c2a082f6b38430808f08040c\\"", "size": 37131, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:56.697Z", "contentLength": 37131, "httpStatusCode": 200}	991614c7-73c1-4b51-b48e-05202ec09c76	\N	{}
6382875e-552c-42fb-9578-9522f3f2a7f1	campuses	albany/2	\N	2025-01-26 21:12:28.778963+00	2025-01-26 21:12:28.778963+00	2025-01-26 21:12:28.778963+00	{"eTag": "\\"303d604ba1860903b4ec222929ab4a88\\"", "size": 283371, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:28.773Z", "contentLength": 283371, "httpStatusCode": 200}	cac91b97-b59b-4fb7-980c-110dad5c7d39	\N	{}
09f4e4f0-66e8-4e1a-9453-39dd44ceb7a7	campuses	uh/3	\N	2025-01-26 21:14:34.215647+00	2025-01-26 21:14:34.215647+00	2025-01-26 21:14:34.215647+00	{"eTag": "\\"9a0e6943b0d63cb4403e7f67bf9359a5\\"", "size": 479375, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:34.193Z", "contentLength": 479375, "httpStatusCode": 200}	64057539-0a06-4963-993c-29bc571f9c95	\N	{}
a400bfd9-7273-4891-b1eb-f6a89ba348a2	campuses	albany/3	\N	2025-01-26 21:12:29.296469+00	2025-01-26 21:12:29.296469+00	2025-01-26 21:12:29.296469+00	{"eTag": "\\"49133f09b7bf51467ee48bc67cb9cc23\\"", "size": 84531, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:29.293Z", "contentLength": 84531, "httpStatusCode": 200}	c63cf895-845a-4f53-85b0-723ad9784744	\N	{}
b37cc2c4-ce8c-48ac-8617-bf030811c488	campuses	albany/4	\N	2025-01-26 21:12:29.89043+00	2025-01-26 21:12:29.89043+00	2025-01-26 21:12:29.89043+00	{"eTag": "\\"806929ed56b490eefc4e660358451f8c\\"", "size": 482623, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:29.880Z", "contentLength": 482623, "httpStatusCode": 200}	9eeefc2d-ac2b-49bc-a263-9ff355b93a62	\N	{}
289477f8-b67a-4c51-887a-b8d628f36ee9	campuses	uh/4	\N	2025-01-26 21:14:34.632078+00	2025-01-26 21:14:34.632078+00	2025-01-26 21:14:34.632078+00	{"eTag": "\\"7e82908fab73bfe9d7d71b265f84ce6c\\"", "size": 96099, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:34.623Z", "contentLength": 96099, "httpStatusCode": 200}	ed344cb4-3496-4d4d-bb81-f0e1198e14fc	\N	{}
b02c346a-5e7d-473a-923b-cf3b8bf5b839	campuses	albany/5	\N	2025-01-26 21:12:30.513152+00	2025-01-26 21:12:30.513152+00	2025-01-26 21:12:30.513152+00	{"eTag": "\\"3a845acbfac9e1604000d17a90a67c51\\"", "size": 30848, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:30.507Z", "contentLength": 30848, "httpStatusCode": 200}	719179c8-a3e9-4fb4-9f9d-322756a1ee72	\N	{}
a9bbb014-24b5-49db-87e2-c8bb77b63096	campuses	albany/0	\N	2025-01-26 21:12:32.067362+00	2025-01-26 21:26:32.481051+00	2025-01-26 21:12:32.067362+00	{"eTag": "\\"0a46260fe650b09b68e7bbfd34b66f37\\"", "size": 332755, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:26:32.474Z", "contentLength": 332755, "httpStatusCode": 200}	a3183ff8-f864-49e8-8c18-656bc27a2df0	\N	{}
0d5ec916-3cd7-4ea0-bad3-f9aa23454be8	campuses	albany/6	\N	2025-01-26 21:12:31.021131+00	2025-01-26 21:12:31.021131+00	2025-01-26 21:12:31.021131+00	{"eTag": "\\"6db9e8c3a3fc8f33c50be1796076ea2f\\"", "size": 31111, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:31.019Z", "contentLength": 31111, "httpStatusCode": 200}	469b576a-32ca-49ba-8c98-3151142cf955	\N	{}
62231691-d985-49a3-bad4-ffabb280a385	campuses	uh/5	\N	2025-01-26 21:14:35.407276+00	2025-01-26 21:14:35.407276+00	2025-01-26 21:14:35.407276+00	{"eTag": "\\"2aff23a5a177f2e392bbb2e0e18d433c\\"", "size": 73448, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:35.390Z", "contentLength": 73448, "httpStatusCode": 200}	27466649-fb6b-4f36-9ce6-69f31ca01593	\N	{}
b5af068d-a5a4-4561-b068-2e5973b1c7b1	campuses	albany/7	\N	2025-01-26 21:12:31.45999+00	2025-01-26 21:12:31.45999+00	2025-01-26 21:12:31.45999+00	{"eTag": "\\"12412e38cb0ab45b2515d7e3f2859dd9\\"", "size": 79621, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:31.455Z", "contentLength": 79621, "httpStatusCode": 200}	b210087d-3a06-40c8-b93a-fd507d8b1d17	\N	{}
a6250d28-12ce-418d-8353-ac54f9d1b489	campuses	albany/8	\N	2025-01-26 21:12:32.619935+00	2025-01-26 21:26:35.464481+00	2025-01-26 21:12:32.619935+00	{"eTag": "\\"1691c314ccc086795a98daec5662b1ee\\"", "size": 70054, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:26:35.460Z", "contentLength": 70054, "httpStatusCode": 200}	d459cdb4-1dce-4d1f-a9eb-c1279f3ec4df	\N	{}
a87bfcb3-3360-4fa1-be44-415736c289e0	campuses	swarthmore/0	\N	2025-01-26 21:12:33.338342+00	2025-01-26 21:12:33.338342+00	2025-01-26 21:12:33.338342+00	{"eTag": "\\"d0f6f737d084a3adaf8109fe369847d2\\"", "size": 1303910, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:33.326Z", "contentLength": 1303910, "httpStatusCode": 200}	72b5b6e4-efe8-45c2-b45a-78eb01847df5	\N	{}
3784cbf1-619a-49bf-ba35-d5677c604696	campuses	swarthmore/1	\N	2025-01-26 21:12:34.043105+00	2025-01-26 21:12:34.043105+00	2025-01-26 21:12:34.043105+00	{"eTag": "\\"19735cd99bd8b1899508240877537166\\"", "size": 244996, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:34.031Z", "contentLength": 244996, "httpStatusCode": 200}	d27e52fa-07d1-422f-9a65-948ddc434e18	\N	{}
0ce3aa4b-0020-4386-b177-091ac16132e0	campuses	swarthmore/2	\N	2025-01-26 21:12:34.671653+00	2025-01-26 21:12:34.671653+00	2025-01-26 21:12:34.671653+00	{"eTag": "\\"b81b85dfe0fd3c3d0da18191e0caded7\\"", "size": 261516, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:34.666Z", "contentLength": 261516, "httpStatusCode": 200}	fa800c64-b00b-4330-8f2e-2365ee14c55b	\N	{}
da1dcfcb-5c6c-43f8-9619-aba674f68e01	campuses	swarthmore/3	\N	2025-01-26 21:12:35.070371+00	2025-01-26 21:12:35.070371+00	2025-01-26 21:12:35.070371+00	{"eTag": "\\"bb8f534fbff5ee61a95af9c4740ae043\\"", "size": 199, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:35.066Z", "contentLength": 199, "httpStatusCode": 200}	7f1587ef-b8ff-4973-8413-a51edafe5032	\N	{}
3b3ed17c-e188-4353-84b9-9a7787b2193c	campuses	swarthmore/4	\N	2025-01-26 21:12:35.542116+00	2025-01-26 21:12:35.542116+00	2025-01-26 21:12:35.542116+00	{"eTag": "\\"d31b549ebf19676b389dc6026e39b069\\"", "size": 230324, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:35.533Z", "contentLength": 230324, "httpStatusCode": 200}	d66ab002-6ec9-4851-8547-8f70aadd4c46	\N	{}
d1379d50-afc3-493b-9f0e-5e7a824956f9	campuses	swarthmore/5	\N	2025-01-26 21:12:35.779252+00	2025-01-26 21:12:35.779252+00	2025-01-26 21:12:35.779252+00	{"eTag": "\\"bb8f534fbff5ee61a95af9c4740ae043\\"", "size": 199, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:35.774Z", "contentLength": 199, "httpStatusCode": 200}	48993e1c-6505-4266-bc62-4ff81530a6d9	\N	{}
14cab536-a085-4b10-a162-1e5d0c775382	campuses	uh/6	\N	2025-01-26 21:14:36.324357+00	2025-01-26 21:14:36.324357+00	2025-01-26 21:14:36.324357+00	{"eTag": "\\"d53c1323c712b5970cbd6f69a6ac0ef3\\"", "size": 74722, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:36.310Z", "contentLength": 74722, "httpStatusCode": 200}	38443369-fa2c-40cc-93fc-06261dec4837	\N	{}
e4e1b9aa-0433-428f-93ca-9e4b480261ac	campuses	swarthmore/6	\N	2025-01-26 21:12:36.512387+00	2025-01-26 21:12:36.512387+00	2025-01-26 21:12:36.512387+00	{"eTag": "\\"5446da9542c67ca88f6c1f3d453848cf\\"", "size": 238847, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:36.505Z", "contentLength": 238847, "httpStatusCode": 200}	45cc2b95-04bb-4d52-b39c-e82ada5c719e	\N	{}
5ea34953-5b2f-438e-a616-5e45e211621a	campuses	uvu/4	\N	2025-01-26 21:17:57.033038+00	2025-01-26 21:17:57.033038+00	2025-01-26 21:17:57.033038+00	{"eTag": "\\"f75bdcd3873fea6e0de94d01cf7eb099\\"", "size": 37158, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:57.020Z", "contentLength": 37158, "httpStatusCode": 200}	48ac5d73-c842-40ae-bd5d-cc2b0a91b8a6	\N	{}
bf5662aa-2135-4182-aeeb-4b28341abafb	campuses	swarthmore/7	\N	2025-01-26 21:12:36.755843+00	2025-01-26 21:12:36.755843+00	2025-01-26 21:12:36.755843+00	{"eTag": "\\"bb8f534fbff5ee61a95af9c4740ae043\\"", "size": 199, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:36.751Z", "contentLength": 199, "httpStatusCode": 200}	44e204c6-1f7c-4d73-b2d8-fd1626b0e634	\N	{}
d3242896-a4e7-48c5-9ef6-c4bbc628e1c5	campuses	uh/7	\N	2025-01-26 21:14:37.513215+00	2025-01-26 21:14:37.513215+00	2025-01-26 21:14:37.513215+00	{"eTag": "\\"b7c5807b7f8253fcad995887bb332f6c\\"", "size": 19051, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:37.510Z", "contentLength": 19051, "httpStatusCode": 200}	a8d94765-48d6-462c-8d04-172b91a5228e	\N	{}
2273e071-bed2-4b40-9838-fbc1a49ee4c1	campuses	swarthmore/8	\N	2025-01-26 21:12:37.348588+00	2025-01-26 21:12:37.348588+00	2025-01-26 21:12:37.348588+00	{"eTag": "\\"9fe3cb2b7313dc79bb477bc8fde184a7\\"", "size": 146, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:37.344Z", "contentLength": 146, "httpStatusCode": 200}	bd03fb5e-7bfb-464c-afdd-39b3c5ad36e5	\N	{}
4c6c9689-339d-490a-8251-2b5889213209	campuses	swarthmore/9	\N	2025-01-26 21:12:37.968457+00	2025-01-26 21:12:37.968457+00	2025-01-26 21:12:37.968457+00	{"eTag": "\\"09f59e4db5b32b0e1923cd9207727acb\\"", "size": 101793, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:37.964Z", "contentLength": 101793, "httpStatusCode": 200}	253de9ce-e518-41dd-86ca-348dc2237600	\N	{}
94871225-7031-409f-b4fd-6d33062feecc	campuses	uh/8	\N	2025-01-26 21:14:39.006044+00	2025-01-26 21:14:39.006044+00	2025-01-26 21:14:39.006044+00	{"eTag": "\\"74da1a3dbc60a1acd41bedc48eb2e11b\\"", "size": 660416, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:38.993Z", "contentLength": 660416, "httpStatusCode": 200}	bcfa0d92-84fd-46cf-b8b6-f92298184508	\N	{}
808524bd-78ef-4bf5-9d29-4489eb37ec04	campuses	syr/0	\N	2025-01-26 21:12:38.496189+00	2025-01-26 21:12:38.496189+00	2025-01-26 21:12:38.496189+00	{"eTag": "\\"59cd2d672096d1087ced31abec766233\\"", "size": 174386, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:38.493Z", "contentLength": 174386, "httpStatusCode": 200}	c57d23a7-a97d-48f2-983b-0e19bedc1f68	\N	{}
5ef0bb40-cefa-4b12-b002-3136dc409acf	campuses	syr/1	\N	2025-01-26 21:12:39.251943+00	2025-01-26 21:12:39.251943+00	2025-01-26 21:12:39.251943+00	{"eTag": "\\"604cd80768edd93f885280fbe2549f4d\\"", "size": 905102, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:39.241Z", "contentLength": 905102, "httpStatusCode": 200}	f08583a7-f56a-4dbb-98f0-bba89ee6c348	\N	{}
449c4cbf-5f9c-4bd7-abae-2b9d32ea860f	campuses	syr/2	\N	2025-01-26 21:12:39.791124+00	2025-01-26 21:12:39.791124+00	2025-01-26 21:12:39.791124+00	{"eTag": "\\"03415b5efe26dbc3178c4543fb5fa3c4\\"", "size": 89663, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:39.789Z", "contentLength": 89663, "httpStatusCode": 200}	1947e3bc-2e72-448e-860e-adb22a2bc564	\N	{}
1eec3c6a-5ec9-461f-9ec9-07118c5bb9a4	campuses	syr/3	\N	2025-01-26 21:12:40.219759+00	2025-01-26 21:12:40.219759+00	2025-01-26 21:12:40.219759+00	{"eTag": "\\"a7469437f60b2c57451042443afd867f\\"", "size": 177351, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:40.214Z", "contentLength": 177351, "httpStatusCode": 200}	db899c0d-cb3d-41fe-95ee-c959209ddc56	\N	{}
29918a8e-cd56-42fa-942f-db4035e8ba2c	campuses	syr/4	\N	2025-01-26 21:12:41.056433+00	2025-01-26 21:12:41.056433+00	2025-01-26 21:12:41.056433+00	{"eTag": "\\"c863d27e3dc016d00fddce638920c506\\"", "size": 896889, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:41.041Z", "contentLength": 896889, "httpStatusCode": 200}	d5ed2472-dc7a-4bce-8f0f-6228fe940bc5	\N	{}
ed4e36b2-9b6f-4990-8608-55c817b22b47	campuses	syr/5	\N	2025-01-26 21:12:41.839764+00	2025-01-26 21:12:41.839764+00	2025-01-26 21:12:41.839764+00	{"eTag": "\\"c4f7669a3fa9a4e42a2f731013365456\\"", "size": 1757166, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:41.821Z", "contentLength": 1757166, "httpStatusCode": 200}	49cb8c99-270e-4706-ab06-c16551255b10	\N	{}
6bc03d11-ee3e-4ad6-8712-df1ed9ebce9a	campuses	syr/6	\N	2025-01-26 21:12:42.331096+00	2025-01-26 21:12:42.331096+00	2025-01-26 21:12:42.331096+00	{"eTag": "\\"70f61c0fb5c6cd72fab9e57ea650cf43\\"", "size": 44798, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:42.327Z", "contentLength": 44798, "httpStatusCode": 200}	9c889e8f-d0d2-4e0a-a89b-3085e1b2398d	\N	{}
f2bb63f9-d53d-4434-9a97-796dcb8d8806	campuses	syr/7	\N	2025-01-26 21:12:43.076638+00	2025-01-26 21:12:43.076638+00	2025-01-26 21:12:43.076638+00	{"eTag": "\\"56fd99545dd0e8f2f7f1ac14f5cdfb58\\"", "size": 2462663, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:43.052Z", "contentLength": 2462663, "httpStatusCode": 200}	82f1a452-16aa-4939-9087-990d3ba6a621	\N	{}
1798a4ab-5409-4a2a-afa5-bfbaec13f7ce	campuses	syr/8	\N	2025-01-26 21:12:43.469097+00	2025-01-26 21:12:43.469097+00	2025-01-26 21:12:43.469097+00	{"eTag": "\\"e46f042793d3e3ef50126db0934d9804\\"", "size": 130560, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:43.465Z", "contentLength": 130560, "httpStatusCode": 200}	69943246-727c-4f4b-ac19-897852460d5d	\N	{}
ca6abd1a-ed2f-4fa6-ba12-8e71c5c5a57d	campuses	uh/9	\N	2025-01-26 21:14:39.30731+00	2025-01-26 21:14:39.30731+00	2025-01-26 21:14:39.30731+00	{"eTag": "\\"fba4369e9733b87c4b722549c09161a6\\"", "size": 386, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:39.303Z", "contentLength": 386, "httpStatusCode": 200}	1714bdf3-454b-4d3f-8dd2-05bfa5198448	\N	{}
240f07f0-dba0-4301-964f-dbdfc648fa71	campuses	syr/9	\N	2025-01-26 21:12:43.825142+00	2025-01-26 21:12:43.825142+00	2025-01-26 21:12:43.825142+00	{"eTag": "\\"b80dc1af1483c936daf56a364fca8b5f\\"", "size": 69952, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:43.819Z", "contentLength": 69952, "httpStatusCode": 200}	a09468a0-5051-4c62-bde4-ed839e0b4716	\N	{}
ef5b3d1b-8e88-48e9-b7db-36bb47575b7b	campuses	talladega/0	\N	2025-01-26 21:12:44.640701+00	2025-01-26 21:12:44.640701+00	2025-01-26 21:12:44.640701+00	{"eTag": "\\"217a092ec4ba3bfa921279745e16a97d\\"", "size": 2990393, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:44.601Z", "contentLength": 2990393, "httpStatusCode": 200}	cd160691-63d2-4192-a731-ae12c4fe11ba	\N	{}
178836f0-b304-429a-8e48-9b6a0290c8ff	campuses	uhv/0	\N	2025-01-26 21:14:40.051326+00	2025-01-26 21:14:40.051326+00	2025-01-26 21:14:40.051326+00	{"eTag": "\\"dea17e55ca2051b31785ad3d3e332f8e\\"", "size": 313026, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:40.031Z", "contentLength": 313026, "httpStatusCode": 200}	9c9a18f1-426a-41c3-9b08-449318399809	\N	{}
61da973b-2775-4b5b-95f7-449e45b5b0be	campuses	talladega/1	\N	2025-01-26 21:12:45.23521+00	2025-01-26 21:12:45.23521+00	2025-01-26 21:12:45.23521+00	{"eTag": "\\"dd81eb393f2eeb47ba1474cd94749ec6\\"", "size": 1059731, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:45.225Z", "contentLength": 1059731, "httpStatusCode": 200}	05280ad4-8398-4545-86ed-2e2ea6643c64	\N	{}
ebfc1300-e00f-4441-b056-131fbb57feee	campuses	talladega/2	\N	2025-01-26 21:12:45.837376+00	2025-01-26 21:12:45.837376+00	2025-01-26 21:12:45.837376+00	{"eTag": "\\"0c40c892acc10a8ed91430c00d4f7027\\"", "size": 261028, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:45.815Z", "contentLength": 261028, "httpStatusCode": 200}	dfe7e224-340d-49b8-a135-5203b9a12237	\N	{}
d62aa9de-d440-4a70-b2bf-2751a733cbbe	campuses	uhv/1	\N	2025-01-26 21:14:41.706701+00	2025-01-26 21:14:41.706701+00	2025-01-26 21:14:41.706701+00	{"eTag": "\\"dbfe23f4e95a366dcc94b41a8d78f739\\"", "size": 6687175, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:41.598Z", "contentLength": 6687175, "httpStatusCode": 200}	b25ebd96-e3df-4c10-88ae-75847322e104	\N	{}
1926f0a6-0058-480e-ac9c-bbca6de1e5a5	campuses	talladega/3	\N	2025-01-26 21:12:46.841644+00	2025-01-26 21:12:46.841644+00	2025-01-26 21:12:46.841644+00	{"eTag": "\\"6104bd12f89df2dc87c026c1b7a35837\\"", "size": 1911289, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:46.820Z", "contentLength": 1911289, "httpStatusCode": 200}	1179c009-ec87-4865-84f4-ef168b4d957e	\N	{}
fc5c27c9-e301-4ce6-a37d-ffa05fb7f33e	campuses	talladega/4	\N	2025-01-26 21:12:47.343011+00	2025-01-26 21:12:47.343011+00	2025-01-26 21:12:47.343011+00	{"eTag": "\\"beba40bcf9648cd9c05e1f8edb822714\\"", "size": 259354, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:47.337Z", "contentLength": 259354, "httpStatusCode": 200}	28e183e6-e3dc-46ea-a990-77f070bd0b89	\N	{}
bccc7b88-b3c0-4f8f-ab9a-276f99d55e40	campuses	uhv/2	\N	2025-01-26 21:14:42.296848+00	2025-01-26 21:14:42.296848+00	2025-01-26 21:14:42.296848+00	{"eTag": "\\"e28e8a5a49c19edb24694acb437d6787\\"", "size": 432581, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:42.285Z", "contentLength": 432581, "httpStatusCode": 200}	fb560dae-033e-4ab4-a22b-3cb3cbe2cd0b	\N	{}
d5501c61-f563-44e9-a4b2-61365d744501	campuses	talladega/5	\N	2025-01-26 21:12:47.790196+00	2025-01-26 21:12:47.790196+00	2025-01-26 21:12:47.790196+00	{"eTag": "\\"c5edaa9c39bbdef92b129b9141f34b90\\"", "size": 142871, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:47.783Z", "contentLength": 142871, "httpStatusCode": 200}	aa287d52-be1e-4048-bf86-bb5d6011d143	\N	{}
3f8a2c38-3e45-4ebd-aab4-deb05d0b395f	campuses	talladega/6	\N	2025-01-26 21:12:48.423398+00	2025-01-26 21:12:48.423398+00	2025-01-26 21:12:48.423398+00	{"eTag": "\\"fd28143088cc93b24a522d7f776b1d6d\\"", "size": 332708, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:48.409Z", "contentLength": 332708, "httpStatusCode": 200}	a03526e1-eed4-41a1-9861-615d6928c75b	\N	{}
8b78f3c0-18d8-4e31-a719-b76593f47f3e	campuses	talladega/7	\N	2025-01-26 21:12:48.970446+00	2025-01-26 21:12:48.970446+00	2025-01-26 21:12:48.970446+00	{"eTag": "\\"a69383565567d6845854625a6d7d0507\\"", "size": 254701, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:48.960Z", "contentLength": 254701, "httpStatusCode": 200}	c86d1728-1f41-47e7-b0f7-fbb3001fae17	\N	{}
7de5dca8-3e73-4703-a0b6-ca6710eadf7e	campuses	talladega/8	\N	2025-01-26 21:12:50.423641+00	2025-01-26 21:12:50.423641+00	2025-01-26 21:12:50.423641+00	{"eTag": "\\"370eb2cfbf4e67a2098d954a4d756f8b\\"", "size": 94476, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:50.366Z", "contentLength": 94476, "httpStatusCode": 200}	7d0e2ce7-ded0-4667-8636-863bf769f237	\N	{}
6d3138f3-3cb2-4d65-b7de-fcd78f1b2011	campuses	talladega/9	\N	2025-01-26 21:12:51.430093+00	2025-01-26 21:12:51.430093+00	2025-01-26 21:12:51.430093+00	{"eTag": "\\"8e08dc4064e4cc02faa343342e12bb59\\"", "size": 1450686, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:51.390Z", "contentLength": 1450686, "httpStatusCode": 200}	2485f17d-9dcc-4707-a31d-ecf753ec6954	\N	{}
cb31acb6-a5c8-4d44-babb-0c261210c6a4	campuses	tntech/0	\N	2025-01-26 21:12:52.892688+00	2025-01-26 21:12:52.892688+00	2025-01-26 21:12:52.892688+00	{"eTag": "\\"f91d1340aaa7c5c621b31f37b3805b55\\"", "size": 876671, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:52.881Z", "contentLength": 876671, "httpStatusCode": 200}	5831f05a-af66-45af-9fb0-f83ef3e2d5fb	\N	{}
e4d0cbb3-9691-41fd-a591-ee7371da6dda	campuses	tntech/1	\N	2025-01-26 21:12:53.484323+00	2025-01-26 21:12:53.484323+00	2025-01-26 21:12:53.484323+00	{"eTag": "\\"f2dfb6a059eba0b8bacce6a31406e566\\"", "size": 322902, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:53.478Z", "contentLength": 322902, "httpStatusCode": 200}	ea51f9d4-59fe-498f-ae35-6cf25777fb69	\N	{}
3d09e485-f79d-4ea8-a472-572c54ad8221	campuses	tntech/2	\N	2025-01-26 21:12:54.217808+00	2025-01-26 21:12:54.217808+00	2025-01-26 21:12:54.217808+00	{"eTag": "\\"ea23002fea09138cd7b0a1a51c9d2f5d\\"", "size": 218404, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:54.209Z", "contentLength": 218404, "httpStatusCode": 200}	66517a7f-b590-4ac7-aeed-b0c088d892f5	\N	{}
25ac61b8-c483-4ff4-9382-feb0447ca480	campuses	uvu/5	\N	2025-01-26 21:17:57.339803+00	2025-01-26 21:17:57.339803+00	2025-01-26 21:17:57.339803+00	{"eTag": "\\"aeae7178686052ae3ef6903bf276d6ed\\"", "size": 37125, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:57.337Z", "contentLength": 37125, "httpStatusCode": 200}	9dd75ca1-5df2-4bb4-a8df-d7b2a901af77	\N	{}
46e89de2-2967-4c91-b95f-e1547d745dee	campuses	tntech/3	\N	2025-01-26 21:12:55.098297+00	2025-01-26 21:12:55.098297+00	2025-01-26 21:12:55.098297+00	{"eTag": "\\"b85ad60a50070097177b79163a8d8d01\\"", "size": 1292636, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:55.080Z", "contentLength": 1292636, "httpStatusCode": 200}	8be1866a-ce3f-46dd-af27-438b9e3a294a	\N	{}
91c93adf-e30c-4337-9018-f2274ee11584	campuses	uhv/3	\N	2025-01-26 21:14:42.847925+00	2025-01-26 21:14:42.847925+00	2025-01-26 21:14:42.847925+00	{"eTag": "\\"0eed37142d5f92988bc99babbb4d762e\\"", "size": 691293, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:42.840Z", "contentLength": 691293, "httpStatusCode": 200}	8577f05e-0401-4d01-9610-04550334eefa	\N	{}
9ee98540-6fa6-4f55-b5b4-ffe3b09efed1	campuses	tntech/4	\N	2025-01-26 21:12:55.541531+00	2025-01-26 21:12:55.541531+00	2025-01-26 21:12:55.541531+00	{"eTag": "\\"a455f0499b596025e4bc052d53441906\\"", "size": 185241, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:55.539Z", "contentLength": 185241, "httpStatusCode": 200}	21e2d8af-a4e7-4510-8679-6b42abc969f6	\N	{}
20bfcede-b00c-4730-9515-d0d09ee96eb6	campuses	tamu/1	\N	2025-01-26 21:13:01.982375+00	2025-01-26 21:13:01.982375+00	2025-01-26 21:13:01.982375+00	{"eTag": "\\"cf54caf28b2f9b8d910bf9f73d472f6b\\"", "size": 100152, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:01.974Z", "contentLength": 100152, "httpStatusCode": 200}	f22c7fde-c3ff-46f4-9d9f-63f187ec8448	\N	{}
4f1f9ca7-7cb0-4b7b-b19d-fa56d157fead	campuses	uhv/4	\N	2025-01-26 21:14:43.295174+00	2025-01-26 21:14:43.295174+00	2025-01-26 21:14:43.295174+00	{"eTag": "\\"9eb5ccaf4ed397603256c3142776f06c\\"", "size": 176694, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:43.291Z", "contentLength": 176694, "httpStatusCode": 200}	5481da1f-6cc9-49f4-9bbd-5eeed9c49785	\N	{}
a38f5446-a768-41ca-9f33-750665c34733	campuses	tamu/2	\N	2025-01-26 21:13:02.974677+00	2025-01-26 21:13:02.974677+00	2025-01-26 21:13:02.974677+00	{"eTag": "\\"c52609998b03d4e589569d6197551b90\\"", "size": 542819, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:02.964Z", "contentLength": 542819, "httpStatusCode": 200}	26aee7d2-6d33-40f8-8bc4-7e7869232610	\N	{}
ce1f0309-f379-4d83-bea4-4956f10c959a	campuses	tamu/3	\N	2025-01-26 21:13:03.749187+00	2025-01-26 21:13:03.749187+00	2025-01-26 21:13:03.749187+00	{"eTag": "\\"4926b3a6d9b4c6311347770275b28e56\\"", "size": 285, "mimetype": "text/xml", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:03.746Z", "contentLength": 285, "httpStatusCode": 200}	efaf0ac0-d60d-4abb-bbdc-71297a4c14f0	\N	{}
fb6f13ea-896a-4f9b-a192-697e0c35d658	campuses	uhv/5	\N	2025-01-26 21:14:43.782383+00	2025-01-26 21:14:43.782383+00	2025-01-26 21:14:43.782383+00	{"eTag": "\\"ea3e7ffc3b65eb2d6f80c5f0fc65b8c1\\"", "size": 160833, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:43.776Z", "contentLength": 160833, "httpStatusCode": 200}	c35d35e8-5e22-4a42-a146-fe178c3de182	\N	{}
3e2bdacd-383e-4867-8b20-1c10a2566ec8	campuses	tamu/4	\N	2025-01-26 21:13:04.269537+00	2025-01-26 21:13:04.269537+00	2025-01-26 21:13:04.269537+00	{"eTag": "\\"a955e2ef8c9bed10b5236f23203a55d1\\"", "size": 70359, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:04.258Z", "contentLength": 70359, "httpStatusCode": 200}	b5fe07cf-efe2-47f8-96f5-3554eebf1849	\N	{}
bd75ec4e-0872-4a91-b9c8-b0ee77a8cf46	campuses	tamu/5	\N	2025-01-26 21:13:05.111969+00	2025-01-26 21:13:05.111969+00	2025-01-26 21:13:05.111969+00	{"eTag": "\\"174d35c5b0c2dcfb945098649179dcf2\\"", "size": 115880, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:05.106Z", "contentLength": 115880, "httpStatusCode": 200}	8d913445-d592-4350-ba15-0ecd3a42e86d	\N	{}
17a0eeb7-456d-494d-bd2d-f94b24456df3	campuses	uhv/6	\N	2025-01-26 21:14:44.47065+00	2025-01-26 21:14:44.47065+00	2025-01-26 21:14:44.47065+00	{"eTag": "\\"1ddcb4badf436b043871ba8698583b21\\"", "size": 914415, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:44.451Z", "contentLength": 914415, "httpStatusCode": 200}	9cc3d8af-c827-4652-a76a-dcdd3275d063	\N	{}
0ea2423c-083d-45f7-a883-f5dab69e22b6	campuses	tamu/6	\N	2025-01-26 21:13:06.021425+00	2025-01-26 21:13:06.021425+00	2025-01-26 21:13:06.021425+00	{"eTag": "\\"9e8afd5d1a3a6bb7659422724cd86b51\\"", "size": 285, "mimetype": "text/xml", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:06.017Z", "contentLength": 285, "httpStatusCode": 200}	dcccce26-2d52-4eae-8390-38af196039ef	\N	{}
8ca44e8d-29ef-42b1-b0a3-72df1d72e134	campuses	tamu/7	\N	2025-01-26 21:13:06.783229+00	2025-01-26 21:13:06.783229+00	2025-01-26 21:13:06.783229+00	{"eTag": "\\"095accedf0c817da0923661f162b0601\\"", "size": 581366, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:06.769Z", "contentLength": 581366, "httpStatusCode": 200}	38126bed-6998-4e1e-a0d6-29c0cdfc90bf	\N	{}
0aa66039-9bb7-4a36-b25d-a1d07b854f8d	campuses	tamu/8	\N	2025-01-26 21:13:07.335951+00	2025-01-26 21:13:07.335951+00	2025-01-26 21:13:07.335951+00	{"eTag": "\\"11fd241e82681f25a0894caff2456f8c\\"", "size": 377011, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:07.327Z", "contentLength": 377011, "httpStatusCode": 200}	47ce1df6-1d1e-48c3-a94b-371ee1c94472	\N	{}
7fd8a28a-a024-4082-861a-2fc988969ca3	campuses	tamu/9	\N	2025-01-26 21:13:07.797628+00	2025-01-26 21:13:07.797628+00	2025-01-26 21:13:07.797628+00	{"eTag": "\\"c9e3ff180f095f5939a77541cde7d084\\"", "size": 74335, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:07.792Z", "contentLength": 74335, "httpStatusCode": 200}	433594d6-416d-4eef-a242-90e5dee5d5bd	\N	{}
60f8906b-b102-4f73-8c2a-0eb87c24fa2f	campuses	txstate/0	\N	2025-01-26 21:13:08.431135+00	2025-01-26 21:13:08.431135+00	2025-01-26 21:13:08.431135+00	{"eTag": "\\"2126c39607fc83439667c2af15b84904\\"", "size": 493475, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:08.420Z", "contentLength": 493475, "httpStatusCode": 200}	bd411ab6-e759-46f3-8dcb-c776a0b39e64	\N	{}
ff9ded81-f88a-4cd3-8ed8-6952fdfc8ec7	campuses	txstate/1	\N	2025-01-26 21:13:08.987539+00	2025-01-26 21:13:08.987539+00	2025-01-26 21:13:08.987539+00	{"eTag": "\\"a4293001d81ab499b2f60242d498977d\\"", "size": 11186, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:08.985Z", "contentLength": 11186, "httpStatusCode": 200}	5e8221c5-a275-4d26-b542-ef3cd71cc580	\N	{}
a77bf97a-4bb3-4a91-8275-5078505303c0	campuses	tntech/5	\N	2025-01-26 21:12:57.584747+00	2025-01-26 21:12:57.584747+00	2025-01-26 21:12:57.584747+00	{"eTag": "\\"c49275dd0529d81529380d485d0130fe\\"", "size": 1765686, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:57.559Z", "contentLength": 1765686, "httpStatusCode": 200}	07df2a6c-433a-4139-8be8-6416cee9c5bf	\N	{}
b46b1aad-348c-4679-bd53-9e91b4ea1d7f	campuses	uvu/6	\N	2025-01-26 21:17:57.626913+00	2025-01-26 21:17:57.626913+00	2025-01-26 21:17:57.626913+00	{"eTag": "\\"944a95a0c84254574851a186a41091d8\\"", "size": 37497, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:57.623Z", "contentLength": 37497, "httpStatusCode": 200}	f4d86511-8d0f-43d8-a806-b15ae6a7bf69	\N	{}
4c17ad8c-cf7b-411d-9873-95fc7ee871cf	campuses	tntech/6	\N	2025-01-26 21:12:58.607338+00	2025-01-26 21:12:58.607338+00	2025-01-26 21:12:58.607338+00	{"eTag": "\\"712aedfc9cf9b2749dfbeb1afb94174f\\"", "size": 865341, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:58.595Z", "contentLength": 865341, "httpStatusCode": 200}	492a48f8-0e3b-4d2c-907a-0bacc56306f7	\N	{}
7de1d2b1-24c6-446f-a2b7-f81438a2d47f	campuses	uhv/7	\N	2025-01-26 21:14:44.970441+00	2025-01-26 21:14:44.970441+00	2025-01-26 21:14:44.970441+00	{"eTag": "\\"47042205a46a73784ea5f2f24ed6c88c\\"", "size": 213376, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:44.960Z", "contentLength": 213376, "httpStatusCode": 200}	fa122138-01f8-4418-916c-2b012862355c	\N	{}
a6c0a292-4299-4fbe-aac2-224ec8067003	campuses	tntech/7	\N	2025-01-26 21:12:59.15066+00	2025-01-26 21:12:59.15066+00	2025-01-26 21:12:59.15066+00	{"eTag": "\\"dd4775511607efe4caf90510c38d7693\\"", "size": 124341, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:59.142Z", "contentLength": 124341, "httpStatusCode": 200}	6141732a-f73e-4597-8af9-5eb6e547cc64	\N	{}
b5385c71-3019-4b7b-8373-b25b0ddc8130	campuses	tntech/8	\N	2025-01-26 21:12:59.827722+00	2025-01-26 21:12:59.827722+00	2025-01-26 21:12:59.827722+00	{"eTag": "\\"57dd7ee27529f65d1997bd21b8b7a55e\\"", "size": 269508, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:12:59.813Z", "contentLength": 269508, "httpStatusCode": 200}	6b80e8fb-1703-4689-b3a9-4f31ab4651f2	\N	{}
ce66bcb9-0586-4cb3-9569-80639d4195e1	campuses	uhv/8	\N	2025-01-26 21:14:45.58004+00	2025-01-26 21:14:45.58004+00	2025-01-26 21:14:45.58004+00	{"eTag": "\\"b268865b39785cf1af277ea2917df15a\\"", "size": 563614, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:45.564Z", "contentLength": 563614, "httpStatusCode": 200}	54ca7e9a-165c-4215-b9f0-8833bf42b93d	\N	{}
58f825f9-4831-402b-861b-44d4b2b23f9c	campuses	tntech/9	\N	2025-01-26 21:13:00.816622+00	2025-01-26 21:13:00.816622+00	2025-01-26 21:13:00.816622+00	{"eTag": "\\"2196779e8de882670ad0c0c08afdfbc7\\"", "size": 760909, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:00.808Z", "contentLength": 760909, "httpStatusCode": 200}	d8c9a571-b779-4737-9a60-012d4c07473f	\N	{}
5200a84e-f7c0-430c-9eeb-ef20a11e52e4	campuses	uvu/7	\N	2025-01-26 21:17:57.91876+00	2025-01-26 21:17:57.91876+00	2025-01-26 21:17:57.91876+00	{"eTag": "\\"26813426e7b865cfd539f1a65cf9ad81\\"", "size": 37176, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:57.915Z", "contentLength": 37176, "httpStatusCode": 200}	7ba69486-3b67-4c2b-ad66-cec5c3c5d2e0	\N	{}
7f76574d-2b46-45df-b771-90e302d186ce	campuses	tamu/0	\N	2025-01-26 21:13:01.435233+00	2025-01-26 21:13:01.435233+00	2025-01-26 21:13:01.435233+00	{"eTag": "\\"adb2a2255146fe54f5a298c724f8c2d5\\"", "size": 175788, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:01.432Z", "contentLength": 175788, "httpStatusCode": 200}	eddac668-3d91-46c1-ac8e-111703b90d5f	\N	{}
f32f46f6-ae34-4658-bda5-eba848740a4d	campuses	uhv/9	\N	2025-01-26 21:14:46.096591+00	2025-01-26 21:14:46.096591+00	2025-01-26 21:14:46.096591+00	{"eTag": "\\"efca6ed0bdd3fdb867d49bcbef2eb98c\\"", "size": 487222, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:46.090Z", "contentLength": 487222, "httpStatusCode": 200}	c5105b25-1ec8-439a-8ca2-1b79a5b425ba	\N	{}
c97320b9-7cf6-4569-875a-5d07376cbf53	campuses	txstate/4	\N	2025-01-26 21:13:10.882455+00	2025-01-26 21:13:10.882455+00	2025-01-26 21:13:10.882455+00	{"eTag": "\\"d42994ec6308f303f5c0cf02731efe7c\\"", "size": 244213, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:10.872Z", "contentLength": 244213, "httpStatusCode": 200}	6c036852-5ca7-4467-ba4a-e4d6b6140b2d	\N	{}
9fb51677-7111-447b-88af-26b1cb68611a	campuses	txstate/5	\N	2025-01-26 21:13:11.261097+00	2025-01-26 21:13:11.261097+00	2025-01-26 21:13:11.261097+00	{"eTag": "\\"47f7e9b0ab2f00cf0096183f6d5a3110\\"", "size": 135100, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:11.257Z", "contentLength": 135100, "httpStatusCode": 200}	85ca9f80-e638-4d87-bbdf-f4ec8a9118ce	\N	{}
2cfa7649-9f7d-4766-b80c-7518b4c75384	campuses	uis/0	\N	2025-01-26 21:14:47.019595+00	2025-01-26 21:14:47.019595+00	2025-01-26 21:14:47.019595+00	{"eTag": "\\"ec2ce36ab566e2decaeb322792f36c7b\\"", "size": 1130165, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:46.999Z", "contentLength": 1130165, "httpStatusCode": 200}	e81cf699-843b-448c-8362-40e964062775	\N	{}
c9939f3f-c42f-4cbc-8d8f-696138ada89c	campuses	txstate/6	\N	2025-01-26 21:13:12.139123+00	2025-01-26 21:13:12.139123+00	2025-01-26 21:13:12.139123+00	{"eTag": "\\"98ca11de206b2e6c276172e1caf01928\\"", "size": 396979, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:12.125Z", "contentLength": 396979, "httpStatusCode": 200}	14f4d3d5-49fd-4cef-a356-db3f244669f6	\N	{}
bf1df6be-7fc5-4d83-a155-a6cf3fc65813	campuses	uis/1	\N	2025-01-26 21:14:47.697188+00	2025-01-26 21:14:47.697188+00	2025-01-26 21:14:47.697188+00	{"eTag": "\\"44ce78f4d7d37b8ee5a650b510705591\\"", "size": 1804832, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:47.672Z", "contentLength": 1804832, "httpStatusCode": 200}	2b0d5df0-46b3-4430-ab0f-a216120422bf	\N	{}
918140ed-8472-4e3f-ae65-53ec881adb09	campuses	uis/2	\N	2025-01-26 21:14:48.37566+00	2025-01-26 21:14:48.37566+00	2025-01-26 21:14:48.37566+00	{"eTag": "\\"e68138c6562629a34fca04fbac43bb30\\"", "size": 1079154, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:48.344Z", "contentLength": 1079154, "httpStatusCode": 200}	c76e293a-4fbb-43d2-8778-e95d88340bf2	\N	{}
bd645e56-0266-4752-b838-43e0ef95cad8	campuses	uis/3	\N	2025-01-26 21:14:49.090823+00	2025-01-26 21:14:49.090823+00	2025-01-26 21:14:49.090823+00	{"eTag": "\\"6534b8c84bfbb65148fd2f7f302180a8\\"", "size": 1576524, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:49.079Z", "contentLength": 1576524, "httpStatusCode": 200}	551854e4-4b3e-4610-917a-0e539b103e22	\N	{}
22772bc0-7f36-4945-b539-022655324594	campuses	txstate/2	\N	2025-01-26 21:13:09.524001+00	2025-01-26 21:13:09.524001+00	2025-01-26 21:13:09.524001+00	{"eTag": "\\"5199653446ed2afa3510ce3d22b7eb2b\\"", "size": 20398, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:09.519Z", "contentLength": 20398, "httpStatusCode": 200}	cdaffd4f-979b-4fcf-911f-6c96f04b45d0	\N	{}
e466a2d5-ab71-4397-be09-dd9896f28c5d	campuses	uis/4	\N	2025-01-26 21:14:49.850984+00	2025-01-26 21:14:49.850984+00	2025-01-26 21:14:49.850984+00	{"eTag": "\\"8e043770b81aa9a69846817d74e43e1e\\"", "size": 866952, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:49.788Z", "contentLength": 866952, "httpStatusCode": 200}	1e7d82cd-3f27-41a9-bd8f-bed475363f57	\N	{}
45c094af-412c-49f6-92c5-9fa85783661d	campuses	txstate/3	\N	2025-01-26 21:13:09.96463+00	2025-01-26 21:13:09.96463+00	2025-01-26 21:13:09.96463+00	{"eTag": "\\"b22970eb62afdb80594aa5e73d4b51b5\\"", "size": 56816, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:09.961Z", "contentLength": 56816, "httpStatusCode": 200}	8b8e43c3-1585-4fd7-8045-403469fd2eba	\N	{}
86f084e1-7c5d-42e5-92e6-e4f0a46672da	campuses	uvu/8	\N	2025-01-26 21:17:58.260525+00	2025-01-26 21:17:58.260525+00	2025-01-26 21:17:58.260525+00	{"eTag": "\\"cc3d61afb747613edf6b73a4af2c59db\\"", "size": 37034, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:58.257Z", "contentLength": 37034, "httpStatusCode": 200}	b023d031-5257-4d5e-8c79-0e08e1a76bff	\N	{}
8026fc34-f5cd-4a75-8c59-22af4bf64938	campuses	txstate/7	\N	2025-01-26 21:13:13.064892+00	2025-01-26 21:13:13.064892+00	2025-01-26 21:13:13.064892+00	{"eTag": "\\"198dba3f5cfe6a745fb36c8bd541ddb8\\"", "size": 193908, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:13.054Z", "contentLength": 193908, "httpStatusCode": 200}	14c4e89f-74a5-4f03-b508-5ecba746d5f9	\N	{}
d59b7f35-fe4f-40b2-9637-b55ae9a0ce81	campuses	uis/5	\N	2025-01-26 21:14:50.618765+00	2025-01-26 21:14:50.618765+00	2025-01-26 21:14:50.618765+00	{"eTag": "\\"9cc09036a2a891bc9a2146df2e201bc4\\"", "size": 1432824, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:50.553Z", "contentLength": 1432824, "httpStatusCode": 200}	579b6dd3-3893-471d-b73c-f364c02615ca	\N	{}
8694b4fd-0e6b-48fa-891a-d0cfc788891c	campuses	txstate/8	\N	2025-01-26 21:13:13.646604+00	2025-01-26 21:13:13.646604+00	2025-01-26 21:13:13.646604+00	{"eTag": "\\"53e6e09a64a8f4968ffd34280bc7ee14\\"", "size": 21318, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:13.644Z", "contentLength": 21318, "httpStatusCode": 200}	dcae04d7-b308-44d8-bfb3-b67449eb2c00	\N	{}
912e71dd-7cb1-4722-aad4-54f0600d5fb9	campuses	txstate/9	\N	2025-01-26 21:13:14.537317+00	2025-01-26 21:13:14.537317+00	2025-01-26 21:13:14.537317+00	{"eTag": "\\"b1926b2053eac57f88f07b81bf851c37\\"", "size": 567738, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:14.532Z", "contentLength": 567738, "httpStatusCode": 200}	93dffcc8-7bc5-49c0-af3f-8d1039394a12	\N	{}
8cbab094-b576-4885-afa5-48a710d6dbdb	campuses	uis/6	\N	2025-01-26 21:14:51.359371+00	2025-01-26 21:14:51.359371+00	2025-01-26 21:14:51.359371+00	{"eTag": "\\"2e3d63a03b9b225f7ddf93238b62c91e\\"", "size": 1449992, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:51.338Z", "contentLength": 1449992, "httpStatusCode": 200}	d411d3d8-c0f5-42e2-ace0-b1313b05f502	\N	{}
1fe8eccb-21a2-4f41-b6bc-86736a112f80	campuses	unm/0	\N	2025-01-26 21:13:15.215896+00	2025-01-26 21:13:15.215896+00	2025-01-26 21:13:15.215896+00	{"eTag": "\\"01f8d0ec3c5d55592393a333ffd6fea3\\"", "size": 870277, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:15.200Z", "contentLength": 870277, "httpStatusCode": 200}	b457c44b-b95e-454f-8700-0b890fbda71f	\N	{}
4aac0f50-1091-4251-8577-ab0f7541cab5	campuses	unm/1	\N	2025-01-26 21:13:16.249065+00	2025-01-26 21:13:16.249065+00	2025-01-26 21:13:16.249065+00	{"eTag": "\\"3aeb32d616d9298e00a05b232ba34369\\"", "size": 33399, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:16.246Z", "contentLength": 33399, "httpStatusCode": 200}	b95c5325-c274-4e1e-8216-31aef1777a82	\N	{}
76118808-bafc-440f-aec7-571c60a5f17d	campuses	uis/7	\N	2025-01-26 21:14:51.92132+00	2025-01-26 21:14:51.92132+00	2025-01-26 21:14:51.92132+00	{"eTag": "\\"eb8d6d2f90bd16a55fa2b86ce962f59a\\"", "size": 891906, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:51.914Z", "contentLength": 891906, "httpStatusCode": 200}	9686be32-be40-4319-924a-6941b6c5a3e1	\N	{}
6e14e651-ca2f-4405-8920-252409b3f09e	campuses	unm/2	\N	2025-01-26 21:13:17.353459+00	2025-01-26 21:13:17.353459+00	2025-01-26 21:13:17.353459+00	{"eTag": "\\"62c5e0aeb79a3620aaf79a785dc50a2e\\"", "size": 1023970, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:17.339Z", "contentLength": 1023970, "httpStatusCode": 200}	0b1c6b15-383d-4851-9806-8d02601e27d8	\N	{}
2ba8c1ff-969e-4be5-acf1-36cf567d4219	campuses	unm/3	\N	2025-01-26 21:13:18.343112+00	2025-01-26 21:13:18.343112+00	2025-01-26 21:13:18.343112+00	{"eTag": "\\"5ef6a3e03f1d5609cbb1b1afdcfc009a\\"", "size": 86885, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:18.311Z", "contentLength": 86885, "httpStatusCode": 200}	6942f1c9-367f-4912-a093-1517acc0074e	\N	{}
6d972d5b-12fa-4e9b-8de3-3433714edd09	campuses	unm/4	\N	2025-01-26 21:13:21.589487+00	2025-01-26 21:13:21.589487+00	2025-01-26 21:13:21.589487+00	{"eTag": "\\"bfddbe5425860f4f17fff507fc47dbc1\\"", "size": 234382, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:21.582Z", "contentLength": 234382, "httpStatusCode": 200}	a0a17564-5836-4ec5-991d-0c92f6582e0c	\N	{}
1175b771-7820-4e0d-9347-5fbf68c35dd0	campuses	unm/5	\N	2025-01-26 21:13:22.988953+00	2025-01-26 21:13:22.988953+00	2025-01-26 21:13:22.988953+00	{"eTag": "\\"01ebd905b2d26ec24e6314e791abe053\\"", "size": 112113, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:22.980Z", "contentLength": 112113, "httpStatusCode": 200}	ffc19dbb-dc71-4f6f-ab24-07dab2877521	\N	{}
c8ac3575-fe65-4ce2-9b68-b5c5ae56f78e	campuses	unm/6	\N	2025-01-26 21:13:24.738227+00	2025-01-26 21:13:24.738227+00	2025-01-26 21:13:24.738227+00	{"eTag": "\\"356514fe8a67fffdd84eea03d349d22a\\"", "size": 697584, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:24.726Z", "contentLength": 697584, "httpStatusCode": 200}	a3e59ddc-2c6a-44e0-97cc-050c2a44cae8	\N	{}
d46541b1-796e-49eb-861f-47c592f8e4fe	campuses	unm/7	\N	2025-01-26 21:13:25.405831+00	2025-01-26 21:13:25.405831+00	2025-01-26 21:13:25.405831+00	{"eTag": "\\"69931234a0a9eda0f70ce21ee50fd025\\"", "size": 668600, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:25.392Z", "contentLength": 668600, "httpStatusCode": 200}	b570567e-d02a-4935-85f9-7a3379dfa0e8	\N	{}
1b026e84-761b-461c-bdab-bb96c93ddb01	campuses	unm/8	\N	2025-01-26 21:13:26.07715+00	2025-01-26 21:13:26.07715+00	2025-01-26 21:13:26.07715+00	{"eTag": "\\"63379d4fc445a7a5fbd907de0bb8bf07\\"", "size": 95639, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:26.075Z", "contentLength": 95639, "httpStatusCode": 200}	181440b5-d615-4055-83c1-f5aa1e0b145f	\N	{}
361ac206-2cdd-4030-93c9-dd02de5fd174	campuses	unm/9	\N	2025-01-26 21:13:26.73529+00	2025-01-26 21:13:26.73529+00	2025-01-26 21:13:26.73529+00	{"eTag": "\\"39a27a3de2e4c3e78f287b0eb922c4bb\\"", "size": 1752181, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:26.720Z", "contentLength": 1752181, "httpStatusCode": 200}	55538d84-9b96-425e-a334-41af512d99cc	\N	{}
79c63502-e68e-49f6-8fbf-58b79e931415	campuses	uis/8	\N	2025-01-26 21:14:52.661317+00	2025-01-26 21:14:52.661317+00	2025-01-26 21:14:52.661317+00	{"eTag": "\\"4e73e763eaa63cfe06adb53296f5cc7a\\"", "size": 3004418, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:52.631Z", "contentLength": 3004418, "httpStatusCode": 200}	01b4724b-07fa-4033-9c4c-6ee0b4a30b2a	\N	{}
35573432-4683-4b33-b2da-984ce332179d	campuses	towson/0	\N	2025-01-26 21:13:27.383899+00	2025-01-26 21:13:27.383899+00	2025-01-26 21:13:27.383899+00	{"eTag": "\\"275c19c078a55e3da1e2c909842c0709\\"", "size": 20319, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:27.379Z", "contentLength": 20319, "httpStatusCode": 200}	fb73000a-2059-4b9f-ad06-bb0dacd2172f	\N	{}
93011fd5-6f00-4698-b2a6-7acca71415a2	campuses	towson/1	\N	2025-01-26 21:13:27.803305+00	2025-01-26 21:13:27.803305+00	2025-01-26 21:13:27.803305+00	{"eTag": "\\"275c19c078a55e3da1e2c909842c0709\\"", "size": 20319, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:27.798Z", "contentLength": 20319, "httpStatusCode": 200}	c1b3d1c2-6f6b-409b-9cc3-71c81554a1d1	\N	{}
9ec5ab5d-0d11-4fc1-875e-130211973972	campuses	uis/9	\N	2025-01-26 21:14:53.313391+00	2025-01-26 21:14:53.313391+00	2025-01-26 21:14:53.313391+00	{"eTag": "\\"dcf12551cf4227b3dc77e7cf40cb2756\\"", "size": 726804, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:53.307Z", "contentLength": 726804, "httpStatusCode": 200}	d2cbbfcb-d781-4905-8072-3b30b821f2d8	\N	{}
705b8706-dc14-41e6-baae-cdc94a68fc38	campuses	towson/2	\N	2025-01-26 21:13:28.231085+00	2025-01-26 21:13:28.231085+00	2025-01-26 21:13:28.231085+00	{"eTag": "\\"275c19c078a55e3da1e2c909842c0709\\"", "size": 20319, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:28.227Z", "contentLength": 20319, "httpStatusCode": 200}	25eaeb34-f4ec-439e-aa18-7558b3f1edd7	\N	{}
b57fa9c0-861b-4fe3-aef0-e0aa9372e465	campuses	towson/3	\N	2025-01-26 21:13:28.623791+00	2025-01-26 21:13:28.623791+00	2025-01-26 21:13:28.623791+00	{"eTag": "\\"275c19c078a55e3da1e2c909842c0709\\"", "size": 20319, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:28.619Z", "contentLength": 20319, "httpStatusCode": 200}	25d73c15-88a4-4918-af42-4c54f47b35b4	\N	{}
ca881d00-9670-41b3-b7e0-8a90635cecea	campuses	uindy/0	\N	2025-01-26 21:14:54.122326+00	2025-01-26 21:14:54.122326+00	2025-01-26 21:14:54.122326+00	{"eTag": "\\"ba0e2002510ca7169012b09bf0a8aa6e\\"", "size": 244903, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:54.117Z", "contentLength": 244903, "httpStatusCode": 200}	851c6a26-8620-4f61-a745-31d71b280eb6	\N	{}
11309dc3-3e69-461b-a3ba-b94b5fec698a	campuses	towson/4	\N	2025-01-26 21:13:29.025168+00	2025-01-26 21:13:29.025168+00	2025-01-26 21:13:29.025168+00	{"eTag": "\\"275c19c078a55e3da1e2c909842c0709\\"", "size": 20319, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:29.021Z", "contentLength": 20319, "httpStatusCode": 200}	af9521bc-71fc-421c-9e27-7ba67863ecea	\N	{}
b37d8eae-92e8-4a64-a2e2-2208e80196b0	campuses	towson/5	\N	2025-01-26 21:13:29.430042+00	2025-01-26 21:13:29.430042+00	2025-01-26 21:13:29.430042+00	{"eTag": "\\"275c19c078a55e3da1e2c909842c0709\\"", "size": 20319, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:29.427Z", "contentLength": 20319, "httpStatusCode": 200}	08bed293-36cd-44a7-a3f7-ebbcf30d9bb3	\N	{}
e8cce291-3e39-41ae-be29-943c03c6bca9	campuses	uindy/1	\N	2025-01-26 21:14:54.677638+00	2025-01-26 21:14:54.677638+00	2025-01-26 21:14:54.677638+00	{"eTag": "\\"df5e446bc174b7023594f3dfb4481141\\"", "size": 378116, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:54.665Z", "contentLength": 378116, "httpStatusCode": 200}	9e68a1b8-167c-46b2-86f8-44a90021936d	\N	{}
61ed50ce-e340-4fa0-a1a1-0a593bd12d92	campuses	towson/6	\N	2025-01-26 21:13:29.861636+00	2025-01-26 21:13:29.861636+00	2025-01-26 21:13:29.861636+00	{"eTag": "\\"275c19c078a55e3da1e2c909842c0709\\"", "size": 20319, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:29.859Z", "contentLength": 20319, "httpStatusCode": 200}	102038db-5698-4f19-b87a-2d5485c649f0	\N	{}
a66a611e-3581-417c-9fb5-47b0b8970a04	campuses	towson/7	\N	2025-01-26 21:13:30.273147+00	2025-01-26 21:13:30.273147+00	2025-01-26 21:13:30.273147+00	{"eTag": "\\"275c19c078a55e3da1e2c909842c0709\\"", "size": 20319, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:30.268Z", "contentLength": 20319, "httpStatusCode": 200}	d6081242-dd49-4cb4-897a-82638f896c29	\N	{}
367c8c15-2b71-47c5-91de-8101f856118d	campuses	towson/8	\N	2025-01-26 21:13:30.66652+00	2025-01-26 21:13:30.66652+00	2025-01-26 21:13:30.66652+00	{"eTag": "\\"275c19c078a55e3da1e2c909842c0709\\"", "size": 20319, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:30.663Z", "contentLength": 20319, "httpStatusCode": 200}	76d872fc-e93f-416e-96ac-6eb37c85bba8	\N	{}
6d7f756f-cf54-4951-a0e6-63449bc0c5bd	campuses	towson/9	\N	2025-01-26 21:13:31.065058+00	2025-01-26 21:13:31.065058+00	2025-01-26 21:13:31.065058+00	{"eTag": "\\"275c19c078a55e3da1e2c909842c0709\\"", "size": 20319, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:31.062Z", "contentLength": 20319, "httpStatusCode": 200}	e735a95c-9263-46e7-995a-20b611903910	\N	{}
9c4c023c-95df-4e92-92f2-f3aa11f588e8	campuses	trincoll/0	\N	2025-01-26 21:13:31.692148+00	2025-01-26 21:13:31.692148+00	2025-01-26 21:13:31.692148+00	{"eTag": "\\"9f58612e2d3b19a31ee7f4c3661d6c0f\\"", "size": 426139, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:31.684Z", "contentLength": 426139, "httpStatusCode": 200}	ad632db0-6039-436f-9dc2-bdd4b9b770da	\N	{}
929e81e0-6fe8-4965-afc7-5a9cf52cd485	campuses	trincoll/1	\N	2025-01-26 21:13:32.081355+00	2025-01-26 21:13:32.081355+00	2025-01-26 21:13:32.081355+00	{"eTag": "\\"e88fb6a6c9a756cb01b9815c2d5f0c1d\\"", "size": 67345, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:32.077Z", "contentLength": 67345, "httpStatusCode": 200}	85ef0f3a-6d1b-48cb-8d75-d94b64e55606	\N	{}
ab487900-5ec2-41cf-9e64-af260610ca7d	campuses	trincoll/2	\N	2025-01-26 21:13:32.532595+00	2025-01-26 21:13:32.532595+00	2025-01-26 21:13:32.532595+00	{"eTag": "\\"520f9b500ee1795e16544550d86d23ae\\"", "size": 202582, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:32.526Z", "contentLength": 202582, "httpStatusCode": 200}	f706d09f-da77-432b-9c03-13d812578487	\N	{}
ebebb334-ff60-47d6-825c-492377b9c9d6	campuses	trincoll/3	\N	2025-01-26 21:13:32.831369+00	2025-01-26 21:13:32.831369+00	2025-01-26 21:13:32.831369+00	{"eTag": "\\"cf270081c6c015d87f9041984bdeaa02\\"", "size": 388, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:32.826Z", "contentLength": 388, "httpStatusCode": 200}	897b02b3-5a63-44ca-ac96-78b161cf2363	\N	{}
46072aa4-fb10-4085-b5c2-0e4cbbba46a2	campuses	uvu/9	\N	2025-01-26 21:17:58.55074+00	2025-01-26 21:17:58.55074+00	2025-01-26 21:17:58.55074+00	{"eTag": "\\"43018b195799eaaeeda95fbe495968c8\\"", "size": 37161, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:58.549Z", "contentLength": 37161, "httpStatusCode": 200}	b0a85073-0ff0-4a05-8cf4-d6885d34231d	\N	{}
9c62a420-a0cf-4f06-adae-f340370e3d6d	campuses	trincoll/4	\N	2025-01-26 21:13:33.273077+00	2025-01-26 21:13:33.273077+00	2025-01-26 21:13:33.273077+00	{"eTag": "\\"16feb08876623ffe3362516e9bb1359d\\"", "size": 110596, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:33.267Z", "contentLength": 110596, "httpStatusCode": 200}	06edc19d-fa33-4bc1-bb01-562027ca5dfb	\N	{}
950c9928-30e9-403d-9f7b-f042ddb09577	campuses	uindy/2	\N	2025-01-26 21:14:55.190583+00	2025-01-26 21:14:55.190583+00	2025-01-26 21:14:55.190583+00	{"eTag": "\\"dbe4c6ad0d44c83939cbec5d3767b2df\\"", "size": 166665, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:55.183Z", "contentLength": 166665, "httpStatusCode": 200}	8496cdf7-d7c2-47a6-babc-d67d4e848573	\N	{}
673e5d3e-96ec-42a5-a1ac-6e7d04bd15a3	campuses	trincoll/5	\N	2025-01-26 21:13:33.861107+00	2025-01-26 21:13:33.861107+00	2025-01-26 21:13:33.861107+00	{"eTag": "\\"444cbe35b4db18c812e0a8a83e728bae\\"", "size": 1143583, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:33.852Z", "contentLength": 1143583, "httpStatusCode": 200}	facf2bdb-b8c9-49ee-9939-4fbe7664da63	\N	{}
6fd1fd12-cd29-4e37-b5d4-a44a18c9b5dc	campuses	trincoll/6	\N	2025-01-26 21:13:35.433154+00	2025-01-26 21:13:35.433154+00	2025-01-26 21:13:35.433154+00	{"eTag": "\\"92f9d20bee6513aa302a55949072438f\\"", "size": 26727, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:35.426Z", "contentLength": 26727, "httpStatusCode": 200}	234ea5f2-c32a-4441-8ad4-7370375205e8	\N	{}
ab9bc8f2-8232-454d-a223-3be3eb886e8b	campuses	uindy/3	\N	2025-01-26 21:14:55.864446+00	2025-01-26 21:14:55.864446+00	2025-01-26 21:14:55.864446+00	{"eTag": "\\"5ef04064a5c01268dbfad0eb00d17b57\\"", "size": 581382, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:55.849Z", "contentLength": 581382, "httpStatusCode": 200}	326ce59f-7de8-4744-be9e-07a83bb192d7	\N	{}
b3f0c2db-5b4d-418e-856b-a869c0a4dd16	campuses	trincoll/7	\N	2025-01-26 21:13:35.810061+00	2025-01-26 21:13:35.810061+00	2025-01-26 21:13:35.810061+00	{"eTag": "\\"355cb850955d157f6cf79d03939ff4ca\\"", "size": 51007, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:35.805Z", "contentLength": 51007, "httpStatusCode": 200}	a736bc91-198e-4cf0-9caf-d6ba78a250fc	\N	{}
a47c8556-4f63-4174-aa5a-a7bf768b3581	campuses	trincoll/8	\N	2025-01-26 21:13:36.240016+00	2025-01-26 21:13:36.240016+00	2025-01-26 21:13:36.240016+00	{"eTag": "\\"15449e8ea3a06e62bec7ab758edccf9c\\"", "size": 155204, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:36.236Z", "contentLength": 155204, "httpStatusCode": 200}	3b0d17ae-c73f-46c4-9f60-22993e815f65	\N	{}
5de8fee4-6db1-4ea8-8e5b-d88f31b29986	campuses	uindy/4	\N	2025-01-26 21:14:56.804882+00	2025-01-26 21:14:56.804882+00	2025-01-26 21:14:56.804882+00	{"eTag": "\\"df10d07d59ea2fc3389d3f375e393d50\\"", "size": 1930204, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:56.784Z", "contentLength": 1930204, "httpStatusCode": 200}	8b665cb6-3514-44f5-84a3-35e82e31f5b2	\N	{}
919ce75f-4b28-4106-a726-a16d93b4ff82	campuses	trincoll/9	\N	2025-01-26 21:13:36.730561+00	2025-01-26 21:13:36.730561+00	2025-01-26 21:13:36.730561+00	{"eTag": "\\"02e1f08d55007ccf2aa9e1de9311192b\\"", "size": 277920, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:36.723Z", "contentLength": 277920, "httpStatusCode": 200}	d21bea7f-e0de-4a0f-88f0-0a73f204bf76	\N	{}
3e41d87e-45a5-4892-8191-0609b923304e	campuses	ucsb/0	\N	2025-01-26 21:13:37.888393+00	2025-01-26 21:13:37.888393+00	2025-01-26 21:13:37.888393+00	{"eTag": "\\"a03b8824faf4649298841d9cce2d21af\\"", "size": 636457, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:37.874Z", "contentLength": 636457, "httpStatusCode": 200}	3dfef3ba-4e44-4173-b43b-6e0b648ff3dc	\N	{}
279516b5-7438-4a98-8e27-eb5961962975	campuses	ucsb/1	\N	2025-01-26 21:13:38.963011+00	2025-01-26 21:13:38.963011+00	2025-01-26 21:13:38.963011+00	{"eTag": "\\"c40cff530860b32d34a5e37ea0ec2122\\"", "size": 3137489, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:38.922Z", "contentLength": 3137489, "httpStatusCode": 200}	2edb3567-b70c-49c5-acf0-702a907686fa	\N	{}
da788dff-6d2d-4b19-b4fd-8a0e89dc617c	campuses	ucsb/2	\N	2025-01-26 21:13:40.312538+00	2025-01-26 21:13:40.312538+00	2025-01-26 21:13:40.312538+00	{"eTag": "\\"b402a12808b1b30d92dc53362e37f15c\\"", "size": 404619, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:40.298Z", "contentLength": 404619, "httpStatusCode": 200}	2c85e0ee-cc4f-4845-9846-53ea2e54e4ee	\N	{}
8a1c46a8-4631-442a-a1b0-f163b7cff909	campuses	ucsb/3	\N	2025-01-26 21:13:41.324554+00	2025-01-26 21:13:41.324554+00	2025-01-26 21:13:41.324554+00	{"eTag": "\\"f8b3b4d4d970eb8e1acf32d2970c7058\\"", "size": 199189, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:41.321Z", "contentLength": 199189, "httpStatusCode": 200}	be84c864-4ecc-4764-9f8b-4b976eb17e36	\N	{}
38e2bafa-1278-43d9-9d96-6acabaa38a20	campuses	ucsb/4	\N	2025-01-26 21:13:42.280917+00	2025-01-26 21:13:42.280917+00	2025-01-26 21:13:42.280917+00	{"eTag": "\\"f7e40ae8ed1eb2327f81d4249bdf352c\\"", "size": 3110032, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:42.238Z", "contentLength": 3110032, "httpStatusCode": 200}	4783b335-ae99-4fcd-b065-a3a078383952	\N	{}
84b89a56-9c37-4f11-ba12-23109e8bdaaf	campuses	ucsb/5	\N	2025-01-26 21:13:43.192733+00	2025-01-26 21:13:43.192733+00	2025-01-26 21:13:43.192733+00	{"eTag": "\\"fb40edb1c7385723e1d82b0b38f9b9c2\\"", "size": 4490673, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:43.159Z", "contentLength": 4490673, "httpStatusCode": 200}	b02cff69-91ea-4861-986d-a75de4a50b6a	\N	{}
8c39e425-111c-44dd-8071-488a17ad9a1f	campuses	ucsb/6	\N	2025-01-26 21:13:44.194815+00	2025-01-26 21:13:44.194815+00	2025-01-26 21:13:44.194815+00	{"eTag": "\\"827499199c3ac4c02638cc15ffee9153\\"", "size": 271901, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:44.175Z", "contentLength": 271901, "httpStatusCode": 200}	f2b2e5e8-c57e-40e1-ba97-5749547ce3ff	\N	{}
8f45bda4-3a19-4a12-90f5-6380a4f3044d	campuses	ucsb/7	\N	2025-01-26 21:13:45.105575+00	2025-01-26 21:13:45.105575+00	2025-01-26 21:13:45.105575+00	{"eTag": "\\"c732b71447ff758b5d756bd304f61704\\"", "size": 452747, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:13:45.092Z", "contentLength": 452747, "httpStatusCode": 200}	90e6329a-3c5a-49f5-9b70-43d3473c77ba	\N	{}
7a28328b-e473-459a-bfc0-51fa417ae522	campuses	uindy/5	\N	2025-01-26 21:14:57.375469+00	2025-01-26 21:14:57.375469+00	2025-01-26 21:14:57.375469+00	{"eTag": "\\"6f33da4ba2ee9bf7cf9283de064ede26\\"", "size": 195559, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:57.369Z", "contentLength": 195559, "httpStatusCode": 200}	68581384-c647-4676-a5a2-d714d1057909	\N	{}
d1a30758-660d-4d0b-ae38-b3d9e0c0f0c8	campuses	vassar/0	\N	2025-01-26 21:17:59.476355+00	2025-01-26 21:17:59.476355+00	2025-01-26 21:17:59.476355+00	{"eTag": "\\"0380f4802d7c3e02b82c74f252622ce2\\"", "size": 1204838, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:59.450Z", "contentLength": 1204838, "httpStatusCode": 200}	21ec8833-f5a7-4b20-a424-edbf5b2086e1	\N	{}
397030d5-f9a5-4ad7-a8a0-d2a38d922ce9	campuses	uindy/6	\N	2025-01-26 21:14:58.020322+00	2025-01-26 21:14:58.020322+00	2025-01-26 21:14:58.020322+00	{"eTag": "\\"cf43f0912784ba0eddbf822d7051ff19\\"", "size": 154651, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:58.014Z", "contentLength": 154651, "httpStatusCode": 200}	3ff076c7-0606-44ae-8325-82b5d7e20579	\N	{}
dc3898a7-6af0-424e-9348-5fe8e2c6a05e	campuses	uindy/7	\N	2025-01-26 21:14:58.417934+00	2025-01-26 21:14:58.417934+00	2025-01-26 21:14:58.417934+00	{"eTag": "\\"3494ef636acba4f4a9ffb08a59ad58c0\\"", "size": 26687, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:58.413Z", "contentLength": 26687, "httpStatusCode": 200}	e7ef7853-3ed3-475e-ac68-f2ad4a92adee	\N	{}
4c70cade-44ce-45b3-8e0a-565bedae6016	campuses	vassar/1	\N	2025-01-26 21:18:00.203495+00	2025-01-26 21:18:00.203495+00	2025-01-26 21:18:00.203495+00	{"eTag": "\\"630f50311ca57e3a7120abca7f0150a0\\"", "size": 478359, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:00.170Z", "contentLength": 478359, "httpStatusCode": 200}	1636638a-0144-455c-924b-a086128ca2f9	\N	{}
d7d27a6a-e1e9-4255-9440-1d9edde06d5f	campuses	uindy/8	\N	2025-01-26 21:14:59.392594+00	2025-01-26 21:14:59.392594+00	2025-01-26 21:14:59.392594+00	{"eTag": "\\"e3d517f7b019573212a24c88245293b2\\"", "size": 2735887, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:59.370Z", "contentLength": 2735887, "httpStatusCode": 200}	1e961471-62e8-46fb-bdd5-afd72808879f	\N	{}
a96893c3-0754-42c1-80d8-9517312c4e1d	campuses	uindy/9	\N	2025-01-26 21:14:59.997022+00	2025-01-26 21:14:59.997022+00	2025-01-26 21:14:59.997022+00	{"eTag": "\\"a6b77dd8ff7b8c35bb5e35c1aa7a7341\\"", "size": 118230, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:14:59.988Z", "contentLength": 118230, "httpStatusCode": 200}	69687636-afd2-4caf-a50d-0a5ac12dcf23	\N	{}
44bba502-5b14-42e9-b72a-66510f82817e	campuses	vassar/2	\N	2025-01-26 21:18:01.002709+00	2025-01-26 21:18:01.002709+00	2025-01-26 21:18:01.002709+00	{"eTag": "\\"fbbaedc5f828c8d9c71ea99d20618679\\"", "size": 715751, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:00.989Z", "contentLength": 715751, "httpStatusCode": 200}	d9b5d3dd-f7d9-47f0-bd1e-ca40b8f0fe79	\N	{}
6898d951-d225-4dbb-bc8e-f5bbd0403b70	campuses	ku/0	\N	2025-01-26 21:15:00.78534+00	2025-01-26 21:15:00.78534+00	2025-01-26 21:15:00.78534+00	{"eTag": "\\"a00b51ed66fc6e9e21d373c91f149924\\"", "size": 1662598, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:00.771Z", "contentLength": 1662598, "httpStatusCode": 200}	a28e9bd0-9bb4-4607-9f3e-13fd5ec01d8a	\N	{}
58eb27a4-074e-40ae-8658-3fbd18543cfe	campuses	ku/1	\N	2025-01-26 21:15:01.290091+00	2025-01-26 21:15:01.290091+00	2025-01-26 21:15:01.290091+00	{"eTag": "\\"c0e15f50787ec4a54e61505ebde6e4e5\\"", "size": 44377, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:01.283Z", "contentLength": 44377, "httpStatusCode": 200}	c094c2b8-f20b-420f-b2fb-53483a3ec8f5	\N	{}
157a2029-687a-459b-9004-db94ce5e668a	campuses	ku/2	\N	2025-01-26 21:15:01.972015+00	2025-01-26 21:15:01.972015+00	2025-01-26 21:15:01.972015+00	{"eTag": "\\"689c8428a40cf5269588d85e0993629b\\"", "size": 118819, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:01.959Z", "contentLength": 118819, "httpStatusCode": 200}	fb743074-f8dc-4ab4-87e1-36f47e00241b	\N	{}
b94c7a45-a0be-4c72-aac3-89565ff907d3	campuses	ku/3	\N	2025-01-26 21:15:02.506615+00	2025-01-26 21:15:02.506615+00	2025-01-26 21:15:02.506615+00	{"eTag": "\\"06b5cba74e28c405edc49c66a8747bb2\\"", "size": 328918, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:02.501Z", "contentLength": 328918, "httpStatusCode": 200}	995103af-8794-4303-8ce4-de12cfc3dae6	\N	{}
76b52481-7122-4936-a554-5583385a8bfe	campuses	ku/4	\N	2025-01-26 21:15:03.019057+00	2025-01-26 21:15:03.019057+00	2025-01-26 21:15:03.019057+00	{"eTag": "\\"0e22eba526f19ca82f19e2e1388f21e2\\"", "size": 133909, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:03.014Z", "contentLength": 133909, "httpStatusCode": 200}	ef826524-2185-4779-aefc-f0e949a7282f	\N	{}
a88f7046-dabd-48ea-96db-4c461febb459	campuses	ku/5	\N	2025-01-26 21:15:03.738891+00	2025-01-26 21:15:03.738891+00	2025-01-26 21:15:03.738891+00	{"eTag": "\\"0200dc7af06efc500f810ea2ec9c63d1\\"", "size": 699364, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:03.731Z", "contentLength": 699364, "httpStatusCode": 200}	69e112f2-1f73-4ea2-9317-e50ffed213d1	\N	{}
615d9145-cf5c-4698-86d5-b902472ca635	campuses	ku/6	\N	2025-01-26 21:15:04.37283+00	2025-01-26 21:15:04.37283+00	2025-01-26 21:15:04.37283+00	{"eTag": "\\"8b672d74c38f29033205a0ee2f201c8d\\"", "size": 335773, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:04.368Z", "contentLength": 335773, "httpStatusCode": 200}	879771fd-2896-4137-8cc2-1e9198262776	\N	{}
b2ecb4c1-c1f1-41a9-849c-e0fec26320d4	campuses	ku/7	\N	2025-01-26 21:15:04.830176+00	2025-01-26 21:15:04.830176+00	2025-01-26 21:15:04.830176+00	{"eTag": "\\"f74cfce07aabafb2610922d957323b31\\"", "size": 221860, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:04.821Z", "contentLength": 221860, "httpStatusCode": 200}	c8ccc8f7-6e14-4e1f-bda5-097517449ece	\N	{}
b7208f6d-d022-495c-b825-d840cc7aef19	campuses	ku/8	\N	2025-01-26 21:15:05.392837+00	2025-01-26 21:15:05.392837+00	2025-01-26 21:15:05.392837+00	{"eTag": "\\"b17bfcc3fc50f3aed44002351389dbe3\\"", "size": 631774, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:05.383Z", "contentLength": 631774, "httpStatusCode": 200}	9a5dcde8-e78f-4d48-9e91-8ba647cbada1	\N	{}
134e511b-2030-4f5c-ba68-20d92bf10528	campuses	ku/9	\N	2025-01-26 21:15:06.103383+00	2025-01-26 21:15:06.103383+00	2025-01-26 21:15:06.103383+00	{"eTag": "\\"484f1b3fd1576f916f30933bae972456\\"", "size": 1589406, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:06.085Z", "contentLength": 1589406, "httpStatusCode": 200}	5fb40052-6b52-450a-a604-9587a4416876	\N	{}
07cbd061-48cf-4660-94c5-d77c93cb5df2	campuses	vassar/3	\N	2025-01-26 21:18:01.781309+00	2025-01-26 21:18:01.781309+00	2025-01-26 21:18:01.781309+00	{"eTag": "\\"acfc6a5e903e2f75360889569af28ec4\\"", "size": 735182, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:01.773Z", "contentLength": 735182, "httpStatusCode": 200}	ea097e0c-25f1-48e0-a075-1fe92f2ba808	\N	{}
efc3d7de-3d65-4fef-b423-732cceaca2d0	campuses	louisiana/0	\N	2025-01-26 21:15:06.746593+00	2025-01-26 21:15:06.746593+00	2025-01-26 21:15:06.746593+00	{"eTag": "\\"ec287ae6ab29a38dc25094a226870e58\\"", "size": 717239, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:06.733Z", "contentLength": 717239, "httpStatusCode": 200}	cb95d5b2-1759-41f0-bbc7-38e2d3555977	\N	{}
3a636a9b-9d13-4d05-b72e-ff824f0f75b3	campuses	louisiana/1	\N	2025-01-26 21:15:07.519613+00	2025-01-26 21:15:07.519613+00	2025-01-26 21:15:07.519613+00	{"eTag": "\\"a1365f33444727c98d72d81e151ded9c\\"", "size": 3549879, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:07.490Z", "contentLength": 3549879, "httpStatusCode": 200}	a1a0eaba-4e84-4faa-88d6-fe299ff0379c	\N	{}
a1324c3c-2746-44e4-876b-038d01f920a5	campuses	vassar/4	\N	2025-01-26 21:18:02.373596+00	2025-01-26 21:18:02.373596+00	2025-01-26 21:18:02.373596+00	{"eTag": "\\"94622b307572f1f45065e991e87dd33c\\"", "size": 410422, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:02.369Z", "contentLength": 410422, "httpStatusCode": 200}	91aa7076-720e-4d77-899e-8eb9898cbb1c	\N	{}
3edde65a-8756-4763-b005-4ebb57fd2917	campuses	louisiana/2	\N	2025-01-26 21:15:08.237448+00	2025-01-26 21:15:08.237448+00	2025-01-26 21:15:08.237448+00	{"eTag": "\\"53ee860cef880c5a6d5a0968b1a0eecd\\"", "size": 2614789, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:08.170Z", "contentLength": 2614789, "httpStatusCode": 200}	1457520e-64da-4bb3-80f3-15ace58aed87	\N	{}
2b6d84fd-6f44-4d9f-86f8-4f1ac5c925e9	campuses	louisiana/3	\N	2025-01-26 21:15:08.739607+00	2025-01-26 21:15:08.739607+00	2025-01-26 21:15:08.739607+00	{"eTag": "\\"e67c177f4108a3ffcf41144aaafee46b\\"", "size": 577577, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:08.731Z", "contentLength": 577577, "httpStatusCode": 200}	e1f70cde-3eca-4c25-ac11-20955d205144	\N	{}
4d9ae991-b916-45a0-b17c-6e66dc210d2e	campuses	vassar/5	\N	2025-01-26 21:18:02.924491+00	2025-01-26 21:18:02.924491+00	2025-01-26 21:18:02.924491+00	{"eTag": "\\"9702e35074e8f136d4bcd4b8c790ebca\\"", "size": 181299, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:02.918Z", "contentLength": 181299, "httpStatusCode": 200}	f556cb0c-208b-4cbc-9f6a-85ccb2f86f60	\N	{}
ccf256f4-76f5-4606-83ab-2865d1d72f43	campuses	louisiana/4	\N	2025-01-26 21:15:09.069798+00	2025-01-26 21:15:09.069798+00	2025-01-26 21:15:09.069798+00	{"eTag": "\\"6f1e7e2cf4fc4faf2911594ea8748235\\"", "size": 75000, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:09.064Z", "contentLength": 75000, "httpStatusCode": 200}	c01d6469-786a-4099-a409-6b0ab3a075f1	\N	{}
c4d3532c-c46f-4544-bc4b-fd076d6719fb	campuses	louisiana/5	\N	2025-01-26 21:15:09.487171+00	2025-01-26 21:15:09.487171+00	2025-01-26 21:15:09.487171+00	{"eTag": "\\"25b278f9e99bdb32c6508282874a6bde\\"", "size": 95467, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:09.463Z", "contentLength": 95467, "httpStatusCode": 200}	36aff27b-f9f3-4f89-bd7e-66dab3637876	\N	{}
ce047926-f3a3-4e32-b2d3-b67212f0151f	campuses	louisiana/6	\N	2025-01-26 21:15:09.965812+00	2025-01-26 21:15:09.965812+00	2025-01-26 21:15:09.965812+00	{"eTag": "\\"9a10b50bf6e9043890a8d2464e975801\\"", "size": 75150, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:09.922Z", "contentLength": 75150, "httpStatusCode": 200}	50ab12d6-7c3c-434f-a04c-1b8e5c725696	\N	{}
9f0f18e0-2220-413d-be12-acc0292e16ca	campuses	louisiana/7	\N	2025-01-26 21:15:10.357712+00	2025-01-26 21:15:10.357712+00	2025-01-26 21:15:10.357712+00	{"eTag": "\\"4b7428a65270e417c1682e10d1203afa\\"", "size": 113105, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:10.355Z", "contentLength": 113105, "httpStatusCode": 200}	4fcd96e1-36ba-40af-a556-5434cb69b643	\N	{}
c71f4c0d-59f4-4495-8f09-ee643b1667bc	campuses	louisiana/8	\N	2025-01-26 21:15:11.014067+00	2025-01-26 21:15:11.014067+00	2025-01-26 21:15:11.014067+00	{"eTag": "\\"2b3e48b18d806f67a7d5943d35106e6f\\"", "size": 352426, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:11.006Z", "contentLength": 352426, "httpStatusCode": 200}	ec8ca2ba-66b9-4bf6-9b4f-df12e80041f2	\N	{}
a13154f5-7e86-4c53-8b1b-daacc734ef54	campuses	louisiana/9	\N	2025-01-26 21:15:11.606691+00	2025-01-26 21:15:11.606691+00	2025-01-26 21:15:11.606691+00	{"eTag": "\\"3c165ca2b8e005474e3abf701e090626\\"", "size": 1718205, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:11.583Z", "contentLength": 1718205, "httpStatusCode": 200}	7e811019-a2a3-45cc-9694-a614d5f17e99	\N	{}
17f5ecae-6845-4044-bc14-ff872dad4d5f	campuses	lynchburg/0	\N	2025-01-26 21:15:12.443734+00	2025-01-26 21:15:12.443734+00	2025-01-26 21:15:12.443734+00	{"eTag": "\\"6e5c9db46383f5271748eae3a60c6474\\"", "size": 197622, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:12.436Z", "contentLength": 197622, "httpStatusCode": 200}	6e647fcd-9189-4886-a4e8-3bccbfb15b0b	\N	{}
49a264c0-4b1c-4ac2-9d0a-09abe381c2d0	campuses	lynchburg/1	\N	2025-01-26 21:15:12.972316+00	2025-01-26 21:15:12.972316+00	2025-01-26 21:15:12.972316+00	{"eTag": "\\"03f39f99b0bba3af891806f1d79ffbaf\\"", "size": 163574, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:12.965Z", "contentLength": 163574, "httpStatusCode": 200}	c1600bac-bfea-4720-b729-9f111e3d0a86	\N	{}
302cc9ec-92ce-49b5-a4e7-963d0194b25a	campuses	lynchburg/2	\N	2025-01-26 21:15:13.459915+00	2025-01-26 21:15:13.459915+00	2025-01-26 21:15:13.459915+00	{"eTag": "\\"9fe3cb2b7313dc79bb477bc8fde184a7\\"", "size": 146, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:13.458Z", "contentLength": 146, "httpStatusCode": 200}	2554bf0d-7071-48f9-a2f1-555b70fcd121	\N	{}
0dbb6084-a778-4253-8ab1-ef510043d8aa	campuses	lynchburg/3	\N	2025-01-26 21:15:13.847514+00	2025-01-26 21:15:13.847514+00	2025-01-26 21:15:13.847514+00	{"eTag": "\\"6e5c9db46383f5271748eae3a60c6474\\"", "size": 197622, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:13.841Z", "contentLength": 197622, "httpStatusCode": 200}	d2f68d35-4c6b-4346-9eab-c71564fde1dd	\N	{}
d8121018-862b-42e6-8b05-2cca5bd8a033	campuses	vassar/6	\N	2025-01-26 21:18:03.989834+00	2025-01-26 21:18:03.989834+00	2025-01-26 21:18:03.989834+00	{"eTag": "\\"a4169b17ead4baab983f4541fc96b97f\\"", "size": 560637, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:03.978Z", "contentLength": 560637, "httpStatusCode": 200}	5891a4f2-d899-4e34-8f03-7473f2be559c	\N	{}
988227b9-a4e1-4f77-bdae-d7df7b32fca7	campuses	lynchburg/4	\N	2025-01-26 21:15:14.396674+00	2025-01-26 21:15:14.396674+00	2025-01-26 21:15:14.396674+00	{"eTag": "\\"7d94d200bdf2751437220c9279322227\\"", "size": 230858, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:14.391Z", "contentLength": 230858, "httpStatusCode": 200}	5169b078-8539-4ef5-990a-632db56427c5	\N	{}
8f4099f4-8361-4732-9b2a-b2dbdcfe17da	campuses	lynchburg/5	\N	2025-01-26 21:15:15.059648+00	2025-01-26 21:15:15.059648+00	2025-01-26 21:15:15.059648+00	{"eTag": "\\"fb82f6923c45075591e044dc5a4ed055\\"", "size": 185516, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:15.055Z", "contentLength": 185516, "httpStatusCode": 200}	20ab46fe-97c7-4d2d-b665-38a731941ecd	\N	{}
219e2100-97b2-4ec4-8402-786b695afd96	campuses	vassar/7	\N	2025-01-26 21:18:04.602958+00	2025-01-26 21:18:04.602958+00	2025-01-26 21:18:04.602958+00	{"eTag": "\\"2ba222f4ff57fed948c4fcd31d2c94ee\\"", "size": 280246, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:04.593Z", "contentLength": 280246, "httpStatusCode": 200}	31d8b722-d2ed-4296-867c-f33b8368a5d7	\N	{}
906f440c-c479-448b-8899-a431ae7f5800	campuses	lynchburg/6	\N	2025-01-26 21:15:15.584208+00	2025-01-26 21:15:15.584208+00	2025-01-26 21:15:15.584208+00	{"eTag": "\\"39c07d6d46b5c2f306edc08227af5712\\"", "size": 140504, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:15.578Z", "contentLength": 140504, "httpStatusCode": 200}	b363e216-f1a1-4f95-a97e-20998b7b41c8	\N	{}
63a673a1-8f91-45aa-824d-3cb546868e7f	campuses	lynchburg/7	\N	2025-01-26 21:15:16.02655+00	2025-01-26 21:15:16.02655+00	2025-01-26 21:15:16.02655+00	{"eTag": "\\"30105f028ca55c1d1140038755aeabb9\\"", "size": 178873, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:16.022Z", "contentLength": 178873, "httpStatusCode": 200}	339e4ad4-42b7-4668-a1a9-9862210c28fa	\N	{}
22faabf0-0693-4641-a6c2-894d5e16a5ec	campuses	vassar/8	\N	2025-01-26 21:18:05.39716+00	2025-01-26 21:18:05.39716+00	2025-01-26 21:18:05.39716+00	{"eTag": "\\"0167fa4a7eba06f034f53c4b631e708c\\"", "size": 396648, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:05.389Z", "contentLength": 396648, "httpStatusCode": 200}	3f5d6f12-4a22-43f7-a442-74faa8948033	\N	{}
fe905d47-83e4-4199-b284-ec52c83448c8	campuses	lynchburg/8	\N	2025-01-26 21:15:16.535725+00	2025-01-26 21:15:16.535725+00	2025-01-26 21:15:16.535725+00	{"eTag": "\\"be6cca1c16d1a1776374d0247da6d344\\"", "size": 173970, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:16.522Z", "contentLength": 173970, "httpStatusCode": 200}	f412debb-d50c-4730-8466-81273db115cb	\N	{}
a4f78193-bfa1-48f8-b21e-a54c9a992927	campuses	lynchburg/9	\N	2025-01-26 21:15:17.012229+00	2025-01-26 21:15:17.012229+00	2025-01-26 21:15:17.012229+00	{"eTag": "\\"19a4119403ff4d3ec6304d95bf52e1e4\\"", "size": 255730, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:16.999Z", "contentLength": 255730, "httpStatusCode": 200}	c40d1c2e-2842-49a9-8c6d-ad5e414d3c25	\N	{}
ab69cbb5-5575-4ac5-b823-6a2a7b833041	campuses	wwu/4	\N	2025-01-26 21:18:51.929043+00	2025-01-26 21:18:51.929043+00	2025-01-26 21:18:51.929043+00	{"eTag": "\\"3e88d603be06b220425d4acd3aec4aa1\\"", "size": 8336, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:51.923Z", "contentLength": 8336, "httpStatusCode": 200}	f3707854-59be-463c-8c2c-8502cb001798	\N	{}
fada5134-a14d-46c1-ac52-956c841e3a64	campuses	umbc/0	\N	2025-01-26 21:15:17.598279+00	2025-01-26 21:15:17.598279+00	2025-01-26 21:15:17.598279+00	{"eTag": "\\"cbb1969fea30fd58a23d79762892a486\\"", "size": 397969, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:17.588Z", "contentLength": 397969, "httpStatusCode": 200}	92407b1d-e585-470d-aff4-e30eec9533ce	\N	{}
2b6de7a5-4806-4521-9b8a-43fcbe3f9518	campuses	umbc/1	\N	2025-01-26 21:15:18.175755+00	2025-01-26 21:15:18.175755+00	2025-01-26 21:15:18.175755+00	{"eTag": "\\"d89f77dfc069073692d213736ef97f70\\"", "size": 726780, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:18.161Z", "contentLength": 726780, "httpStatusCode": 200}	569abaee-c629-4716-afb2-1ff707612e5e	\N	{}
7bf72eba-f710-40a0-a420-13fa661cf43e	campuses	umbc/2	\N	2025-01-26 21:15:18.8728+00	2025-01-26 21:15:18.8728+00	2025-01-26 21:15:18.8728+00	{"eTag": "\\"2459d2032d76437442fc65fdbb7d1fb8\\"", "size": 682520, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:18.864Z", "contentLength": 682520, "httpStatusCode": 200}	70ac09c4-74db-4d82-ba4a-97dbdffa7ec2	\N	{}
da1e9b5d-7847-4791-b052-276dd2014d81	campuses	umbc/3	\N	2025-01-26 21:15:19.36219+00	2025-01-26 21:15:19.36219+00	2025-01-26 21:15:19.36219+00	{"eTag": "\\"1f25157e98da6a6520c0d109f976cc49\\"", "size": 476481, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:19.348Z", "contentLength": 476481, "httpStatusCode": 200}	ff66aa96-196e-4b4a-bf92-3f501a443b72	\N	{}
b7cff1b1-af88-4cb6-b8c8-1fef1f0726ad	campuses	umbc/4	\N	2025-01-26 21:15:20.171054+00	2025-01-26 21:15:20.171054+00	2025-01-26 21:15:20.171054+00	{"eTag": "\\"85575354572f32bc35b130b8c777bea6\\"", "size": 524716, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:20.153Z", "contentLength": 524716, "httpStatusCode": 200}	019aed50-18d3-496e-909e-f9d9933e921e	\N	{}
57511fb5-605b-419d-a098-3418914953d8	campuses	umbc/5	\N	2025-01-26 21:15:20.644994+00	2025-01-26 21:15:20.644994+00	2025-01-26 21:15:20.644994+00	{"eTag": "\\"42bdd18c99f779844f23c5518a604682\\"", "size": 176682, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:20.641Z", "contentLength": 176682, "httpStatusCode": 200}	f9e93801-e742-4ec7-801a-8b32ccfcb809	\N	{}
f86b9613-4c04-40bd-a2a4-d6e9f7e676e6	campuses	umbc/6	\N	2025-01-26 21:15:21.204542+00	2025-01-26 21:15:21.204542+00	2025-01-26 21:15:21.204542+00	{"eTag": "\\"a9486d2052401770e57dc1b04e5ae098\\"", "size": 580993, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:21.183Z", "contentLength": 580993, "httpStatusCode": 200}	7e863a66-99aa-4c88-a97a-7e73b56b6c06	\N	{}
dce450fb-d292-4ba5-9106-5243a22368bc	campuses	umbc/7	\N	2025-01-26 21:15:21.727288+00	2025-01-26 21:15:21.727288+00	2025-01-26 21:15:21.727288+00	{"eTag": "\\"b5cb4c4bffa43fffe34535385d0987b5\\"", "size": 741424, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:21.716Z", "contentLength": 741424, "httpStatusCode": 200}	4c404c7f-1082-485e-8538-f0ab66428a46	\N	{}
7854cf1e-61a1-402b-bd2b-3d40d2876356	campuses	vassar/9	\N	2025-01-26 21:18:06.212162+00	2025-01-26 21:18:06.212162+00	2025-01-26 21:18:06.212162+00	{"eTag": "\\"7057782e4aee4e3908360436ec46a02b\\"", "size": 1973287, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:06.190Z", "contentLength": 1973287, "httpStatusCode": 200}	bac193cb-9730-4f1f-9a6e-52f1843ed484	\N	{}
abdffc37-9e4f-4e6b-a55c-a7fedb8d820a	campuses	umbc/8	\N	2025-01-26 21:15:22.30337+00	2025-01-26 21:15:22.30337+00	2025-01-26 21:15:22.30337+00	{"eTag": "\\"2cc3cce83e8a5df15a328531e9733a35\\"", "size": 732910, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:22.295Z", "contentLength": 732910, "httpStatusCode": 200}	4bd33b7c-9bc2-4d16-bf02-682366274c56	\N	{}
f58d5d32-8c7b-4e46-a927-5da97b2b4c10	campuses	umbc/9	\N	2025-01-26 21:15:23.119267+00	2025-01-26 21:15:23.119267+00	2025-01-26 21:15:23.119267+00	{"eTag": "\\"43c3a2223bc185b866875ec367b1c2b2\\"", "size": 877780, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:23.105Z", "contentLength": 877780, "httpStatusCode": 200}	e2f444fb-22e9-42c5-bcbd-91aaaf842ac9	\N	{}
19a69107-3778-4240-92f3-18a458371562	campuses	wsu/0	\N	2025-01-26 21:18:07.001377+00	2025-01-26 21:18:07.001377+00	2025-01-26 21:18:07.001377+00	{"eTag": "\\"9a6958ee3a3377b96d6731c98fb407d5\\"", "size": 1061136, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:06.983Z", "contentLength": 1061136, "httpStatusCode": 200}	33eadcd7-f0f4-43a9-a54c-7435d56e6a65	\N	{}
3e94c7ee-9ded-4c6c-b9da-a1a6aa8fd6c3	campuses	umb/0	\N	2025-01-26 21:15:24.871965+00	2025-01-26 21:15:24.871965+00	2025-01-26 21:15:24.871965+00	{"eTag": "\\"a0566ac6d9e5ce5600709ed935d43230\\"", "size": 48655, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:24.867Z", "contentLength": 48655, "httpStatusCode": 200}	836d2836-021a-4a13-b2b6-35c773f5ab46	\N	{}
4e7f39fd-2f27-4301-99ef-02fbbd6ea48d	campuses	umb/1	\N	2025-01-26 21:15:26.068046+00	2025-01-26 21:15:26.068046+00	2025-01-26 21:15:26.068046+00	{"eTag": "\\"6283bf1b65d2466091c108d581266cec\\"", "size": 1315528, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:26.051Z", "contentLength": 1315528, "httpStatusCode": 200}	4ca5ca8c-9dca-4a6a-be98-0de6fca8b2c8	\N	{}
7b09430d-5d33-4eb8-a202-4c39cbe97b27	campuses	wsu/1	\N	2025-01-26 21:18:07.561467+00	2025-01-26 21:18:07.561467+00	2025-01-26 21:18:07.561467+00	{"eTag": "\\"c75ecb58e967288778c78472f02dba09\\"", "size": 203899, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:07.558Z", "contentLength": 203899, "httpStatusCode": 200}	e8e31312-c59e-4c13-934d-44c774ddd293	\N	{}
3fec0874-026e-471c-bf30-050a79a2a3c2	campuses	umb/2	\N	2025-01-26 21:15:26.890019+00	2025-01-26 21:15:26.890019+00	2025-01-26 21:15:26.890019+00	{"eTag": "\\"75d4d2e432028def0c9ea1b7f40fd0fb\\"", "size": 298798, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:26.884Z", "contentLength": 298798, "httpStatusCode": 200}	348f9377-706c-4459-925c-890729677f26	\N	{}
0d63485a-23d3-40b2-a3ba-99493274ceb2	campuses	umb/3	\N	2025-01-26 21:15:27.516435+00	2025-01-26 21:15:27.516435+00	2025-01-26 21:15:27.516435+00	{"eTag": "\\"cc5ed6aedc84d4e83663cf16d21c2638\\"", "size": 97479, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:27.509Z", "contentLength": 97479, "httpStatusCode": 200}	04440102-ccc2-4ee1-84e3-33cd0b725a79	\N	{}
e8e5d6b5-30d9-4af7-9baa-3f61582e7145	campuses	wsu/2	\N	2025-01-26 21:18:08.325048+00	2025-01-26 21:18:08.325048+00	2025-01-26 21:18:08.325048+00	{"eTag": "\\"7a7ba307340fa2fd0bdb28d7c0b38a2f\\"", "size": 1186533, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:08.312Z", "contentLength": 1186533, "httpStatusCode": 200}	179bf58d-7404-4708-bde2-e610524c2df8	\N	{}
05c0d6c8-c0e1-4045-9cb6-3e8660daf7f3	campuses	umb/4	\N	2025-01-26 21:15:28.331311+00	2025-01-26 21:15:28.331311+00	2025-01-26 21:15:28.331311+00	{"eTag": "\\"f051dcaa6ffcf5fc41405136f96e7683\\"", "size": 72996, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:28.325Z", "contentLength": 72996, "httpStatusCode": 200}	6f1dedca-b76c-4011-a4cf-d6677b6b936c	\N	{}
9de4c4b6-cc0f-42fc-9d2d-272da68238d0	campuses	umb/5	\N	2025-01-26 21:15:28.779457+00	2025-01-26 21:15:28.779457+00	2025-01-26 21:15:28.779457+00	{"eTag": "\\"790101b90d61cb6097fca767ca05f52a\\"", "size": 60427, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:28.773Z", "contentLength": 60427, "httpStatusCode": 200}	422accc9-f9c9-4b6f-9713-44f26b3c2498	\N	{}
7aa255fa-92a2-4a00-b99f-762b138a21bf	campuses	umb/6	\N	2025-01-26 21:15:29.976144+00	2025-01-26 21:15:29.976144+00	2025-01-26 21:15:29.976144+00	{"eTag": "\\"cc647b20dcbf66a40fbf37ec3681617f\\"", "size": 361260, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:29.967Z", "contentLength": 361260, "httpStatusCode": 200}	0b8054f1-e29e-4955-9caf-7d63ece411a1	\N	{}
285ea765-26c9-45b6-879a-34e4e8d17007	campuses	umb/7	\N	2025-01-26 21:15:31.00589+00	2025-01-26 21:15:31.00589+00	2025-01-26 21:15:31.00589+00	{"eTag": "\\"e36899b676b2ed92bb10bd698197c8b4\\"", "size": 272299, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:30.997Z", "contentLength": 272299, "httpStatusCode": 200}	e866c9ce-64e6-4915-874e-d6b41ff09d58	\N	{}
5f2ec63d-29d5-4dd8-8f67-8f1183bca989	campuses	umb/8	\N	2025-01-26 21:15:32.2963+00	2025-01-26 21:15:32.2963+00	2025-01-26 21:15:32.2963+00	{"eTag": "\\"d79f864b276c4d1c565c619beaef8ece\\"", "size": 58965, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:32.291Z", "contentLength": 58965, "httpStatusCode": 200}	242a6b7c-8e54-489f-a800-0ee867983b9f	\N	{}
c943fefe-54d1-43df-b063-9e7859077e88	campuses	umb/9	\N	2025-01-26 21:15:40.14814+00	2025-01-26 21:15:40.14814+00	2025-01-26 21:15:40.14814+00	{"eTag": "\\"2caaeb50f622b350eb63609c13269c30\\"", "size": 489130, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:40.137Z", "contentLength": 489130, "httpStatusCode": 200}	71e0c68e-44a2-457c-9a5b-ddf8f6c16b3d	\N	{}
2d1b7bd6-0143-44ab-a1f7-46d7b49b7e31	campuses	missouri/0	\N	2025-01-26 21:15:40.935375+00	2025-01-26 21:15:40.935375+00	2025-01-26 21:15:40.935375+00	{"eTag": "\\"cafca9d3c7f04db735ac32929e414281\\"", "size": 749716, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:40.920Z", "contentLength": 749716, "httpStatusCode": 200}	99cec445-1272-468b-bef7-b4a63394b86e	\N	{}
83e14105-a23f-45b8-8b5b-c8cec98edf27	campuses	missouri/1	\N	2025-01-26 21:15:41.559336+00	2025-01-26 21:15:41.559336+00	2025-01-26 21:15:41.559336+00	{"eTag": "\\"ac5d8ed3e31c1854b8ea9f4f4129551a\\"", "size": 1333646, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:41.536Z", "contentLength": 1333646, "httpStatusCode": 200}	caca5f3b-157a-4113-b0a3-4312db7bee3e	\N	{}
9f25132c-f495-4d09-a289-fa4df9566a01	campuses	wsu/3	\N	2025-01-26 21:18:08.823975+00	2025-01-26 21:18:08.823975+00	2025-01-26 21:18:08.823975+00	{"eTag": "\\"dec53f0d8179d84ce19d09911687e19b\\"", "size": 419184, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:08.817Z", "contentLength": 419184, "httpStatusCode": 200}	15614f2f-10c6-4672-bced-983d6093a649	\N	{}
cd01b352-b648-4eb0-895b-3a762c79775f	campuses	missouri/2	\N	2025-01-26 21:15:42.193319+00	2025-01-26 21:15:42.193319+00	2025-01-26 21:15:42.193319+00	{"eTag": "\\"3d249abe921012ab56f55af6d5b12404\\"", "size": 1564244, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:42.171Z", "contentLength": 1564244, "httpStatusCode": 200}	55d7d32a-576a-4703-90ea-3deea412cae8	\N	{}
cce33e13-f179-43d1-afdf-3ff9d2df4491	campuses	missouri/3	\N	2025-01-26 21:15:42.749273+00	2025-01-26 21:15:42.749273+00	2025-01-26 21:15:42.749273+00	{"eTag": "\\"77341d35383553900ac03179031a0ceb\\"", "size": 671824, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:42.739Z", "contentLength": 671824, "httpStatusCode": 200}	75017cac-6586-456d-8553-aa2004a242b6	\N	{}
b81d2df2-f24d-4352-aa01-43f93292de32	campuses	wsu/4	\N	2025-01-26 21:18:09.32903+00	2025-01-26 21:18:09.32903+00	2025-01-26 21:18:09.32903+00	{"eTag": "\\"7d80084626cacace5331264a17ab1914\\"", "size": 809610, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:09.306Z", "contentLength": 809610, "httpStatusCode": 200}	9d468f94-bd31-474c-829e-8e98bd02300b	\N	{}
2037bd2a-8fb7-44de-90a4-cb88d9758950	campuses	missouri/4	\N	2025-01-26 21:15:43.60156+00	2025-01-26 21:15:43.60156+00	2025-01-26 21:15:43.60156+00	{"eTag": "\\"7547fe671ceef4c98b5b174721f771b2\\"", "size": 4483069, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:43.563Z", "contentLength": 4483069, "httpStatusCode": 200}	06f385af-5ab7-456c-a0e8-7db1873ca253	\N	{}
911826aa-3c21-4be0-b4d3-de91a9d561d1	campuses	missouri/5	\N	2025-01-26 21:15:44.858483+00	2025-01-26 21:15:44.858483+00	2025-01-26 21:15:44.858483+00	{"eTag": "\\"4ee2b2e2ff2d3696c8825b06b5ad0968\\"", "size": 814701, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:44.373Z", "contentLength": 814701, "httpStatusCode": 200}	760aaf7b-09f0-4e7b-b15d-b078c8f0ab73	\N	{}
6b5878db-6f5a-48df-a39f-5f1db41b1432	campuses	wsu/5	\N	2025-01-26 21:18:09.82599+00	2025-01-26 21:18:09.82599+00	2025-01-26 21:18:09.82599+00	{"eTag": "\\"db32c7037ce68f615877c77617212e01\\"", "size": 569132, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:09.817Z", "contentLength": 569132, "httpStatusCode": 200}	0908e3ea-b82a-4b9d-bc2c-26fd2f545979	\N	{}
53a15296-de22-42a5-b60f-d650cc231c42	campuses	missouri/6	\N	2025-01-26 21:15:45.526811+00	2025-01-26 21:15:45.526811+00	2025-01-26 21:15:45.526811+00	{"eTag": "\\"40212dc0e2e629c0fc1ede48f8ce6b9c\\"", "size": 438543, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:45.518Z", "contentLength": 438543, "httpStatusCode": 200}	1bcbc511-c71e-4b0b-b8b5-f0a8087cc22a	\N	{}
9f10d2a4-0f34-4c99-8ff6-9d5a97414259	campuses	wsu/6	\N	2025-01-26 21:18:10.544877+00	2025-01-26 21:18:10.544877+00	2025-01-26 21:18:10.544877+00	{"eTag": "\\"869bfbcccdc14d247b937a60d7bd1f36\\"", "size": 599313, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:10.540Z", "contentLength": 599313, "httpStatusCode": 200}	d55e2b4a-df14-40a6-b794-6d171cee3b9f	\N	{}
41180e1d-8e36-4ce9-a377-10cda3b95f07	campuses	wsu/7	\N	2025-01-26 21:18:11.012368+00	2025-01-26 21:18:11.012368+00	2025-01-26 21:18:11.012368+00	{"eTag": "\\"8c8d1250c4e7cf41142a0c672842f0d5\\"", "size": 536429, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:11.002Z", "contentLength": 536429, "httpStatusCode": 200}	58631d3a-24b9-4cce-8796-05c3a1726716	\N	{}
ab84f9bc-0f3c-42fa-ba08-034f528ca27b	campuses	wsu/8	\N	2025-01-26 21:18:11.547592+00	2025-01-26 21:18:11.547592+00	2025-01-26 21:18:11.547592+00	{"eTag": "\\"1fee8454f406856d92243951ee4a3568\\"", "size": 875243, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:11.532Z", "contentLength": 875243, "httpStatusCode": 200}	d8ea196d-8dc7-4b6e-949e-879b38b94fa0	\N	{}
49cdf87f-3a82-448a-acc5-2659ea813570	campuses	wsu/9	\N	2025-01-26 21:18:12.085014+00	2025-01-26 21:18:12.085014+00	2025-01-26 21:18:12.085014+00	{"eTag": "\\"b16c81db5ef912556d36e69f2cf9dadf\\"", "size": 1031633, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:12.064Z", "contentLength": 1031633, "httpStatusCode": 200}	6f610774-a47e-45b1-a6fb-53fb64841098	\N	{}
8c7acefe-f51d-41f7-9be4-2e5aab7b6761	campuses	wustl/0	\N	2025-01-26 21:18:12.840656+00	2025-01-26 21:18:12.840656+00	2025-01-26 21:18:12.840656+00	{"eTag": "\\"1c239965676e99c5ba78081f98ed15d7\\"", "size": 39004, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:12.834Z", "contentLength": 39004, "httpStatusCode": 200}	5446ea4e-9c99-44ec-b045-4d6cc266daef	\N	{}
fed13b11-27b9-42ea-98e1-c63164d1a7b0	campuses	wustl/1	\N	2025-01-26 21:18:13.978947+00	2025-01-26 21:18:13.978947+00	2025-01-26 21:18:13.978947+00	{"eTag": "\\"8411d83c44e0deb84da7e934429adfb8\\"", "size": 385663, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:13.972Z", "contentLength": 385663, "httpStatusCode": 200}	61630089-480b-41ec-89d4-3fd61bc4413c	\N	{}
249ac7e3-415f-46b6-b184-79d39f97d82a	campuses	wustl/2	\N	2025-01-26 21:18:14.64633+00	2025-01-26 21:18:14.64633+00	2025-01-26 21:18:14.64633+00	{"eTag": "\\"85aac58189a620373da7312cb86ba6f7\\"", "size": 571235, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:14.633Z", "contentLength": 571235, "httpStatusCode": 200}	104df9cb-05aa-4d09-8672-cc8fc0cfd04c	\N	{}
c2a3532c-79f4-4c29-9568-ac58a5f3aecf	campuses	missouri/7	\N	2025-01-26 21:15:47.510848+00	2025-01-26 21:15:47.510848+00	2025-01-26 21:15:47.510848+00	{"eTag": "\\"eaaac19a512a9ec1d9aec22f68b15d36\\"", "size": 338384, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:46.842Z", "contentLength": 338384, "httpStatusCode": 200}	e6d51707-0b52-4686-9e04-fb5fc376bc66	\N	{}
b37b419d-dfb3-451f-9a16-9e8b4fd0038f	campuses	missouri/8	\N	2025-01-26 21:15:48.331798+00	2025-01-26 21:15:48.331798+00	2025-01-26 21:15:48.331798+00	{"eTag": "\\"4884c461f28bbec095188e60bc8a23fe\\"", "size": 161393, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:48.327Z", "contentLength": 161393, "httpStatusCode": 200}	65d1c332-fdf1-4bfd-a4ee-438085bc2337	\N	{}
6ba897a4-bc05-4514-82b2-037186763960	campuses	wustl/3	\N	2025-01-26 21:18:15.224352+00	2025-01-26 21:18:15.224352+00	2025-01-26 21:18:15.224352+00	{"eTag": "\\"4019784a44ba33c130328a7fe3b6bbc8\\"", "size": 107823, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:15.219Z", "contentLength": 107823, "httpStatusCode": 200}	de8a0d14-3684-4137-9179-18e22f92634b	\N	{}
0d92e75e-9ffe-4673-9553-22f3dfa2c8b6	campuses	missouri/9	\N	2025-01-26 21:15:49.033595+00	2025-01-26 21:15:49.033595+00	2025-01-26 21:15:49.033595+00	{"eTag": "\\"b2208a6bc9075c0e04808867577c857d\\"", "size": 698990, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:49.021Z", "contentLength": 698990, "httpStatusCode": 200}	ddb3a28f-a3cd-45cd-b2dd-3f42ae323908	\N	{}
36beeb34-fe54-4fcb-93d0-d039a8dadd8a	campuses	unr/0	\N	2025-01-26 21:15:50.02515+00	2025-01-26 21:15:50.02515+00	2025-01-26 21:15:50.02515+00	{"eTag": "\\"b36e54d192b8ef3b3cc7844922126169\\"", "size": 146604, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:50.019Z", "contentLength": 146604, "httpStatusCode": 200}	bdeb5129-27c0-4931-bd8c-975ceb61e19a	\N	{}
bf5be57b-2f80-451b-8acb-fe00b141deed	campuses	wustl/4	\N	2025-01-26 21:18:16.001286+00	2025-01-26 21:18:16.001286+00	2025-01-26 21:18:16.001286+00	{"eTag": "\\"12cbd841ffd4a81ed756d3fd1ee31dca\\"", "size": 455676, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:15.989Z", "contentLength": 455676, "httpStatusCode": 200}	14fcae1d-fa51-4bbc-9936-edc5bdc46327	\N	{}
42997bea-3bcf-4e0a-8374-fdabad1c0657	campuses	unr/1	\N	2025-01-26 21:15:51.003461+00	2025-01-26 21:15:51.003461+00	2025-01-26 21:15:51.003461+00	{"eTag": "\\"a0e3377ba94522174a922195b2653fe7\\"", "size": 180842, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:50.993Z", "contentLength": 180842, "httpStatusCode": 200}	0420532c-5d34-4433-9b6d-f9970d367b65	\N	{}
ee37cad0-75ac-41ec-aa0a-17e9e0302a6b	campuses	unr/2	\N	2025-01-26 21:15:51.723006+00	2025-01-26 21:15:51.723006+00	2025-01-26 21:15:51.723006+00	{"eTag": "\\"b3a325e99ebef2edb150b9b94eb0bce7\\"", "size": 112603, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:51.718Z", "contentLength": 112603, "httpStatusCode": 200}	13c6be59-2e60-4012-a514-a7ba84579746	\N	{}
a4a16359-a887-4cf5-bda8-ab02554c4f01	campuses	wustl/5	\N	2025-01-26 21:18:16.540751+00	2025-01-26 21:18:16.540751+00	2025-01-26 21:18:16.540751+00	{"eTag": "\\"f1e6e076f15b4f4a2bccff1726c9272a\\"", "size": 194548, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:16.537Z", "contentLength": 194548, "httpStatusCode": 200}	760d403c-0939-404b-8043-da5c93f3379c	\N	{}
7b28fac8-8046-47d4-bca9-96f6ea1a347f	campuses	unr/3	\N	2025-01-26 21:15:52.410385+00	2025-01-26 21:15:52.410385+00	2025-01-26 21:15:52.410385+00	{"eTag": "\\"74e62901b491f5b1bb9460b97b31959d\\"", "size": 125940, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:52.406Z", "contentLength": 125940, "httpStatusCode": 200}	17183676-ba33-42ec-bb1d-9971e37feeb9	\N	{}
b2bb5060-73c3-4528-b4fe-23f458c94406	campuses	unr/4	\N	2025-01-26 21:15:53.32323+00	2025-01-26 21:15:53.32323+00	2025-01-26 21:15:53.32323+00	{"eTag": "\\"1179dffa30af7cc0eb21ef75dd18fe8a\\"", "size": 211538, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:53.317Z", "contentLength": 211538, "httpStatusCode": 200}	5536f83a-3323-492d-9214-df94a618612c	\N	{}
fdaac283-ad85-4176-bb31-df3f0b9af7d2	campuses	unr/5	\N	2025-01-26 21:15:53.936312+00	2025-01-26 21:15:53.936312+00	2025-01-26 21:15:53.936312+00	{"eTag": "\\"f75753c5a8038cf9902c620c4a5e9317\\"", "size": 1203700, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:53.924Z", "contentLength": 1203700, "httpStatusCode": 200}	ec8ed3a1-1290-4f22-a98d-1a73160a5eeb	\N	{}
73269cd7-8f2c-4a59-8f06-83ce4146f3f3	campuses	unr/6	\N	2025-01-26 21:15:54.58831+00	2025-01-26 21:15:54.58831+00	2025-01-26 21:15:54.58831+00	{"eTag": "\\"523cbafd73ba9811947ec5625f640b5f\\"", "size": 147866, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:54.578Z", "contentLength": 147866, "httpStatusCode": 200}	a6ce19e9-5379-419c-ad65-d7987b2acf3c	\N	{}
e1196c95-d127-4719-b761-692ffea813f5	campuses	unr/7	\N	2025-01-26 21:15:55.274908+00	2025-01-26 21:15:55.274908+00	2025-01-26 21:15:55.274908+00	{"eTag": "\\"c569116ea2989697c2a741748d194b38\\"", "size": 96538, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:55.264Z", "contentLength": 96538, "httpStatusCode": 200}	03aee8ad-4317-40bc-a5e2-b8f1338134d2	\N	{}
64fdf3e9-382c-4b71-9ec9-b9b5062e3146	campuses	unr/8	\N	2025-01-26 21:15:56.029269+00	2025-01-26 21:15:56.029269+00	2025-01-26 21:15:56.029269+00	{"eTag": "\\"4439ec8f3de2e0ffad4bc8f0976dc294\\"", "size": 66428, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:56.021Z", "contentLength": 66428, "httpStatusCode": 200}	8f2d076a-4c90-4f7a-bdf0-e73ae6495142	\N	{}
acf38f92-2ace-4b36-87b4-26105c1ce4c9	campuses	unr/9	\N	2025-01-26 21:15:56.991988+00	2025-01-26 21:15:56.991988+00	2025-01-26 21:15:56.991988+00	{"eTag": "\\"04d40964663fcc699bc98b12c227ccf3\\"", "size": 359904, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:56.984Z", "contentLength": 359904, "httpStatusCode": 200}	1b9d9bf8-c385-4ca9-a9d0-a1f4d66fd374	\N	{}
ee48bfe4-65e8-4049-852f-b8856f65c922	campuses	unc/0	\N	2025-01-26 21:15:57.575113+00	2025-01-26 21:15:57.575113+00	2025-01-26 21:15:57.575113+00	{"eTag": "\\"ec78b94be61c82ddddf566937929ed74\\"", "size": 235415, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:57.566Z", "contentLength": 235415, "httpStatusCode": 200}	6e78fd47-a344-449f-890c-b096d41d8a5e	\N	{}
5a76bd0d-ccdf-453b-8803-6092c263f7ef	campuses	unc/1	\N	2025-01-26 21:15:58.400602+00	2025-01-26 21:15:58.400602+00	2025-01-26 21:15:58.400602+00	{"eTag": "\\"9fe3cb2b7313dc79bb477bc8fde184a7\\"", "size": 146, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:58.395Z", "contentLength": 146, "httpStatusCode": 200}	b1803f46-1d93-4fd0-8661-1859ee0e9609	\N	{}
512c7d8d-2fc7-4de7-b0c3-a69af9905ec0	campuses	wustl/6	\N	2025-01-26 21:18:17.196372+00	2025-01-26 21:18:17.196372+00	2025-01-26 21:18:17.196372+00	{"eTag": "\\"a992d2c83fdcfcd359d3392d40e48168\\"", "size": 806917, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:17.179Z", "contentLength": 806917, "httpStatusCode": 200}	2cbe7e60-cc9d-4c01-979b-0a1468af13b5	\N	{}
b55e8e6e-2bac-4c28-a1e9-2ebcefa4cfb7	campuses	unc/2	\N	2025-01-26 21:15:59.208767+00	2025-01-26 21:15:59.208767+00	2025-01-26 21:15:59.208767+00	{"eTag": "\\"5bab8802cd0b06eb1a03a9ead8e13861\\"", "size": 850504, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:15:59.175Z", "contentLength": 850504, "httpStatusCode": 200}	75db1a68-7586-4587-bff2-f29306eb840f	\N	{}
d5b8706c-1757-4739-8822-a3070a078fd7	campuses	unc/3	\N	2025-01-26 21:16:00.075842+00	2025-01-26 21:16:00.075842+00	2025-01-26 21:16:00.075842+00	{"eTag": "\\"e25933402314e02892e9a4e5b9a371b5\\"", "size": 1263040, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:00.001Z", "contentLength": 1263040, "httpStatusCode": 200}	26832d34-c57c-4755-8c16-a20cf2bbde80	\N	{}
a394254b-4825-4fe4-a7bc-0d3949711288	campuses	wustl/7	\N	2025-01-26 21:18:17.649443+00	2025-01-26 21:18:17.649443+00	2025-01-26 21:18:17.649443+00	{"eTag": "\\"d65801b808b7cf8591f7279cd9c8cd43\\"", "size": 327686, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:17.638Z", "contentLength": 327686, "httpStatusCode": 200}	ff3ac9b4-8ec9-492a-8117-9f17394fef03	\N	{}
75731caf-91d6-4641-abf7-77dc9eb19a42	campuses	unc/4	\N	2025-01-26 21:16:01.184568+00	2025-01-26 21:16:01.184568+00	2025-01-26 21:16:01.184568+00	{"eTag": "\\"55e8d9a225c45bfdf9a9281f12bcc338\\"", "size": 1367766, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:01.111Z", "contentLength": 1367766, "httpStatusCode": 200}	c7b606dd-32db-4846-87c3-2fa9b9d3ffd5	\N	{}
0a20690e-a18b-4764-89bb-4595d2f08215	campuses	unc/5	\N	2025-01-26 21:16:01.684727+00	2025-01-26 21:16:01.684727+00	2025-01-26 21:16:01.684727+00	{"eTag": "\\"7421500141d2a145b8d8de6ed66002ac\\"", "size": 317599, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:01.679Z", "contentLength": 317599, "httpStatusCode": 200}	0841825b-3490-48d7-813b-32c8f00830a1	\N	{}
68872622-2fd2-48d3-b749-5cd5db640330	campuses	wustl/8	\N	2025-01-26 21:18:21.255837+00	2025-01-26 21:18:21.255837+00	2025-01-26 21:18:21.255837+00	{"eTag": "\\"3300e8afb3d2b3f9ffba10072f033506\\"", "size": 106762, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:21.249Z", "contentLength": 106762, "httpStatusCode": 200}	ee67ac4c-c3cc-4938-b07e-4d9d7d3326d1	\N	{}
5740d898-77d3-4d9d-afff-ed76add98327	campuses	unc/6	\N	2025-01-26 21:16:02.714436+00	2025-01-26 21:16:02.714436+00	2025-01-26 21:16:02.714436+00	{"eTag": "\\"6ce6db55d387d180de4f6e96b79d5b0d\\"", "size": 1759170, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:02.674Z", "contentLength": 1759170, "httpStatusCode": 200}	8a8d2fba-c303-4481-8131-c6ddc1336b4e	\N	{}
87bed7c7-406c-401f-9c74-eb28314a695a	campuses	unc/7	\N	2025-01-26 21:16:03.380709+00	2025-01-26 21:16:03.380709+00	2025-01-26 21:16:03.380709+00	{"eTag": "\\"1dcf356910195af5941cb6f5ff8a7ddf\\"", "size": 276698, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:03.370Z", "contentLength": 276698, "httpStatusCode": 200}	621e4eb9-7751-49f5-bec9-a3a3fb1bf6c3	\N	{}
668f63dd-0a8f-4caf-a170-46b707393673	campuses	unc/8	\N	2025-01-26 21:16:04.825176+00	2025-01-26 21:16:04.825176+00	2025-01-26 21:16:04.825176+00	{"eTag": "\\"6ffbe060961aee55c321ccdda0ba6c73\\"", "size": 61025, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:04.821Z", "contentLength": 61025, "httpStatusCode": 200}	d11d54e5-8e9d-4501-aaea-e43f83036300	\N	{}
aa05fc43-527f-40c9-8e83-86d33253c160	campuses	unc/9	\N	2025-01-26 21:16:07.964223+00	2025-01-26 21:16:07.964223+00	2025-01-26 21:16:07.964223+00	{"eTag": "\\"65e2134d2218ecdfe9ca1d63fa9bae47\\"", "size": 982977, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:07.929Z", "contentLength": 982977, "httpStatusCode": 200}	7a528e60-fba2-44bc-acea-39a9bb0f7d34	\N	{}
1a671168-532e-4941-905d-b100633d34ec	campuses	uncc/0	\N	2025-01-26 21:16:09.257743+00	2025-01-26 21:16:09.257743+00	2025-01-26 21:16:09.257743+00	{"eTag": "\\"add39ba01b8e5e059f3f37c408706a0a\\"", "size": 1270015, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:09.241Z", "contentLength": 1270015, "httpStatusCode": 200}	156a9ea2-b011-4d6b-b223-957b4091b2b5	\N	{}
931d92a5-6302-4707-982e-908ef126e0f6	campuses	uncc/1	\N	2025-01-26 21:16:10.075185+00	2025-01-26 21:16:10.075185+00	2025-01-26 21:16:10.075185+00	{"eTag": "\\"bf484f910766e0a483e16faa0e2fee8c\\"", "size": 577047, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:10.064Z", "contentLength": 577047, "httpStatusCode": 200}	97725e61-ace7-489b-9f3f-bca9fd29c793	\N	{}
0d897d8b-9367-4a44-a1f2-3b1d7beea21a	campuses	uncc/2	\N	2025-01-26 21:16:10.683217+00	2025-01-26 21:16:10.683217+00	2025-01-26 21:16:10.683217+00	{"eTag": "\\"021578cea423e5dcf59df60db08a8ca2\\"", "size": 86112, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:10.680Z", "contentLength": 86112, "httpStatusCode": 200}	572edda3-1a15-4ba6-bd93-2a27fa494140	\N	{}
32361a68-63b1-487a-80f1-541a8d09ee69	campuses	uncc/3	\N	2025-01-26 21:16:11.244111+00	2025-01-26 21:16:11.244111+00	2025-01-26 21:16:11.244111+00	{"eTag": "\\"d8f92af761157d7102d9f4c3e7edd840\\"", "size": 163926, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:11.239Z", "contentLength": 163926, "httpStatusCode": 200}	94cd15c8-d54c-4891-8bca-736a46fe1223	\N	{}
fcbbbdad-cb94-48d3-b175-e3f9e7463e6b	campuses	uncc/4	\N	2025-01-26 21:16:11.884762+00	2025-01-26 21:16:11.884762+00	2025-01-26 21:16:11.884762+00	{"eTag": "\\"bf4e1095e15ec18c140b8f5a25c2f738\\"", "size": 509913, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:11.876Z", "contentLength": 509913, "httpStatusCode": 200}	435d2bc1-6c72-45e2-811e-f200f9c8e44c	\N	{}
19f8c2ce-c352-40f4-93bb-a281d9760e44	campuses	uncc/5	\N	2025-01-26 21:16:12.417594+00	2025-01-26 21:16:12.417594+00	2025-01-26 21:16:12.417594+00	{"eTag": "\\"f9f45cd391f89e13c45967937e9e8b9d\\"", "size": 103269, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:12.410Z", "contentLength": 103269, "httpStatusCode": 200}	eb09ef81-dc46-46b2-823e-f2f5799dd016	\N	{}
396fa676-08b9-4f24-8823-9d81171d3383	campuses	uncc/6	\N	2025-01-26 21:16:13.638987+00	2025-01-26 21:16:13.638987+00	2025-01-26 21:16:13.638987+00	{"eTag": "\\"111403ad93fe68195f8f1bd649fe6d01\\"", "size": 723952, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:13.630Z", "contentLength": 723952, "httpStatusCode": 200}	1d992307-f383-4c5f-9f21-7fd9b28e1e77	\N	{}
53ccbd48-2a4c-4b6c-99e4-79299433d59d	campuses	wustl/9	\N	2025-01-26 21:18:22.06127+00	2025-01-26 21:18:22.06127+00	2025-01-26 21:18:22.06127+00	{"eTag": "\\"d83e59b87895e93cda700704834e3bc9\\"", "size": 364108, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:22.055Z", "contentLength": 364108, "httpStatusCode": 200}	940667aa-3828-48fa-92f3-8345123c1a7d	\N	{}
160630b8-e999-4c40-8c57-a75740e873bd	campuses	uncc/7	\N	2025-01-26 21:16:14.224913+00	2025-01-26 21:16:14.224913+00	2025-01-26 21:16:14.224913+00	{"eTag": "\\"1a1fc6cf0ebeef82cebf34c26430a6f0\\"", "size": 222044, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:14.220Z", "contentLength": 222044, "httpStatusCode": 200}	a22d1a7a-eec0-43ce-9b52-6cae9acc6b7f	\N	{}
881c348d-c995-4bc3-ace2-e8058272fc90	campuses	uncc/8	\N	2025-01-26 21:16:14.855881+00	2025-01-26 21:16:14.855881+00	2025-01-26 21:16:14.855881+00	{"eTag": "\\"9679816def40256a5fa784f97c693969\\"", "size": 415012, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:14.848Z", "contentLength": 415012, "httpStatusCode": 200}	ff0fa754-4c3b-486d-abbc-b8c6ee5bfcc4	\N	{}
78f4a80e-b956-40f6-aa97-35a56f550326	campuses	wayne/0	\N	2025-01-26 21:18:22.624609+00	2025-01-26 21:18:22.624609+00	2025-01-26 21:18:22.624609+00	{"eTag": "\\"edf66ec5f4de803ef6f02edeb7e09f3b\\"", "size": 207353, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:22.615Z", "contentLength": 207353, "httpStatusCode": 200}	792aad4b-1b75-4bcd-a5e1-552ea029c107	\N	{}
0575e13f-538f-4d88-b422-839960480364	campuses	uncc/9	\N	2025-01-26 21:16:15.591741+00	2025-01-26 21:16:15.591741+00	2025-01-26 21:16:15.591741+00	{"eTag": "\\"42c589d574f669eb682a2524858cf972\\"", "size": 198281, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:15.580Z", "contentLength": 198281, "httpStatusCode": 200}	065b2959-dae9-421a-b09d-ed40425179e1	\N	{}
efd382d4-1ace-4cfe-81cb-3bf716a0d697	campuses	ung/0	\N	2025-01-26 21:16:16.173754+00	2025-01-26 21:16:16.173754+00	2025-01-26 21:16:16.173754+00	{"eTag": "\\"45795e36e3c38965b62c01af8f1c8851\\"", "size": 61785, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:16.171Z", "contentLength": 61785, "httpStatusCode": 200}	1a9c8ce0-f0c9-4be4-86f9-fb3ef16e0e09	\N	{}
639ce90a-2a2c-407c-91cd-56a65379dad5	campuses	wayne/1	\N	2025-01-26 21:18:23.151862+00	2025-01-26 21:18:23.151862+00	2025-01-26 21:18:23.151862+00	{"eTag": "\\"43115bca99a8ce73d7cb893d1776dec2\\"", "size": 245001, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:23.146Z", "contentLength": 245001, "httpStatusCode": 200}	c5cd58b8-6c00-49e2-ad4a-ad7cee944a37	\N	{}
5993a485-816d-4e79-b913-6f3719b7fdad	campuses	ung/1	\N	2025-01-26 21:16:16.839262+00	2025-01-26 21:16:16.839262+00	2025-01-26 21:16:16.839262+00	{"eTag": "\\"6e6ffc471610a3da2f19c7c6fec1895c\\"", "size": 179541, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:16.835Z", "contentLength": 179541, "httpStatusCode": 200}	6101bb05-63cd-4c14-8f20-b4ccee318bd2	\N	{}
a708bdea-1c19-4bc5-9dfb-3c30abd27d1d	campuses	ung/2	\N	2025-01-26 21:16:17.74506+00	2025-01-26 21:16:17.74506+00	2025-01-26 21:16:17.74506+00	{"eTag": "\\"864c87f9d4237d445ed463e528b84ef4\\"", "size": 254286, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:17.710Z", "contentLength": 254286, "httpStatusCode": 200}	0c30b5de-7178-4617-b1f3-a08d4bb781e7	\N	{}
e6b301e3-c2c0-446d-b496-fb57612c2197	campuses	ung/3	\N	2025-01-26 21:16:18.569365+00	2025-01-26 21:16:18.569365+00	2025-01-26 21:16:18.569365+00	{"eTag": "\\"193e69693693ba7bcbf9556bd33b0633\\"", "size": 263820, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:18.540Z", "contentLength": 263820, "httpStatusCode": 200}	961948f4-ee4c-46af-bc9c-d8001b71d4ce	\N	{}
8f185da6-f02d-403b-b0dd-a9bbe7b537e1	campuses	ung/4	\N	2025-01-26 21:16:19.398738+00	2025-01-26 21:16:19.398738+00	2025-01-26 21:16:19.398738+00	{"eTag": "\\"de4b33e131fa66d706f1d1f623dd2a31\\"", "size": 239502, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:19.384Z", "contentLength": 239502, "httpStatusCode": 200}	6c36db5f-5e36-4647-a877-538017a953ae	\N	{}
e24d79fc-dbbd-4d19-82e8-b5970ee222cb	campuses	ung/5	\N	2025-01-26 21:16:20.158673+00	2025-01-26 21:16:20.158673+00	2025-01-26 21:16:20.158673+00	{"eTag": "\\"0a18ae23e5eb93f594d002b8302cb8ef\\"", "size": 253083, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:20.144Z", "contentLength": 253083, "httpStatusCode": 200}	d613cf84-7f4e-4248-9cd6-4a38487f2459	\N	{}
07ac4961-eae4-4939-b5c5-93f12b1fa423	campuses	ung/6	\N	2025-01-26 21:16:20.812767+00	2025-01-26 21:16:20.812767+00	2025-01-26 21:16:20.812767+00	{"eTag": "\\"e119e750fc83fba5e5fbf62e0a85816a\\"", "size": 127040, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:20.808Z", "contentLength": 127040, "httpStatusCode": 200}	ad2291c9-91b5-4418-8ca6-0a803c2ac0f9	\N	{}
14f0a224-366b-491e-b6b0-2f0df88615e0	campuses	ung/7	\N	2025-01-26 21:16:21.395894+00	2025-01-26 21:16:21.395894+00	2025-01-26 21:16:21.395894+00	{"eTag": "\\"70cf60c3c43f75313133500b50f89eec\\"", "size": 769797, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:21.389Z", "contentLength": 769797, "httpStatusCode": 200}	cc5a1eef-80a3-464c-a275-50a47fe66336	\N	{}
6023c816-76f0-4d69-a7c7-e386f9b4f243	campuses	ung/8	\N	2025-01-26 21:16:21.897208+00	2025-01-26 21:16:21.897208+00	2025-01-26 21:16:21.897208+00	{"eTag": "\\"8fad007153a13133aab7157305cd80aa\\"", "size": 44325, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:21.888Z", "contentLength": 44325, "httpStatusCode": 200}	1e75622c-c1a6-4bd7-96fe-581fadb6375b	\N	{}
9e08f919-f4d2-4e7b-9f43-aed6f7d43b11	campuses	ung/9	\N	2025-01-26 21:16:22.620826+00	2025-01-26 21:16:22.620826+00	2025-01-26 21:16:22.620826+00	{"eTag": "\\"e34eb2fe5c36e3f77720ce471a109294\\"", "size": 641085, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:22.611Z", "contentLength": 641085, "httpStatusCode": 200}	5153a078-a887-4f4c-91ac-6a1ca7db0fe6	\N	{}
dc1ac0c6-061d-4b70-a264-efe3533deab3	campuses	unco/0	\N	2025-01-26 21:16:23.606928+00	2025-01-26 21:16:23.606928+00	2025-01-26 21:16:23.606928+00	{"eTag": "\\"16f975d79cff62afd0fcd70f426d21f4\\"", "size": 1085249, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:23.598Z", "contentLength": 1085249, "httpStatusCode": 200}	ae8b8601-d4bd-441c-b414-eb89c98021dc	\N	{}
3833ee89-4725-4c12-985a-899c36be4d4c	campuses	unco/1	\N	2025-01-26 21:16:24.221295+00	2025-01-26 21:16:24.221295+00	2025-01-26 21:16:24.221295+00	{"eTag": "\\"8544b646db1d8525263b85248fbba1ad\\"", "size": 200415, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:24.208Z", "contentLength": 200415, "httpStatusCode": 200}	b01425d8-44c5-4127-8101-632e7be54ee0	\N	{}
135bc5b9-a89c-46a4-a361-30b751c0e2ef	campuses	wayne/2	\N	2025-01-26 21:18:23.967372+00	2025-01-26 21:18:23.967372+00	2025-01-26 21:18:23.967372+00	{"eTag": "\\"44e565ff7809d964b5d2763d944c2640\\"", "size": 610074, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:23.939Z", "contentLength": 610074, "httpStatusCode": 200}	8691d5e1-590b-40e9-a753-c17fe3180978	\N	{}
95261046-e628-476a-ad16-6968effecb2c	campuses	unco/2	\N	2025-01-26 21:16:24.634136+00	2025-01-26 21:16:24.634136+00	2025-01-26 21:16:24.634136+00	{"eTag": "\\"237b5e72c7cb582e26a5a4f1d807db0d\\"", "size": 19008, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:24.629Z", "contentLength": 19008, "httpStatusCode": 200}	fe52f407-369d-4399-be10-2b32d7107076	\N	{}
dfdc96c3-d22a-406e-a181-e2ae153ca825	campuses	unco/3	\N	2025-01-26 21:16:25.447693+00	2025-01-26 21:16:25.447693+00	2025-01-26 21:16:25.447693+00	{"eTag": "\\"a1a582a977406e80afca6936c4bcae9e\\"", "size": 996688, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:25.423Z", "contentLength": 996688, "httpStatusCode": 200}	a6258c4b-cb36-404c-9db5-494d6eb64795	\N	{}
d3c0c055-4670-4de1-b3e2-d1b1130a9d33	campuses	wayne/3	\N	2025-01-26 21:18:24.742143+00	2025-01-26 21:18:24.742143+00	2025-01-26 21:18:24.742143+00	{"eTag": "\\"d9b1a5b0534d8da87167cd0a51c7d2ef\\"", "size": 270645, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:24.732Z", "contentLength": 270645, "httpStatusCode": 200}	b20f57c6-5c48-49d1-88e4-089f49b04f4c	\N	{}
e295e870-ba02-4628-a35b-7ab0f894595e	campuses	unco/4	\N	2025-01-26 21:16:26.088853+00	2025-01-26 21:16:26.088853+00	2025-01-26 21:16:26.088853+00	{"eTag": "\\"46f9464292fea12c0c3f33a02580afb8\\"", "size": 173087, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:26.085Z", "contentLength": 173087, "httpStatusCode": 200}	99757738-cba5-4a58-9b44-503a3d84551c	\N	{}
8786ba09-9e6a-4afc-8610-f65144b21c25	campuses	unco/5	\N	2025-01-26 21:16:26.798604+00	2025-01-26 21:16:26.798604+00	2025-01-26 21:16:26.798604+00	{"eTag": "\\"d97275544dcaeb79b7cafd5950b990d1\\"", "size": 978591, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:26.789Z", "contentLength": 978591, "httpStatusCode": 200}	e8378f3e-9e9b-42b1-8ee6-2d051695021e	\N	{}
c1c76bfd-292c-43ae-94a0-b6f216bc6edb	campuses	wayne/4	\N	2025-01-26 21:18:25.233257+00	2025-01-26 21:18:25.233257+00	2025-01-26 21:18:25.233257+00	{"eTag": "\\"bce9a9f9159f05d026f58663c8dd3d1c\\"", "size": 43753, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:25.229Z", "contentLength": 43753, "httpStatusCode": 200}	9f848e81-e9f1-4c39-8eeb-079333b239e0	\N	{}
a2b1b097-bb39-4019-abb7-af989ac53c4e	campuses	unco/8	\N	2025-01-26 21:16:27.133787+00	2025-01-26 21:16:27.133787+00	2025-01-26 21:16:27.133787+00	{"eTag": "\\"502edd3de30948f2051bb60743c3a7be\\"", "size": 48270, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:27.131Z", "contentLength": 48270, "httpStatusCode": 200}	4cfdc240-d397-4752-90b9-264738450ece	\N	{}
c63a53a0-a6cd-4de4-8146-342d00f7caeb	campuses	uni/0	\N	2025-01-26 21:16:27.767028+00	2025-01-26 21:16:27.767028+00	2025-01-26 21:16:27.767028+00	{"eTag": "\\"f441a023f4b53e294d253c664cabfa51\\"", "size": 191382, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:27.763Z", "contentLength": 191382, "httpStatusCode": 200}	9ee7a759-f241-4bd7-9c51-97912675f4a3	\N	{}
6a30f51a-a47e-4c19-96e4-5997aff0c5bc	campuses	uni/1	\N	2025-01-26 21:16:28.353569+00	2025-01-26 21:16:28.353569+00	2025-01-26 21:16:28.353569+00	{"eTag": "\\"1a59663b2d61ae55c0d5a76781b4d00e\\"", "size": 226464, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:28.349Z", "contentLength": 226464, "httpStatusCode": 200}	7f50bf68-25e8-4dae-a14a-abb9ddbe9fe0	\N	{}
842a0336-9aca-4cc1-aff9-3e52e9c383e1	campuses	uni/2	\N	2025-01-26 21:16:29.58945+00	2025-01-26 21:16:29.58945+00	2025-01-26 21:16:29.58945+00	{"eTag": "\\"38e81acb5f8038d33fc5936a01956662\\"", "size": 997856, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:29.562Z", "contentLength": 997856, "httpStatusCode": 200}	1e373053-7d39-4cc8-8259-6e48d671de2f	\N	{}
451d99f6-fd08-42e0-a7ee-5604565b7051	campuses	uni/3	\N	2025-01-26 21:16:30.276873+00	2025-01-26 21:16:30.276873+00	2025-01-26 21:16:30.276873+00	{"eTag": "\\"72f4b141b4143928a53675b89ef3a289\\"", "size": 318433, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:30.268Z", "contentLength": 318433, "httpStatusCode": 200}	f1ec77b1-71b1-4b14-be0c-f10b787576ac	\N	{}
79c7f831-3752-40b0-bf4f-975abafe6c6a	campuses	uni/4	\N	2025-01-26 21:16:30.633483+00	2025-01-26 21:16:30.633483+00	2025-01-26 21:16:30.633483+00	{"eTag": "\\"d281e48dad33f6689e0cbe6dbe8e2673\\"", "size": 75220, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:30.629Z", "contentLength": 75220, "httpStatusCode": 200}	8f14122b-8da9-4bc4-a1c5-b5caebdd3597	\N	{}
6a58288c-07a5-4355-bddc-2fe139cba93e	campuses	ou/0	\N	2025-01-26 21:16:33.258688+00	2025-01-26 21:16:33.258688+00	2025-01-26 21:16:33.258688+00	{"eTag": "\\"9036f5854a05879579d3692ea4b833e7\\"", "size": 3053429, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:33.198Z", "contentLength": 3053429, "httpStatusCode": 200}	cd4e6520-7e70-4314-bb14-2705cfc800eb	\N	{}
b37d253a-1840-4a0b-b83c-dbf8af2f3188	campuses	ou/1	\N	2025-01-26 21:16:33.950342+00	2025-01-26 21:16:33.950342+00	2025-01-26 21:16:33.950342+00	{"eTag": "\\"8d2097cf98feb2051baee4b4f7d012f3\\"", "size": 2556798, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:33.927Z", "contentLength": 2556798, "httpStatusCode": 200}	43d8450e-9014-4af4-ae25-951b39fb12f5	\N	{}
717e30c8-11ff-4c81-8931-a2e209a83daa	campuses	ou/2	\N	2025-01-26 21:16:34.889243+00	2025-01-26 21:16:34.889243+00	2025-01-26 21:16:34.889243+00	{"eTag": "\\"ee944e282feb6aeb46bc45fc79677ccb\\"", "size": 905535, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:34.881Z", "contentLength": 905535, "httpStatusCode": 200}	4127ff0e-d92c-43f8-8a1b-536eca192201	\N	{}
24548e18-868b-4ebb-92f7-6583a3ccdc6b	campuses	ou/3	\N	2025-01-26 21:16:36.89389+00	2025-01-26 21:16:36.89389+00	2025-01-26 21:16:36.89389+00	{"eTag": "\\"c910abcd2ca1f748eea0ef116f2f3f09\\"", "size": 3151077, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:36.871Z", "contentLength": 3151077, "httpStatusCode": 200}	c2031f36-6758-4c68-be8a-67b4065e6f0e	\N	{}
2397bfb7-6a8f-492f-bbba-72045f8e83d5	campuses	ou/4	\N	2025-01-26 21:16:37.649494+00	2025-01-26 21:16:37.649494+00	2025-01-26 21:16:37.649494+00	{"eTag": "\\"c28d48a497ea36fddbaa968f95cb7a5e\\"", "size": 336627, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:37.642Z", "contentLength": 336627, "httpStatusCode": 200}	08718297-7b7c-48bf-ba80-d4e8898d0062	\N	{}
f353a415-4343-4de8-a831-dea35993749f	campuses	wayne/5	\N	2025-01-26 21:18:25.725842+00	2025-01-26 21:18:25.725842+00	2025-01-26 21:18:25.725842+00	{"eTag": "\\"3619944c0e72cac4f7c1c59f45cce807\\"", "size": 529503, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:25.720Z", "contentLength": 529503, "httpStatusCode": 200}	1cc117b4-c8ae-4f58-ab11-2ca5ba91c463	\N	{}
309d47a2-fe46-4ec5-9929-8909bdfbcc92	campuses	ou/5	\N	2025-01-26 21:16:38.60552+00	2025-01-26 21:16:38.60552+00	2025-01-26 21:16:38.60552+00	{"eTag": "\\"884660b9ce2a9064ad2f4ab5ee72c6ab\\"", "size": 2895454, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:38.571Z", "contentLength": 2895454, "httpStatusCode": 200}	68887acc-b1bd-4014-b31f-d505794e61e4	\N	{}
fce0aab8-6ff2-44bf-aa49-52d954357d7d	campuses	ou/6	\N	2025-01-26 21:16:39.040829+00	2025-01-26 21:16:39.040829+00	2025-01-26 21:16:39.040829+00	{"eTag": "\\"761c8602e9bca389cd1f25c5bc26cf94\\"", "size": 100849, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:39.036Z", "contentLength": 100849, "httpStatusCode": 200}	8815077b-5cdc-4997-b201-603a1c3552cc	\N	{}
26dbc1cf-a747-4f7d-a67a-38329c829313	campuses	wayne/6	\N	2025-01-26 21:18:26.134934+00	2025-01-26 21:18:26.134934+00	2025-01-26 21:18:26.134934+00	{"eTag": "\\"1ff4528692b36a88abe9f0706fd4f286\\"", "size": 187074, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:26.128Z", "contentLength": 187074, "httpStatusCode": 200}	57014f36-b6fe-49ad-a725-49e51afde3d0	\N	{}
47a4734b-3796-44b3-99c2-f1ef078251ae	campuses	ou/7	\N	2025-01-26 21:16:39.913928+00	2025-01-26 21:16:39.913928+00	2025-01-26 21:16:39.913928+00	{"eTag": "\\"db5401df3a7dbd43d2d1efce4f15669b\\"", "size": 595978, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:39.907Z", "contentLength": 595978, "httpStatusCode": 200}	d22b7489-80b9-49de-96dc-4f1d56d9ba61	\N	{}
02570092-28b1-44ee-8317-906846ffd234	campuses	ou/8	\N	2025-01-26 21:16:41.882183+00	2025-01-26 21:16:41.882183+00	2025-01-26 21:16:41.882183+00	{"eTag": "\\"25f7c7c70c5af5538e0ef0115d1aeff3\\"", "size": 10805080, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:41.813Z", "contentLength": 10805080, "httpStatusCode": 200}	eab64eb3-4090-4515-a190-d73f777d535a	\N	{}
2857acab-e824-4ecc-9f66-921588c4af1b	campuses	wayne/7	\N	2025-01-26 21:18:26.56228+00	2025-01-26 21:18:26.56228+00	2025-01-26 21:18:26.56228+00	{"eTag": "\\"98f2a65ad7e3558357ec3dc38b153e42\\"", "size": 101696, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:26.557Z", "contentLength": 101696, "httpStatusCode": 200}	3d1bfe7d-9257-4927-9354-610aa36554f8	\N	{}
31a322cb-fa80-46e5-8cd7-05dff6092702	campuses	ou/9	\N	2025-01-26 21:16:42.987441+00	2025-01-26 21:16:42.987441+00	2025-01-26 21:16:42.987441+00	{"eTag": "\\"454440dc41f4492aac59d446588e158e\\"", "size": 1349773, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:42.932Z", "contentLength": 1349773, "httpStatusCode": 200}	058ed12d-38f2-4c08-bf19-4cab3cccb308	\N	{}
47a24022-7205-4642-a6bd-56edc2015fe3	campuses	up/0	\N	2025-01-26 21:16:43.689197+00	2025-01-26 21:16:43.689197+00	2025-01-26 21:16:43.689197+00	{"eTag": "\\"90533b3b5296461723f6feb39fa916ef\\"", "size": 151840, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:43.677Z", "contentLength": 151840, "httpStatusCode": 200}	ff9a5505-cf2f-4bcb-a63b-df166f8db64d	\N	{}
0bbb5a84-3919-4daf-8850-79c619fab040	campuses	up/1	\N	2025-01-26 21:16:44.470889+00	2025-01-26 21:16:44.470889+00	2025-01-26 21:16:44.470889+00	{"eTag": "\\"befd91b1ffbd876fa8128beadbb388d8\\"", "size": 226786, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:44.466Z", "contentLength": 226786, "httpStatusCode": 200}	e07d839d-1478-4f31-9529-2dcdeb0f6a15	\N	{}
f5a90b1c-c728-426f-ae6a-4c32a8675320	campuses	up/2	\N	2025-01-26 21:16:45.562556+00	2025-01-26 21:16:45.562556+00	2025-01-26 21:16:45.562556+00	{"eTag": "\\"9dc966c4ce3e1d749acb2eb46ed670ee\\"", "size": 517653, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:45.544Z", "contentLength": 517653, "httpStatusCode": 200}	5f0a87f8-3db5-426a-aa2b-4e20809d8ffd	\N	{}
fde149fa-d647-4ef9-9814-689341ff754a	campuses	up/3	\N	2025-01-26 21:16:46.852444+00	2025-01-26 21:16:46.852444+00	2025-01-26 21:16:46.852444+00	{"eTag": "\\"725c482a619a14735cb39409ea4a236e\\"", "size": 536190, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:46.786Z", "contentLength": 536190, "httpStatusCode": 200}	0854cdd2-124e-4904-bf1d-cdda76f5e8d7	\N	{}
f7cb9eee-c712-4f9c-82db-d28a70472682	campuses	up/5	\N	2025-01-26 21:16:48.86464+00	2025-01-26 21:16:48.86464+00	2025-01-26 21:16:48.86464+00	{"eTag": "\\"4591aa545f6d186fbfaed731ccad579d\\"", "size": 124572, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:48.851Z", "contentLength": 124572, "httpStatusCode": 200}	bb5e2f7f-37e3-4aa5-b5fc-f300a530ec2e	\N	{}
cff03a3a-5958-47ca-a84b-1eb0e79d4ef8	campuses	up/6	\N	2025-01-26 21:16:49.654624+00	2025-01-26 21:16:49.654624+00	2025-01-26 21:16:49.654624+00	{"eTag": "\\"46fc72bb20933aad5db80d829c859999\\"", "size": 173888, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:49.640Z", "contentLength": 173888, "httpStatusCode": 200}	918ffb30-7060-48a0-95df-c29b82942536	\N	{}
0f732c74-23bb-4e14-a2ff-31e3cf424793	campuses	up/7	\N	2025-01-26 21:16:51.381339+00	2025-01-26 21:16:51.381339+00	2025-01-26 21:16:51.381339+00	{"eTag": "\\"d41d8cd98f00b204e9800998ecf8427e\\"", "size": 0, "mimetype": "application/x-empty", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:51.291Z", "contentLength": 0, "httpStatusCode": 200}	d8718138-905c-4d99-bc99-659e56abc6b9	\N	{}
64109505-074b-46c0-8d20-89a0186f3e3b	campuses	up/8	\N	2025-01-26 21:16:52.360469+00	2025-01-26 21:16:52.360469+00	2025-01-26 21:16:52.360469+00	{"eTag": "\\"6aff1fbffac234a7067de53e73af667e\\"", "size": 197380, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:52.331Z", "contentLength": 197380, "httpStatusCode": 200}	bbb5f74d-2aa7-41e0-adb8-5fbe62040ccb	\N	{}
2cb13406-2482-41ac-bb4b-5ce43f77e435	campuses	up/9	\N	2025-01-26 21:16:52.602128+00	2025-01-26 21:16:52.602128+00	2025-01-26 21:16:52.602128+00	{"eTag": "\\"d41d8cd98f00b204e9800998ecf8427e\\"", "size": 0, "mimetype": "application/x-empty", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:52.600Z", "contentLength": 0, "httpStatusCode": 200}	846e33c6-9262-41e9-85ac-03fe90cc6028	\N	{}
76975723-598a-469e-89fd-d67b9627eecf	campuses	pugetsound/0	\N	2025-01-26 21:16:53.65551+00	2025-01-26 21:16:53.65551+00	2025-01-26 21:16:53.65551+00	{"eTag": "\\"ed2852aa66ef0b7da43b969b9c938c3e\\"", "size": 590022, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:53.642Z", "contentLength": 590022, "httpStatusCode": 200}	d0d92200-e540-4ee9-b1a0-c78718010a45	\N	{}
462d9472-92d2-4c07-9dd3-e3f6c4218205	campuses	wayne/8	\N	2025-01-26 21:18:27.172465+00	2025-01-26 21:18:27.172465+00	2025-01-26 21:18:27.172465+00	{"eTag": "\\"e6e62879944e7b61bf9ea616eaa0abb3\\"", "size": 463894, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:27.165Z", "contentLength": 463894, "httpStatusCode": 200}	26f7a045-9541-403e-8628-29db16da39d1	\N	{}
4506d47c-1721-4c0a-bece-327fd0fd120e	campuses	pugetsound/1	\N	2025-01-26 21:16:54.676653+00	2025-01-26 21:16:54.676653+00	2025-01-26 21:16:54.676653+00	{"eTag": "\\"8a0fdbd2e5842e1b8352cdd1c2987548\\"", "size": 1813309, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:54.615Z", "contentLength": 1813309, "httpStatusCode": 200}	f50c674c-2ff5-4964-b17e-5c2a6f1fe2b1	\N	{}
d6dc1eae-695f-48e9-a3c2-452f3c2c5ca0	campuses	pugetsound/2	\N	2025-01-26 21:16:55.471224+00	2025-01-26 21:16:55.471224+00	2025-01-26 21:16:55.471224+00	{"eTag": "\\"8ea3e9712000de73ba6f0eb1b85b1fc1\\"", "size": 71130, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:55.468Z", "contentLength": 71130, "httpStatusCode": 200}	66655c38-51f1-44a6-8041-0d48faa17fb4	\N	{}
936f2a43-908d-4757-ac3c-6c949f2edc25	campuses	wayne/9	\N	2025-01-26 21:18:27.585336+00	2025-01-26 21:18:27.585336+00	2025-01-26 21:18:27.585336+00	{"eTag": "\\"9fe3cb2b7313dc79bb477bc8fde184a7\\"", "size": 146, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:27.582Z", "contentLength": 146, "httpStatusCode": 200}	67083e7b-c7b1-47f0-97dd-a57d5b97a79c	\N	{}
f41e57d1-e97a-499c-93c3-aaaa613d03fd	campuses	pugetsound/3	\N	2025-01-26 21:16:56.412069+00	2025-01-26 21:16:56.412069+00	2025-01-26 21:16:56.412069+00	{"eTag": "\\"96784549dd5edc806b10144871cbe442\\"", "size": 106629, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:56.408Z", "contentLength": 106629, "httpStatusCode": 200}	350962f3-3bf2-4020-a638-318464e28cf7	\N	{}
af060ca6-5acb-4776-86e7-ff010a080734	campuses	pugetsound/4	\N	2025-01-26 21:16:57.080114+00	2025-01-26 21:16:57.080114+00	2025-01-26 21:16:57.080114+00	{"eTag": "\\"9d33f16451fcc464efe7f63c8fe045dd\\"", "size": 497109, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:57.072Z", "contentLength": 497109, "httpStatusCode": 200}	cc283a03-ae12-48dc-a8b9-7c1afdb3aeb3	\N	{}
0c823bb8-d6bf-41f8-b272-8a062fe8b4af	campuses	wells/0	\N	2025-01-26 21:18:28.097636+00	2025-01-26 21:18:28.097636+00	2025-01-26 21:18:28.097636+00	{"eTag": "\\"bfef45b92a02c1c9787eaf5cede28609\\"", "size": 83494, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:28.093Z", "contentLength": 83494, "httpStatusCode": 200}	d2a45137-cc73-4780-852a-d49dac80109a	\N	{}
c7e862b4-2c8c-4684-b66a-48a9dacfa718	campuses	pugetsound/5	\N	2025-01-26 21:16:58.211857+00	2025-01-26 21:16:58.211857+00	2025-01-26 21:16:58.211857+00	{"eTag": "\\"10bec24b1ce5cb24c7b7d5e7eaae93f8\\"", "size": 6124161, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:58.163Z", "contentLength": 6124161, "httpStatusCode": 200}	d8fa7977-6698-49ca-a4ad-7a86e89d9009	\N	{}
321a1e56-454f-41ac-9332-129d40dd1c74	campuses	pugetsound/6	\N	2025-01-26 21:16:59.480895+00	2025-01-26 21:16:59.480895+00	2025-01-26 21:16:59.480895+00	{"eTag": "\\"f0a0bc3fe7807592a3533fb630d7623e\\"", "size": 1124533, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:16:59.448Z", "contentLength": 1124533, "httpStatusCode": 200}	8ed9d6b2-bc74-40fe-ab7f-7a03f0afda6c	\N	{}
6036d1ff-2318-4012-95f3-a644369806f9	campuses	pugetsound/7	\N	2025-01-26 21:17:00.913177+00	2025-01-26 21:17:00.913177+00	2025-01-26 21:17:00.913177+00	{"eTag": "\\"4ad2ad11128030f439e132fc33df50b3\\"", "size": 1638163, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:00.899Z", "contentLength": 1638163, "httpStatusCode": 200}	93b7c0c2-a9cb-4feb-8fef-27cb6183b3dd	\N	{}
59e6c089-8eae-46f2-9af7-caee223729ea	campuses	pugetsound/8	\N	2025-01-26 21:17:01.990143+00	2025-01-26 21:17:01.990143+00	2025-01-26 21:17:01.990143+00	{"eTag": "\\"0ef6e1734de3cdb39233ba7961198b40\\"", "size": 1924770, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:01.964Z", "contentLength": 1924770, "httpStatusCode": 200}	7fbdf410-bee3-4bbd-b0df-2e2d47090842	\N	{}
9b3077ce-bac6-4698-8781-496f5582da23	campuses	pugetsound/9	\N	2025-01-26 21:17:02.648909+00	2025-01-26 21:17:02.648909+00	2025-01-26 21:17:02.648909+00	{"eTag": "\\"2eb21ce698f6cf8523d58fff6621f868\\"", "size": 497651, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:02.635Z", "contentLength": 497651, "httpStatusCode": 200}	697c99fc-79d0-433d-9db6-643673e9e13b	\N	{}
35aaaca9-a2b8-47a0-9f79-22574c112599	campuses	usciences/0	\N	2025-01-26 21:17:03.227221+00	2025-01-26 21:17:03.227221+00	2025-01-26 21:17:03.227221+00	{"eTag": "\\"b3b4d1ff2ecd6113f074b2b0c87aa1d9\\"", "size": 41053, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:03.223Z", "contentLength": 41053, "httpStatusCode": 200}	9fd91de3-d321-4a0d-8da6-d1a038186605	\N	{}
f33c9fdc-6385-4afe-b5ef-2f634987d513	campuses	usciences/1	\N	2025-01-26 21:17:03.698999+00	2025-01-26 21:17:03.698999+00	2025-01-26 21:17:03.698999+00	{"eTag": "\\"742ac8680943467efedf45a2990432dc\\"", "size": 52814, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:03.692Z", "contentLength": 52814, "httpStatusCode": 200}	f6bc2a02-104f-4503-912b-cdf3cc614416	\N	{}
dca8e69f-0950-40dc-b7bb-8e0468e43f63	campuses	usciences/2	\N	2025-01-26 21:17:04.09982+00	2025-01-26 21:17:04.09982+00	2025-01-26 21:17:04.09982+00	{"eTag": "\\"ea6421a2d46aecb205aad320b5819d6f\\"", "size": 20810, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:04.095Z", "contentLength": 20810, "httpStatusCode": 200}	b157a4e5-f9b8-4b9d-94d9-ebe12f9fc5eb	\N	{}
d97ce9fa-efc0-42c4-abef-35a9f4c91cb4	campuses	usciences/3	\N	2025-01-26 21:17:04.529437+00	2025-01-26 21:17:04.529437+00	2025-01-26 21:17:04.529437+00	{"eTag": "\\"4d3e08846c035970b7210c119deaf432\\"", "size": 29607, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:04.527Z", "contentLength": 29607, "httpStatusCode": 200}	5d4ed84f-8a27-499b-b3de-265d440412e6	\N	{}
2861575e-c579-4355-b1fa-2e541ba66e6f	campuses	usciences/4	\N	2025-01-26 21:17:04.913378+00	2025-01-26 21:17:04.913378+00	2025-01-26 21:17:04.913378+00	{"eTag": "\\"dda5c25912705e78867cc9e231bcc324\\"", "size": 20293, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:04.909Z", "contentLength": 20293, "httpStatusCode": 200}	c995a5aa-3764-4803-84d6-9e25fd0227c9	\N	{}
996eb5fb-0005-49f9-98d0-1e1b72357b85	campuses	wells/1	\N	2025-01-26 21:18:31.867+00	2025-01-26 21:18:31.867+00	2025-01-26 21:18:31.867+00	{"eTag": "\\"164b200ac1743f46898e4a4faf15ab75\\"", "size": 169426, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:31.861Z", "contentLength": 169426, "httpStatusCode": 200}	00c7be77-678d-4b8e-9ecd-73749cf362eb	\N	{}
7d374e50-c166-4c5c-9b2e-c1ef713395a8	campuses	usciences/5	\N	2025-01-26 21:17:05.296964+00	2025-01-26 21:17:05.296964+00	2025-01-26 21:17:05.296964+00	{"eTag": "\\"4cf16026ddb6ccfaaf8b6b8c2498ab8f\\"", "size": 12346, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:05.295Z", "contentLength": 12346, "httpStatusCode": 200}	f684f71f-cb3b-4a69-9376-3177c6e0a0ed	\N	{}
53e25f41-5b64-4bc8-81cc-e5db2323d056	campuses	usciences/6	\N	2025-01-26 21:17:05.734431+00	2025-01-26 21:17:05.734431+00	2025-01-26 21:17:05.734431+00	{"eTag": "\\"aba873653588c9f260457ac40066f7c6\\"", "size": 43570, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:05.730Z", "contentLength": 43570, "httpStatusCode": 200}	459decd3-66be-415e-a73a-2133044c7857	\N	{}
6b08b35e-9c0c-4e2e-83f7-a098c5c1b030	campuses	wells/2	\N	2025-01-26 21:18:32.592905+00	2025-01-26 21:18:32.592905+00	2025-01-26 21:18:32.592905+00	{"eTag": "\\"e0e5d7afd482200690170db0286acc7b\\"", "size": 793065, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:32.579Z", "contentLength": 793065, "httpStatusCode": 200}	1df04d0f-ce55-4cae-9b10-477286e9c98c	\N	{}
4a3eacc1-430f-4dfe-8a81-dd74d6b34785	campuses	usciences/7	\N	2025-01-26 21:17:06.146204+00	2025-01-26 21:17:06.146204+00	2025-01-26 21:17:06.146204+00	{"eTag": "\\"592df6beb8273d9d4d94f449c54f5af0\\"", "size": 22051, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:06.142Z", "contentLength": 22051, "httpStatusCode": 200}	e253e1a0-3c32-4737-9c7a-5693e73ea93f	\N	{}
4e597744-6fd7-45c7-9061-2146ef051dbf	campuses	usciences/8	\N	2025-01-26 21:17:06.593727+00	2025-01-26 21:17:06.593727+00	2025-01-26 21:17:06.593727+00	{"eTag": "\\"67d2052ba03f7dfc692bbf17c65ecbd9\\"", "size": 39278, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:06.589Z", "contentLength": 39278, "httpStatusCode": 200}	d7d60b98-d487-4f69-bf3d-27ab9b21ce80	\N	{}
aa7ae733-76a5-43d4-80ef-50d484aed747	campuses	wells/3	\N	2025-01-26 21:18:33.163155+00	2025-01-26 21:18:33.163155+00	2025-01-26 21:18:33.163155+00	{"eTag": "\\"6d18bd73e7bd15e109c548f4ab413b90\\"", "size": 424886, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:33.155Z", "contentLength": 424886, "httpStatusCode": 200}	e6d967c1-c11a-4d75-9db2-dff62dc7d770	\N	{}
d880f75e-aec6-4ebd-834d-410a5107c614	campuses	usciences/9	\N	2025-01-26 21:17:07.092698+00	2025-01-26 21:17:07.092698+00	2025-01-26 21:17:07.092698+00	{"eTag": "\\"1376eba617718b7907add777a5e955af\\"", "size": 9719, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:07.089Z", "contentLength": 9719, "httpStatusCode": 200}	5d6d8ac2-f002-4396-8aeb-3ff8990731c0	\N	{}
b21ef579-9ead-4885-b2bd-fc67364d0a96	campuses	scranton/0	\N	2025-01-26 21:17:07.801386+00	2025-01-26 21:17:07.801386+00	2025-01-26 21:17:07.801386+00	{"eTag": "\\"34958eaffe38ddb5be097aa41cefff1b\\"", "size": 75542, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:07.797Z", "contentLength": 75542, "httpStatusCode": 200}	95445ecd-14ae-4328-be06-713a179d84d3	\N	{}
cbfb3970-e678-4532-bc6f-0c807d4d5506	campuses	scranton/1	\N	2025-01-26 21:17:08.554116+00	2025-01-26 21:17:08.554116+00	2025-01-26 21:17:08.554116+00	{"eTag": "\\"20663fc77e1534557b92abade0a945f8\\"", "size": 190814, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:08.550Z", "contentLength": 190814, "httpStatusCode": 200}	d74336c3-2feb-4c61-833c-1440739188ec	\N	{}
1806635f-6ea2-401b-b143-f03ac851df4a	campuses	scranton/2	\N	2025-01-26 21:17:09.044134+00	2025-01-26 21:17:09.044134+00	2025-01-26 21:17:09.044134+00	{"eTag": "\\"e59769638cd5bc045af29085d36a6645\\"", "size": 172344, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:09.034Z", "contentLength": 172344, "httpStatusCode": 200}	427d70ec-acd1-4953-a6b7-3f6b59a81b65	\N	{}
da56a633-4fc9-4e51-860e-7db3adda378c	campuses	scranton/3	\N	2025-01-26 21:17:09.919083+00	2025-01-26 21:17:09.919083+00	2025-01-26 21:17:09.919083+00	{"eTag": "\\"14c6e875b06ff80ee284667c808332a1\\"", "size": 2710684, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:09.887Z", "contentLength": 2710684, "httpStatusCode": 200}	309e647c-0cb9-4a2c-98ac-07393fa0389a	\N	{}
bdf5d68f-0014-4e54-ab83-92763b22b5fb	campuses	scranton/4	\N	2025-01-26 21:17:10.727616+00	2025-01-26 21:17:10.727616+00	2025-01-26 21:17:10.727616+00	{"eTag": "\\"53a7f07edc12002f0fc84e623fe73a41\\"", "size": 1471657, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:10.709Z", "contentLength": 1471657, "httpStatusCode": 200}	ef472438-7329-4e39-a899-49429fa4aee2	\N	{}
f62224cf-7adf-4449-ae76-933ff485892b	campuses	scranton/5	\N	2025-01-26 21:17:11.512395+00	2025-01-26 21:17:11.512395+00	2025-01-26 21:17:11.512395+00	{"eTag": "\\"cd1fd92e1b44ec79c5bccfb3db511c4c\\"", "size": 550319, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:11.506Z", "contentLength": 550319, "httpStatusCode": 200}	342dfcc2-fc8f-474c-a8d8-64a29cbcad68	\N	{}
87577178-dd7b-45a4-9ec4-6370cc1af7c6	campuses	scranton/6	\N	2025-01-26 21:17:12.137806+00	2025-01-26 21:17:12.137806+00	2025-01-26 21:17:12.137806+00	{"eTag": "\\"8a133f67359e1459de822bfa3204294d\\"", "size": 165845, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:12.133Z", "contentLength": 165845, "httpStatusCode": 200}	26402756-2178-4fad-929a-f2d713b010a1	\N	{}
dcf33757-c1e7-49a4-a441-cba6977b6a93	campuses	scranton/7	\N	2025-01-26 21:17:13.002276+00	2025-01-26 21:17:13.002276+00	2025-01-26 21:17:13.002276+00	{"eTag": "\\"38dac23228fdfef21d92781a1c6ef127\\"", "size": 256062, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:12.994Z", "contentLength": 256062, "httpStatusCode": 200}	38707bfb-8a94-4cd0-8f42-87424297e6ed	\N	{}
e0810317-b596-45dd-bd57-737e8ea6d8f4	campuses	scranton/8	\N	2025-01-26 21:17:13.688381+00	2025-01-26 21:17:13.688381+00	2025-01-26 21:17:13.688381+00	{"eTag": "\\"bab16ca2eb619e65d226399e2124bf63\\"", "size": 73039, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:13.668Z", "contentLength": 73039, "httpStatusCode": 200}	ea5e4445-c104-4560-9482-7b1ddfb80c43	\N	{}
c6f30b33-45ea-420d-a415-33e45ebca94e	campuses	wells/4	\N	2025-01-26 21:18:33.800979+00	2025-01-26 21:18:33.800979+00	2025-01-26 21:18:33.800979+00	{"eTag": "\\"5a682dbd66fc964c8440c06fa6974353\\"", "size": 195822, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:33.796Z", "contentLength": 195822, "httpStatusCode": 200}	cdb55e95-6fa8-49d6-85c0-582aeb12bf04	\N	{}
6496b1b6-e452-4b22-bde2-98c8e7048fdd	campuses	scranton/9	\N	2025-01-26 21:17:14.381433+00	2025-01-26 21:17:14.381433+00	2025-01-26 21:17:14.381433+00	{"eTag": "\\"83e2843554d7ec2160441a034539b531\\"", "size": 282523, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:14.370Z", "contentLength": 282523, "httpStatusCode": 200}	8480a5de-89f5-47f8-8de5-aaab92879119	\N	{}
a620b318-42c2-48ed-97a0-8cbbe51cd027	campuses	sc/0	\N	2025-01-26 21:17:14.969329+00	2025-01-26 21:17:14.969329+00	2025-01-26 21:17:14.969329+00	{"eTag": "\\"d724f0097e08bb34aa9d60df933a9f22\\"", "size": 87299, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:14.944Z", "contentLength": 87299, "httpStatusCode": 200}	ab5d34c7-d196-47cf-952a-dda2180d0a60	\N	{}
d6099eee-fb42-415e-8778-ce5c5763c143	campuses	wells/5	\N	2025-01-26 21:18:34.350796+00	2025-01-26 21:18:34.350796+00	2025-01-26 21:18:34.350796+00	{"eTag": "\\"de3cebda27ff8503a18a30c802de8fbc\\"", "size": 93505, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:34.345Z", "contentLength": 93505, "httpStatusCode": 200}	e587212e-bf12-4c0a-b72f-9e7287459874	\N	{}
3123864b-be7d-40bc-bad2-155a72bdaa9b	campuses	sc/1	\N	2025-01-26 21:17:15.684097+00	2025-01-26 21:17:15.684097+00	2025-01-26 21:17:15.684097+00	{"eTag": "\\"180f5859ec8c825437d49543d2eed5fa\\"", "size": 264655, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:15.678Z", "contentLength": 264655, "httpStatusCode": 200}	ae4860f7-406c-48dd-aada-dc62c414e13c	\N	{}
4a5d6db8-e141-46f1-9d93-07a4c5d0352d	campuses	sc/2	\N	2025-01-26 21:17:16.20912+00	2025-01-26 21:17:16.20912+00	2025-01-26 21:17:16.20912+00	{"eTag": "\\"bad2e8579dcdb79399aac2064216a37d\\"", "size": 118, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:16.207Z", "contentLength": 118, "httpStatusCode": 200}	33efbc37-240f-44b7-a5ea-f35eb4a9fabe	\N	{}
759afc0c-3f7b-48be-9852-6ed4f7ad3c61	campuses	wells/6	\N	2025-01-26 21:18:35.592428+00	2025-01-26 21:18:35.592428+00	2025-01-26 21:18:35.592428+00	{"eTag": "\\"804f5e874af48fd87001dc8bc1457fa3\\"", "size": 1379020, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:35.580Z", "contentLength": 1379020, "httpStatusCode": 200}	0ac873ab-38f1-4d2a-9fd3-23b3d0a2675b	\N	{}
4bd54345-c598-46a7-8c95-d8374a5c8902	campuses	sc/3	\N	2025-01-26 21:17:16.840113+00	2025-01-26 21:17:16.840113+00	2025-01-26 21:17:16.840113+00	{"eTag": "\\"311ce1e76ea0001ec297cf220a89640d\\"", "size": 433394, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:16.833Z", "contentLength": 433394, "httpStatusCode": 200}	bfeccb3f-5f7c-4f34-a8f5-1500b5aa0dea	\N	{}
65950b37-27ff-41c1-ade1-e0827e32e3d0	campuses	sc/4	\N	2025-01-26 21:17:17.413638+00	2025-01-26 21:17:17.413638+00	2025-01-26 21:17:17.413638+00	{"eTag": "\\"5b416da2e49ddd496b9cb27bbe9fc7b1\\"", "size": 301721, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:17.404Z", "contentLength": 301721, "httpStatusCode": 200}	6af54902-f77f-4d0f-9653-c68d65062a46	\N	{}
780d5894-d78c-42f1-b61b-2ad14926d51d	campuses	wells/7	\N	2025-01-26 21:18:36.186108+00	2025-01-26 21:18:36.186108+00	2025-01-26 21:18:36.186108+00	{"eTag": "\\"83f536677317f3d995bcebcdcfa54f68\\"", "size": 276794, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:36.182Z", "contentLength": 276794, "httpStatusCode": 200}	f79b765c-a1dc-4b79-b410-a168efac777c	\N	{}
2b5c8c63-7d4e-433a-ad27-54791f769461	campuses	sc/5	\N	2025-01-26 21:17:18.005839+00	2025-01-26 21:17:18.005839+00	2025-01-26 21:17:18.005839+00	{"eTag": "\\"dacfc07963e98a9dccb2887eb0cc6ab7\\"", "size": 235774, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:17.994Z", "contentLength": 235774, "httpStatusCode": 200}	c94f672c-6564-458f-8610-902b98ef0f85	\N	{}
ca42b323-22e5-45f9-8caf-5e76dec061ad	campuses	sc/6	\N	2025-01-26 21:17:18.535139+00	2025-01-26 21:17:18.535139+00	2025-01-26 21:17:18.535139+00	{"eTag": "\\"e98c2fc310cadcd9802e0b1689bb167f\\"", "size": 178542, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:18.524Z", "contentLength": 178542, "httpStatusCode": 200}	01727d6d-5fa4-49e5-9f49-a4fd6e0db0de	\N	{}
51aa2c17-c7c7-44eb-969b-182fe633b5c3	campuses	sc/7	\N	2025-01-26 21:17:19.697761+00	2025-01-26 21:17:19.697761+00	2025-01-26 21:17:19.697761+00	{"eTag": "\\"66e20c6b000a0c95c86cded3379ca8e1\\"", "size": 1134447, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:19.686Z", "contentLength": 1134447, "httpStatusCode": 200}	673c154e-5b47-4700-840d-858ba74eb1d3	\N	{}
b2dc05d0-e1ee-4817-a8b0-99b710b21212	campuses	sc/8	\N	2025-01-26 21:17:20.303717+00	2025-01-26 21:17:20.303717+00	2025-01-26 21:17:20.303717+00	{"eTag": "\\"178a37f8147c26d64c34e95ae9890ae6\\"", "size": 143404, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:20.300Z", "contentLength": 143404, "httpStatusCode": 200}	0dd7baa9-4676-455c-a65c-cb70df9b2480	\N	{}
8d24b4ef-7ea6-4b88-ab05-c1433e9460cc	campuses	uvm/0	\N	2025-01-26 21:17:21.217635+00	2025-01-26 21:17:21.217635+00	2025-01-26 21:17:21.217635+00	{"eTag": "\\"76e3ff857907696190d31fbc14f0085b\\"", "size": 3341818, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:21.187Z", "contentLength": 3341818, "httpStatusCode": 200}	6fbd9662-2eb9-4869-b976-56ffcda583ac	\N	{}
e36f6af6-643d-465c-9572-34ba4e6bda42	campuses	uvm/1	\N	2025-01-26 21:17:21.757384+00	2025-01-26 21:17:21.757384+00	2025-01-26 21:17:21.757384+00	{"eTag": "\\"3bcbee67b07ce4aee08f324c123bd782\\"", "size": 79405, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:21.749Z", "contentLength": 79405, "httpStatusCode": 200}	433cc09f-0905-4698-8933-a8cb22763d7f	\N	{}
e881b87f-f1e1-4234-9fd8-1d26910a3729	campuses	uvm/2	\N	2025-01-26 21:17:22.34276+00	2025-01-26 21:17:22.34276+00	2025-01-26 21:17:22.34276+00	{"eTag": "\\"be4408efa59cd3a836ca064b197d69a0\\"", "size": 684326, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:22.327Z", "contentLength": 684326, "httpStatusCode": 200}	1f80fbaa-376e-47c7-a9a9-33ad519dd93d	\N	{}
dfd54ac9-3099-4252-ac48-c98c7a103fe1	campuses	uvm/3	\N	2025-01-26 21:17:22.893917+00	2025-01-26 21:17:22.893917+00	2025-01-26 21:17:22.893917+00	{"eTag": "\\"e4011825ae220127ed3eca52323a3eaa\\"", "size": 562632, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:22.880Z", "contentLength": 562632, "httpStatusCode": 200}	cfdc0e04-c6e4-4c3d-91f2-cdb8343958c2	\N	{}
c9b20c72-c150-415b-99fc-3624137773a0	campuses	uvm/4	\N	2025-01-26 21:17:23.363119+00	2025-01-26 21:17:23.363119+00	2025-01-26 21:17:23.363119+00	{"eTag": "\\"4a1d46aec9bdf2400f6d71c141ef9965\\"", "size": 142286, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:23.357Z", "contentLength": 142286, "httpStatusCode": 200}	ef559a0a-1a5b-4c9d-a606-2d1a557ca9b9	\N	{}
1bd302d7-abf0-461e-9c64-d4ae43091b0a	campuses	wells/8	\N	2025-01-26 21:18:36.790963+00	2025-01-26 21:18:36.790963+00	2025-01-26 21:18:36.790963+00	{"eTag": "\\"626bff2dcbe417a64639cfadd5454a31\\"", "size": 348577, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:36.787Z", "contentLength": 348577, "httpStatusCode": 200}	1422b0e5-2020-491a-a2f6-4e053fa6953d	\N	{}
a94b74d7-e90e-44bb-80f0-6fa0cdede92b	campuses	uvm/5	\N	2025-01-26 21:17:23.969444+00	2025-01-26 21:17:23.969444+00	2025-01-26 21:17:23.969444+00	{"eTag": "\\"ae0f901b6efb53e6cca1487133b8ba9a\\"", "size": 439794, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:23.933Z", "contentLength": 439794, "httpStatusCode": 200}	6dfdffa4-e6c5-48f3-b247-77b2b912f99e	\N	{}
e49208de-d62f-4b7b-b09f-e0d1e0684cb5	campuses	uvm/6	\N	2025-01-26 21:17:24.355268+00	2025-01-26 21:17:24.355268+00	2025-01-26 21:17:24.355268+00	{"eTag": "\\"e3513454dd803b9d188dacd52c6845b4\\"", "size": 53161, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:24.350Z", "contentLength": 53161, "httpStatusCode": 200}	8a7d3340-90e3-4321-88f3-09836a93052a	\N	{}
db499739-3ad1-47a9-8b21-8aa5a4a6ab44	campuses	wells/9	\N	2025-01-26 21:18:37.257032+00	2025-01-26 21:18:37.257032+00	2025-01-26 21:18:37.257032+00	{"eTag": "\\"22c7c3718628e48ce4c29a8e83efbdc9\\"", "size": 8093, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:37.254Z", "contentLength": 8093, "httpStatusCode": 200}	ea4f0970-c263-4148-8268-e45e55ae622f	\N	{}
abb7d854-dfc5-46cf-9b95-64127572e03c	campuses	uvm/7	\N	2025-01-26 21:17:24.923251+00	2025-01-26 21:17:24.923251+00	2025-01-26 21:17:24.923251+00	{"eTag": "\\"0eb955e8acd3188ca3f1498eb2b7b76b\\"", "size": 460290, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:24.917Z", "contentLength": 460290, "httpStatusCode": 200}	2e95e550-18ac-4e6a-acc1-fade8c6dcd54	\N	{}
b9bfdd24-993e-4ba1-a1fc-ee4be7340b38	campuses	uvm/8	\N	2025-01-26 21:17:25.345144+00	2025-01-26 21:17:25.345144+00	2025-01-26 21:17:25.345144+00	{"eTag": "\\"5814faeb736830cde1985689b75bf294\\"", "size": 71213, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:25.337Z", "contentLength": 71213, "httpStatusCode": 200}	b16d7b91-fbfd-47ae-a06e-c9e717998b16	\N	{}
202bd047-b92f-427d-ae93-adf98582ed30	campuses	wesleyan/0	\N	2025-01-26 21:18:38.038517+00	2025-01-26 21:18:38.038517+00	2025-01-26 21:18:38.038517+00	{"eTag": "\\"f5100a01b17d957e2336387518839543\\"", "size": 514203, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:38.027Z", "contentLength": 514203, "httpStatusCode": 200}	884c34c5-4400-4346-bd73-3fc3e2ec87ac	\N	{}
119a1e91-752d-43af-a3bc-caf7c11c1eb9	campuses	uvm/9	\N	2025-01-26 21:17:25.835101+00	2025-01-26 21:17:25.835101+00	2025-01-26 21:17:25.835101+00	{"eTag": "\\"fe5fb710501c83b721b8be25f09e4bab\\"", "size": 253239, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:25.831Z", "contentLength": 253239, "httpStatusCode": 200}	b152bb0c-0708-405f-8b1c-b221dd5e290c	\N	{}
4f0e2514-0ff5-40ae-b54e-83fa7cd204fe	campuses	uwest/0	\N	2025-01-26 21:17:26.390406+00	2025-01-26 21:17:26.390406+00	2025-01-26 21:17:26.390406+00	{"eTag": "\\"6dc0d7b3821c8a95ed2e44ceca4bc0d2\\"", "size": 113210, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:26.387Z", "contentLength": 113210, "httpStatusCode": 200}	42315fed-c5a7-467e-b4af-026e603879bb	\N	{}
b9bc09ae-e978-4872-b9ab-b2011fe24ed6	campuses	uwest/1	\N	2025-01-26 21:17:26.961149+00	2025-01-26 21:17:26.961149+00	2025-01-26 21:17:26.961149+00	{"eTag": "\\"7b3a12f79a792d72fd4a7823396a2445\\"", "size": 898876, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:26.948Z", "contentLength": 898876, "httpStatusCode": 200}	ca40ec8d-18e7-463b-bff7-a5deec624d2d	\N	{}
8600af8a-bf59-4fd2-9d85-0b4e5cc261bc	campuses	uwest/2	\N	2025-01-26 21:17:27.409186+00	2025-01-26 21:17:27.409186+00	2025-01-26 21:17:27.409186+00	{"eTag": "\\"3367f6fd5914d56231bebf4b99a83ec7\\"", "size": 136496, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:27.397Z", "contentLength": 136496, "httpStatusCode": 200}	95769c4f-40e5-4f94-99c1-28ff07475c1b	\N	{}
3423ff89-5cd2-4be1-9da9-bb18794097cf	campuses	uwest/3	\N	2025-01-26 21:17:28.023986+00	2025-01-26 21:17:28.023986+00	2025-01-26 21:17:28.023986+00	{"eTag": "\\"587616d8a75c28ddb267d3864db02907\\"", "size": 216637, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:28.018Z", "contentLength": 216637, "httpStatusCode": 200}	a9bc620c-b993-47e6-a97f-f18c94ff6cc7	\N	{}
a19b38be-f0e0-4e31-ab39-aed1d7430c88	campuses	uwest/4	\N	2025-01-26 21:17:28.624634+00	2025-01-26 21:17:28.624634+00	2025-01-26 21:17:28.624634+00	{"eTag": "\\"e875066eae77feb6acb4cc46c158bcdb\\"", "size": 890914, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:28.608Z", "contentLength": 890914, "httpStatusCode": 200}	5a691058-5736-49d6-b4d6-ad121bf73f81	\N	{}
e992f575-10a9-4e2d-8de5-e706e031fa5b	campuses	uwest/5	\N	2025-01-26 21:17:29.096804+00	2025-01-26 21:17:29.096804+00	2025-01-26 21:17:29.096804+00	{"eTag": "\\"a2c80ec1c2a3a1c8725b789c40d28318\\"", "size": 177715, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:29.090Z", "contentLength": 177715, "httpStatusCode": 200}	44d684fd-59a3-4356-9e10-a42e4078d7f0	\N	{}
5895271c-8286-4be5-b493-5e814135998c	campuses	uwest/6	\N	2025-01-26 21:17:29.469029+00	2025-01-26 21:17:29.469029+00	2025-01-26 21:17:29.469029+00	{"eTag": "\\"92935f75d43e320f4d50ef708d9ac012\\"", "size": 51632, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:29.464Z", "contentLength": 51632, "httpStatusCode": 200}	6ec69793-4c40-4f66-ab26-5d88493ba0f7	\N	{}
17f28ffd-fecd-4f7f-b434-c5064829715b	campuses	uwest/7	\N	2025-01-26 21:17:29.964642+00	2025-01-26 21:17:29.964642+00	2025-01-26 21:17:29.964642+00	{"eTag": "\\"7c33cf27e0e4b13375f4badd6ee8bf81\\"", "size": 298767, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:29.958Z", "contentLength": 298767, "httpStatusCode": 200}	f83b014c-670f-4fab-8480-5dd10a82a719	\N	{}
0ff24373-1d17-45eb-9251-a006f972cd0e	campuses	wesleyan/1	\N	2025-01-26 21:18:38.704682+00	2025-01-26 21:18:38.704682+00	2025-01-26 21:18:38.704682+00	{"eTag": "\\"28b8083dd2cf26d382c95ecac9a1a78d\\"", "size": 143163, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:38.699Z", "contentLength": 143163, "httpStatusCode": 200}	d61ddf59-d04a-42f1-b7d6-153eafeffc02	\N	{}
f96a3a8c-84cb-495e-ba9b-8898922934b9	campuses	uwest/8	\N	2025-01-26 21:17:30.381269+00	2025-01-26 21:17:30.381269+00	2025-01-26 21:17:30.381269+00	{"eTag": "\\"bf8a0c4e903338d07719c2a7fe82a08c\\"", "size": 54013, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:30.373Z", "contentLength": 54013, "httpStatusCode": 200}	6cbbb348-2c53-4bdf-87cc-dd8231dcb447	\N	{}
484a286a-1733-4b7f-980a-aba5a8b5e8ca	campuses	uwest/9	\N	2025-01-26 21:17:30.808258+00	2025-01-26 21:17:30.808258+00	2025-01-26 21:17:30.808258+00	{"eTag": "\\"ea5cd37e3f3e97741cf62768def92421\\"", "size": 126956, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:30.797Z", "contentLength": 126956, "httpStatusCode": 200}	9fb6a448-2e19-4a41-8432-f12da43520d6	\N	{}
9575db7b-bea9-4214-92a2-795f14ae90de	campuses	wesleyan/2	\N	2025-01-26 21:18:39.232284+00	2025-01-26 21:18:39.232284+00	2025-01-26 21:18:39.232284+00	{"eTag": "\\"6a23951ea4428d31885796dacb245155\\"", "size": 355123, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:39.226Z", "contentLength": 355123, "httpStatusCode": 200}	415820e4-79d6-4b46-a8ed-8012f63586fd	\N	{}
58b7f5a2-9c67-4249-8855-34370f913450	campuses	uwosh/0	\N	2025-01-26 21:17:31.604428+00	2025-01-26 21:17:31.604428+00	2025-01-26 21:17:31.604428+00	{"eTag": "\\"fb48247dca7745adf19f61ab31dd2ecb\\"", "size": 5145, "mimetype": "image/svg+xml", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:31.600Z", "contentLength": 5145, "httpStatusCode": 200}	6482b792-4b6d-4cad-8000-77dd8e49bc40	\N	{}
0edd9243-44ff-4062-9516-4d67dfab22da	campuses	uwosh/1	\N	2025-01-26 21:17:32.316049+00	2025-01-26 21:17:32.316049+00	2025-01-26 21:17:32.316049+00	{"eTag": "\\"8900924fc472a5d691d8d8f9a14dee8d\\"", "size": 527571, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:32.303Z", "contentLength": 527571, "httpStatusCode": 200}	e92f5eba-2141-471c-bee3-7528877c0708	\N	{}
b0ac371e-5fc9-4d31-8508-dac791709f05	campuses	wesleyan/3	\N	2025-01-26 21:18:39.704702+00	2025-01-26 21:18:39.704702+00	2025-01-26 21:18:39.704702+00	{"eTag": "\\"6058e7c7ee0a1a34482b72becdb326f3\\"", "size": 182422, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:39.696Z", "contentLength": 182422, "httpStatusCode": 200}	f2be738d-5fdf-4faa-837b-0c57d6dcdd40	\N	{}
06854ee4-3c39-4afb-a736-f6aeb1a818b9	campuses	uwosh/2	\N	2025-01-26 21:17:33.077934+00	2025-01-26 21:17:33.077934+00	2025-01-26 21:17:33.077934+00	{"eTag": "\\"99346441005bade76ae5c898f1d91bc0\\"", "size": 1553276, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:33.055Z", "contentLength": 1553276, "httpStatusCode": 200}	a9cd6794-2e22-462f-9af5-3664ab06fbd3	\N	{}
8064ed69-9dec-43cb-a5ea-8f1bf49cb35c	campuses	uwosh/3	\N	2025-01-26 21:17:33.749644+00	2025-01-26 21:17:33.749644+00	2025-01-26 21:17:33.749644+00	{"eTag": "\\"f378842d91e1d323e3a94df57407d8f0\\"", "size": 594104, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:33.735Z", "contentLength": 594104, "httpStatusCode": 200}	7354b453-250e-4405-8def-3d9e89e58fc6	\N	{}
7385869c-aa49-41c8-9988-2a6fe249f3c3	campuses	wwu/5	\N	2025-01-26 21:18:53.032885+00	2025-01-26 21:18:53.032885+00	2025-01-26 21:18:53.032885+00	{"eTag": "\\"3a2f3b94989a76b5bea7cf531fbeb397\\"", "size": 166456, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:53.028Z", "contentLength": 166456, "httpStatusCode": 200}	89c61e3c-3d0e-41fe-80ff-136d1852f3be	\N	{}
b86c4d1c-48bb-4e61-9090-e839916c39a7	campuses	uwosh/4	\N	2025-01-26 21:17:34.327728+00	2025-01-26 21:17:34.327728+00	2025-01-26 21:17:34.327728+00	{"eTag": "\\"5761c8be0ef65244c8afa98cba53bdf5\\"", "size": 160451, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:34.319Z", "contentLength": 160451, "httpStatusCode": 200}	48b8045f-c407-4c97-984d-895011520217	\N	{}
1385d311-ccd4-4536-b9f4-698d89ed6e5c	campuses	uwosh/5	\N	2025-01-26 21:17:34.767362+00	2025-01-26 21:17:34.767362+00	2025-01-26 21:17:34.767362+00	{"eTag": "\\"2554c208748b0009c7ef67fc70227b36\\"", "size": 53414, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:34.760Z", "contentLength": 53414, "httpStatusCode": 200}	afb43338-cda3-4ee4-9a44-6ab0bb6c1a61	\N	{}
f2651a84-c570-45f3-a4e5-9cf09459dcf7	campuses	uwosh/6	\N	2025-01-26 21:17:35.323126+00	2025-01-26 21:17:35.323126+00	2025-01-26 21:17:35.323126+00	{"eTag": "\\"e63d79d44956ba7ac31c0d3dc219001c\\"", "size": 171530, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:35.317Z", "contentLength": 171530, "httpStatusCode": 200}	a9d0151c-7853-4aee-95f5-a9be7bfd1ca4	\N	{}
98a514f6-77e0-41b8-8726-07f522f3cf2c	campuses	uwosh/8	\N	2025-01-26 21:17:35.894442+00	2025-01-26 21:17:35.894442+00	2025-01-26 21:17:35.894442+00	{"eTag": "\\"8c493f6ab5b8aa1df73d32df1df80041\\"", "size": 55888, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:35.892Z", "contentLength": 55888, "httpStatusCode": 200}	d42b71d6-fcea-471d-8a91-b604098b6a37	\N	{}
51bbe8de-409d-41bb-8788-3a69a18f2f33	campuses	uwosh/9	\N	2025-01-26 21:17:36.425038+00	2025-01-26 21:17:36.425038+00	2025-01-26 21:17:36.425038+00	{"eTag": "\\"de6751f4821f7de90c0f3bd8cf92852d\\"", "size": 114874, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:36.420Z", "contentLength": 114874, "httpStatusCode": 200}	c807c210-1c27-4b6c-9ee8-e4c02e03a6c1	\N	{}
f6dd027f-4635-45f3-b4bb-d155269217ff	campuses	uwstout/0	\N	2025-01-26 21:17:37.215918+00	2025-01-26 21:17:37.215918+00	2025-01-26 21:17:37.215918+00	{"eTag": "\\"3e0a6afbd54ade839c9fe1eda80a91b7\\"", "size": 931182, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:37.200Z", "contentLength": 931182, "httpStatusCode": 200}	d340162c-4c0f-41c9-a8f6-06db5aa11552	\N	{}
970df287-df2e-46b5-9dcb-0264a0d502e4	campuses	uwstout/1	\N	2025-01-26 21:17:37.765243+00	2025-01-26 21:17:37.765243+00	2025-01-26 21:17:37.765243+00	{"eTag": "\\"3be064738d7ad2f3c15228bbce6b4b1b\\"", "size": 1051134, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:37.755Z", "contentLength": 1051134, "httpStatusCode": 200}	ede9c55a-de92-472c-bb7d-a0c33283f4ce	\N	{}
def85d69-2a39-4700-bb46-33173a6e1f93	campuses	uwstout/2	\N	2025-01-26 21:17:38.309549+00	2025-01-26 21:17:38.309549+00	2025-01-26 21:17:38.309549+00	{"eTag": "\\"fdc3f8f80d476e6d7105bec627db3265\\"", "size": 107508, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:38.304Z", "contentLength": 107508, "httpStatusCode": 200}	533003e5-8f11-4b66-a688-4fed0554d531	\N	{}
f19fb07d-c324-4e6d-b028-08b168a0d95c	campuses	wesleyan/4	\N	2025-01-26 21:18:40.276848+00	2025-01-26 21:18:40.276848+00	2025-01-26 21:18:40.276848+00	{"eTag": "\\"627f2ef41ef7f1277bd025f752b2d24d\\"", "size": 191425, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:40.269Z", "contentLength": 191425, "httpStatusCode": 200}	6443af6d-0a70-4d84-a9dc-4d56d4e09eba	\N	{}
a0a0cbf0-546c-4cc9-9738-108e1f8caeac	campuses	uwstout/3	\N	2025-01-26 21:17:38.666254+00	2025-01-26 21:17:38.666254+00	2025-01-26 21:17:38.666254+00	{"eTag": "\\"ea0bf88108ac3107a64d90833dfc6ff4\\"", "size": 105175, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:38.662Z", "contentLength": 105175, "httpStatusCode": 200}	270a81eb-9599-42a4-8fbd-0a815e8ca139	\N	{}
484540d5-e18a-4249-8ee1-3cd6929654e7	campuses	uwstout/4	\N	2025-01-26 21:17:39.400144+00	2025-01-26 21:17:39.400144+00	2025-01-26 21:17:39.400144+00	{"eTag": "\\"f4111b4d773ab66f508961d37272213e\\"", "size": 4193173, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:39.372Z", "contentLength": 4193173, "httpStatusCode": 200}	cb0ab542-e80f-4f39-a599-6a022c335715	\N	{}
e19b4b80-2776-4cc4-ab18-189a1c4ad189	campuses	wesleyan/5	\N	2025-01-26 21:18:41.037258+00	2025-01-26 21:18:41.037258+00	2025-01-26 21:18:41.037258+00	{"eTag": "\\"ef8817c7408aea3c421cbecd32a29622\\"", "size": 502606, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:41.026Z", "contentLength": 502606, "httpStatusCode": 200}	b3c94811-e22f-4f98-a5bd-7aa8edcc6d2a	\N	{}
35341618-1f9a-48cd-a739-20b36623192c	campuses	uwstout/5	\N	2025-01-26 21:17:39.99455+00	2025-01-26 21:17:39.99455+00	2025-01-26 21:17:39.99455+00	{"eTag": "\\"a6a8cfe40e28af96425ce0ee53d3ddb6\\"", "size": 63041, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:39.988Z", "contentLength": 63041, "httpStatusCode": 200}	1ae4b6e4-b386-40fb-8ebe-cc3d35af0899	\N	{}
6d2edff5-9722-462d-abb3-023fb9a504d2	campuses	uwstout/6	\N	2025-01-26 21:17:40.454837+00	2025-01-26 21:17:40.454837+00	2025-01-26 21:17:40.454837+00	{"eTag": "\\"5cfc70332f65e6b3f00fc45e3fa4c261\\"", "size": 402858, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:40.447Z", "contentLength": 402858, "httpStatusCode": 200}	290910f0-bdec-4d4a-b4ec-99cf125250fa	\N	{}
1509c81e-cac7-411a-927b-aa74b344029b	campuses	wesleyan/6	\N	2025-01-26 21:18:41.544617+00	2025-01-26 21:18:41.544617+00	2025-01-26 21:18:41.544617+00	{"eTag": "\\"8cd80c538870a7808071ff3f06a5ddc2\\"", "size": 315115, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:41.538Z", "contentLength": 315115, "httpStatusCode": 200}	7b5f6b70-dca0-44d4-bad1-d3b21aeebd4a	\N	{}
5ed579f7-7600-449d-86d1-0b0365f894fd	campuses	uwstout/7	\N	2025-01-26 21:17:40.788372+00	2025-01-26 21:17:40.788372+00	2025-01-26 21:17:40.788372+00	{"eTag": "\\"2f1f4274f852e8e1bed5d91777187e5d\\"", "size": 70769, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:40.784Z", "contentLength": 70769, "httpStatusCode": 200}	ae8ca4b4-d6e6-432e-9c6b-495774a46bb0	\N	{}
1fac0523-fcfe-448e-a4c2-816f116a4452	campuses	uwstout/8	\N	2025-01-26 21:17:41.446317+00	2025-01-26 21:17:41.446317+00	2025-01-26 21:17:41.446317+00	{"eTag": "\\"d1bfa7b97224390cf103b42e30baac96\\"", "size": 1326440, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:41.411Z", "contentLength": 1326440, "httpStatusCode": 200}	d9e6876f-c24b-4dc5-89c3-36991afb86ab	\N	{}
f3ae4cd3-cbc9-4075-8dc6-03289d0bb6ff	campuses	wesleyan/7	\N	2025-01-26 21:18:42.239329+00	2025-01-26 21:18:42.239329+00	2025-01-26 21:18:42.239329+00	{"eTag": "\\"36eee5aef4e6e23d2932f8989dc450e1\\"", "size": 142690, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:42.228Z", "contentLength": 142690, "httpStatusCode": 200}	b98ef8a1-7331-4ea5-b6c9-0480f045e3da	\N	{}
25a9d0aa-0b1f-4860-be30-43b85017f7af	campuses	uwstout/9	\N	2025-01-26 21:17:42.199134+00	2025-01-26 21:17:42.199134+00	2025-01-26 21:17:42.199134+00	{"eTag": "\\"bbee7750d4494e1a0c36ecf6df6f0010\\"", "size": 1314020, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:42.173Z", "contentLength": 1314020, "httpStatusCode": 200}	68886f69-4e90-49f6-ad53-78ab1f34fb01	\N	{}
aac5dc21-2a41-40cf-9387-6d52d7723671	campuses	uww/0	\N	2025-01-26 21:17:42.831328+00	2025-01-26 21:17:42.831328+00	2025-01-26 21:17:42.831328+00	{"eTag": "\\"ca2a391cad3cff9ea4c4f1178a832350\\"", "size": 154516, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:42.824Z", "contentLength": 154516, "httpStatusCode": 200}	aec914a0-a7ca-490c-9a0a-00113d03ad1b	\N	{}
8a02e92d-efe4-4b25-a360-ffb10faaed7e	campuses	wesleyan/8	\N	2025-01-26 21:18:43.077476+00	2025-01-26 21:18:43.077476+00	2025-01-26 21:18:43.077476+00	{"eTag": "\\"d12af8d6b1c958b6e4597fe9497ef6c7\\"", "size": 2165025, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:43.047Z", "contentLength": 2165025, "httpStatusCode": 200}	256b776a-7dbf-4d5f-908e-c4026e057c29	\N	{}
1251ffc1-1a12-4302-8e21-bec6a4f6fae1	campuses	uww/1	\N	2025-01-26 21:17:43.331255+00	2025-01-26 21:17:43.331255+00	2025-01-26 21:17:43.331255+00	{"eTag": "\\"23f21a1b4cd91124c39a401e312babef\\"", "size": 177742, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:43.316Z", "contentLength": 177742, "httpStatusCode": 200}	ef11ef6f-e639-4989-9ef6-a3c607ca0b8f	\N	{}
7a15e64b-6fd7-4388-a5a7-b338cf5244bd	campuses	uww/2	\N	2025-01-26 21:17:44.489711+00	2025-01-26 21:17:44.489711+00	2025-01-26 21:17:44.489711+00	{"eTag": "\\"d4acc37ab48807d163f0a938089b510a\\"", "size": 2228677, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:44.436Z", "contentLength": 2228677, "httpStatusCode": 200}	94aea7b1-3611-4212-b3cc-3a61f2c3e801	\N	{}
34e9d07d-aa21-4abf-94c6-ae2c485b4151	campuses	uww/3	\N	2025-01-26 21:17:45.238282+00	2025-01-26 21:17:45.238282+00	2025-01-26 21:17:45.238282+00	{"eTag": "\\"1aa8063b7ff7c0150dd05350b74a4736\\"", "size": 371746, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:17:45.222Z", "contentLength": 371746, "httpStatusCode": 200}	3ff289a3-f213-4b84-8700-3fffe65344de	\N	{}
fec5bc2d-c7fa-454f-90fa-788c3e1043a6	campuses	wesleyan/9	\N	2025-01-26 21:18:43.74449+00	2025-01-26 21:18:43.74449+00	2025-01-26 21:18:43.74449+00	{"eTag": "\\"427347297127713bf82de1c1d113b2f4\\"", "size": 1295003, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:43.722Z", "contentLength": 1295003, "httpStatusCode": 200}	f6e376c0-f06e-4c8f-9dab-fdc7c8b05edf	\N	{}
e7587b10-c160-418c-9cf5-5187c69116a2	campuses	wku/0	\N	2025-01-26 21:18:44.407636+00	2025-01-26 21:18:44.407636+00	2025-01-26 21:18:44.407636+00	{"eTag": "\\"31aa188be5210630d37078ccc2213684\\"", "size": 189338, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:44.399Z", "contentLength": 189338, "httpStatusCode": 200}	8d7aac49-e2ae-471f-8d60-36130e9531ef	\N	{}
b96b1937-9311-440f-9dcd-2382346622f8	campuses	wku/1	\N	2025-01-26 21:18:45.017085+00	2025-01-26 21:18:45.017085+00	2025-01-26 21:18:45.017085+00	{"eTag": "\\"436e671ed06e85dc91f0030a9da39502\\"", "size": 1118243, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:44.978Z", "contentLength": 1118243, "httpStatusCode": 200}	877382b4-8970-4d71-802a-dd556431d3f3	\N	{}
08c6a639-6502-4af4-a6f5-e0876f103ef1	campuses	wku/2	\N	2025-01-26 21:18:45.409052+00	2025-01-26 21:18:45.409052+00	2025-01-26 21:18:45.409052+00	{"eTag": "\\"7962f838704008542ed49c58c2a21789\\"", "size": 83948, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:45.406Z", "contentLength": 83948, "httpStatusCode": 200}	14cbdd98-b036-4cdf-bd89-c3dd2716cec9	\N	{}
2669f7d5-3961-4dba-be21-bc7ddfb4215e	campuses	wku/3	\N	2025-01-26 21:18:45.896753+00	2025-01-26 21:18:45.896753+00	2025-01-26 21:18:45.896753+00	{"eTag": "\\"6f5f9a4704851d84707323987eb4e6ec\\"", "size": 572546, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:45.891Z", "contentLength": 572546, "httpStatusCode": 200}	7ca168ac-03eb-4fcd-9ca5-36c8a25cb159	\N	{}
34c521b1-a0ce-4af8-a88e-0b7b160c499e	campuses	wku/4	\N	2025-01-26 21:18:46.413037+00	2025-01-26 21:18:46.413037+00	2025-01-26 21:18:46.413037+00	{"eTag": "\\"a2f3a96c35ad920f403e68be99ce7a5a\\"", "size": 471178, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:46.401Z", "contentLength": 471178, "httpStatusCode": 200}	6665b847-f0e8-430f-af97-fbe445fc2f01	\N	{}
76432a18-887c-4db9-be1d-0def5ea5ec00	campuses	wku/5	\N	2025-01-26 21:18:46.950344+00	2025-01-26 21:18:46.950344+00	2025-01-26 21:18:46.950344+00	{"eTag": "\\"2917eb7ce5ab0439eb28446db0f7ac3c\\"", "size": 833793, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:46.944Z", "contentLength": 833793, "httpStatusCode": 200}	7c2e250d-50b5-4e8f-ad2f-b6283e5e91ea	\N	{}
a0598aca-b3f6-4492-bd6e-6224631809c1	campuses	wku/6	\N	2025-01-26 21:18:47.58023+00	2025-01-26 21:18:47.58023+00	2025-01-26 21:18:47.58023+00	{"eTag": "\\"72bbe41926ac1236fbf2448444777e35\\"", "size": 1563071, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:47.552Z", "contentLength": 1563071, "httpStatusCode": 200}	b501424f-4806-4bde-94eb-c6cf4caef8a8	\N	{}
221aaf73-1517-41ae-b963-cc192d4302eb	campuses	wku/7	\N	2025-01-26 21:18:48.182115+00	2025-01-26 21:18:48.182115+00	2025-01-26 21:18:48.182115+00	{"eTag": "\\"9a8d7011ccb78bc8737618f495c25b67\\"", "size": 1274357, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:48.144Z", "contentLength": 1274357, "httpStatusCode": 200}	db5bccc5-d5c6-4607-8256-23b9611ca624	\N	{}
79ef16a2-be26-45a6-93ab-b2c39628b73a	campuses	wku/8	\N	2025-01-26 21:18:48.651844+00	2025-01-26 21:18:48.651844+00	2025-01-26 21:18:48.651844+00	{"eTag": "\\"4b4f6a7d53aad3e5d3864431b7f623c9\\"", "size": 280493, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:48.647Z", "contentLength": 280493, "httpStatusCode": 200}	50b2c5a6-0982-4874-955d-c218ea56e580	\N	{}
0376352e-5ecc-4c96-bc06-1c05506e239d	campuses	wku/9	\N	2025-01-26 21:18:49.299959+00	2025-01-26 21:18:49.299959+00	2025-01-26 21:18:49.299959+00	{"eTag": "\\"743dd8360f711607da1e85bf767be1af\\"", "size": 2335690, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:49.272Z", "contentLength": 2335690, "httpStatusCode": 200}	83522a52-2e9e-475b-b5c1-f41f05732ec5	\N	{}
12165c6d-59fe-4208-8f5f-8ad2e3a1b799	campuses	wwu/0	\N	2025-01-26 21:18:49.677299+00	2025-01-26 21:18:49.677299+00	2025-01-26 21:18:49.677299+00	{"eTag": "\\"cc91e7240201f5dda0a1cdea5f613c6b\\"", "size": 22047, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:49.674Z", "contentLength": 22047, "httpStatusCode": 200}	b4a3316e-e3b6-4b32-b379-8f45acb8628a	\N	{}
da4eb468-288d-4856-9873-6c32c8554074	campuses	wwu/1	\N	2025-01-26 21:18:50.498108+00	2025-01-26 21:18:50.498108+00	2025-01-26 21:18:50.498108+00	{"eTag": "\\"ded616be5a2eef616f0ddfaec8ec041d\\"", "size": 41304, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:50.489Z", "contentLength": 41304, "httpStatusCode": 200}	f734bf6e-86bc-40c4-97a2-8ffd663999f2	\N	{}
abb63e94-d442-45db-b5d1-a1a41688e1b5	campuses	wwu/2	\N	2025-01-26 21:18:51.019318+00	2025-01-26 21:18:51.019318+00	2025-01-26 21:18:51.019318+00	{"eTag": "\\"b0ed6d573dade1f1247715cd49b9ffd4\\"", "size": 100762, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:51.016Z", "contentLength": 100762, "httpStatusCode": 200}	f77ce5f8-7f6f-49e6-b480-b04058f99042	\N	{}
763b6864-e183-4b1e-b6af-5aabc34c14e8	campuses	wwu/3	\N	2025-01-26 21:18:51.596723+00	2025-01-26 21:18:51.596723+00	2025-01-26 21:18:51.596723+00	{"eTag": "\\"3c6a284c23b04f03cc48fd1443f39d7c\\"", "size": 304908, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:51.591Z", "contentLength": 304908, "httpStatusCode": 200}	5f0dec34-382f-4ab9-8471-19173fd3644f	\N	{}
ec212e8a-4b26-4f56-aee8-8538bef6079f	campuses	wwu/6	\N	2025-01-26 21:18:54.098395+00	2025-01-26 21:18:54.098395+00	2025-01-26 21:18:54.098395+00	{"eTag": "\\"fe697d8dc93b623d2ecc9754fe01073a\\"", "size": 167378, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:54.088Z", "contentLength": 167378, "httpStatusCode": 200}	6f43dee1-c231-4446-a074-1fce65f5fb97	\N	{}
ade94d6b-0dfe-4ce8-929e-df3f1e4266a7	campuses	wwu/7	\N	2025-01-26 21:18:54.856566+00	2025-01-26 21:18:54.856566+00	2025-01-26 21:18:54.856566+00	{"eTag": "\\"5aeb6a28bbb70d07fc9c1da70b497dfd\\"", "size": 11013, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:54.853Z", "contentLength": 11013, "httpStatusCode": 200}	113bd13d-600b-4451-9c40-38e78db0df10	\N	{}
123777dd-c5b0-4c3b-b4ea-5cb17b831916	campuses	wwu/8	\N	2025-01-26 21:18:55.975972+00	2025-01-26 21:18:55.975972+00	2025-01-26 21:18:55.975972+00	{"eTag": "\\"e45734dda67a770600c174f4ed2b9297\\"", "size": 10024470, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:55.883Z", "contentLength": 10024470, "httpStatusCode": 200}	c36041ae-687b-4082-86ad-249e4aee1718	\N	{}
6d79a631-0d0e-440a-9ca6-6c960d30992b	campuses	wwu/9	\N	2025-01-26 21:18:56.848362+00	2025-01-26 21:18:56.848362+00	2025-01-26 21:18:56.848362+00	{"eTag": "\\"3ebb365d8bbe99ffc4cecac42d89c0f2\\"", "size": 245503, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:56.836Z", "contentLength": 245503, "httpStatusCode": 200}	8c196bc2-5c8a-4ffb-b08d-38572f9b6939	\N	{}
27c0613b-d0ed-42b7-bf24-42e3853faa1f	campuses	whittier/0	\N	2025-01-26 21:18:57.565121+00	2025-01-26 21:18:57.565121+00	2025-01-26 21:18:57.565121+00	{"eTag": "\\"4ca6b6888c0ad469f5ac99658122392b\\"", "size": 117752, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:57.558Z", "contentLength": 117752, "httpStatusCode": 200}	aa2b5d21-ef2a-46dc-8101-f9ed0aff3e49	\N	{}
24492ddc-7892-4d18-b85f-d480f668e11a	campuses	whittier/1	\N	2025-01-26 21:18:59.050299+00	2025-01-26 21:18:59.050299+00	2025-01-26 21:18:59.050299+00	{"eTag": "\\"5e5b36aebde1b37ecc89633d08529f54\\"", "size": 2929809, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:18:59.023Z", "contentLength": 2929809, "httpStatusCode": 200}	e34d5f79-b8b4-4091-896a-e1cd9cc9ebaf	\N	{}
fbc641c7-b45d-4097-9275-fa667321038f	campuses	whittier/2	\N	2025-01-26 21:19:00.099901+00	2025-01-26 21:19:00.099901+00	2025-01-26 21:19:00.099901+00	{"eTag": "\\"03c4ca301ecc05a0432309fdb537759a\\"", "size": 81361, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:19:00.093Z", "contentLength": 81361, "httpStatusCode": 200}	2b70bda5-36da-4d00-a182-57f758cb50c3	\N	{}
8b1c3769-9ac2-4388-9a67-6d114faac785	campuses	whittier/3	\N	2025-01-26 21:19:00.68649+00	2025-01-26 21:19:00.68649+00	2025-01-26 21:19:00.68649+00	{"eTag": "\\"c462c3f44d9afa1f5ab57b89f4b00f79\\"", "size": 44337, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:19:00.682Z", "contentLength": 44337, "httpStatusCode": 200}	97e48dee-35e4-4fdb-be7c-5b24d32e6cc2	\N	{}
3ced9411-b205-4f48-8b1c-15c31030a3ec	campuses	whittier/4	\N	2025-01-26 21:19:01.142842+00	2025-01-26 21:19:01.142842+00	2025-01-26 21:19:01.142842+00	{"eTag": "\\"06949f61fb0c5fd1c88ec4ea29096343\\"", "size": 313236, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:19:01.134Z", "contentLength": 313236, "httpStatusCode": 200}	8a7d3e40-c618-4531-85de-e390c63b99da	\N	{}
065449c3-f267-47da-92f4-b4173f145da8	campuses	whittier/5	\N	2025-01-26 21:19:01.507138+00	2025-01-26 21:19:01.507138+00	2025-01-26 21:19:01.507138+00	{"eTag": "\\"b8965edc92529e41d2b7bbb9f1b9a227\\"", "size": 118976, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:19:01.501Z", "contentLength": 118976, "httpStatusCode": 200}	4efe4406-6f49-4470-ac4f-d913a175c80b	\N	{}
ee2c5623-a1d7-4d25-8d22-a2d573a8f3d7	campuses	whittier/6	\N	2025-01-26 21:19:01.888825+00	2025-01-26 21:19:01.888825+00	2025-01-26 21:19:01.888825+00	{"eTag": "\\"d4666a0dd6e43e3a079f65b4ffea1c0c\\"", "size": 164687, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:19:01.883Z", "contentLength": 164687, "httpStatusCode": 200}	f71c2528-011d-4ec0-af1a-b354b422245c	\N	{}
95e49dbe-8c05-4c73-85b0-990ff34e8d87	campuses	whittier/7	\N	2025-01-26 21:19:02.252446+00	2025-01-26 21:19:02.252446+00	2025-01-26 21:19:02.252446+00	{"eTag": "\\"0daf5e1b81c3f63f555e0c0265f89870\\"", "size": 96141, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:19:02.232Z", "contentLength": 96141, "httpStatusCode": 200}	5e2f6903-1099-4e92-83fd-52bc4fb5c498	\N	{}
bf9558ed-00b6-49fa-93f6-59a350a259ab	campuses	whittier/8	\N	2025-01-26 21:19:02.858214+00	2025-01-26 21:19:02.858214+00	2025-01-26 21:19:02.858214+00	{"eTag": "\\"2cc0916d261b4e526a0ad7bef357c4cd\\"", "size": 53221, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:19:02.851Z", "contentLength": 53221, "httpStatusCode": 200}	cc86a01d-00f3-4474-9b14-d3e534f435c4	\N	{}
6bc2c109-6968-4524-a518-96b1839572a5	campuses	whittier/9	\N	2025-01-26 21:19:03.521593+00	2025-01-26 21:19:03.521593+00	2025-01-26 21:19:03.521593+00	{"eTag": "\\"96620e59012c4e9bf9c21dd6f0156ac7\\"", "size": 71517, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:19:03.513Z", "contentLength": 71517, "httpStatusCode": 200}	61d0b2b3-2a75-467d-a3a9-682785d229cb	\N	{}
67e63f92-aecb-4cfc-826f-5a2c225bfb81	campuses	williams/0	\N	2025-01-26 21:19:05.082001+00	2025-01-26 21:19:05.082001+00	2025-01-26 21:19:05.082001+00	{"eTag": "\\"7ca4c6d25a409b1484a54cbd10d21e0f\\"", "size": 198817, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:19:05.076Z", "contentLength": 198817, "httpStatusCode": 200}	7708d53f-5b7f-4ab4-be24-3fe161dcf788	\N	{}
be6a0f63-94ea-444c-b39a-8c7a83b68473	campuses	williams/1	\N	2025-01-26 21:19:06.180625+00	2025-01-26 21:19:06.180625+00	2025-01-26 21:19:06.180625+00	{"eTag": "\\"bba49112ea199309a022f03888cd4e90\\"", "size": 2168828, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:19:06.147Z", "contentLength": 2168828, "httpStatusCode": 200}	50c2fdca-3aa0-4954-9155-08e1d721d8be	\N	{}
37eb67f1-dfd9-41b3-b5e7-b6be868549e8	campuses	williams/2	\N	2025-01-26 21:19:07.433866+00	2025-01-26 21:19:07.433866+00	2025-01-26 21:19:07.433866+00	{"eTag": "\\"cd383ef51744ae15a95051a9febf3c25\\"", "size": 2089190, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:19:07.416Z", "contentLength": 2089190, "httpStatusCode": 200}	29b50ba7-1bbe-4f57-bf28-20989bbae9da	\N	{}
61b0af18-64df-47ee-be54-c8beddfe4599	campuses	williams/3	\N	2025-01-26 21:19:08.126472+00	2025-01-26 21:19:08.126472+00	2025-01-26 21:19:08.126472+00	{"eTag": "\\"7d7e0e9f66d439d289283fd00771b045\\"", "size": 133587, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:19:08.120Z", "contentLength": 133587, "httpStatusCode": 200}	2406e15a-2cee-4e02-b8e2-f236b6570735	\N	{}
57a7dc5d-a995-49da-9bc5-07a68ebdd52f	campuses	williams/4	\N	2025-01-26 21:19:08.821355+00	2025-01-26 21:19:08.821355+00	2025-01-26 21:19:08.821355+00	{"eTag": "\\"1f1ad26f6d242e9df7e075c2e3b743e4\\"", "size": 110508, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:19:08.817Z", "contentLength": 110508, "httpStatusCode": 200}	135143db-00e8-4746-a6b7-b943389f4fdb	\N	{}
089562dc-6917-4f65-9d66-e860b212b213	campuses	williams/5	\N	2025-01-26 21:19:09.448589+00	2025-01-26 21:19:09.448589+00	2025-01-26 21:19:09.448589+00	{"eTag": "\\"2746967dc5378b7710557f247755ef33\\"", "size": 178433, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:19:09.441Z", "contentLength": 178433, "httpStatusCode": 200}	ff501b41-787f-4696-8512-8be01e89654b	\N	{}
ccc730a2-3fca-49f4-a7cb-575b4ab4b7f0	campuses	williams/6	\N	2025-01-26 21:19:10.035952+00	2025-01-26 21:19:10.035952+00	2025-01-26 21:19:10.035952+00	{"eTag": "\\"777569f2218a49c1b973ccc3b9925472\\"", "size": 265441, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:19:10.030Z", "contentLength": 265441, "httpStatusCode": 200}	69c04610-86dc-4191-ae96-5f535139befe	\N	{}
ba473839-eab7-4b06-8f70-efd4be398680	campuses	williams/7	\N	2025-01-26 21:19:10.858456+00	2025-01-26 21:19:10.858456+00	2025-01-26 21:19:10.858456+00	{"eTag": "\\"a40965ea49d0705b119816726f50c0b4\\"", "size": 639692, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:19:10.852Z", "contentLength": 639692, "httpStatusCode": 200}	0293713c-3680-43ca-b957-2a2e945c4f72	\N	{}
b92b88a3-3518-4ce1-a5de-e7b676bb99a4	campuses	williams/8	\N	2025-01-26 21:19:11.381469+00	2025-01-26 21:19:11.381469+00	2025-01-26 21:19:11.381469+00	{"eTag": "\\"723ce6d547cf69e89d8e6a3f09d6b4e9\\"", "size": 114422, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:19:11.376Z", "contentLength": 114422, "httpStatusCode": 200}	7ff4704c-f0e1-449a-a521-4288a9233bdc	\N	{}
76b0a3fd-3bc3-45cd-8a18-46ef2f5c4734	campuses	wingate/0	\N	2025-01-26 21:19:12.417967+00	2025-01-26 21:19:12.417967+00	2025-01-26 21:19:12.417967+00	{"eTag": "\\"07470075ba86a56d9317d163014e10da\\"", "size": 1247334, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:19:12.406Z", "contentLength": 1247334, "httpStatusCode": 200}	eef16d28-7253-4f24-81ac-bcbd7d87609e	\N	{}
83ec5b96-2c22-4199-a071-33112211bc67	campuses	wingate/1	\N	2025-01-26 21:19:13.274447+00	2025-01-26 21:19:13.274447+00	2025-01-26 21:19:13.274447+00	{"eTag": "\\"1e5df25a924e4cc715a1451ec08f28de\\"", "size": 1141673, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:19:13.257Z", "contentLength": 1141673, "httpStatusCode": 200}	624e38fd-0c01-414c-bb27-cb8d70fbc73e	\N	{}
d8044bcc-4db4-450e-bfd8-d32da20b0061	campuses	wingate/2	\N	2025-01-26 21:19:13.57593+00	2025-01-26 21:19:13.57593+00	2025-01-26 21:19:13.57593+00	{"eTag": "\\"d400685582303260627a3d61fe71fe53\\"", "size": 388, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:19:13.573Z", "contentLength": 388, "httpStatusCode": 200}	4cf3cf8e-0b74-4870-a690-1349584de93f	\N	{}
e18bbf6e-e289-4100-851c-aee43a637821	campuses	wingate/3	\N	2025-01-26 21:19:13.821494+00	2025-01-26 21:19:13.821494+00	2025-01-26 21:19:13.821494+00	{"eTag": "\\"3545ae21dba071040098aa6d7e5e20cd\\"", "size": 386, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:19:13.818Z", "contentLength": 386, "httpStatusCode": 200}	92176a7c-5172-47a9-b943-d474083d2edf	\N	{}
bb0ad677-0ee4-4591-818f-78477128b365	campuses	wingate/4	\N	2025-01-26 21:19:14.310999+00	2025-01-26 21:19:14.310999+00	2025-01-26 21:19:14.310999+00	{"eTag": "\\"8fbcdf7cdbcaa92367c53616bd4b2ec2\\"", "size": 28511, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:19:14.302Z", "contentLength": 28511, "httpStatusCode": 200}	4deec8dd-7af1-4315-b4e6-3d73f02069ac	\N	{}
a26c31f5-8945-4806-aa03-92982caa6190	campuses	wingate/5	\N	2025-01-26 21:19:15.365758+00	2025-01-26 21:19:15.365758+00	2025-01-26 21:19:15.365758+00	{"eTag": "\\"9ede94ee69eedfef555987498c2f6ae6\\"", "size": 1899083, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:19:15.349Z", "contentLength": 1899083, "httpStatusCode": 200}	1c09e03a-ca34-40f8-bd56-a20c5ffa3f61	\N	{}
89713c79-cf28-4f05-a936-350019287c82	campuses	wingate/6	\N	2025-01-26 21:19:15.615314+00	2025-01-26 21:19:15.615314+00	2025-01-26 21:19:15.615314+00	{"eTag": "\\"dcc3e5cd223c9523b0de5fe1133eacae\\"", "size": 388, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:19:15.612Z", "contentLength": 388, "httpStatusCode": 200}	216bd8a5-6875-4687-ac15-c398ef324768	\N	{}
c28c9b02-9878-4158-ad04-0807b9af769b	campuses	wingate/7	\N	2025-01-26 21:19:15.864495+00	2025-01-26 21:19:15.864495+00	2025-01-26 21:19:15.864495+00	{"eTag": "\\"e18d457485be8eff7c18fdb1c5df05c2\\"", "size": 388, "mimetype": "text/html", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:19:15.862Z", "contentLength": 388, "httpStatusCode": 200}	d442670b-68a1-4b91-afff-a7dc4e79384f	\N	{}
4666f293-20db-474c-84f2-03435654e929	campuses	wingate/8	\N	2025-01-26 21:19:16.520295+00	2025-01-26 21:19:16.520295+00	2025-01-26 21:19:16.520295+00	{"eTag": "\\"a0a579f8b258bed2fbb65a3182f85201\\"", "size": 802454, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:19:16.503Z", "contentLength": 802454, "httpStatusCode": 200}	6c0aab50-d9f3-4360-8779-050148832f4f	\N	{}
a128eb22-17c8-48b1-aa66-284a87f1f8b6	campuses	wingate/9	\N	2025-01-26 21:19:17.211762+00	2025-01-26 21:19:17.211762+00	2025-01-26 21:19:17.211762+00	{"eTag": "\\"4223300f079874a897aa64e3f1b68473\\"", "size": 1301337, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-26T21:19:17.192Z", "contentLength": 1301337, "httpStatusCode": 200}	e17c4858-a2c9-477c-a572-1d3f8ee6ee97	\N	{}
822db4c8-08c9-4ebc-aafd-8b55c7c7d177	campuses	generic1.webp	\N	2025-02-09 07:39:41.690075+00	2025-02-09 07:39:52.707969+00	2025-02-09 07:39:41.690075+00	{"eTag": "\\"a9d2f952e277efc1d42c08e0d4e95002\\"", "size": 245754, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2025-02-09T07:39:52.699Z", "contentLength": 245754, "httpStatusCode": 200}	849a8316-5b22-41c8-8509-35a53383a1d7	\N	\N
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
