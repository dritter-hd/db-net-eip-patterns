CREATE SEQUENCE inc_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE inc_seq OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: Channel1; Type: TABLE; Schema: public; Owner: postgres; Tablespace:
--

CREATE TABLE "channel1" (
    id smallint DEFAULT nextval('inc_seq'::regclass) NOT NULL,
    data integer
);


ALTER TABLE "channel1" OWNER TO postgres;

--
-- Name: channel2; Type: TABLE; Schema: public; Owner: postgres; Tablespace:
--

CREATE TABLE "channel2" (
    id smallint DEFAULT nextval('inc_seq'::regclass) NOT NULL,
    data integer
);


ALTER TABLE "channel2" OWNER TO postgres;

--
-- Name: channel3; Type: TABLE; Schema: public; Owner: postgres; Tablespace:
--

CREATE TABLE "channel3" (
    id smallint DEFAULT nextval('inc_seq'::regclass) NOT NULL,
    data integer
);


ALTER TABLE "channel3" OWNER TO postgres;


--
-- Name: inc_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('inc_seq', 1, true);


--
-- Name: channel1_copy_copy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "channel3"
    ADD CONSTRAINT "channel1_copy_copy_pkey" PRIMARY KEY (id);


--
-- Name: channel1_copy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "channel2"
    ADD CONSTRAINT "channel1_copy_pkey" PRIMARY KEY (id);


--
-- Name: channel1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace:
--

ALTER TABLE ONLY "channel1"
    ADD CONSTRAINT "channel1_pkey" PRIMARY KEY (id);
