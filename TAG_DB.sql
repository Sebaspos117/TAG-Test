--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

-- Started on 2023-09-03 20:02:09

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

DROP DATABASE myproject_db;
--
-- TOC entry 3313 (class 1262 OID 133853)
-- Name: myproject_db; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE myproject_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';


ALTER DATABASE myproject_db OWNER TO postgres;

\connect myproject_db

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 210 (class 1259 OID 133892)
-- Name: tb_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_users (
    user_id integer NOT NULL,
    name text,
    username text,
    password text
);


ALTER TABLE public.tb_users OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 133891)
-- Name: tb_users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_users_user_id_seq OWNER TO postgres;

--
-- TOC entry 3314 (class 0 OID 0)
-- Dependencies: 209
-- Name: tb_users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_users_user_id_seq OWNED BY public.tb_users.user_id;


--
-- TOC entry 3164 (class 2604 OID 133895)
-- Name: tb_users user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_users ALTER COLUMN user_id SET DEFAULT nextval('public.tb_users_user_id_seq'::regclass);


--
-- TOC entry 3307 (class 0 OID 133892)
-- Dependencies: 210
-- Data for Name: tb_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tb_users (user_id, name, username, password) VALUES (1, 'Sebastian Porras', 'sporras', 'password123');
INSERT INTO public.tb_users (user_id, name, username, password) VALUES (2, 'Jane Steve', 'jsteve', 'securepwd');
INSERT INTO public.tb_users (user_id, name, username, password) VALUES (3, 'Peter Parker', 'pparker', '123456');
INSERT INTO public.tb_users (user_id, name, username, password) VALUES (4, 'Bob Smith', 'bsmith', 'bobs_password');
INSERT INTO public.tb_users (user_id, name, username, password) VALUES (5, 'Jose Picado', 'jpicado', 'jis123');
INSERT INTO public.tb_users (user_id, name, username, password) VALUES (6, 'Jermito F', 'jer12', 'jermito11');


--
-- TOC entry 3315 (class 0 OID 0)
-- Dependencies: 209
-- Name: tb_users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_users_user_id_seq', 6, true);


--
-- TOC entry 3166 (class 2606 OID 133899)
-- Name: tb_users tb_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_users
    ADD CONSTRAINT tb_users_pkey PRIMARY KEY (user_id);


-- Completed on 2023-09-03 20:02:09

--
-- PostgreSQL database dump complete
--

