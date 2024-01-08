--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17
-- Dumped by pg_dump version 12.17

-- Started on 2024-01-07 22:30:00

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
-- TOC entry 205 (class 1259 OID 16406)
-- Name: marcas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.marcas (
    id integer NOT NULL,
    nombre character varying(80) NOT NULL,
    estado integer NOT NULL,
    fecha_creacion timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    fecha_actualizacion timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.marcas OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16404)
-- Name: marcas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.marcas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.marcas_id_seq OWNER TO postgres;

--
-- TOC entry 2854 (class 0 OID 0)
-- Dependencies: 204
-- Name: marcas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.marcas_id_seq OWNED BY public.marcas.id;


--
-- TOC entry 203 (class 1259 OID 16396)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    id integer NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(100) NOT NULL
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16394)
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_id_seq OWNER TO postgres;

--
-- TOC entry 2855 (class 0 OID 0)
-- Dependencies: 202
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;


--
-- TOC entry 207 (class 1259 OID 16416)
-- Name: zapatillas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.zapatillas (
    id integer NOT NULL,
    nombre character varying(80) NOT NULL,
    marca_id integer,
    modelo character varying(80) NOT NULL,
    talla character varying(10),
    genero character varying(10),
    imagen_url character varying(200),
    estado integer NOT NULL,
    fecha_creacion timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    fecha_actualizacion timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    descripcion character varying(2500)
);


ALTER TABLE public.zapatillas OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16414)
-- Name: zapatillas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.zapatillas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.zapatillas_id_seq OWNER TO postgres;

--
-- TOC entry 2856 (class 0 OID 0)
-- Dependencies: 206
-- Name: zapatillas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.zapatillas_id_seq OWNED BY public.zapatillas.id;


--
-- TOC entry 2701 (class 2604 OID 16409)
-- Name: marcas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marcas ALTER COLUMN id SET DEFAULT nextval('public.marcas_id_seq'::regclass);


--
-- TOC entry 2700 (class 2604 OID 16399)
-- Name: usuarios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- TOC entry 2704 (class 2604 OID 16419)
-- Name: zapatillas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zapatillas ALTER COLUMN id SET DEFAULT nextval('public.zapatillas_id_seq'::regclass);


--
-- TOC entry 2846 (class 0 OID 16406)
-- Dependencies: 205
-- Data for Name: marcas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.marcas (id, nombre, estado, fecha_creacion, fecha_actualizacion) FROM stdin;
1	Nike	1	2024-01-03 22:29:20.383571	2024-01-03 22:29:20.383571
2	Adidas	1	2024-01-03 22:29:56.571717	2024-01-03 22:29:56.571717
3	Reebok	1	2024-01-04 12:26:35.395179	2024-01-04 12:26:35.395179
4	New Balance	1	2024-01-04 12:29:53.062695	2024-01-04 12:29:53.062695
5	Puma	1	2024-01-04 12:34:37.530215	2024-01-04 12:34:37.530215
6	Vans	1	2024-01-04 12:38:47.307333	2024-01-04 12:38:47.307333
\.


--
-- TOC entry 2844 (class 0 OID 16396)
-- Dependencies: 203
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios (id, username, password) FROM stdin;
1	lemoes116	2024
3	lemoes200	2024
5	lemoes100	2024
10	dayana230	2024
15	juandavidreyes	2024
17	juanca1910	2024
\.


--
-- TOC entry 2848 (class 0 OID 16416)
-- Dependencies: 207
-- Data for Name: zapatillas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.zapatillas (id, nombre, marca_id, modelo, talla, genero, imagen_url, estado, fecha_creacion, fecha_actualizacion, descripcion) FROM stdin;
1	Nike TN Air Max	1	2023	40	M	imagen35.jpg	1	2024-01-03 22:32:34.908404	2024-01-03 22:32:34.908404	Nike TN Air MAx Plus
2	Adidas Running Runfalco	2	2023	37	F	imagen34.jpg	1	2024-01-04 12:16:49.204169	2024-01-04 12:16:49.204169	Adidas pegasu 1.1
3	Reebok Zig Kinetica	3	2023	36	F	imagen35_5.jpg	1	2024-01-04 12:29:08.443182	2024-01-04 12:29:08.443182	Reebok Zig Kinetica 2.5
4	New Balance 9060	4	2023	42	M	imagen35_4.jpg	1	2024-01-04 12:32:20.826392	2024-01-04 12:32:20.826392	New Balance 9060 1.1
5	Puma Roma	5	2023	41	M	imagen35_3.jpg	1	2024-01-04 12:36:41.062409	2024-01-04 12:36:41.062409	Puma Roma Black
6	Vans DEFCON	6	2023	38	F	imagen34_2.jpg	1	2024-01-04 12:41:22.655157	2024-01-04 12:41:22.655157	Vans DEFCON X Vans SK8-HI
\.


--
-- TOC entry 2857 (class 0 OID 0)
-- Dependencies: 204
-- Name: marcas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.marcas_id_seq', 2, true);


--
-- TOC entry 2858 (class 0 OID 0)
-- Dependencies: 202
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_id_seq', 17, true);


--
-- TOC entry 2859 (class 0 OID 0)
-- Dependencies: 206
-- Name: zapatillas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.zapatillas_id_seq', 1, false);


--
-- TOC entry 2712 (class 2606 OID 16413)
-- Name: marcas marcas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marcas
    ADD CONSTRAINT marcas_pkey PRIMARY KEY (id);


--
-- TOC entry 2708 (class 2606 OID 16401)
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- TOC entry 2710 (class 2606 OID 16403)
-- Name: usuarios usuarios_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_username_key UNIQUE (username);


--
-- TOC entry 2714 (class 2606 OID 16426)
-- Name: zapatillas zapatillas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zapatillas
    ADD CONSTRAINT zapatillas_pkey PRIMARY KEY (id);


--
-- TOC entry 2716 (class 2606 OID 16432)
-- Name: zapatillas fk_marca; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zapatillas
    ADD CONSTRAINT fk_marca FOREIGN KEY (marca_id) REFERENCES public.marcas(id);


--
-- TOC entry 2715 (class 2606 OID 16427)
-- Name: zapatillas zapatillas_marca_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zapatillas
    ADD CONSTRAINT zapatillas_marca_id_fkey FOREIGN KEY (marca_id) REFERENCES public.marcas(id) ON DELETE CASCADE;


-- Completed on 2024-01-07 22:30:00

--
-- PostgreSQL database dump complete
--

