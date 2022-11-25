--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2022-11-25 15:42:45

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
-- TOC entry 244 (class 1259 OID 16616)
-- Name: addreses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.addreses (
    id integer NOT NULL,
    title character varying NOT NULL,
    city_id integer NOT NULL,
    street character varying NOT NULL,
    customer_id integer NOT NULL
);


ALTER TABLE public.addreses OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 16615)
-- Name: addreses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.addreses ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.addreses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 227 (class 1259 OID 16473)
-- Name: basket_product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.basket_product (
    basket_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.basket_product OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16468)
-- Name: baskets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.baskets (
    id integer NOT NULL,
    price money NOT NULL,
    customer_id integer NOT NULL
);


ALTER TABLE public.baskets OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16467)
-- Name: baskets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.baskets ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.baskets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 222 (class 1259 OID 16442)
-- Name: brands; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.brands (
    id integer NOT NULL,
    name character varying NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.brands OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16441)
-- Name: brands_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.brands ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.brands_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 215 (class 1259 OID 16400)
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying NOT NULL,
    type character varying
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16399)
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.categories ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 246 (class 1259 OID 16629)
-- Name: cities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cities (
    id integer NOT NULL,
    name character varying NOT NULL,
    country_id integer NOT NULL
);


ALTER TABLE public.cities OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 16628)
-- Name: cities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.cities ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 233 (class 1259 OID 16538)
-- Name: corporate_customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corporate_customers (
    id integer NOT NULL,
    company_name character varying NOT NULL,
    tax_no integer NOT NULL
);


ALTER TABLE public.corporate_customers OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 16537)
-- Name: corporate_customers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.corporate_customers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.corporate_customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 248 (class 1259 OID 16642)
-- Name: countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.countries (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.countries OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 16641)
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.countries ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 229 (class 1259 OID 16487)
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    id integer NOT NULL,
    individual_customer_id integer NOT NULL,
    corporate_customer_id integer NOT NULL,
    email character varying NOT NULL
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16486)
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.customers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 231 (class 1259 OID 16525)
-- Name: individual_customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.individual_customers (
    id integer NOT NULL,
    name character varying NOT NULL,
    country_no integer NOT NULL
);


ALTER TABLE public.individual_customers OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16524)
-- Name: individual_customers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.individual_customers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.individual_customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 235 (class 1259 OID 16551)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    status character varying NOT NULL,
    date date NOT NULL,
    customer_id integer NOT NULL,
    shipper_id integer NOT NULL,
    address_id integer NOT NULL,
    payment_type_id integer NOT NULL
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 16550)
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.orders ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 237 (class 1259 OID 16569)
-- Name: payment_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment_types (
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying NOT NULL
);


ALTER TABLE public.payment_types OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 16568)
-- Name: payment_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.payment_types ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.payment_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 242 (class 1259 OID 16602)
-- Name: product_order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_order (
    product_id integer NOT NULL,
    order_id integer NOT NULL,
    quantity integer NOT NULL,
    total_price money NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.product_order OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 16664)
-- Name: product_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.product_order ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.product_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 220 (class 1259 OID 16428)
-- Name: product_seller; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_seller (
    product_id integer NOT NULL,
    seller_id integer NOT NULL
);


ALTER TABLE public.product_seller OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16408)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying NOT NULL,
    unit_price money NOT NULL,
    stock integer NOT NULL,
    category_id integer NOT NULL,
    supplier_id integer NOT NULL
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16407)
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.products ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 241 (class 1259 OID 16595)
-- Name: refunds; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.refunds (
    id integer NOT NULL,
    product_order_id integer NOT NULL,
    return_date date NOT NULL,
    return_description character varying NOT NULL
);


ALTER TABLE public.refunds OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 16594)
-- Name: refunds_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.refunds ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.refunds_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 219 (class 1259 OID 16421)
-- Name: sellers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sellers (
    id integer NOT NULL,
    name character varying NOT NULL,
    follower_count integer NOT NULL,
    rating integer NOT NULL
);


ALTER TABLE public.sellers OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16420)
-- Name: sellers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.sellers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.sellers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 239 (class 1259 OID 16582)
-- Name: shippers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shippers (
    id integer NOT NULL,
    company_name character varying NOT NULL,
    email character varying NOT NULL
);


ALTER TABLE public.shippers OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 16581)
-- Name: shippers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.shippers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.shippers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 224 (class 1259 OID 16455)
-- Name: suppliers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.suppliers (
    id integer NOT NULL,
    company_name character varying NOT NULL,
    email character varying NOT NULL,
    stock integer NOT NULL
);


