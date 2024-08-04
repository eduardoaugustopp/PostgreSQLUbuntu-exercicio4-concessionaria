--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3 (Ubuntu 16.3-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.3 (Ubuntu 16.3-0ubuntu0.24.04.1)

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
-- Name: carros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carros (
    id integer NOT NULL,
    modelo character varying(100) NOT NULL,
    ano integer NOT NULL,
    preco numeric(10,2) NOT NULL,
    fabricante_id integer
);


ALTER TABLE public.carros OWNER TO postgres;

--
-- Name: carros_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.carros_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.carros_id_seq OWNER TO postgres;

--
-- Name: carros_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.carros_id_seq OWNED BY public.carros.id;


--
-- Name: fabricantes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fabricantes (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    pais character varying(50)
);


ALTER TABLE public.fabricantes OWNER TO postgres;

--
-- Name: fabricantes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fabricantes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.fabricantes_id_seq OWNER TO postgres;

--
-- Name: fabricantes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fabricantes_id_seq OWNED BY public.fabricantes.id;


--
-- Name: vendas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vendas (
    id integer NOT NULL,
    carro_id integer,
    data_venda date NOT NULL,
    preco_venda numeric(10,2) NOT NULL,
    nome_cliente character varying(100)
);


ALTER TABLE public.vendas OWNER TO postgres;

--
-- Name: vendas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vendas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vendas_id_seq OWNER TO postgres;

--
-- Name: vendas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vendas_id_seq OWNED BY public.vendas.id;


--
-- Name: carros id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carros ALTER COLUMN id SET DEFAULT nextval('public.carros_id_seq'::regclass);


--
-- Name: fabricantes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fabricantes ALTER COLUMN id SET DEFAULT nextval('public.fabricantes_id_seq'::regclass);


--
-- Name: vendas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendas ALTER COLUMN id SET DEFAULT nextval('public.vendas_id_seq'::regclass);


--
-- Data for Name: carros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carros (id, modelo, ano, preco, fabricante_id) FROM stdin;
1	Camry	2023	25000.00	1
2	Mustang	2024	35000.00	2
3	X5	2023	60000.00	3
4	Civic	2023	22000.00	4
5	F-150	2024	40000.00	5
6	Q7	2023	70000.00	6
7	Altima	2023	24000.00	7
8	Elantra	2024	27000.00	8
9	Tiguan	2023	33000.00	9
10	Soul	2023	20000.00	10
11	MX-5	2023	29000.00	11
12	Outback	2024	32000.00	12
13	GLC	2023	55000.00	13
14	911	2023	100000.00	14
15	XE	2023	45000.00	15
16	Discovery	2024	60000.00	16
17	Portofino	2024	250000.00	17
18	Huracán	2024	300000.00	18
19	500	2023	18000.00	19
20	Giulia	2023	40000.00	20
\.


--
-- Data for Name: fabricantes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fabricantes (id, nome, pais) FROM stdin;
1	Toyota	Japão
2	Ford	EUA
3	BMW	Alemanha
4	Honda	Japão
5	Chevrolet	EUA
6	Audi	Alemanha
7	Nissan	Japão
8	Hyundai	Coreia do Sul
9	Volkswagen	Alemanha
10	Kia	Coreia do Sul
11	Mazda	Japão
12	Subaru	Japão
13	Mercedes-Benz	Alemanha
14	Porsche	Alemanha
15	Jaguar	Reino Unido
16	Land Rover	Reino Unido
17	Ferrari	Itália
18	Lamborghini	Itália
19	Fiat	Itália
20	Alfa Romeo	Itália
\.


--
-- Data for Name: vendas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vendas (id, carro_id, data_venda, preco_venda, nome_cliente) FROM stdin;
1	1	2024-01-15	24500.00	Alice Johnson
2	2	2024-02-20	34000.00	Bob Smith
3	3	2024-03-25	58000.00	Charlie Davis
4	4	2024-04-10	21500.00	Diana Prince
5	5	2024-05-05	39000.00	Evan Carter
6	6	2024-06-30	68000.00	Fiona Green
7	7	2024-07-15	24500.00	George Brown
8	8	2024-08-20	27500.00	Hannah White
9	9	2024-09-10	34000.00	Ian Black
10	10	2024-10-05	21000.00	Julia Clark
11	11	2024-11-15	29500.00	Kevin Adams
12	12	2024-12-20	32500.00	Laura Martinez
13	13	2024-01-20	56000.00	Michael King
14	14	2024-02-15	98000.00	Nina Scott
15	15	2024-03-10	46000.00	Oscar Lewis
16	16	2024-04-25	62000.00	Pamela Hall
17	17	2024-05-30	240000.00	Quincy Allen
18	18	2024-06-05	290000.00	Rachel Young
19	19	2024-07-15	19000.00	Sam Nelson
20	20	2024-08-25	41000.00	Tina Harris
\.


--
-- Name: carros_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.carros_id_seq', 20, true);


--
-- Name: fabricantes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fabricantes_id_seq', 20, true);


--
-- Name: vendas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vendas_id_seq', 20, true);


--
-- Name: carros carros_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carros
    ADD CONSTRAINT carros_pkey PRIMARY KEY (id);


--
-- Name: fabricantes fabricantes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fabricantes
    ADD CONSTRAINT fabricantes_pkey PRIMARY KEY (id);


--
-- Name: vendas vendas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_pkey PRIMARY KEY (id);


--
-- Name: carros carros_fabricante_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carros
    ADD CONSTRAINT carros_fabricante_id_fkey FOREIGN KEY (fabricante_id) REFERENCES public.fabricantes(id);


--
-- Name: vendas vendas_carro_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_carro_id_fkey FOREIGN KEY (carro_id) REFERENCES public.carros(id);


--
-- PostgreSQL database dump complete
--

