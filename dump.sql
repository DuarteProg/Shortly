--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Ubuntu 14.5-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.5 (Ubuntu 14.5-0ubuntu0.22.04.1)

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
-- Name: ranking; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ranking (
    id integer NOT NULL,
    url text NOT NULL,
    "visiURL" integer DEFAULT 0 NOT NULL,
    "shorUrl" text NOT NULL,
    "userId" integer NOT NULL,
    "createdAt" timestamp without time zone DEFAULT now()
);


--
-- Name: ranking_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ranking_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ranking_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ranking_id_seq OWNED BY public.ranking.id;


--
-- Name: sessions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sessions (
    id integer NOT NULL,
    token text NOT NULL,
    "userId" integer NOT NULL,
    "createdAt" timestamp without time zone DEFAULT now()
);


--
-- Name: sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    password text NOT NULL,
    "createdAt" timestamp without time zone DEFAULT now()
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: ranking id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ranking ALTER COLUMN id SET DEFAULT nextval('public.ranking_id_seq'::regclass);


--
-- Name: sessions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ranking; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.ranking VALUES (8, 'https://s2.glbimg.com/d4CWTPmpuQ9fuudK7Zlv4MD8dhQ=/0x0:1856x1080/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2019/z/g/IZkGgJREC83BODB6smIA/dragon-ball-z-kakarot-techtudo.jpghttps://s2.glbimg.com/d4CWTPmpuQ9fuudK7Zlv4MD8dhQ=/0x0:1856x1080/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2019/z/g/IZkGgJREC83BODB6smIA/dragon-ball-z-kakarot-techtudo.jpg', 3, 'nROX8SCu', 1, '2022-10-16 18:48:16.947138');
INSERT INTO public.ranking VALUES (9, 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fsm.ign.com%2Fign_br%2Ftv%2Fo%2Fone-piece-%2Fone-piece-2_1xby.jpg&imgrefurl=https%3A%2F%2Fbr.ign.com%2Fone-piece-2%2F96145%2Ffeature%2Fone-piece-quantos-episodios-tem-o-anime&tbnid=58jiYJIbsiEkkM&vet=12ahUKEwiivd_tmub6AhVZlZUCHd2UAWEQMygAegUIARDnAQ..i&docid=PGmo3zOL7J9KoM&w=1200&h=675&q=one%20piece&ved=2ahUKEwiivd_tmub6AhVZlZUCHd2UAWEQMygAegUIARDnAQ', 5, 'CTrRjhUz', 1, '2022-10-16 23:27:17.851902');
INSERT INTO public.ranking VALUES (10, 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fsm.ign.com%2Fign_br%2Ftv%2Fo%2Fone-piece-%2Fone-piece-2_1xby.jpg&imgrefurl=https%3A%2F%2Fbr.ign.com%2Fone-piece-2%2F96145%2Ffeature%2Fone-piece-quantos-episodios-tem-o-anime&tbnid=58jiYJIbsiEkkM&vet=12ahUKEwiivd_tmub6AhVZlZUCHd2UAWEQMygAegUIARDnAQ..i&docid=PGmo3zOL7J9KoM&w=1200&h=675&q=one%20piece&ved=2ahUKEwiivd_tmub6AhVZlZUCHd2UAWEQMygAegUIARDnAQ', 2, 'W0aHBYIK', 1, '2022-10-16 23:31:09.185922');
INSERT INTO public.ranking VALUES (11, '2wCEAAoHCBYVFRgVFRYZGBgZGRgYFRgYGBkZGRkYGBgZGhoYGBgcIS4lHB4sIRgYJjomKy8xNTU1GiQ7QDszPy40NTEBDAwMEA8QHhISHjQrJCU0NDQ1NDQ0NDQ2NDQ0NDQ0NDQ0NDQ0MTQ0PTQ0NDQ0NDQ0NDQ2NDQ0NjQ0NDQ0NDQ0NP', 0, 'MOAJ4_-m', 2, '2022-10-17 12:17:07.269244');


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.sessions VALUES (4, '6ca97cf2-7c3f-4481-adb2-27e21a17529d', 1, '2022-10-15 21:50:33.215186');
INSERT INTO public.sessions VALUES (5, '00d035ee-3189-4023-8d97-628b3d3a53a8', 2, '2022-10-17 12:14:26.282502');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.users VALUES (1, 'duarte', 'duarte@hotmail.com', '$2b$10$LurRDZex.tq/C6V/GnuAweke.F2R7tJvNrZ9ccWy78qNyHipySRHq', '2022-10-15 21:17:59.559219');
INSERT INTO public.users VALUES (2, 'lucas', 'lucas@hotmail.com', '$2b$10$48264oyTKeJEUEp.UsQg0emOLkRzmOxhVVbAx9m7fqR5KA.6DVvpu', '2022-10-17 11:56:07.020671');
INSERT INTO public.users VALUES (3, 'gabi', 'gabi@hotmail.com', '$2b$10$27MI864ck19c5QeA6AMfWO1GOktajHZUryNKWq1UHEcsyE03C8/gG', '2022-10-17 11:56:20.19987');
INSERT INTO public.users VALUES (4, 'maria', 'maria@hotmail.com', '$2b$10$Fmif3.twfEl5J12B2AZTVuVLhvxnUVK7UPyYy85C9U2b4Sr0l4XIK', '2022-10-17 11:56:28.525409');
INSERT INTO public.users VALUES (5, 'eliomar', 'eliomar@hotmail.com', '$2b$10$1fPc7pG8O7uIXOTubhkd..cMXf7inVtjtMVHGyZdmB43deM3o8NBG', '2022-10-17 11:56:34.843783');
INSERT INTO public.users VALUES (6, 'pedro', 'pedro@hotmail.com', '$2b$10$E71tT7zusLx3uL0V9Lbra./ZkkEINdBMOy7S/bK/.P13T0e/Of6VC', '2022-10-17 11:56:42.654641');
INSERT INTO public.users VALUES (7, 'dalto', 'dalto@hotmail.com', '$2b$10$.e5r7ol/XE1iurJgZmTuL.L9gtAZovD4hfgitivV36GaZY1/CrnUi', '2022-10-17 11:56:48.813188');
INSERT INTO public.users VALUES (8, 'daniel', 'daniel@hotmail.com', '$2b$10$sKI9sDoQaPwdu1NlGMewIegg/pZwJE50j894ETyhJaEFEdDapo/Pu', '2022-10-17 11:56:54.882287');
INSERT INTO public.users VALUES (9, 'ronildo', 'ronildo@hotmail.com', '$2b$10$2G3FHLn9eQlJj.Vrhb4lXeg4442ew6loyV/VsLLhbvler85n4ak7W', '2022-10-17 11:57:03.227751');
INSERT INTO public.users VALUES (10, 'genilsa', 'genilsa@hotmail.com', '$2b$10$0Yv02Whw9mNLJV606CLyEO2dmQk26xJTwPTLmRhlhii6wMhzFqsCe', '2022-10-17 11:57:10.32872');
INSERT INTO public.users VALUES (11, 'marcia', 'marcia@hotmail.com', '$2b$10$1RDAu7ieUodTU6E77HrWye7m4SN7nV77HTA3nbLSZlUK45xSSHVUm', '2022-10-17 11:57:16.01295');
INSERT INTO public.users VALUES (12, 'paçoca', 'paçoca@hotmail.com', '$2b$10$CX23.PcWXS6msI2W82J3Y.mTj73pWoQJJKeWNmFay.f8A4K3Fy79y', '2022-10-17 11:57:26.782035');
INSERT INTO public.users VALUES (13, 'antonio', 'antonio@hotmail.com', '$2b$10$N5vsgcp5CF4/wUZEJ6tE6Ob8Amk7ADzNgIKNx2gaRy6zl/czr.AJq', '2022-10-17 11:57:46.465842');
INSERT INTO public.users VALUES (14, 'thiago', 'thiago@hotmail.com', '$2b$10$E2VdMJQvyNRkjBVWjQiJkOQqMmR9J2LxlJemK6Aji.qy.AaaOt0Sm', '2022-10-17 11:58:24.939176');
INSERT INTO public.users VALUES (15, 'taiane', 'taiane@hotmail.com', '$2b$10$Gid92/Vx58zmhiIx1dXJYOUG93S9kKVgqEQ4NDlUjuH/2K7Fw3.Ji', '2022-10-17 11:58:31.431133');
INSERT INTO public.users VALUES (16, 'vitor', 'vitor@hotmail.com', '$2b$10$rxgIfKI05VDBz55x9m4DqOREX9DcurThvkYRvPMOkMBA3kkcd6k.e', '2022-10-17 11:58:39.966762');


--
-- Name: ranking_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ranking_id_seq', 11, true);


--
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.sessions_id_seq', 5, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 16, true);


--
-- Name: ranking ranking_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ranking
    ADD CONSTRAINT ranking_pkey PRIMARY KEY (id);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- Name: sessions sessions_token_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_token_key UNIQUE (token);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: ranking ranking_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ranking
    ADD CONSTRAINT "ranking_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- Name: sessions sessions_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT "sessions_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