ALTER TABLE public.suppliers OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16454)
-- Name: suppliers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.suppliers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.suppliers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3487 (class 0 OID 16616)
-- Dependencies: 244
-- Data for Name: addreses; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3470 (class 0 OID 16473)
-- Dependencies: 227
-- Data for Name: basket_product; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3469 (class 0 OID 16468)
-- Dependencies: 226
-- Data for Name: baskets; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3465 (class 0 OID 16442)
-- Dependencies: 222
-- Data for Name: brands; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3458 (class 0 OID 16400)
-- Dependencies: 215
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3489 (class 0 OID 16629)
-- Dependencies: 246
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3476 (class 0 OID 16538)
-- Dependencies: 233
-- Data for Name: corporate_customers; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3491 (class 0 OID 16642)
-- Dependencies: 248
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3472 (class 0 OID 16487)
-- Dependencies: 229
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3474 (class 0 OID 16525)
-- Dependencies: 231
-- Data for Name: individual_customers; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3478 (class 0 OID 16551)
-- Dependencies: 235
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3480 (class 0 OID 16569)
-- Dependencies: 237
-- Data for Name: payment_types; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3485 (class 0 OID 16602)
-- Dependencies: 242
-- Data for Name: product_order; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3463 (class 0 OID 16428)
-- Dependencies: 220
-- Data for Name: product_seller; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3460 (class 0 OID 16408)
-- Dependencies: 217
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3484 (class 0 OID 16595)
-- Dependencies: 241
-- Data for Name: refunds; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3462 (class 0 OID 16421)
-- Dependencies: 219
-- Data for Name: sellers; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3482 (class 0 OID 16582)
-- Dependencies: 239
-- Data for Name: shippers; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3467 (class 0 OID 16455)
-- Dependencies: 224
-- Data for Name: suppliers; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3498 (class 0 OID 0)
-- Dependencies: 243
-- Name: addreses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.addreses_id_seq', 1, false);


--
-- TOC entry 3499 (class 0 OID 0)
-- Dependencies: 225
-- Name: baskets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.baskets_id_seq', 1, false);


--
-- TOC entry 3500 (class 0 OID 0)
-- Dependencies: 221
-- Name: brands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.brands_id_seq', 1, false);


--
-- TOC entry 3501 (class 0 OID 0)
-- Dependencies: 214
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 3, true);


--
-- TOC entry 3502 (class 0 OID 0)
-- Dependencies: 245
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cities_id_seq', 1, false);


--
-- TOC entry 3503 (class 0 OID 0)
-- Dependencies: 232
-- Name: corporate_customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corporate_customers_id_seq', 1, false);


--
-- TOC entry 3504 (class 0 OID 0)
-- Dependencies: 247
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.countries_id_seq', 1, false);


--
-- TOC entry 3505 (class 0 OID 0)
-- Dependencies: 228
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_id_seq', 1, false);


--
-- TOC entry 3506 (class 0 OID 0)
-- Dependencies: 230
-- Name: individual_customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.individual_customers_id_seq', 1, false);


--
-- TOC entry 3507 (class 0 OID 0)
-- Dependencies: 234
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 1, false);


--
-- TOC entry 3508 (class 0 OID 0)
-- Dependencies: 236
-- Name: payment_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_types_id_seq', 1, false);


--
-- TOC entry 3509 (class 0 OID 0)
-- Dependencies: 249
-- Name: product_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_order_id_seq', 1, false);


--
-- TOC entry 3510 (class 0 OID 0)
-- Dependencies: 216
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 2, true);


--
-- TOC entry 3511 (class 0 OID 0)
-- Dependencies: 240
-- Name: refunds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.refunds_id_seq', 1, false);


--
-- TOC entry 3512 (class 0 OID 0)
-- Dependencies: 218
-- Name: sellers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sellers_id_seq', 1, false);


--
-- TOC entry 3513 (class 0 OID 0)
-- Dependencies: 238
-- Name: shippers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shippers_id_seq', 1, false);


--
-- TOC entry 3514 (class 0 OID 0)
-- Dependencies: 223
-- Name: suppliers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.suppliers_id_seq', 1, false);


--
-- TOC entry 3290 (class 2606 OID 16622)
-- Name: addreses addreses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addreses
    ADD CONSTRAINT addreses_pkey PRIMARY KEY (id);


--
-- TOC entry 3272 (class 2606 OID 16472)
-- Name: baskets baskets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT baskets_pkey PRIMARY KEY (id);


--
-- TOC entry 3268 (class 2606 OID 16448)
-- Name: brands brands_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);


--
-- TOC entry 3262 (class 2606 OID 16406)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3292 (class 2606 OID 16635)
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- TOC entry 3278 (class 2606 OID 16544)
-- Name: corporate_customers corporate_customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corporate_customers
    ADD CONSTRAINT corporate_customers_pkey PRIMARY KEY (id);


--
-- TOC entry 3294 (class 2606 OID 16648)
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- TOC entry 3274 (class 2606 OID 16493)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- TOC entry 3276 (class 2606 OID 16531)
-- Name: individual_customers individual_customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_customers
    ADD CONSTRAINT individual_customers_pkey PRIMARY KEY (id);


