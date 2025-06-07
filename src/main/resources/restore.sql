--
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3 (Homebrew)
-- Dumped by pg_dump version 16.3

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

DROP DATABASE "WellnessAxis";
--
-- Name: WellnessAxis; Type: DATABASE; Schema: -; Owner: tejamanne
--

CREATE DATABASE "WellnessAxis" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';


ALTER DATABASE "WellnessAxis" OWNER TO tejamanne;

\connect "WellnessAxis"

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
-- Name: dimension; Type: SCHEMA; Schema: -; Owner: tejamanne
--

CREATE SCHEMA dimension;


ALTER SCHEMA dimension OWNER TO tejamanne;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: activities; Type: TABLE; Schema: dimension; Owner: tejamanne
--

CREATE TABLE dimension.activities (
    id integer NOT NULL,
    name character varying NOT NULL,
    "desc" character varying NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    last_modified_by bigint,
    last_modified_date timestamp without time zone DEFAULT now(),
    active boolean DEFAULT true NOT NULL,
    dimension_id integer NOT NULL
);


ALTER TABLE dimension.activities OWNER TO tejamanne;

--
-- Name: condition_activities; Type: TABLE; Schema: dimension; Owner: tejamanne
--

CREATE TABLE dimension.condition_activities (
    id integer NOT NULL,
    title character varying NOT NULL,
    "desc" character varying NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    last_modified_by bigint,
    last_modified_date timestamp without time zone,
    active boolean DEFAULT true NOT NULL,
    condition_id integer NOT NULL,
    activity_id integer NOT NULL,
    impact_level smallint DEFAULT 0 NOT NULL
);


ALTER TABLE dimension.condition_activities OWNER TO tejamanne;

--
-- Name: condition_categories; Type: TABLE; Schema: dimension; Owner: tejamanne
--

CREATE TABLE dimension.condition_categories (
    id integer NOT NULL,
    title character varying NOT NULL,
    "desc" character varying NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    last_modified_by bigint,
    last_modified_date timestamp without time zone,
    active boolean DEFAULT true NOT NULL
);


ALTER TABLE dimension.condition_categories OWNER TO tejamanne;

--
-- Name: condition_food; Type: TABLE; Schema: dimension; Owner: tejamanne
--

CREATE TABLE dimension.condition_food (
    id integer NOT NULL,
    name character varying NOT NULL,
    alias_names character varying[] NOT NULL,
    "desc" character varying NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    last_modified_by bigint,
    last_modified_date timestamp without time zone,
    active boolean DEFAULT true NOT NULL,
    condition_id integer NOT NULL,
    food_id integer NOT NULL,
    impact_level smallint DEFAULT 0 NOT NULL
);


ALTER TABLE dimension.condition_food OWNER TO tejamanne;

--
-- Name: condition_sleep; Type: TABLE; Schema: dimension; Owner: tejamanne
--

CREATE TABLE dimension.condition_sleep (
    id integer NOT NULL,
    name character varying NOT NULL,
    alias_names character varying[],
    "desc" character varying NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    last_modified_by bigint,
    last_modified_date timestamp without time zone,
    active boolean DEFAULT true NOT NULL,
    condition_id integer NOT NULL,
    sleep_id integer NOT NULL,
    impact_level smallint DEFAULT 0 NOT NULL
);


ALTER TABLE dimension.condition_sleep OWNER TO tejamanne;

--
-- Name: conditions; Type: TABLE; Schema: dimension; Owner: tejamanne
--

CREATE TABLE dimension.conditions (
    id integer NOT NULL,
    name character varying NOT NULL,
    "desc" character varying NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    last_modified_by bigint,
    last_modified_date timestamp without time zone DEFAULT now(),
    active boolean DEFAULT true NOT NULL,
    condition_category_id integer NOT NULL
);


ALTER TABLE dimension.conditions OWNER TO tejamanne;

--
-- Name: dimensions_sequence; Type: SEQUENCE; Schema: dimension; Owner: tejamanne
--

CREATE SEQUENCE dimension.dimensions_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE dimension.dimensions_sequence OWNER TO tejamanne;

--
-- Name: dimensions; Type: TABLE; Schema: dimension; Owner: tejamanne
--

