--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2 (Debian 12.2-2.pgdg100+1)
-- Dumped by pg_dump version 12.2

-- Started on 2020-04-09 12:49:12

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
-- TOC entry 202 (class 1259 OID 16384)
-- Name: algorithm; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.algorithm (
    id bigint NOT NULL,
    content jsonb,
    name character varying(255)
);


ALTER TABLE public.algorithm OWNER TO postgres;

--
-- TOC entry 2948 (class 0 OID 16384)
-- Dependencies: 202
-- Data for Name: algorithm; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.algorithm (id, content, name) VALUES (3, '{"test": "testvalue"}', 'TEST2');


--
-- TOC entry 2821 (class 2606 OID 16391)
-- Name: algorithm algorithm_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.algorithm
    ADD CONSTRAINT algorithm_pkey PRIMARY KEY (id);


-- Completed on 2020-04-09 12:49:12

--
-- PostgreSQL database dump complete
--