--
-- TOC entry 3280 (class 2606 OID 16557)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 3282 (class 2606 OID 16575)
-- Name: payment_types payment_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_types
    ADD CONSTRAINT payment_types_pkey PRIMARY KEY (id);


--
-- TOC entry 3288 (class 2606 OID 16669)
-- Name: product_order product_order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_order
    ADD CONSTRAINT product_order_pkey PRIMARY KEY (id);


--
-- TOC entry 3264 (class 2606 OID 16414)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 3286 (class 2606 OID 16601)
-- Name: refunds refunds_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.refunds
    ADD CONSTRAINT refunds_pkey PRIMARY KEY (id);


--
-- TOC entry 3266 (class 2606 OID 16427)
-- Name: sellers sellers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sellers
    ADD CONSTRAINT sellers_pkey PRIMARY KEY (id);


--
-- TOC entry 3284 (class 2606 OID 16588)
-- Name: shippers shippers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shippers
    ADD CONSTRAINT shippers_pkey PRIMARY KEY (id);


--
-- TOC entry 3270 (class 2606 OID 16461)
-- Name: suppliers suppliers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_pkey PRIMARY KEY (id);


--
-- TOC entry 3312 (class 2606 OID 16636)
-- Name: addreses addreses_city_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addreses
    ADD CONSTRAINT addreses_city_id_fkey FOREIGN KEY (city_id) REFERENCES public.cities(id) NOT VALID;


--
-- TOC entry 3313 (class 2606 OID 16623)
-- Name: addreses addreses_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addreses
    ADD CONSTRAINT addreses_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(id);


--
-- TOC entry 3301 (class 2606 OID 16476)
-- Name: basket_product basket_product_basket_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_product
    ADD CONSTRAINT basket_product_basket_id_fkey FOREIGN KEY (basket_id) REFERENCES public.baskets(id);


--
-- TOC entry 3302 (class 2606 OID 16481)
-- Name: basket_product basket_product_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_product
    ADD CONSTRAINT basket_product_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 3300 (class 2606 OID 16494)
-- Name: baskets baskets_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT baskets_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(id) NOT VALID;


--
-- TOC entry 3299 (class 2606 OID 16449)
-- Name: brands brands_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 3314 (class 2606 OID 16649)
-- Name: cities cities_country_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_country_id_fkey FOREIGN KEY (country_id) REFERENCES public.countries(id) NOT VALID;


--
-- TOC entry 3303 (class 2606 OID 16545)
-- Name: customers customers_corporate_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_corporate_customer_id_fkey FOREIGN KEY (corporate_customer_id) REFERENCES public.corporate_customers(id) NOT VALID;


--
-- TOC entry 3304 (class 2606 OID 16654)
-- Name: customers customers_individual_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_individual_customer_id_fkey FOREIGN KEY (individual_customer_id) REFERENCES public.individual_customers(id) NOT VALID;


--
-- TOC entry 3305 (class 2606 OID 16659)
-- Name: orders orders_address_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_address_id_fkey FOREIGN KEY (address_id) REFERENCES public.addreses(id) NOT VALID;


--
-- TOC entry 3306 (class 2606 OID 16563)
-- Name: orders orders_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(id) NOT VALID;


--
-- TOC entry 3307 (class 2606 OID 16576)
-- Name: orders orders_payment_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_payment_type_id_fkey FOREIGN KEY (payment_type_id) REFERENCES public.payment_types(id) NOT VALID;


--
-- TOC entry 3308 (class 2606 OID 16589)
-- Name: orders orders_shipper_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_shipper_id_fkey FOREIGN KEY (shipper_id) REFERENCES public.shippers(id) NOT VALID;


--
-- TOC entry 3295 (class 2606 OID 16415)
-- Name: products product_category_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT product_category_fk FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- TOC entry 3310 (class 2606 OID 16610)
-- Name: product_order product_order_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_order
    ADD CONSTRAINT product_order_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- TOC entry 3311 (class 2606 OID 16605)
-- Name: product_order product_order_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_order
    ADD CONSTRAINT product_order_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 3297 (class 2606 OID 16431)
-- Name: product_seller product_seller_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_seller
    ADD CONSTRAINT product_seller_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 3298 (class 2606 OID 16436)
-- Name: product_seller product_seller_seller_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_seller
    ADD CONSTRAINT product_seller_seller_id_fkey FOREIGN KEY (seller_id) REFERENCES public.sellers(id);


--
-- TOC entry 3296 (class 2606 OID 16462)
-- Name: products products_supplier_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_supplier_id_fkey FOREIGN KEY (supplier_id) REFERENCES public.suppliers(id) NOT VALID;


--
-- TOC entry 3309 (class 2606 OID 16670)
-- Name: refunds refunds_product_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.refunds
    ADD CONSTRAINT refunds_product_order_id_fkey FOREIGN KEY (product_order_id) REFERENCES public.product_order(id) NOT VALID;


-- Completed on 2022-11-25 15:42:45

--
-- PostgreSQL database dump complete
--