CREATE TABLE dimension.dimensions (
    id integer DEFAULT nextval('dimension.dimensions_sequence'::regclass) NOT NULL,
    name character varying NOT NULL,
    "desc" character varying NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    last_modified_by bigint,
    last_modified_date timestamp without time zone DEFAULT now(),
    active boolean DEFAULT true NOT NULL
);


ALTER TABLE dimension.dimensions OWNER TO tejamanne;

--
-- Name: food; Type: TABLE; Schema: dimension; Owner: tejamanne
--

CREATE TABLE dimension.food (
    id integer NOT NULL,
    name character varying NOT NULL,
    "desc" character varying NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    last_modified_by bigint,
    last_modified_date timestamp without time zone,
    active boolean DEFAULT true NOT NULL,
    dimension_id integer NOT NULL
);


ALTER TABLE dimension.food OWNER TO tejamanne;

--
-- Name: sleep; Type: TABLE; Schema: dimension; Owner: tejamanne
--

CREATE TABLE dimension.sleep (
    id integer NOT NULL,
    name character varying NOT NULL,
    "desc" character varying NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    last_modified_by bigint,
    last_modified_date timestamp without time zone,
    active boolean DEFAULT true NOT NULL,
    dimension_id integer NOT NULL
);


ALTER TABLE dimension.sleep OWNER TO tejamanne;

--
-- Data for Name: activities; Type: TABLE DATA; Schema: dimension; Owner: tejamanne
--

COPY dimension.activities (id, name, "desc", created_by, created_date, last_modified_by, last_modified_date, active, dimension_id) FROM stdin;
\.
COPY dimension.activities (id, name, "desc", created_by, created_date, last_modified_by, last_modified_date, active, dimension_id) FROM '$$PATH$$/3745.dat';

--
-- Data for Name: condition_activities; Type: TABLE DATA; Schema: dimension; Owner: tejamanne
--

COPY dimension.condition_activities (id, title, "desc", created_by, created_date, last_modified_by, last_modified_date, active, condition_id, activity_id, impact_level) FROM stdin;
\.
COPY dimension.condition_activities (id, title, "desc", created_by, created_date, last_modified_by, last_modified_date, active, condition_id, activity_id, impact_level) FROM '$$PATH$$/3748.dat';

--
-- Data for Name: condition_categories; Type: TABLE DATA; Schema: dimension; Owner: tejamanne
--

COPY dimension.condition_categories (id, title, "desc", created_by, created_date, last_modified_by, last_modified_date, active) FROM stdin;
\.
COPY dimension.condition_categories (id, title, "desc", created_by, created_date, last_modified_by, last_modified_date, active) FROM '$$PATH$$/3752.dat';

--
-- Data for Name: condition_food; Type: TABLE DATA; Schema: dimension; Owner: tejamanne
--

COPY dimension.condition_food (id, name, alias_names, "desc", created_by, created_date, last_modified_by, last_modified_date, active, condition_id, food_id, impact_level) FROM stdin;
\.
COPY dimension.condition_food (id, name, alias_names, "desc", created_by, created_date, last_modified_by, last_modified_date, active, condition_id, food_id, impact_level) FROM '$$PATH$$/3749.dat';

--
-- Data for Name: condition_sleep; Type: TABLE DATA; Schema: dimension; Owner: tejamanne
--

COPY dimension.condition_sleep (id, name, alias_names, "desc", created_by, created_date, last_modified_by, last_modified_date, active, condition_id, sleep_id, impact_level) FROM stdin;
\.
COPY dimension.condition_sleep (id, name, alias_names, "desc", created_by, created_date, last_modified_by, last_modified_date, active, condition_id, sleep_id, impact_level) FROM '$$PATH$$/3750.dat';

--
-- Data for Name: conditions; Type: TABLE DATA; Schema: dimension; Owner: tejamanne
--

COPY dimension.conditions (id, name, "desc", created_by, created_date, last_modified_by, last_modified_date, active, condition_category_id) FROM stdin;
\.
COPY dimension.conditions (id, name, "desc", created_by, created_date, last_modified_by, last_modified_date, active, condition_category_id) FROM '$$PATH$$/3744.dat';

--
-- Data for Name: dimensions; Type: TABLE DATA; Schema: dimension; Owner: tejamanne
--

COPY dimension.dimensions (id, name, "desc", created_by, created_date, last_modified_by, last_modified_date, active) FROM stdin;
\.
COPY dimension.dimensions (id, name, "desc", created_by, created_date, last_modified_by, last_modified_date, active) FROM '$$PATH$$/3743.dat';

--
-- Data for Name: food; Type: TABLE DATA; Schema: dimension; Owner: tejamanne
--

COPY dimension.food (id, name, "desc", created_by, created_date, last_modified_by, last_modified_date, active, dimension_id) FROM stdin;
\.
COPY dimension.food (id, name, "desc", created_by, created_date, last_modified_by, last_modified_date, active, dimension_id) FROM '$$PATH$$/3747.dat';

--
-- Data for Name: sleep; Type: TABLE DATA; Schema: dimension; Owner: tejamanne
--

COPY dimension.sleep (id, name, "desc", created_by, created_date, last_modified_by, last_modified_date, active, dimension_id) FROM stdin;
\.
COPY dimension.sleep (id, name, "desc", created_by, created_date, last_modified_by, last_modified_date, active, dimension_id) FROM '$$PATH$$/3746.dat';

--
-- Name: dimensions_sequence; Type: SEQUENCE SET; Schema: dimension; Owner: tejamanne
--

SELECT pg_catalog.setval('dimension.dimensions_sequence', 4, true);


--
-- Name: activities activity_pkey; Type: CONSTRAINT; Schema: dimension; Owner: tejamanne
--

ALTER TABLE ONLY dimension.activities
    ADD CONSTRAINT activity_pkey PRIMARY KEY (id);


--
-- Name: condition_activities condition_activity_pkey; Type: CONSTRAINT; Schema: dimension; Owner: tejamanne
--

ALTER TABLE ONLY dimension.condition_activities
    ADD CONSTRAINT condition_activity_pkey PRIMARY KEY (id);


--
-- Name: condition_categories condition_category_pkey; Type: CONSTRAINT; Schema: dimension; Owner: tejamanne
--

ALTER TABLE ONLY dimension.condition_categories
    ADD CONSTRAINT condition_category_pkey PRIMARY KEY (id);


--
-- Name: condition_food condition_food_pkey; Type: CONSTRAINT; Schema: dimension; Owner: tejamanne
--

ALTER TABLE ONLY dimension.condition_food
    ADD CONSTRAINT condition_food_pkey PRIMARY KEY (id);


--
-- Name: condition_sleep condition_sleep_pkey; Type: CONSTRAINT; Schema: dimension; Owner: tejamanne
--

ALTER TABLE ONLY dimension.condition_sleep
    ADD CONSTRAINT condition_sleep_pkey PRIMARY KEY (id);


--
-- Name: conditions conditions_pkey; Type: CONSTRAINT; Schema: dimension; Owner: tejamanne
--

ALTER TABLE ONLY dimension.conditions
    ADD CONSTRAINT conditions_pkey PRIMARY KEY (id);


--
-- Name: dimensions dimensions_pkey; Type: CONSTRAINT; Schema: dimension; Owner: tejamanne
--

ALTER TABLE ONLY dimension.dimensions
    ADD CONSTRAINT dimensions_pkey PRIMARY KEY (id);


--
-- Name: food food_pkey; Type: CONSTRAINT; Schema: dimension; Owner: tejamanne
--

ALTER TABLE ONLY dimension.food
    ADD CONSTRAINT food_pkey PRIMARY KEY (id);


--
-- Name: condition_activities impact_level_value_check; Type: CHECK CONSTRAINT; Schema: dimension; Owner: tejamanne
--

ALTER TABLE dimension.condition_activities
    ADD CONSTRAINT impact_level_value_check CHECK (((impact_level >= '-5'::integer) AND (impact_level <= 5))) NOT VALID;


--
-- Name: condition_food impact_level_value_check; Type: CHECK CONSTRAINT; Schema: dimension; Owner: tejamanne
--

ALTER TABLE dimension.condition_food
    ADD CONSTRAINT impact_level_value_check CHECK (((impact_level >= '-5'::integer) AND (impact_level <= 5))) NOT VALID;


--
-- Name: condition_sleep impact_level_value_check; Type: CHECK CONSTRAINT; Schema: dimension; Owner: tejamanne
--

ALTER TABLE dimension.condition_sleep
    ADD CONSTRAINT impact_level_value_check CHECK (((impact_level >= '-5'::integer) AND (impact_level <= 5))) NOT VALID;


--
-- Name: sleep sleep_pkey; Type: CONSTRAINT; Schema: dimension; Owner: tejamanne
--

ALTER TABLE ONLY dimension.sleep
    ADD CONSTRAINT sleep_pkey PRIMARY KEY (id);


--
-- Name: activities activities_dimension_id_fkey; Type: FK CONSTRAINT; Schema: dimension; Owner: tejamanne
--

ALTER TABLE ONLY dimension.activities
    ADD CONSTRAINT activities_dimension_id_fkey FOREIGN KEY (dimension_id) REFERENCES dimension.dimensions(id) NOT VALID;


--
-- Name: condition_activities condition_activities_activity_id_fkey; Type: FK CONSTRAINT; Schema: dimension; Owner: tejamanne
--

ALTER TABLE ONLY dimension.condition_activities
    ADD CONSTRAINT condition_activities_activity_id_fkey FOREIGN KEY (activity_id) REFERENCES dimension.activities(id) NOT VALID;


--
-- Name: condition_activities condition_activities_condition_id_fkey; Type: FK CONSTRAINT; Schema: dimension; Owner: tejamanne
--

ALTER TABLE ONLY dimension.condition_activities
    ADD CONSTRAINT condition_activities_condition_id_fkey FOREIGN KEY (condition_id) REFERENCES dimension.conditions(id) NOT VALID;


--
-- Name: condition_food condition_activities_food_id_fkey; Type: FK CONSTRAINT; Schema: dimension; Owner: tejamanne
--

ALTER TABLE ONLY dimension.condition_food
    ADD CONSTRAINT condition_activities_food_id_fkey FOREIGN KEY (food_id) REFERENCES dimension.condition_food(id) NOT VALID;


--
-- Name: condition_food condition_food_condition_id_fkey; Type: FK CONSTRAINT; Schema: dimension; Owner: tejamanne
--

ALTER TABLE ONLY dimension.condition_food
    ADD CONSTRAINT condition_food_condition_id_fkey FOREIGN KEY (condition_id) REFERENCES dimension.conditions(id) NOT VALID;


--
-- Name: condition_sleep condition_sleep_condition_id_fkey; Type: FK CONSTRAINT; Schema: dimension; Owner: tejamanne
--

ALTER TABLE ONLY dimension.condition_sleep
    ADD CONSTRAINT condition_sleep_condition_id_fkey FOREIGN KEY (condition_id) REFERENCES dimension.conditions(id) NOT VALID;


--
-- Name: condition_sleep condition_sleep_sleep_id_fkey; Type: FK CONSTRAINT; Schema: dimension; Owner: tejamanne
--

ALTER TABLE ONLY dimension.condition_sleep
    ADD CONSTRAINT condition_sleep_sleep_id_fkey FOREIGN KEY (sleep_id) REFERENCES dimension.sleep(id) NOT VALID;


--
-- Name: conditions conditions_condition_category_id_fkey; Type: FK CONSTRAINT; Schema: dimension; Owner: tejamanne
--

ALTER TABLE ONLY dimension.conditions
    ADD CONSTRAINT conditions_condition_category_id_fkey FOREIGN KEY (condition_category_id) REFERENCES dimension.condition_categories(id) NOT VALID;


--
-- Name: food food_dimension_id_fkey; Type: FK CONSTRAINT; Schema: dimension; Owner: tejamanne
--

ALTER TABLE ONLY dimension.food
    ADD CONSTRAINT food_dimension_id_fkey FOREIGN KEY (dimension_id) REFERENCES dimension.dimensions(id) NOT VALID;


--
-- Name: sleep sleep_dimension_id_fkey; Type: FK CONSTRAINT; Schema: dimension; Owner: tejamanne
--

ALTER TABLE ONLY dimension.sleep
    ADD CONSTRAINT sleep_dimension_id_fkey FOREIGN KEY (dimension_id) REFERENCES dimension.dimensions(id) NOT VALID;


--
-- PostgreSQL database dump complete
--

