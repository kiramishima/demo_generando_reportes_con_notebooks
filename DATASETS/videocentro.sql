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

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: actors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actors (
    actor_id integer NOT NULL,
    name character varying,
    year_of_birth integer,
    nationality character varying,
    gender character varying
);


ALTER TABLE public.actors OWNER TO postgres;

--
-- Name: actsin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actsin (
    actsin_id integer NOT NULL,
    movie_id integer,
    actor_id integer
);


ALTER TABLE public.actsin OWNER TO postgres;

--
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    name character varying,
    country character varying,
    gender character varying,
    date_of_birth date,
    date_account_start date
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- Name: movies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movies (
    movie_id integer NOT NULL,
    title text,
    genre text,
    runtime integer,
    year_of_release integer,
    renting_price numeric
);


ALTER TABLE public.movies OWNER TO postgres;

--
-- Name: renting; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.renting (
    renting_id integer NOT NULL,
    customer_id integer NOT NULL,
    movie_id integer NOT NULL,
    rating integer,
    date_renting date
);


ALTER TABLE public.renting OWNER TO postgres;

--
-- Data for Name: actors; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.actors VALUES (1, 'Abbie Cornish', 1982, 'Australia', 'female');
INSERT INTO public.actors VALUES (2, 'Adam Sandler', 1966, 'USA', 'male');
INSERT INTO public.actors VALUES (3, 'Al Pacino', 1940, 'USA', 'male');
INSERT INTO public.actors VALUES (4, 'Amy Adams', 1974, 'USA', 'female');
INSERT INTO public.actors VALUES (5, 'Andrea Riseborough', 1981, 'British', 'female');
INSERT INTO public.actors VALUES (6, 'Anjelica Huston', 1951, 'USA', 'female');
INSERT INTO public.actors VALUES (7, 'Annasophia Robb', 1993, 'USA', 'female');
INSERT INTO public.actors VALUES (8, 'Anne Hathaway', 1982, 'USA', 'female');
INSERT INTO public.actors VALUES (9, 'Anthony Hopkins', 1937, 'British', 'male');
INSERT INTO public.actors VALUES (10, 'Barkhad Abdi', 1985, 'Somalia', 'male');
INSERT INTO public.actors VALUES (11, 'Barry Pepper', 1970, 'Canada', 'male');
INSERT INTO public.actors VALUES (12, 'Benicio Del Toro', 1967, 'Puerto Rico', 'male');
INSERT INTO public.actors VALUES (13, 'Bette Midler', 1945, 'USA', 'female');
INSERT INTO public.actors VALUES (14, 'Bill Nighy', 1949, 'British', 'male');
INSERT INTO public.actors VALUES (15, 'Bridget Moynahan', 1971, 'USA', 'female');
INSERT INTO public.actors VALUES (16, 'Bruce Dern', 1936, 'USA', 'male');
INSERT INTO public.actors VALUES (17, 'Bruce McGill', 1950, 'USA', 'male');
INSERT INTO public.actors VALUES (18, 'Bryce Dallas Howard', 1981, 'USA', 'female');
INSERT INTO public.actors VALUES (19, 'Carice van Houten', 1976, 'Netherlands', 'female');
INSERT INTO public.actors VALUES (20, 'Cate Blanchett', 1969, 'Australia', 'female');
INSERT INTO public.actors VALUES (21, 'Catherine Keener', 1959, 'USA', 'female');
INSERT INTO public.actors VALUES (22, 'Channing Tatum', 1980, 'USA', 'male');
INSERT INTO public.actors VALUES (23, 'Charlize Theron', 1975, 'South Africa', 'female');
INSERT INTO public.actors VALUES (24, 'Chris Cooper', 1951, 'USA', 'male');
INSERT INTO public.actors VALUES (25, 'Christian Bale', 1974, 'British', 'male');
INSERT INTO public.actors VALUES (26, 'Christina Ricci', 1980, 'USA', 'female');
INSERT INTO public.actors VALUES (27, 'Christoph Waltz', 1956, 'Austria', 'male');
INSERT INTO public.actors VALUES (28, 'Ciaran Hinds', 1953, 'Northern Ireland', 'male');
INSERT INTO public.actors VALUES (29, 'Colin Farrell', 1976, 'Ireland', 'male');
INSERT INTO public.actors VALUES (30, 'Colin Firth', 1960, 'British', 'male');
INSERT INTO public.actors VALUES (31, 'Daniel Craig', 1968, 'British', 'male');
INSERT INTO public.actors VALUES (32, 'Daniel Radcliffe', 1989, 'British', 'male');
INSERT INTO public.actors VALUES (33, 'Denzel Washington', 1954, 'USA', 'male');
INSERT INTO public.actors VALUES (34, 'Diane Keaton', 1946, 'USA', 'female');
INSERT INTO public.actors VALUES (35, 'Donald Sutherland', 1935, 'Canada', 'male');
INSERT INTO public.actors VALUES (36, 'Eddie Murphy', 1961, 'USA', 'male');
INSERT INTO public.actors VALUES (37, 'Eddie Redmayne', 1982, 'British', 'male');
INSERT INTO public.actors VALUES (38, 'Ed Harris', 1950, 'USA', 'male');
INSERT INTO public.actors VALUES (39, 'Edward Norton', 1969, 'USA', 'male');
INSERT INTO public.actors VALUES (40, 'Elijah Wood', 1981, 'USA', 'male');
INSERT INTO public.actors VALUES (41, 'Emma Stone', 1988, 'USA', 'female');
INSERT INTO public.actors VALUES (42, 'Emma Watson', 1990, 'British', 'female');
INSERT INTO public.actors VALUES (43, 'Ethan Hawke', 1970, 'USA', 'male');
INSERT INTO public.actors VALUES (44, 'Fernando Tielve', 1986, 'Spain', 'male');
INSERT INTO public.actors VALUES (45, 'Frances McDormand', 1957, 'USA', 'female');
INSERT INTO public.actors VALUES (46, 'Freddie Highmore', 1992, 'British', 'male');
INSERT INTO public.actors VALUES (47, 'Gene Hackman', 1930, 'USA', 'male');
INSERT INTO public.actors VALUES (48, 'Geoffrey Rush', 1951, 'Australia', 'male');
INSERT INTO public.actors VALUES (49, 'George Clooney', 1961, 'USA', 'male');
INSERT INTO public.actors VALUES (50, 'Gwyneth Paltrow', 1972, 'USA', 'female');
INSERT INTO public.actors VALUES (51, 'Haley Joel Osment', 1988, 'USA', 'male');
INSERT INTO public.actors VALUES (52, 'Halle Berry', 1966, 'USA', 'female');
INSERT INTO public.actors VALUES (53, 'Harrison Ford', 1942, 'USA', 'male');
INSERT INTO public.actors VALUES (54, 'Heath Ledger', 1979, 'Australia', 'male');
INSERT INTO public.actors VALUES (55, 'Hector Bordoni', 1965, 'Argentina', 'male');
INSERT INTO public.actors VALUES (56, 'Helen Hunt', 1963, 'USA', 'female');
INSERT INTO public.actors VALUES (57, 'Helen Mirren', 1945, 'British', 'female');
INSERT INTO public.actors VALUES (58, 'Hugh Grant', 1960, 'British', 'male');
INSERT INTO public.actors VALUES (59, 'Hugh Jackman', 1968, 'Australia', 'male');
INSERT INTO public.actors VALUES (60, 'Hugo Weaving', 1960, 'Australia', 'male');
INSERT INTO public.actors VALUES (61, 'Ian McKellen', 1939, 'British', 'male');
INSERT INTO public.actors VALUES (62, 'Irene Escolar', 1988, 'Spain', 'female');
INSERT INTO public.actors VALUES (63, 'Jack Nicholson', 1937, 'USA', 'male');
INSERT INTO public.actors VALUES (64, 'Jamie Foxx', 1967, 'USA', 'male');
INSERT INTO public.actors VALUES (65, 'Javier Bardem', 1969, 'Spain', 'male');
INSERT INTO public.actors VALUES (66, 'Jennifer Garner', 1972, 'USA', 'female');
INSERT INTO public.actors VALUES (67, 'Jennifer Lawrence', 1990, 'USA', 'female');
INSERT INTO public.actors VALUES (68, 'Jennifer Lopez', 1969, 'USA', 'female');
INSERT INTO public.actors VALUES (69, 'Jeremy Northam', 1961, 'British', 'male');
INSERT INTO public.actors VALUES (70, 'Jesse Eisenberg', 1983, 'USA', 'male');
INSERT INTO public.actors VALUES (71, 'Jim Broadbent', 1949, 'British', 'male');
INSERT INTO public.actors VALUES (72, 'John Cusack', 1966, 'USA', 'male');
INSERT INTO public.actors VALUES (73, 'John Hawkes', 1959, 'USA', 'male');
INSERT INTO public.actors VALUES (74, 'John Malkovich', 1953, 'USA', 'male');
INSERT INTO public.actors VALUES (75, 'John Travolta', 1954, 'USA', 'male');
INSERT INTO public.actors VALUES (76, 'Josh Brolin', 1968, 'USA', 'male');
INSERT INTO public.actors VALUES (77, 'Josh Hutcherson', 1992, 'USA', 'male');
INSERT INTO public.actors VALUES (78, 'Julie Christie', 1940, 'British', 'female');
INSERT INTO public.actors VALUES (79, 'Kate Hudson', 1979, 'USA', 'female');
INSERT INTO public.actors VALUES (80, 'Katie Holmes', 1978, 'USA', 'female');
INSERT INTO public.actors VALUES (81, 'Keanu Reeves', 1964, 'Canada', 'male');
INSERT INTO public.actors VALUES (82, 'Kerry Washington', 1977, 'USA', 'female');
INSERT INTO public.actors VALUES (83, 'Kevin Breznahan', 1968, 'USA', 'male');
INSERT INTO public.actors VALUES (84, 'Kristen Bell', 1980, 'USA', 'female');
INSERT INTO public.actors VALUES (85, 'Leonardo DiCaprio', 1974, 'USA', 'male');
INSERT INTO public.actors VALUES (86, 'Liam Hemsworth', 1990, 'Australia', 'male');
INSERT INTO public.actors VALUES (87, 'Liam Neeson', 1952, 'Northern Ireland', 'male');
INSERT INTO public.actors VALUES (88, 'Lisa Kudrow', 1963, 'USA', 'female');
INSERT INTO public.actors VALUES (89, 'Liv Tyler', 1977, 'USA', 'female');
INSERT INTO public.actors VALUES (90, 'Maggie Gyllenhaal', 1977, 'USA', 'female');
INSERT INTO public.actors VALUES (91, 'Marcia Gay Harden', 1959, 'USA', 'female');
INSERT INTO public.actors VALUES (92, 'Marisa Tomei', 1964, 'USA', 'female');
INSERT INTO public.actors VALUES (93, 'Mark Wahlberg', 1971, 'USA', 'male');
INSERT INTO public.actors VALUES (94, 'Maryam Karimi', NULL, NULL, 'female');
INSERT INTO public.actors VALUES (95, 'Matt Dillon', 1964, 'USA', 'male');
INSERT INTO public.actors VALUES (96, 'Matthew McConaughey', 1969, 'USA', 'male');
INSERT INTO public.actors VALUES (97, 'Mel Gibson', 1956, 'USA', 'male');
INSERT INTO public.actors VALUES (98, 'Michael Caine', 1933, 'British', 'male');
INSERT INTO public.actors VALUES (99, 'Michael Pena', 1976, 'USA', 'male');
INSERT INTO public.actors VALUES (100, 'Mohamad Dolati', NULL, NULL, 'male');
INSERT INTO public.actors VALUES (101, 'Naomi Watts', 1968, 'British', 'female');
INSERT INTO public.actors VALUES (102, 'Natalie Portman', 1981, 'Israel', 'female');
INSERT INTO public.actors VALUES (103, 'Natasha Richardson', 1963, 'British', 'female');
INSERT INTO public.actors VALUES (104, 'Nick Stahl', 1979, 'USA', 'male');
INSERT INTO public.actors VALUES (105, 'Nicolas Cage', 1964, 'USA', 'male');
INSERT INTO public.actors VALUES (106, 'Nicole Kidman', 1967, 'Australia', 'female');
INSERT INTO public.actors VALUES (107, 'Patrick Swayze', 1952, 'USA', 'male');
INSERT INTO public.actors VALUES (108, 'Patrick Wilson', 1973, 'USA', 'male');
INSERT INTO public.actors VALUES (109, 'Patton Oswalt', 1969, 'USA', 'male');
INSERT INTO public.actors VALUES (110, 'Paul Reiser', 1956, 'USA', 'male');
INSERT INTO public.actors VALUES (111, 'Philip Seymour Hoffman', 1967, 'USA', 'male');
INSERT INTO public.actors VALUES (112, 'Rachel McAdams', 1978, 'Canada', 'female');
INSERT INTO public.actors VALUES (113, 'Rachel Roberts', 1927, 'British', 'female');
INSERT INTO public.actors VALUES (114, 'Ray Romano', 1957, 'USA', 'male');
INSERT INTO public.actors VALUES (115, 'Regina King', 1971, 'USA', 'female');
INSERT INTO public.actors VALUES (116, 'Renee Zellweger', 1969, 'USA', 'female');
INSERT INTO public.actors VALUES (117, 'Rene Russo', 1954, 'USA', 'female');
INSERT INTO public.actors VALUES (118, 'Richard Gere', 1949, 'USA', 'male');
INSERT INTO public.actors VALUES (119, 'Robert De Niro', 1943, 'USA', 'male');
INSERT INTO public.actors VALUES (120, 'Robert Duvall', 1931, 'USA', 'male');
INSERT INTO public.actors VALUES (121, 'Robert Redford', 1936, 'USA', 'male');
INSERT INTO public.actors VALUES (122, 'Robin Williams', 1951, 'USA', 'male');
INSERT INTO public.actors VALUES (123, 'Rupert Grint', 1988, 'British', 'male');
INSERT INTO public.actors VALUES (124, 'Sam Riley', 1980, 'British', 'male');
INSERT INTO public.actors VALUES (125, 'Sandra Bullock', 1964, 'USA', 'female');
INSERT INTO public.actors VALUES (126, 'Sarah Jessica Parker', 1965, 'USA', 'female');
INSERT INTO public.actors VALUES (127, 'Scarlett Johansson', 1984, 'USA', 'female');
INSERT INTO public.actors VALUES (128, 'Scott Cohen', 1961, 'USA', 'male');
INSERT INTO public.actors VALUES (129, 'Scott Glenn', 1939, 'USA', 'male');
INSERT INTO public.actors VALUES (130, 'Sean Bean', 1959, 'British', 'male');
INSERT INTO public.actors VALUES (131, 'Sean Penn', 1960, 'USA', 'male');
INSERT INTO public.actors VALUES (132, 'Shia LaBeouf', 1986, 'USA', 'male');
INSERT INTO public.actors VALUES (133, 'Shohreh Aghdashloo', 1952, 'Iran', 'female');
INSERT INTO public.actors VALUES (134, 'Stephen Rea', 1946, 'Ireland', 'male');
INSERT INTO public.actors VALUES (135, 'Susan Sarandon', 1946, 'USA', 'female');
INSERT INTO public.actors VALUES (136, 'Tom Hanks', 1956, 'USA', 'male');
INSERT INTO public.actors VALUES (137, 'Tommy Lee Jones', 1946, 'USA', 'male');
INSERT INTO public.actors VALUES (138, 'Tom Wilkinson', 1948, 'British', 'male');
INSERT INTO public.actors VALUES (139, 'Vanessa Hudgens', 1988, 'USA', 'female');
INSERT INTO public.actors VALUES (140, 'Viggo Mortensen', 1958, 'USA', 'male');
INSERT INTO public.actors VALUES (141, 'Viola Davis', 1965, 'USA', 'female');
INSERT INTO public.actors VALUES (142, 'Violante Placido', 1976, 'Italy', 'female');
INSERT INTO public.actors VALUES (143, 'will.i.am', 1975, 'USA', 'male');
INSERT INTO public.actors VALUES (144, 'William H. Macy', 1950, 'USA', 'male');
INSERT INTO public.actors VALUES (145, 'Zooey Deschanel', 1980, 'USA', 'female');


--
-- Data for Name: actsin; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.actsin VALUES (1, 37, 1);
INSERT INTO public.actsin VALUES (2, 56, 2);
INSERT INTO public.actsin VALUES (3, 10, 3);
INSERT INTO public.actsin VALUES (4, 14, 3);
INSERT INTO public.actsin VALUES (5, 29, 3);
INSERT INTO public.actsin VALUES (6, 56, 3);
INSERT INTO public.actsin VALUES (7, 53, 4);
INSERT INTO public.actsin VALUES (8, 59, 5);
INSERT INTO public.actsin VALUES (9, 7, 6);
INSERT INTO public.actsin VALUES (10, 46, 7);
INSERT INTO public.actsin VALUES (11, 71, 8);
INSERT INTO public.actsin VALUES (12, 17, 9);
INSERT INTO public.actsin VALUES (13, 70, 10);
INSERT INTO public.actsin VALUES (14, 16, 11);
INSERT INTO public.actsin VALUES (15, 19, 12);
INSERT INTO public.actsin VALUES (16, 40, 13);
INSERT INTO public.actsin VALUES (17, 20, 14);
INSERT INTO public.actsin VALUES (18, 14, 15);
INSERT INTO public.actsin VALUES (19, 27, 16);
INSERT INTO public.actsin VALUES (20, 52, 17);
INSERT INTO public.actsin VALUES (21, 58, 18);
INSERT INTO public.actsin VALUES (22, 60, 19);
INSERT INTO public.actsin VALUES (23, 39, 20);
INSERT INTO public.actsin VALUES (24, 10, 21);
INSERT INTO public.actsin VALUES (25, 30, 21);
INSERT INTO public.actsin VALUES (26, 70, 21);
INSERT INTO public.actsin VALUES (27, 67, 22);
INSERT INTO public.actsin VALUES (28, 8, 23);
INSERT INTO public.actsin VALUES (29, 27, 23);
INSERT INTO public.actsin VALUES (30, 46, 23);
INSERT INTO public.actsin VALUES (31, 57, 23);
INSERT INTO public.actsin VALUES (32, 41, 24);
INSERT INTO public.actsin VALUES (33, 30, 24);
INSERT INTO public.actsin VALUES (34, 53, 25);
INSERT INTO public.actsin VALUES (35, 39, 25);
INSERT INTO public.actsin VALUES (36, 27, 26);
INSERT INTO public.actsin VALUES (37, 63, 27);
INSERT INTO public.actsin VALUES (38, 65, 28);
INSERT INTO public.actsin VALUES (39, 14, 29);
INSERT INTO public.actsin VALUES (40, 25, 30);
INSERT INTO public.actsin VALUES (41, 40, 30);
INSERT INTO public.actsin VALUES (42, 43, 31);
INSERT INTO public.actsin VALUES (43, 6, 32);
INSERT INTO public.actsin VALUES (44, 13, 32);
INSERT INTO public.actsin VALUES (45, 28, 32);
INSERT INTO public.actsin VALUES (46, 31, 32);
INSERT INTO public.actsin VALUES (47, 44, 32);
INSERT INTO public.actsin VALUES (48, 49, 32);
INSERT INTO public.actsin VALUES (49, 54, 32);
INSERT INTO public.actsin VALUES (50, 61, 32);
INSERT INTO public.actsin VALUES (51, 4, 33);
INSERT INTO public.actsin VALUES (52, 15, 34);
INSERT INTO public.actsin VALUES (53, 51, 34);
INSERT INTO public.actsin VALUES (54, 47, 35);
INSERT INTO public.actsin VALUES (55, 11, 36);
INSERT INTO public.actsin VALUES (56, 60, 37);
INSERT INTO public.actsin VALUES (57, 17, 38);
INSERT INTO public.actsin VALUES (58, 16, 39);
INSERT INTO public.actsin VALUES (59, 5, 40);
INSERT INTO public.actsin VALUES (60, 12, 40);
INSERT INTO public.actsin VALUES (61, 21, 40);
INSERT INTO public.actsin VALUES (62, 35, 40);
INSERT INTO public.actsin VALUES (63, 58, 41);
INSERT INTO public.actsin VALUES (64, 6, 42);
INSERT INTO public.actsin VALUES (65, 13, 42);
INSERT INTO public.actsin VALUES (66, 28, 42);
INSERT INTO public.actsin VALUES (67, 31, 42);
INSERT INTO public.actsin VALUES (68, 44, 42);
INSERT INTO public.actsin VALUES (69, 49, 42);
INSERT INTO public.actsin VALUES (70, 54, 42);
INSERT INTO public.actsin VALUES (71, 61, 42);
INSERT INTO public.actsin VALUES (72, 4, 43);
INSERT INTO public.actsin VALUES (73, 22, 44);
INSERT INTO public.actsin VALUES (74, 45, 45);
INSERT INTO public.actsin VALUES (75, 15, 45);
INSERT INTO public.actsin VALUES (76, 48, 46);
INSERT INTO public.actsin VALUES (77, 7, 47);
INSERT INTO public.actsin VALUES (78, 24, 47);
INSERT INTO public.actsin VALUES (79, 37, 48);
INSERT INTO public.actsin VALUES (80, 45, 49);
INSERT INTO public.actsin VALUES (81, 7, 50);
INSERT INTO public.actsin VALUES (82, 18, 51);
INSERT INTO public.actsin VALUES (83, 64, 52);
INSERT INTO public.actsin VALUES (84, 2, 52);
INSERT INTO public.actsin VALUES (85, 51, 53);
INSERT INTO public.actsin VALUES (86, 37, 54);
INSERT INTO public.actsin VALUES (87, 22, 55);
INSERT INTO public.actsin VALUES (88, 3, 56);
INSERT INTO public.actsin VALUES (89, 32, 56);
INSERT INTO public.actsin VALUES (90, 40, 56);
INSERT INTO public.actsin VALUES (91, 62, 56);
INSERT INTO public.actsin VALUES (92, 59, 57);
INSERT INTO public.actsin VALUES (93, 20, 58);
INSERT INTO public.actsin VALUES (94, 25, 58);
INSERT INTO public.actsin VALUES (95, 2, 59);
INSERT INTO public.actsin VALUES (96, 35, 59);
INSERT INTO public.actsin VALUES (97, 33, 60);
INSERT INTO public.actsin VALUES (98, 5, 61);
INSERT INTO public.actsin VALUES (99, 12, 61);
INSERT INTO public.actsin VALUES (100, 21, 61);
INSERT INTO public.actsin VALUES (101, 22, 62);
INSERT INTO public.actsin VALUES (102, 15, 63);
INSERT INTO public.actsin VALUES (103, 26, 64);
INSERT INTO public.actsin VALUES (104, 41, 64);
INSERT INTO public.actsin VALUES (105, 63, 64);
INSERT INTO public.actsin VALUES (106, 67, 64);
INSERT INTO public.actsin VALUES (107, 42, 65);
INSERT INTO public.actsin VALUES (108, 41, 66);
INSERT INTO public.actsin VALUES (109, 50, 67);
INSERT INTO public.actsin VALUES (110, 66, 67);
INSERT INTO public.actsin VALUES (111, 23, 68);
INSERT INTO public.actsin VALUES (112, 43, 69);
INSERT INTO public.actsin VALUES (113, 71, 70);
INSERT INTO public.actsin VALUES (114, 64, 71);
INSERT INTO public.actsin VALUES (115, 69, 72);
INSERT INTO public.actsin VALUES (116, 62, 73);
INSERT INTO public.actsin VALUES (117, 50, 73);
INSERT INTO public.actsin VALUES (118, 45, 74);
INSERT INTO public.actsin VALUES (119, 2, 75);
INSERT INTO public.actsin VALUES (120, 42, 76);
INSERT INTO public.actsin VALUES (121, 66, 77);
INSERT INTO public.actsin VALUES (122, 68, 78);
INSERT INTO public.actsin VALUES (123, 47, 79);
INSERT INTO public.actsin VALUES (124, 56, 80);
INSERT INTO public.actsin VALUES (125, 38, 81);
INSERT INTO public.actsin VALUES (126, 26, 82);
INSERT INTO public.actsin VALUES (127, 50, 83);
INSERT INTO public.actsin VALUES (128, 48, 84);
INSERT INTO public.actsin VALUES (129, 63, 85);
INSERT INTO public.actsin VALUES (130, 66, 86);
INSERT INTO public.actsin VALUES (131, 20, 87);
INSERT INTO public.actsin VALUES (132, 55, 88);
INSERT INTO public.actsin VALUES (133, 1, 89);
INSERT INTO public.actsin VALUES (134, 36, 90);
INSERT INTO public.actsin VALUES (135, 67, 90);
INSERT INTO public.actsin VALUES (136, 24, 91);
INSERT INTO public.actsin VALUES (137, 3, 92);
INSERT INTO public.actsin VALUES (138, 53, 93);
INSERT INTO public.actsin VALUES (139, 9, 94);
INSERT INTO public.actsin VALUES (140, 1, 95);
INSERT INTO public.actsin VALUES (141, 34, 96);
INSERT INTO public.actsin VALUES (142, 47, 96);
INSERT INTO public.actsin VALUES (143, 29, 96);
INSERT INTO public.actsin VALUES (144, 3, 97);
INSERT INTO public.actsin VALUES (145, 18, 98);
INSERT INTO public.actsin VALUES (146, 36, 99);
INSERT INTO public.actsin VALUES (147, 9, 100);
INSERT INTO public.actsin VALUES (148, 52, 101);
INSERT INTO public.actsin VALUES (149, 19, 101);
INSERT INTO public.actsin VALUES (150, 33, 102);
INSERT INTO public.actsin VALUES (151, 55, 102);
INSERT INTO public.actsin VALUES (152, 8, 103);
INSERT INTO public.actsin VALUES (153, 46, 104);
INSERT INTO public.actsin VALUES (154, 36, 105);
INSERT INTO public.actsin VALUES (155, 65, 105);
INSERT INTO public.actsin VALUES (156, 69, 105);
INSERT INTO public.actsin VALUES (157, 48, 105);
INSERT INTO public.actsin VALUES (158, 43, 106);
INSERT INTO public.actsin VALUES (159, 17, 106);
INSERT INTO public.actsin VALUES (160, 8, 107);
INSERT INTO public.actsin VALUES (161, 57, 108);
INSERT INTO public.actsin VALUES (162, 57, 109);
INSERT INTO public.actsin VALUES (163, 1, 110);
INSERT INTO public.actsin VALUES (164, 30, 111);
INSERT INTO public.actsin VALUES (165, 16, 111);
INSERT INTO public.actsin VALUES (166, 51, 112);
INSERT INTO public.actsin VALUES (167, 10, 113);
INSERT INTO public.actsin VALUES (168, 24, 114);
INSERT INTO public.actsin VALUES (169, 26, 115);
INSERT INTO public.actsin VALUES (170, 25, 116);
INSERT INTO public.actsin VALUES (171, 11, 117);
INSERT INTO public.actsin VALUES (172, 29, 117);
INSERT INTO public.actsin VALUES (173, 23, 118);
INSERT INTO public.actsin VALUES (174, 39, 118);
INSERT INTO public.actsin VALUES (175, 11, 119);
INSERT INTO public.actsin VALUES (176, 18, 120);
INSERT INTO public.actsin VALUES (177, 68, 121);
INSERT INTO public.actsin VALUES (178, 35, 122);
INSERT INTO public.actsin VALUES (179, 6, 123);
INSERT INTO public.actsin VALUES (180, 13, 123);
INSERT INTO public.actsin VALUES (181, 28, 123);
INSERT INTO public.actsin VALUES (182, 31, 123);
INSERT INTO public.actsin VALUES (183, 44, 123);
INSERT INTO public.actsin VALUES (184, 49, 123);
INSERT INTO public.actsin VALUES (185, 54, 123);
INSERT INTO public.actsin VALUES (186, 61, 123);
INSERT INTO public.actsin VALUES (187, 59, 124);
INSERT INTO public.actsin VALUES (188, 38, 125);
INSERT INTO public.actsin VALUES (189, 34, 126);
INSERT INTO public.actsin VALUES (190, 32, 127);
INSERT INTO public.actsin VALUES (191, 55, 128);
INSERT INTO public.actsin VALUES (192, 4, 129);
INSERT INTO public.actsin VALUES (193, 60, 130);
INSERT INTO public.actsin VALUES (194, 9, 131);
INSERT INTO public.actsin VALUES (195, 19, 131);
INSERT INTO public.actsin VALUES (196, 52, 131);
INSERT INTO public.actsin VALUES (197, 68, 132);
INSERT INTO public.actsin VALUES (198, 38, 133);
INSERT INTO public.actsin VALUES (199, 33, 134);
INSERT INTO public.actsin VALUES (200, 23, 135);
INSERT INTO public.actsin VALUES (201, 64, 136);
INSERT INTO public.actsin VALUES (202, 70, 136);
INSERT INTO public.actsin VALUES (203, 42, 137);
INSERT INTO public.actsin VALUES (204, 32, 138);
INSERT INTO public.actsin VALUES (205, 69, 139);
INSERT INTO public.actsin VALUES (206, 5, 140);
INSERT INTO public.actsin VALUES (207, 12, 140);
INSERT INTO public.actsin VALUES (208, 21, 140);
INSERT INTO public.actsin VALUES (209, 58, 141);
INSERT INTO public.actsin VALUES (210, 65, 142);
INSERT INTO public.actsin VALUES (211, 71, 143);
INSERT INTO public.actsin VALUES (212, 62, 144);
INSERT INTO public.actsin VALUES (213, 34, 145);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.customers VALUES (2, 'Wolfgang Ackermann', 'Austria', 'male', '1971-11-17', '2018-10-15');
INSERT INTO public.customers VALUES (3, 'Daniela Herzog', 'Austria', 'female', '1974-08-07', '2019-02-14');
INSERT INTO public.customers VALUES (4, 'Julia Jung', 'Austria', 'female', '1991-01-04', '2017-11-22');
INSERT INTO public.customers VALUES (5, 'Juliane Kirsch', 'Austria', 'female', '1977-03-01', '2018-12-16');
INSERT INTO public.customers VALUES (6, 'Rowanne Couperus', 'Belgium', 'female', '1994-04-05', '2018-08-26');
INSERT INTO public.customers VALUES (7, 'Annelous Sneep', 'Belgium', 'female', '1993-11-14', '2018-05-12');
INSERT INTO public.customers VALUES (8, 'Jaëla van den Dolder', 'Belgium', 'female', '1990-08-31', '2018-02-08');
INSERT INTO public.customers VALUES (9, 'Antal van Looij', 'Belgium', 'male', '1982-06-18', '2019-03-10');
INSERT INTO public.customers VALUES (10, 'Arnout Veenhuis', 'Belgium', 'male', '1984-07-26', '2017-01-28');
INSERT INTO public.customers VALUES (11, 'Yakup Mes', 'Belgium', 'male', '1978-04-28', '2019-02-19');
INSERT INTO public.customers VALUES (12, 'Kristine J. Lauritsen', 'Denmark', 'female', '1994-01-14', '2018-12-02');
INSERT INTO public.customers VALUES (13, 'Thomas T. Nissen', 'Denmark', 'male', '1975-09-25', '2017-04-30');
INSERT INTO public.customers VALUES (14, 'Niels M. Holm', 'Denmark', 'male', '1991-12-29', '2018-01-26');
INSERT INTO public.customers VALUES (15, 'Jasmin M. Krogh', 'Denmark', 'female', '1977-11-12', '2018-06-20');
INSERT INTO public.customers VALUES (16, 'Sofia J. Pedersen', 'Denmark', 'female', '1990-05-27', '2018-10-02');
INSERT INTO public.customers VALUES (17, 'Ida E. Gregersen', 'Denmark', 'female', '1998-09-15', '2018-02-07');
INSERT INTO public.customers VALUES (18, 'Nikolaj L. Jensen', 'Denmark', 'male', '1995-06-03', '2019-01-14');
INSERT INTO public.customers VALUES (19, 'Avelaine Piedalue', 'France', 'female', '1972-04-14', '2017-01-13');
INSERT INTO public.customers VALUES (20, 'Jacqueline Cloutier', 'France', 'female', '1990-09-30', '2018-11-03');
INSERT INTO public.customers VALUES (21, 'Avelaine Corbeil', 'France', 'female', '1986-03-17', '2017-06-11');
INSERT INTO public.customers VALUES (22, 'Delit Perillard', 'France', 'female', '1970-01-10', '2018-11-18');
INSERT INTO public.customers VALUES (23, 'Fleurette Pomerleau', 'France', 'female', '1981-12-10', '2017-09-04');
INSERT INTO public.customers VALUES (24, 'Christien Tachel', 'France', 'male', '1991-06-26', '2018-09-21');
INSERT INTO public.customers VALUES (25, 'Fiacre Montminy', 'France', 'male', '1973-08-01', '2017-03-29');
INSERT INTO public.customers VALUES (26, 'Marcel Sicard', 'France', 'male', '1988-08-06', '2017-01-20');
INSERT INTO public.customers VALUES (27, 'Perrin Patel', 'France', 'male', '1994-10-30', '2018-12-20');
INSERT INTO public.customers VALUES (28, 'Sidney Généreux', 'France', 'male', '1980-12-01', '2017-02-04');
INSERT INTO public.customers VALUES (29, 'Loyal Arcouet', 'France', 'male', '1995-08-13', '2017-10-30');
INSERT INTO public.customers VALUES (30, 'Gradasso Mousseau', 'France', 'male', '1976-07-11', '2017-10-10');
INSERT INTO public.customers VALUES (31, 'Christien D''Aubigné', 'France', 'male', '1986-11-06', '2018-02-13');
INSERT INTO public.customers VALUES (32, 'Hayden O''Donnell', 'Great Britan', 'male', '1991-11-07', '2017-11-20');
INSERT INTO public.customers VALUES (33, 'Oliver Fleming', 'Great Britan', 'male', '1981-03-04', '2018-02-22');
INSERT INTO public.customers VALUES (34, 'Oscar Stanley', 'Great Britan', 'male', '1993-12-01', '2017-03-31');
INSERT INTO public.customers VALUES (35, 'Harvey Jarvis', 'Great Britan', 'male', '1990-01-16', '2017-05-22');
INSERT INTO public.customers VALUES (36, 'Jacob Hope', 'Great Britan', 'male', '1979-08-27', '2018-06-24');
INSERT INTO public.customers VALUES (37, 'Sienna Forster', 'Great Britan', 'female', '1984-12-16', '2018-12-09');
INSERT INTO public.customers VALUES (38, 'Millie Marsden', 'Great Britan', 'female', '1974-07-02', '2017-11-06');
INSERT INTO public.customers VALUES (39, 'Amy Haynes', 'Great Britan', 'female', '1975-07-28', '2018-01-19');
INSERT INTO public.customers VALUES (40, 'Matilda Connor', 'Great Britan', 'female', '1990-12-18', '2019-01-18');
INSERT INTO public.customers VALUES (41, 'Zara Mitchell', 'Great Britan', 'female', '1994-07-08', '2017-06-12');
INSERT INTO public.customers VALUES (42, 'Takáts Agoti', 'Hungary', 'female', '1992-07-07', '2018-11-08');
INSERT INTO public.customers VALUES (43, 'Szôllôs Erzebet', 'Hungary', 'female', '1995-09-04', '2018-08-17');
INSERT INTO public.customers VALUES (44, 'Lakatos Mária', 'Hungary', 'female', '1994-11-28', '2018-08-12');
INSERT INTO public.customers VALUES (45, 'Vargha Ivett', 'Hungary', 'female', '1998-11-27', '2017-08-09');
INSERT INTO public.customers VALUES (46, 'Söröss Ema', 'Hungary', 'female', '1984-03-13', '2017-06-26');
INSERT INTO public.customers VALUES (47, 'Kállai Sólyom', 'Hungary', 'male', '1983-10-29', '2018-10-18');
INSERT INTO public.customers VALUES (48, 'Mayer Károly', 'Hungary', 'male', '1991-06-02', '2019-02-26');
INSERT INTO public.customers VALUES (49, 'Havasy Kristof', 'Hungary', 'male', '1998-06-13', '2017-01-18');
INSERT INTO public.customers VALUES (50, 'Csordás Ármin', 'Hungary', 'male', '1986-11-30', '2018-04-23');
INSERT INTO public.customers VALUES (51, 'Sághy Sebes', 'Hungary', 'male', '1976-01-04', '2017-03-15');
INSERT INTO public.customers VALUES (52, 'Szepessi Marton', 'Hungary', 'male', '1983-03-14', '2018-03-24');
INSERT INTO public.customers VALUES (53, 'Teresio Panicucci', 'Italy', 'male', '1999-07-21', '2018-11-06');
INSERT INTO public.customers VALUES (54, 'Demetrio Palermo', 'Italy', 'male', '1997-10-10', '2018-10-17');
INSERT INTO public.customers VALUES (55, 'Facino Milano', 'Italy', 'male', '1973-05-23', '2018-01-02');
INSERT INTO public.customers VALUES (56, 'Dionisio Li Fonti', 'Italy', 'male', '1998-01-11', '2019-02-12');
INSERT INTO public.customers VALUES (57, 'Mario Lettiere', 'Italy', 'male', '1975-05-04', '2018-01-30');
INSERT INTO public.customers VALUES (58, 'Rocco Buccho', 'Italy', 'male', '1999-07-03', '2018-02-27');
INSERT INTO public.customers VALUES (59, 'Cristoforo Mancini', 'Italy', 'male', '1980-06-05', '2018-01-12');
INSERT INTO public.customers VALUES (60, 'Gloria Folliero', 'Italy', 'female', '1972-03-09', '2018-10-24');
INSERT INTO public.customers VALUES (61, 'Nella Manfrin', 'Italy', 'female', '1974-01-11', '2017-05-14');
INSERT INTO public.customers VALUES (62, 'Gina Lucciano', 'Italy', 'female', '1985-11-29', '2018-05-22');
INSERT INTO public.customers VALUES (63, 'Candida Padovano', 'Italy', 'female', '1976-03-21', '2018-10-13');
INSERT INTO public.customers VALUES (64, 'Dalia Lucciano', 'Italy', 'female', '1972-09-18', '2018-09-20');
INSERT INTO public.customers VALUES (65, 'Vittoria Bellucci', 'Italy', 'female', '1978-04-02', '2017-04-09');
INSERT INTO public.customers VALUES (66, 'Filippa Toscani', 'Italy', 'female', '1981-04-23', '2017-02-28');
INSERT INTO public.customers VALUES (67, 'Dora Milanesi', 'Italy', 'female', '1998-04-19', '2018-11-22');
INSERT INTO public.customers VALUES (68, 'Irma Siciliani', 'Italy', 'female', '1980-01-20', '2019-02-18');
INSERT INTO public.customers VALUES (69, 'Violetta Pagnotto', 'Italy', 'female', '1999-05-04', '2018-12-23');
INSERT INTO public.customers VALUES (70, 'Annabella Endrizzi', 'Italy', 'female', '1971-07-31', '2018-05-10');
INSERT INTO public.customers VALUES (71, 'Donata Bellucci', 'Italy', 'female', '1981-04-02', '2017-11-23');
INSERT INTO public.customers VALUES (72, 'Macaria Onio', 'Italy', 'female', '1997-04-20', '2017-09-07');
INSERT INTO public.customers VALUES (73, 'Veneranda Milani', 'Italy', 'female', '1983-01-15', '2018-01-15');
INSERT INTO public.customers VALUES (74, 'Fausto Sabbatini', 'Italy', 'male', '1978-01-23', '2018-03-16');
INSERT INTO public.customers VALUES (75, 'Luca Pinto', 'Italy', 'male', '1971-02-04', '2019-03-09');
INSERT INTO public.customers VALUES (76, 'Michelino Barese', 'Italy', 'male', '1986-04-22', '2017-10-06');
INSERT INTO public.customers VALUES (77, 'Nunzio Milanesi', 'Italy', 'male', '1972-04-06', '2018-04-27');
INSERT INTO public.customers VALUES (78, 'Doroteo Napolitano', 'Italy', 'male', '1992-06-01', '2017-07-27');
INSERT INTO public.customers VALUES (79, 'Quarantino Barese', 'Italy', 'male', '1978-11-29', '2017-09-27');
INSERT INTO public.customers VALUES (80, 'Tymoteusz Nowak', 'Poland', 'male', '1983-07-27', '2018-11-17');
INSERT INTO public.customers VALUES (81, 'Jarek Tomaszewski', 'Poland', 'male', '1972-11-30', '2018-11-01');
INSERT INTO public.customers VALUES (82, 'Dobrogost Nowakowski', 'Poland', 'male', '1993-08-14', '2018-02-21');
INSERT INTO public.customers VALUES (83, 'Marek Zawadzki', 'Poland', 'male', '1995-11-21', '2019-04-01');
INSERT INTO public.customers VALUES (84, 'Maksym Wojciechowski', 'Poland', 'male', '1992-11-23', '2018-08-15');
INSERT INTO public.customers VALUES (85, 'Teofil Szczepański', 'Poland', 'male', '1979-02-25', '2018-10-14');
INSERT INTO public.customers VALUES (86, 'Albin Jaworski', 'Poland', 'male', '1984-05-01', '2017-12-15');
INSERT INTO public.customers VALUES (87, 'Frydryk Wieczorek', 'Poland', 'male', '1996-11-17', '2017-06-01');
INSERT INTO public.customers VALUES (88, 'Bazyli Kalinowski', 'Poland', 'male', '1973-03-07', '2018-07-26');
INSERT INTO public.customers VALUES (89, 'Klementyna Borkowska', 'Poland', 'female', '1975-05-10', '2017-03-03');
INSERT INTO public.customers VALUES (90, 'Zosia Adamczyk', 'Poland', 'female', '1988-12-31', '2019-01-13');
INSERT INTO public.customers VALUES (91, 'Ewa Zawadzka', 'Poland', 'female', '1988-07-13', '2018-01-05');
INSERT INTO public.customers VALUES (92, 'Honorata Nowak', 'Poland', 'female', '1986-05-02', '2017-09-21');
INSERT INTO public.customers VALUES (93, 'Ivi Boškan', 'Slovenia', 'female', '1997-08-12', '2017-04-19');
INSERT INTO public.customers VALUES (94, 'Seima Andreč', 'Slovenia', 'female', '1989-11-19', '2017-04-08');
INSERT INTO public.customers VALUES (95, 'Darija Pokec', 'Slovenia', 'female', '1992-01-28', '2017-05-31');
INSERT INTO public.customers VALUES (96, 'Cvijeta Hervatski', 'Slovenia', 'female', '1981-07-15', '2018-09-19');
INSERT INTO public.customers VALUES (97, 'Šida Črnčič', 'Slovenia', 'female', '1978-08-21', '2017-06-18');
INSERT INTO public.customers VALUES (98, 'Nesiha Tomat', 'Slovenia', 'female', '1977-07-07', '2017-09-22');
INSERT INTO public.customers VALUES (99, 'Majdi Rozin', 'Slovenia', 'female', '1996-09-12', '2017-01-31');
INSERT INTO public.customers VALUES (100, 'Tonček Bolje', 'Slovenia', 'male', '1992-12-14', '2018-02-20');
INSERT INTO public.customers VALUES (101, 'Tunjo Krličević', 'Slovenia', 'male', '1994-10-29', '2019-03-23');
INSERT INTO public.customers VALUES (102, 'Jaša Zorzut', 'Slovenia', 'male', '1984-10-06', '2018-07-15');
INSERT INTO public.customers VALUES (103, 'Seljim Runovec', 'Slovenia', 'male', '1982-01-12', '2017-08-12');
INSERT INTO public.customers VALUES (104, 'Dimitri Zambrano Morales', 'Spain', 'male', '1992-06-21', '2017-04-12');
INSERT INTO public.customers VALUES (105, 'Micael Cardona Razo', 'Spain', 'male', '1989-12-04', '2017-09-10');
INSERT INTO public.customers VALUES (106, 'Jenofonte Gaona Mireles', 'Spain', 'male', '1998-12-18', '2017-12-21');
INSERT INTO public.customers VALUES (107, 'Filippo Segovia Muro', 'Spain', 'male', '1996-12-29', '2018-02-12');
INSERT INTO public.customers VALUES (108, 'Saúl Tafoya Meraz', 'Spain', 'male', '1992-05-15', '2017-03-13');
INSERT INTO public.customers VALUES (109, 'Zohar Malave Ornelas', 'Spain', 'male', '1979-10-22', '2018-07-22');
INSERT INTO public.customers VALUES (110, 'Ann Guajardo Méndez', 'Spain', 'female', '1998-07-17', '2017-10-31');
INSERT INTO public.customers VALUES (111, 'Quirina Alcaraz Sánchez', 'Spain', 'female', '1980-11-05', '2017-06-17');
INSERT INTO public.customers VALUES (112, 'Exaltación Herrera Ceja', 'Spain', 'female', '1979-11-20', '2017-10-15');
INSERT INTO public.customers VALUES (113, 'Lucy Centeno Barrios', 'Spain', 'female', '1970-11-03', '2017-06-13');
INSERT INTO public.customers VALUES (114, 'Canela Gaona Lozano', 'Spain', 'female', '1997-04-01', '2017-02-14');
INSERT INTO public.customers VALUES (115, 'Merlin Rolón Badillo', 'Spain', 'female', '1977-10-14', '2019-02-21');
INSERT INTO public.customers VALUES (116, 'Maciela Casillas Peralta', 'Spain', 'female', '1991-03-30', '2017-12-10');
INSERT INTO public.customers VALUES (117, 'Moira Jurado Paez', 'Spain', 'female', '1996-01-30', '2018-11-09');
INSERT INTO public.customers VALUES (118, 'Digna Mateo Carrasquill', 'Spain', 'female', '1978-11-01', '2017-11-24');
INSERT INTO public.customers VALUES (119, 'Lisa Ibarra Valadez', 'Spain', 'female', '1998-12-08', '2019-03-06');
INSERT INTO public.customers VALUES (120, 'Robin J. Himes', 'USA', 'male', '1988-11-30', '2018-08-06');
INSERT INTO public.customers VALUES (121, 'Annie R. Barnett', 'USA', 'female', '1987-03-02', '2017-09-13');
INSERT INTO public.customers VALUES (122, 'Thelma B. Coward', 'USA', 'female', '1971-04-15', '2018-11-27');
INSERT INTO public.customers VALUES (123, 'Andrew J. Ramos', 'USA', 'male', '1994-03-11', '2018-12-30');


--
-- Data for Name: movies; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.movies VALUES (1, 'One Night at McCool''s', 'Comedy', 93, 2001, 2.09);
INSERT INTO public.movies VALUES (2, 'Swordfish', 'Drama', 99, 2001, 2.19);
INSERT INTO public.movies VALUES (3, 'What Women Want', 'Comedy', 127, 2001, 2.59);
INSERT INTO public.movies VALUES (4, 'Training Day', 'Drama', 122, 2001, 1.79);
INSERT INTO public.movies VALUES (5, 'The Fellowship of the Ring', 'Science Fiction & Fantasy', 178, 2001, 2.59);
INSERT INTO public.movies VALUES (6, 'Harry Potter and the Philosopher''s Stone', 'Science Fiction & Fantasy', 152, 2001, 2.69);
INSERT INTO public.movies VALUES (7, 'The Royal Tenenbaums', 'Comedy', 110, 2002, 1.89);
INSERT INTO public.movies VALUES (8, 'Waking Up in Reno', 'Comedy', 91, 2002, 2.59);
INSERT INTO public.movies VALUES (9, '11''09''''01 September 11', 'Drama', 134, 2002, 2.99);
INSERT INTO public.movies VALUES (10, 'Simone', 'Drama', 117, 2002, 2.69);
INSERT INTO public.movies VALUES (11, 'Showtime', 'Comedy', 95, 2002, 1.79);
INSERT INTO public.movies VALUES (12, 'The Two Towers', 'Science Fiction & Fantasy', 179, 2002, 2.39);
INSERT INTO public.movies VALUES (13, 'Harry Potter and the Chamber of Secrets', 'Science Fiction & Fantasy', 161, 2002, 1.79);
INSERT INTO public.movies VALUES (14, 'The Recruit', 'Mystery & Suspense', 115, 2003, 1.69);
INSERT INTO public.movies VALUES (15, 'Something''s Gotta Give', 'Comedy', 128, 2003, 1.69);
INSERT INTO public.movies VALUES (16, '25th Hour', 'Drama', 135, 2003, 1.59);
INSERT INTO public.movies VALUES (17, 'The Human Stain', 'Mystery & Suspense', 106, 2003, 1.99);
INSERT INTO public.movies VALUES (18, 'Secondhand Lions', 'Drama', 111, 2003, 1.69);
INSERT INTO public.movies VALUES (19, '21 Grams', 'Drama', 124, 2003, 2.09);
INSERT INTO public.movies VALUES (20, 'Love Actually', 'Comedy', 135, 2003, 2.29);
INSERT INTO public.movies VALUES (21, 'The Return of the King', 'Science Fiction & Fantasy', 200, 2003, 1.99);
INSERT INTO public.movies VALUES (22, 'Imagining Argentina', 'Art House & International', 107, 2004, 2.59);
INSERT INTO public.movies VALUES (23, 'Shall We Dance', 'Drama', 106, 2004, 1.69);
INSERT INTO public.movies VALUES (24, 'Welcome to Mooseport', 'Comedy', 110, 2004, 2.89);
INSERT INTO public.movies VALUES (25, 'Bridget Jones - The Edge of Reason', 'Drama', 108, 2004, 2.89);
INSERT INTO public.movies VALUES (26, 'Ray', 'Drama', 152, 2004, 2.59);
INSERT INTO public.movies VALUES (27, 'Monster', 'Drama', 109, 2004, 2.09);
INSERT INTO public.movies VALUES (28, 'Harry Potter and the Prisoner of Azkaban', 'Science Fiction & Fantasy', 142, 2004, 1.69);
INSERT INTO public.movies VALUES (29, 'Two for the Money', 'Drama', 122, 2005, 2.79);
INSERT INTO public.movies VALUES (30, 'Capote', 'Drama', 114, 2005, 2.39);
INSERT INTO public.movies VALUES (31, 'Harry Potter and the Goblet of Fire', 'Science Fiction & Fantasy', 157, 2005, 2.69);
INSERT INTO public.movies VALUES (32, 'A Good Woman', 'Drama', 93, 2006, 2.89);
INSERT INTO public.movies VALUES (33, 'V for Vendetta', 'Drama', 132, 2006, 1.59);
INSERT INTO public.movies VALUES (34, 'Failure to Launch', 'Drama', 97, 2006, 1.99);
INSERT INTO public.movies VALUES (35, 'Happy Feet', 'Animation', 108, 2006, 1.79);
INSERT INTO public.movies VALUES (36, 'World Trade Center', 'Drama', 129, 2006, 1.59);
INSERT INTO public.movies VALUES (37, 'Candy', 'Drama', 116, 2006, 1.59);
INSERT INTO public.movies VALUES (38, 'The Lake House', 'Drama', 99, 2006, 2.49);
INSERT INTO public.movies VALUES (39, 'I''m Not There', 'Drama', 135, 2007, 1.79);
INSERT INTO public.movies VALUES (40, 'Then She Found Me', 'Drama', 100, 2007, 1.99);
INSERT INTO public.movies VALUES (41, 'The Kingdom', 'Drama', 110, 2007, 2.09);
INSERT INTO public.movies VALUES (42, 'No Country for Old Men', 'Drama', 122, 2007, 1.49);
INSERT INTO public.movies VALUES (43, 'The Invasion', 'Mystery & Suspense', 99, 2007, 2.09);
INSERT INTO public.movies VALUES (44, 'Harry Potter and the Order of the Phoenix', 'Science Fiction & Fantasy', 138, 2007, 2.49);
INSERT INTO public.movies VALUES (45, 'Burn After Reading', 'Drama', 96, 2008, 2.39);
INSERT INTO public.movies VALUES (46, 'Sleepwalking', 'Drama', 101, 2008, 1.79);
INSERT INTO public.movies VALUES (47, 'Fool''s Gold', 'Action & Adventure', 112, 2008, 2.69);
INSERT INTO public.movies VALUES (48, 'Astro Boy', 'Action & Adventure', 94, 2009, 2.89);
INSERT INTO public.movies VALUES (49, 'Harry Potter and the Half-Blood Prince', 'Science Fiction & Fantasy', 153, 2009, 1.59);
INSERT INTO public.movies VALUES (50, 'Winter''s Bone', 'Drama', 100, 2010, 2.69);
INSERT INTO public.movies VALUES (51, 'Morning Glory', 'Comedy', 107, 2010, 2.99);
INSERT INTO public.movies VALUES (52, 'Fair Game', 'Drama', 108, 2010, 2.89);
INSERT INTO public.movies VALUES (53, 'The Fighter', 'Other', 116, 2010, 2.49);
INSERT INTO public.movies VALUES (54, 'Harry Potter and the Deathly Hallows – Part 1', 'Science Fiction & Fantasy', 146, 2010, 2.79);
INSERT INTO public.movies VALUES (55, 'The Other Woman', 'Drama', 102, 2011, 1.69);
INSERT INTO public.movies VALUES (56, 'Jack and Jill', 'Comedy', 91, 2011, 2.09);
INSERT INTO public.movies VALUES (57, 'Young Adult', 'Drama', 94, 2011, 1.99);
INSERT INTO public.movies VALUES (58, 'The Help', 'Drama', 146, 2011, 2.49);
INSERT INTO public.movies VALUES (59, 'Brighton Rock', 'Mystery & Suspense', 111, 2011, 2.39);
INSERT INTO public.movies VALUES (60, 'Black Death', 'Drama', 102, 2011, 2.69);
INSERT INTO public.movies VALUES (61, 'Harry Potter and the Deathly Hallows – Part 2', 'Science Fiction & Fantasy', 130, 2011, 1.99);
INSERT INTO public.movies VALUES (62, 'The Sessions', 'Drama', 95, 2012, 2.29);
INSERT INTO public.movies VALUES (63, 'Django Unchained', 'Other', 165, 2012, 2.69);
INSERT INTO public.movies VALUES (64, 'Cloud Atlas', 'Drama', 172, 2012, 2.89);
INSERT INTO public.movies VALUES (65, 'Ghost Rider: Spirit of Vengeance', 'Action & Adventure', 96, 2012, 1.79);
INSERT INTO public.movies VALUES (66, 'The Hunger Games', 'Drama', 142, 2012, 1.59);
INSERT INTO public.movies VALUES (67, 'White House Down', 'Drama', 131, 2013, 1.59);
INSERT INTO public.movies VALUES (68, 'The Company You Keep', 'Mystery & Suspense', 125, 2013, 2.39);
INSERT INTO public.movies VALUES (69, 'The Frozen Ground', 'Mystery & Suspense', 105, 2013, 2.49);
INSERT INTO public.movies VALUES (70, 'Captain Phillips', 'Drama', 134, 2013, 1.59);
INSERT INTO public.movies VALUES (71, 'Rio 2', 'Animation', 101, 2014, 1.79);


--
-- Data for Name: renting; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.renting VALUES (1, 41, 8, NULL, '2018-10-09');
INSERT INTO public.renting VALUES (2, 10, 29, 10, '2017-03-01');
INSERT INTO public.renting VALUES (3, 108, 45, 4, '2018-06-08');
INSERT INTO public.renting VALUES (4, 39, 66, 8, '2018-10-22');
INSERT INTO public.renting VALUES (5, 104, 15, 7, '2019-03-18');
INSERT INTO public.renting VALUES (6, 50, 71, 7, '2018-10-09');
INSERT INTO public.renting VALUES (7, 52, 21, NULL, '2018-11-10');
INSERT INTO public.renting VALUES (8, 73, 65, 10, '2018-06-05');
INSERT INTO public.renting VALUES (9, 78, 2, NULL, '2017-09-03');
INSERT INTO public.renting VALUES (10, 121, 43, NULL, '2017-11-08');
INSERT INTO public.renting VALUES (11, 61, 61, NULL, '2017-06-04');
INSERT INTO public.renting VALUES (12, 52, 65, 10, '2018-06-29');
INSERT INTO public.renting VALUES (13, 34, 58, 7, '2017-05-14');
INSERT INTO public.renting VALUES (14, 8, 29, NULL, '2018-08-03');
INSERT INTO public.renting VALUES (15, 13, 5, 10, '2017-11-25');
INSERT INTO public.renting VALUES (16, 59, 59, NULL, '2018-08-12');
INSERT INTO public.renting VALUES (17, 22, 46, 10, '2019-02-16');
INSERT INTO public.renting VALUES (18, 36, 39, 10, '2019-03-20');
INSERT INTO public.renting VALUES (19, 99, 12, NULL, '2018-09-16');
INSERT INTO public.renting VALUES (20, 73, 32, NULL, '2018-09-01');
INSERT INTO public.renting VALUES (21, 30, 60, 10, '2018-02-20');
INSERT INTO public.renting VALUES (22, 19, 35, NULL, '2017-05-03');
INSERT INTO public.renting VALUES (23, 46, 6, 9, '2018-04-09');
INSERT INTO public.renting VALUES (24, 57, 41, 7, '2018-08-16');
INSERT INTO public.renting VALUES (25, 66, 49, 7, '2017-08-09');
INSERT INTO public.renting VALUES (26, 118, 27, 8, '2018-12-01');
INSERT INTO public.renting VALUES (27, 7, 36, NULL, '2019-03-14');
INSERT INTO public.renting VALUES (28, 113, 40, 7, '2018-04-05');
INSERT INTO public.renting VALUES (29, 102, 66, 7, '2018-07-25');
INSERT INTO public.renting VALUES (30, 65, 47, 10, '2017-11-17');
INSERT INTO public.renting VALUES (31, 29, 64, NULL, '2018-11-20');
INSERT INTO public.renting VALUES (32, 8, 42, 10, '2019-02-13');
INSERT INTO public.renting VALUES (33, 111, 63, 8, '2018-07-11');
INSERT INTO public.renting VALUES (34, 52, 14, 6, '2018-09-02');
INSERT INTO public.renting VALUES (35, 91, 7, 8, '2019-03-27');
INSERT INTO public.renting VALUES (36, 87, 19, NULL, '2017-12-03');
INSERT INTO public.renting VALUES (37, 92, 37, NULL, '2018-05-26');
INSERT INTO public.renting VALUES (38, 108, 62, 10, '2018-09-15');
INSERT INTO public.renting VALUES (39, 25, 52, NULL, '2018-08-28');
INSERT INTO public.renting VALUES (40, 39, 27, 8, '2019-03-22');
INSERT INTO public.renting VALUES (41, 70, 57, 9, '2018-05-13');
INSERT INTO public.renting VALUES (42, 31, 43, 6, '2019-02-26');
INSERT INTO public.renting VALUES (43, 109, 35, NULL, '2019-01-22');
INSERT INTO public.renting VALUES (44, 62, 52, 6, '2019-01-04');
INSERT INTO public.renting VALUES (45, 12, 10, 6, '2019-04-13');
INSERT INTO public.renting VALUES (46, 105, 12, 10, '2018-05-30');
INSERT INTO public.renting VALUES (47, 72, 67, NULL, '2018-05-19');
INSERT INTO public.renting VALUES (48, 57, 25, NULL, '2018-06-06');
INSERT INTO public.renting VALUES (49, 117, 15, NULL, '2019-03-01');
INSERT INTO public.renting VALUES (50, 29, 23, NULL, '2018-08-02');
INSERT INTO public.renting VALUES (51, 94, 60, NULL, '2018-02-03');
INSERT INTO public.renting VALUES (52, 103, 70, NULL, '2018-10-11');
INSERT INTO public.renting VALUES (53, 3, 23, NULL, '2019-03-13');
INSERT INTO public.renting VALUES (54, 47, 42, 8, '2019-03-13');
INSERT INTO public.renting VALUES (55, 66, 37, NULL, '2018-04-09');
INSERT INTO public.renting VALUES (56, 81, 6, 10, '2018-12-25');
INSERT INTO public.renting VALUES (57, 25, 29, 6, '2018-04-05');
INSERT INTO public.renting VALUES (58, 56, 50, 6, '2019-05-01');
INSERT INTO public.renting VALUES (59, 41, 44, 4, '2017-09-18');
INSERT INTO public.renting VALUES (60, 99, 14, NULL, '2018-04-18');
INSERT INTO public.renting VALUES (61, 89, 57, 8, '2018-04-23');
INSERT INTO public.renting VALUES (62, 76, 45, 7, '2019-04-17');
INSERT INTO public.renting VALUES (63, 94, 49, 10, '2018-12-10');
INSERT INTO public.renting VALUES (64, 28, 7, 7, '2018-03-22');
INSERT INTO public.renting VALUES (65, 61, 29, 9, '2018-11-27');
INSERT INTO public.renting VALUES (66, 111, 34, NULL, '2017-09-26');
INSERT INTO public.renting VALUES (67, 42, 21, NULL, '2019-03-19');
INSERT INTO public.renting VALUES (68, 21, 6, 9, '2017-06-29');
INSERT INTO public.renting VALUES (69, 18, 16, 6, '2019-03-06');
INSERT INTO public.renting VALUES (70, 10, 44, NULL, '2017-12-17');
INSERT INTO public.renting VALUES (71, 111, 1, 5, '2018-07-21');
INSERT INTO public.renting VALUES (72, 63, 66, 5, '2018-12-31');
INSERT INTO public.renting VALUES (73, 103, 33, 9, '2017-09-04');
INSERT INTO public.renting VALUES (74, 13, 34, 7, '2017-06-28');
INSERT INTO public.renting VALUES (75, 26, 70, NULL, '2017-11-03');
INSERT INTO public.renting VALUES (76, 112, 10, NULL, '2018-08-31');
INSERT INTO public.renting VALUES (77, 99, 8, NULL, '2017-08-19');
INSERT INTO public.renting VALUES (78, 31, 13, 10, '2018-08-02');
INSERT INTO public.renting VALUES (79, 35, 69, 9, '2017-07-03');
INSERT INTO public.renting VALUES (80, 72, 64, NULL, '2017-09-12');
INSERT INTO public.renting VALUES (81, 114, 30, 10, '2019-02-09');
INSERT INTO public.renting VALUES (82, 74, 29, NULL, '2019-02-15');
INSERT INTO public.renting VALUES (83, 120, 61, 6, '2018-08-26');
INSERT INTO public.renting VALUES (84, 82, 12, NULL, '2018-03-01');
INSERT INTO public.renting VALUES (85, 95, 63, 10, '2017-12-30');
INSERT INTO public.renting VALUES (86, 121, 19, 9, '2018-10-12');
INSERT INTO public.renting VALUES (87, 64, 63, NULL, '2019-04-24');
INSERT INTO public.renting VALUES (88, 114, 16, NULL, '2018-05-20');
INSERT INTO public.renting VALUES (89, 25, 8, NULL, '2018-11-29');
INSERT INTO public.renting VALUES (90, 86, 9, 10, '2018-09-09');
INSERT INTO public.renting VALUES (91, 118, 40, 5, '2018-09-22');
INSERT INTO public.renting VALUES (92, 112, 47, 9, '2019-03-12');
INSERT INTO public.renting VALUES (93, 54, 2, 8, '2018-11-02');
INSERT INTO public.renting VALUES (94, 91, 54, NULL, '2018-11-23');
INSERT INTO public.renting VALUES (95, 107, 49, 9, '2019-02-09');
INSERT INTO public.renting VALUES (96, 97, 4, 7, '2018-01-15');
INSERT INTO public.renting VALUES (97, 35, 58, 9, '2017-06-19');
INSERT INTO public.renting VALUES (98, 93, 40, 7, '2018-12-06');
INSERT INTO public.renting VALUES (99, 96, 36, 7, '2019-04-21');
INSERT INTO public.renting VALUES (100, 33, 18, 6, '2018-08-23');
INSERT INTO public.renting VALUES (101, 62, 36, NULL, '2019-03-03');
INSERT INTO public.renting VALUES (102, 92, 66, 6, '2018-08-18');
INSERT INTO public.renting VALUES (103, 46, 36, 7, '2017-09-16');
INSERT INTO public.renting VALUES (104, 100, 29, 6, '2019-03-11');
INSERT INTO public.renting VALUES (105, 91, 62, 9, '2018-11-30');
INSERT INTO public.renting VALUES (106, 27, 7, NULL, '2019-02-27');
INSERT INTO public.renting VALUES (107, 24, 36, NULL, '2019-04-19');
INSERT INTO public.renting VALUES (108, 31, 33, NULL, '2018-10-02');
INSERT INTO public.renting VALUES (109, 21, 1, NULL, '2018-07-17');
INSERT INTO public.renting VALUES (110, 67, 31, NULL, '2018-12-12');
INSERT INTO public.renting VALUES (111, 113, 24, 6, '2018-02-04');
INSERT INTO public.renting VALUES (112, 21, 30, 5, '2018-09-06');
INSERT INTO public.renting VALUES (113, 49, 51, 9, '2018-02-16');
INSERT INTO public.renting VALUES (114, 85, 36, 8, '2019-02-09');
INSERT INTO public.renting VALUES (115, 13, 44, 7, '2019-02-06');
INSERT INTO public.renting VALUES (116, 57, 56, 9, '2019-02-06');
INSERT INTO public.renting VALUES (117, 84, 53, NULL, '2018-10-27');
INSERT INTO public.renting VALUES (118, 35, 31, 5, '2017-10-02');
INSERT INTO public.renting VALUES (119, 27, 21, 7, '2019-03-08');
INSERT INTO public.renting VALUES (120, 116, 50, NULL, '2018-07-25');
INSERT INTO public.renting VALUES (121, 38, 49, 8, '2017-12-19');
INSERT INTO public.renting VALUES (122, 26, 19, NULL, '2018-05-13');
INSERT INTO public.renting VALUES (123, 77, 25, 7, '2018-12-10');
INSERT INTO public.renting VALUES (124, 107, 6, NULL, '2018-06-14');
INSERT INTO public.renting VALUES (125, 52, 16, 9, '2018-08-10');
INSERT INTO public.renting VALUES (126, 53, 57, 9, '2019-04-25');
INSERT INTO public.renting VALUES (127, 46, 25, NULL, '2018-01-04');
INSERT INTO public.renting VALUES (128, 44, 14, NULL, '2019-04-18');
INSERT INTO public.renting VALUES (129, 107, 49, 9, '2018-10-13');
INSERT INTO public.renting VALUES (130, 71, 40, 10, '2019-04-24');
INSERT INTO public.renting VALUES (131, 92, 19, NULL, '2018-11-27');
INSERT INTO public.renting VALUES (132, 90, 22, NULL, '2019-03-15');
INSERT INTO public.renting VALUES (133, 26, 24, 10, '2018-11-29');
INSERT INTO public.renting VALUES (134, 67, 52, NULL, '2018-12-09');
INSERT INTO public.renting VALUES (135, 88, 34, NULL, '2019-04-22');
INSERT INTO public.renting VALUES (136, 108, 25, 8, '2017-11-03');
INSERT INTO public.renting VALUES (137, 121, 32, NULL, '2018-09-07');
INSERT INTO public.renting VALUES (138, 55, 59, NULL, '2018-03-15');
INSERT INTO public.renting VALUES (139, 74, 46, 7, '2018-05-11');
INSERT INTO public.renting VALUES (140, 92, 52, NULL, '2019-01-11');
INSERT INTO public.renting VALUES (141, 54, 63, 9, '2019-02-17');
INSERT INTO public.renting VALUES (142, 19, 53, NULL, '2019-02-09');
INSERT INTO public.renting VALUES (143, 62, 63, NULL, '2019-02-07');
INSERT INTO public.renting VALUES (144, 94, 61, 10, '2017-12-28');
INSERT INTO public.renting VALUES (145, 109, 10, 6, '2019-02-16');
INSERT INTO public.renting VALUES (146, 95, 34, 10, '2017-09-05');
INSERT INTO public.renting VALUES (147, 58, 64, 5, '2018-06-27');
INSERT INTO public.renting VALUES (148, 114, 52, NULL, '2019-01-26');
INSERT INTO public.renting VALUES (149, 49, 46, NULL, '2017-06-02');
INSERT INTO public.renting VALUES (150, 64, 40, NULL, '2018-12-14');
INSERT INTO public.renting VALUES (151, 26, 23, 8, '2017-12-25');
INSERT INTO public.renting VALUES (152, 97, 63, NULL, '2017-07-28');
INSERT INTO public.renting VALUES (153, 113, 8, NULL, '2018-01-13');
INSERT INTO public.renting VALUES (154, 79, 23, 8, '2018-06-19');
INSERT INTO public.renting VALUES (155, 78, 26, 7, '2018-07-13');
INSERT INTO public.renting VALUES (156, 76, 62, NULL, '2018-12-06');
INSERT INTO public.renting VALUES (157, 66, 46, 9, '2017-04-20');
INSERT INTO public.renting VALUES (158, 25, 12, NULL, '2019-03-14');
INSERT INTO public.renting VALUES (159, 73, 56, 7, '2018-08-01');
INSERT INTO public.renting VALUES (160, 64, 32, 9, '2019-02-20');
INSERT INTO public.renting VALUES (161, 46, 10, 8, '2018-07-13');
INSERT INTO public.renting VALUES (162, 92, 36, 8, '2018-01-28');
INSERT INTO public.renting VALUES (163, 80, 3, NULL, '2019-03-18');
INSERT INTO public.renting VALUES (164, 94, 23, 8, '2017-09-30');
INSERT INTO public.renting VALUES (165, 88, 69, NULL, '2019-03-12');
INSERT INTO public.renting VALUES (166, 100, 17, NULL, '2018-07-28');
INSERT INTO public.renting VALUES (167, 100, 39, 10, '2018-04-07');
INSERT INTO public.renting VALUES (168, 61, 41, NULL, '2017-10-26');
INSERT INTO public.renting VALUES (169, 65, 38, 10, '2018-02-11');
INSERT INTO public.renting VALUES (170, 36, 1, 10, '2018-10-18');
INSERT INTO public.renting VALUES (171, 25, 40, NULL, '2019-03-24');
INSERT INTO public.renting VALUES (172, 49, 41, 8, '2017-10-30');
INSERT INTO public.renting VALUES (173, 118, 39, NULL, '2018-09-12');
INSERT INTO public.renting VALUES (174, 28, 29, NULL, '2018-07-03');
INSERT INTO public.renting VALUES (175, 38, 47, 9, '2018-06-01');
INSERT INTO public.renting VALUES (176, 84, 3, NULL, '2019-02-15');
INSERT INTO public.renting VALUES (177, 102, 64, 10, '2018-12-06');
INSERT INTO public.renting VALUES (178, 121, 70, 9, '2019-01-28');
INSERT INTO public.renting VALUES (179, 49, 51, 6, '2019-04-30');
INSERT INTO public.renting VALUES (180, 79, 35, 7, '2018-07-16');
INSERT INTO public.renting VALUES (181, 112, 18, NULL, '2018-03-22');
INSERT INTO public.renting VALUES (182, 92, 46, NULL, '2018-11-26');
INSERT INTO public.renting VALUES (183, 120, 35, 8, '2019-03-22');
INSERT INTO public.renting VALUES (184, 25, 10, 6, '2019-01-01');
INSERT INTO public.renting VALUES (185, 55, 27, NULL, '2018-03-08');
INSERT INTO public.renting VALUES (186, 109, 62, 7, '2019-01-18');
INSERT INTO public.renting VALUES (187, 7, 44, 8, '2018-06-23');
INSERT INTO public.renting VALUES (188, 89, 26, NULL, '2017-08-02');
INSERT INTO public.renting VALUES (189, 99, 49, 10, '2018-11-12');
INSERT INTO public.renting VALUES (190, 63, 55, 5, '2018-12-17');
INSERT INTO public.renting VALUES (191, 58, 26, 10, '2019-04-08');
INSERT INTO public.renting VALUES (192, 22, 14, NULL, '2018-12-22');
INSERT INTO public.renting VALUES (193, 55, 15, NULL, '2018-02-01');
INSERT INTO public.renting VALUES (194, 103, 67, NULL, '2017-11-18');
INSERT INTO public.renting VALUES (195, 21, 26, NULL, '2017-12-19');
INSERT INTO public.renting VALUES (196, 98, 50, 9, '2019-01-31');
INSERT INTO public.renting VALUES (197, 38, 53, NULL, '2018-11-05');
INSERT INTO public.renting VALUES (198, 15, 69, 9, '2018-11-18');
INSERT INTO public.renting VALUES (199, 111, 20, NULL, '2017-08-17');
INSERT INTO public.renting VALUES (200, 86, 46, 3, '2018-08-26');
INSERT INTO public.renting VALUES (201, 61, 24, 8, '2019-03-20');
INSERT INTO public.renting VALUES (202, 113, 27, NULL, '2017-11-12');
INSERT INTO public.renting VALUES (203, 2, 41, 6, '2019-04-07');
INSERT INTO public.renting VALUES (204, 64, 57, NULL, '2019-04-10');
INSERT INTO public.renting VALUES (205, 29, 10, NULL, '2018-03-15');
INSERT INTO public.renting VALUES (206, 7, 16, NULL, '2019-04-27');
INSERT INTO public.renting VALUES (207, 52, 25, 5, '2018-04-03');
INSERT INTO public.renting VALUES (208, 43, 2, 7, '2018-11-17');
INSERT INTO public.renting VALUES (209, 105, 5, 9, '2019-02-25');
INSERT INTO public.renting VALUES (210, 94, 1, 7, '2017-05-03');
INSERT INTO public.renting VALUES (211, 33, 1, NULL, '2018-11-28');
INSERT INTO public.renting VALUES (212, 28, 61, 8, '2017-07-02');
INSERT INTO public.renting VALUES (213, 111, 10, NULL, '2017-10-30');
INSERT INTO public.renting VALUES (214, 98, 10, NULL, '2019-03-09');
INSERT INTO public.renting VALUES (215, 113, 10, 6, '2018-01-02');
INSERT INTO public.renting VALUES (216, 108, 32, 7, '2017-05-06');
INSERT INTO public.renting VALUES (217, 89, 23, 7, '2017-03-11');
INSERT INTO public.renting VALUES (218, 94, 34, 6, '2018-04-03');
INSERT INTO public.renting VALUES (219, 88, 51, 8, '2019-01-15');
INSERT INTO public.renting VALUES (220, 104, 19, NULL, '2018-03-15');
INSERT INTO public.renting VALUES (221, 113, 4, NULL, '2017-09-25');
INSERT INTO public.renting VALUES (222, 26, 37, NULL, '2017-01-30');
INSERT INTO public.renting VALUES (223, 110, 4, 7, '2018-05-08');
INSERT INTO public.renting VALUES (224, 26, 61, NULL, '2017-02-01');
INSERT INTO public.renting VALUES (225, 33, 53, NULL, '2019-03-25');
INSERT INTO public.renting VALUES (226, 95, 4, 9, '2017-09-16');
INSERT INTO public.renting VALUES (227, 89, 51, 10, '2017-04-26');
INSERT INTO public.renting VALUES (228, 41, 44, NULL, '2017-11-16');
INSERT INTO public.renting VALUES (229, 92, 44, 7, '2018-11-09');
INSERT INTO public.renting VALUES (230, 110, 64, 8, '2018-06-09');
INSERT INTO public.renting VALUES (231, 114, 39, 6, '2017-03-21');
INSERT INTO public.renting VALUES (232, 52, 27, 8, '2018-11-22');
INSERT INTO public.renting VALUES (233, 45, 71, NULL, '2018-01-21');
INSERT INTO public.renting VALUES (234, 104, 28, 4, '2018-10-04');
INSERT INTO public.renting VALUES (235, 46, 22, NULL, '2017-07-05');
INSERT INTO public.renting VALUES (236, 104, 50, 7, '2017-11-04');
INSERT INTO public.renting VALUES (237, 10, 38, NULL, '2018-06-29');
INSERT INTO public.renting VALUES (238, 118, 11, NULL, '2018-11-02');
INSERT INTO public.renting VALUES (239, 121, 42, 10, '2018-01-31');
INSERT INTO public.renting VALUES (240, 67, 24, 8, '2019-02-24');
INSERT INTO public.renting VALUES (241, 72, 47, 7, '2019-03-04');
INSERT INTO public.renting VALUES (242, 87, 8, 8, '2018-08-08');
INSERT INTO public.renting VALUES (243, 7, 5, 10, '2019-01-11');
INSERT INTO public.renting VALUES (244, 113, 12, 7, '2018-06-18');
INSERT INTO public.renting VALUES (245, 115, 69, NULL, '2019-04-24');
INSERT INTO public.renting VALUES (246, 108, 28, 9, '2018-03-09');
INSERT INTO public.renting VALUES (247, 30, 60, NULL, '2019-02-19');
INSERT INTO public.renting VALUES (248, 77, 18, 10, '2018-11-12');
INSERT INTO public.renting VALUES (249, 97, 25, 10, '2017-10-24');
INSERT INTO public.renting VALUES (250, 49, 63, 9, '2017-05-04');
INSERT INTO public.renting VALUES (251, 25, 34, 10, '2017-08-01');
INSERT INTO public.renting VALUES (252, 8, 61, NULL, '2018-08-07');
INSERT INTO public.renting VALUES (253, 99, 27, 9, '2017-09-03');
INSERT INTO public.renting VALUES (254, 65, 4, NULL, '2017-06-07');
INSERT INTO public.renting VALUES (255, 31, 52, NULL, '2018-06-11');
INSERT INTO public.renting VALUES (256, 54, 38, 6, '2019-04-25');
INSERT INTO public.renting VALUES (257, 106, 51, 8, '2019-04-02');
INSERT INTO public.renting VALUES (258, 65, 44, 8, '2018-08-28');
INSERT INTO public.renting VALUES (259, 45, 17, 8, '2018-09-17');
INSERT INTO public.renting VALUES (260, 28, 41, 7, '2019-03-21');
INSERT INTO public.renting VALUES (261, 113, 28, 8, '2018-08-24');
INSERT INTO public.renting VALUES (262, 51, 18, 10, '2017-08-18');
INSERT INTO public.renting VALUES (263, 61, 53, NULL, '2018-12-14');
INSERT INTO public.renting VALUES (264, 112, 22, 10, '2018-06-29');
INSERT INTO public.renting VALUES (265, 66, 24, NULL, '2019-02-12');
INSERT INTO public.renting VALUES (266, 77, 54, 6, '2018-11-01');
INSERT INTO public.renting VALUES (267, 100, 19, 7, '2019-02-06');
INSERT INTO public.renting VALUES (268, 35, 27, NULL, '2019-03-21');
INSERT INTO public.renting VALUES (269, 14, 61, NULL, '2018-03-21');
INSERT INTO public.renting VALUES (270, 80, 19, 8, '2019-01-12');
INSERT INTO public.renting VALUES (271, 103, 52, 7, '2018-04-11');
INSERT INTO public.renting VALUES (272, 21, 31, NULL, '2018-07-09');
INSERT INTO public.renting VALUES (273, 8, 5, 10, '2019-01-21');
INSERT INTO public.renting VALUES (274, 97, 15, NULL, '2018-10-01');
INSERT INTO public.renting VALUES (275, 118, 50, 10, '2018-04-21');
INSERT INTO public.renting VALUES (276, 33, 11, NULL, '2018-04-21');
INSERT INTO public.renting VALUES (277, 30, 11, NULL, '2018-05-21');
INSERT INTO public.renting VALUES (278, 71, 22, 9, '2017-12-28');
INSERT INTO public.renting VALUES (279, 21, 62, NULL, '2018-08-30');
INSERT INTO public.renting VALUES (280, 114, 22, 9, '2017-09-29');
INSERT INTO public.renting VALUES (281, 38, 16, 9, '2018-02-03');
INSERT INTO public.renting VALUES (282, 107, 30, 7, '2018-10-10');
INSERT INTO public.renting VALUES (283, 93, 54, 9, '2018-11-14');
INSERT INTO public.renting VALUES (284, 87, 45, 8, '2017-08-25');
INSERT INTO public.renting VALUES (285, 66, 67, 6, '2017-07-04');
INSERT INTO public.renting VALUES (286, 81, 65, 7, '2018-11-25');
INSERT INTO public.renting VALUES (287, 47, 32, NULL, '2018-11-14');
INSERT INTO public.renting VALUES (288, 52, 22, 7, '2019-04-28');
INSERT INTO public.renting VALUES (289, 106, 41, NULL, '2018-06-15');
INSERT INTO public.renting VALUES (290, 52, 6, 9, '2019-01-28');
INSERT INTO public.renting VALUES (291, 14, 57, 8, '2018-04-07');
INSERT INTO public.renting VALUES (292, 4, 3, 8, '2018-05-09');
INSERT INTO public.renting VALUES (293, 104, 30, NULL, '2019-02-15');
INSERT INTO public.renting VALUES (294, 84, 28, 10, '2018-12-16');
INSERT INTO public.renting VALUES (295, 76, 51, 8, '2018-08-13');
INSERT INTO public.renting VALUES (296, 44, 53, 8, '2019-01-04');
INSERT INTO public.renting VALUES (297, 51, 33, 7, '2018-11-22');
INSERT INTO public.renting VALUES (298, 94, 55, 10, '2019-04-27');
INSERT INTO public.renting VALUES (299, 95, 1, NULL, '2018-10-05');
INSERT INTO public.renting VALUES (300, 28, 49, NULL, '2018-04-14');
INSERT INTO public.renting VALUES (301, 44, 18, 10, '2018-10-22');
INSERT INTO public.renting VALUES (302, 93, 10, 9, '2017-11-06');
INSERT INTO public.renting VALUES (303, 121, 58, NULL, '2018-04-04');
INSERT INTO public.renting VALUES (304, 74, 33, NULL, '2018-10-16');
INSERT INTO public.renting VALUES (305, 97, 49, 10, '2017-07-16');
INSERT INTO public.renting VALUES (306, 102, 48, NULL, '2018-07-23');
INSERT INTO public.renting VALUES (307, 28, 65, 9, '2018-09-12');
INSERT INTO public.renting VALUES (308, 114, 9, NULL, '2019-02-08');
INSERT INTO public.renting VALUES (309, 10, 38, NULL, '2018-06-24');
INSERT INTO public.renting VALUES (310, 92, 50, 7, '2018-03-06');
INSERT INTO public.renting VALUES (311, 43, 32, NULL, '2019-02-07');
INSERT INTO public.renting VALUES (312, 69, 5, NULL, '2019-02-03');
INSERT INTO public.renting VALUES (313, 7, 4, NULL, '2018-09-22');
INSERT INTO public.renting VALUES (314, 87, 54, 10, '2018-06-20');
INSERT INTO public.renting VALUES (315, 81, 57, NULL, '2019-01-23');
INSERT INTO public.renting VALUES (316, 16, 14, 9, '2018-12-01');
INSERT INTO public.renting VALUES (317, 66, 25, 6, '2018-11-13');
INSERT INTO public.renting VALUES (318, 107, 30, NULL, '2018-11-17');
INSERT INTO public.renting VALUES (319, 16, 33, 9, '2019-03-21');
INSERT INTO public.renting VALUES (320, 79, 24, 10, '2018-04-26');
INSERT INTO public.renting VALUES (321, 111, 70, NULL, '2018-11-20');
INSERT INTO public.renting VALUES (322, 23, 23, 9, '2017-11-21');
INSERT INTO public.renting VALUES (323, 72, 6, 7, '2017-10-24');
INSERT INTO public.renting VALUES (324, 96, 16, 9, '2019-02-24');
INSERT INTO public.renting VALUES (325, 113, 28, NULL, '2017-07-19');
INSERT INTO public.renting VALUES (326, 51, 37, NULL, '2017-07-25');
INSERT INTO public.renting VALUES (327, 98, 15, 6, '2019-04-25');
INSERT INTO public.renting VALUES (328, 30, 44, NULL, '2018-04-29');
INSERT INTO public.renting VALUES (329, 67, 57, 9, '2019-02-13');
INSERT INTO public.renting VALUES (330, 93, 22, 8, '2018-11-20');
INSERT INTO public.renting VALUES (331, 32, 69, 7, '2018-02-08');
INSERT INTO public.renting VALUES (332, 100, 68, NULL, '2018-09-04');
INSERT INTO public.renting VALUES (333, 1, 3, NULL, '2018-11-14');
INSERT INTO public.renting VALUES (334, 17, 28, 10, '2018-04-24');
INSERT INTO public.renting VALUES (335, 118, 25, 8, '2017-12-12');
INSERT INTO public.renting VALUES (336, 98, 9, 8, '2018-07-17');
INSERT INTO public.renting VALUES (337, 49, 58, NULL, '2017-08-18');
INSERT INTO public.renting VALUES (338, 31, 4, NULL, '2018-06-07');
INSERT INTO public.renting VALUES (339, 8, 2, NULL, '2018-11-18');
INSERT INTO public.renting VALUES (340, 45, 71, 9, '2018-10-19');
INSERT INTO public.renting VALUES (341, 99, 58, NULL, '2018-06-06');
INSERT INTO public.renting VALUES (342, 66, 61, 9, '2017-03-04');
INSERT INTO public.renting VALUES (343, 112, 12, NULL, '2018-09-24');
INSERT INTO public.renting VALUES (344, 23, 23, NULL, '2018-05-26');
INSERT INTO public.renting VALUES (345, 91, 7, 7, '2018-06-18');
INSERT INTO public.renting VALUES (346, 114, 37, NULL, '2017-11-24');
INSERT INTO public.renting VALUES (347, 45, 52, 5, '2018-10-18');
INSERT INTO public.renting VALUES (348, 108, 57, NULL, '2019-04-09');
INSERT INTO public.renting VALUES (349, 13, 14, 5, '2017-09-08');
INSERT INTO public.renting VALUES (350, 113, 3, NULL, '2018-04-20');
INSERT INTO public.renting VALUES (351, 106, 4, 8, '2018-07-15');
INSERT INTO public.renting VALUES (352, 114, 40, 10, '2017-11-21');
INSERT INTO public.renting VALUES (353, 62, 67, 10, '2018-12-20');
INSERT INTO public.renting VALUES (354, 73, 4, NULL, '2018-10-23');
INSERT INTO public.renting VALUES (355, 121, 7, NULL, '2017-11-13');
INSERT INTO public.renting VALUES (356, 85, 24, NULL, '2019-03-24');
INSERT INTO public.renting VALUES (357, 110, 29, 8, '2018-04-08');
INSERT INTO public.renting VALUES (358, 4, 12, 7, '2017-12-23');
INSERT INTO public.renting VALUES (359, 102, 26, NULL, '2019-01-25');
INSERT INTO public.renting VALUES (360, 85, 36, NULL, '2019-04-06');
INSERT INTO public.renting VALUES (361, 93, 27, 9, '2018-04-26');
INSERT INTO public.renting VALUES (362, 108, 69, NULL, '2018-12-18');
INSERT INTO public.renting VALUES (363, 8, 33, 7, '2018-09-19');
INSERT INTO public.renting VALUES (364, 30, 29, 7, '2019-03-17');
INSERT INTO public.renting VALUES (365, 71, 20, NULL, '2018-11-14');
INSERT INTO public.renting VALUES (366, 25, 28, 7, '2018-05-26');
INSERT INTO public.renting VALUES (367, 49, 62, 7, '2017-03-22');
INSERT INTO public.renting VALUES (368, 21, 35, 9, '2017-08-17');
INSERT INTO public.renting VALUES (369, 32, 28, 7, '2019-03-13');
INSERT INTO public.renting VALUES (370, 66, 14, NULL, '2018-08-09');
INSERT INTO public.renting VALUES (371, 1, 13, NULL, '2018-11-12');
INSERT INTO public.renting VALUES (372, 21, 54, NULL, '2018-11-04');
INSERT INTO public.renting VALUES (373, 21, 39, NULL, '2019-01-21');
INSERT INTO public.renting VALUES (374, 87, 63, 10, '2018-02-27');
INSERT INTO public.renting VALUES (375, 110, 53, 6, '2018-02-18');
INSERT INTO public.renting VALUES (376, 26, 37, 9, '2018-04-12');
INSERT INTO public.renting VALUES (377, 13, 28, NULL, '2018-05-28');
INSERT INTO public.renting VALUES (378, 28, 41, NULL, '2017-02-16');
INSERT INTO public.renting VALUES (379, 61, 63, 10, '2017-09-23');
INSERT INTO public.renting VALUES (380, 114, 14, 6, '2017-08-01');
INSERT INTO public.renting VALUES (381, 104, 49, NULL, '2018-06-14');
INSERT INTO public.renting VALUES (382, 41, 22, 9, '2018-07-19');
INSERT INTO public.renting VALUES (383, 61, 45, 9, '2018-08-18');
INSERT INTO public.renting VALUES (384, 113, 42, NULL, '2017-10-21');
INSERT INTO public.renting VALUES (385, 43, 12, 6, '2018-10-06');
INSERT INTO public.renting VALUES (386, 8, 16, 10, '2018-06-29');
INSERT INTO public.renting VALUES (387, 66, 7, 10, '2017-12-14');
INSERT INTO public.renting VALUES (388, 28, 33, NULL, '2017-09-10');
INSERT INTO public.renting VALUES (389, 78, 36, 7, '2017-12-20');
INSERT INTO public.renting VALUES (390, 21, 16, NULL, '2018-08-19');
INSERT INTO public.renting VALUES (391, 19, 18, 9, '2018-11-07');
INSERT INTO public.renting VALUES (392, 109, 58, 9, '2018-12-28');
INSERT INTO public.renting VALUES (393, 90, 26, 8, '2019-04-08');
INSERT INTO public.renting VALUES (394, 80, 26, NULL, '2019-02-28');
INSERT INTO public.renting VALUES (395, 115, 11, NULL, '2019-04-07');
INSERT INTO public.renting VALUES (396, 7, 40, 10, '2018-09-11');
INSERT INTO public.renting VALUES (397, 82, 41, 9, '2019-03-08');
INSERT INTO public.renting VALUES (398, 8, 37, NULL, '2018-03-23');
INSERT INTO public.renting VALUES (399, 37, 36, NULL, '2018-12-12');
INSERT INTO public.renting VALUES (400, 6, 10, NULL, '2018-11-03');
INSERT INTO public.renting VALUES (401, 82, 27, 7, '2018-03-12');
INSERT INTO public.renting VALUES (402, 39, 25, 8, '2018-03-20');
INSERT INTO public.renting VALUES (403, 65, 11, NULL, '2017-04-11');
INSERT INTO public.renting VALUES (404, 87, 48, 10, '2018-06-05');
INSERT INTO public.renting VALUES (405, 113, 30, NULL, '2017-07-07');
INSERT INTO public.renting VALUES (406, 23, 3, NULL, '2017-10-22');
INSERT INTO public.renting VALUES (407, 84, 48, NULL, '2018-09-10');
INSERT INTO public.renting VALUES (408, 55, 61, NULL, '2018-10-20');
INSERT INTO public.renting VALUES (409, 46, 36, 5, '2018-06-17');
INSERT INTO public.renting VALUES (410, 96, 3, 10, '2018-10-20');
INSERT INTO public.renting VALUES (411, 58, 50, 10, '2019-01-23');
INSERT INTO public.renting VALUES (412, 103, 41, 10, '2018-06-22');
INSERT INTO public.renting VALUES (413, 92, 29, 10, '2018-02-07');
INSERT INTO public.renting VALUES (414, 59, 4, 10, '2018-06-04');
INSERT INTO public.renting VALUES (415, 106, 71, NULL, '2018-11-25');
INSERT INTO public.renting VALUES (416, 108, 70, 10, '2017-04-09');
INSERT INTO public.renting VALUES (417, 103, 23, 10, '2017-12-31');
INSERT INTO public.renting VALUES (418, 17, 4, 9, '2019-01-02');
INSERT INTO public.renting VALUES (419, 31, 12, 9, '2019-02-21');
INSERT INTO public.renting VALUES (420, 26, 41, 8, '2019-01-09');
INSERT INTO public.renting VALUES (421, 1, 71, 10, '2019-01-21');
INSERT INTO public.renting VALUES (422, 49, 67, 7, '2018-09-10');
INSERT INTO public.renting VALUES (423, 35, 34, 6, '2018-07-14');
INSERT INTO public.renting VALUES (424, 50, 25, NULL, '2019-04-11');
INSERT INTO public.renting VALUES (425, 21, 9, 7, '2019-02-15');
INSERT INTO public.renting VALUES (426, 46, 68, 5, '2017-11-24');
INSERT INTO public.renting VALUES (427, 65, 47, NULL, '2018-07-01');
INSERT INTO public.renting VALUES (428, 79, 41, NULL, '2018-06-09');
INSERT INTO public.renting VALUES (429, 55, 21, NULL, '2018-02-09');
INSERT INTO public.renting VALUES (430, 58, 68, 7, '2018-12-22');
INSERT INTO public.renting VALUES (431, 19, 7, NULL, '2018-09-14');
INSERT INTO public.renting VALUES (432, 107, 40, NULL, '2019-03-09');
INSERT INTO public.renting VALUES (433, 113, 42, 10, '2017-08-30');
INSERT INTO public.renting VALUES (434, 19, 52, 9, '2018-06-24');
INSERT INTO public.renting VALUES (435, 98, 2, 7, '2017-10-02');
INSERT INTO public.renting VALUES (436, 116, 45, NULL, '2018-10-28');
INSERT INTO public.renting VALUES (437, 99, 33, 10, '2019-04-28');
INSERT INTO public.renting VALUES (438, 66, 61, 9, '2018-04-10');
INSERT INTO public.renting VALUES (439, 64, 27, NULL, '2019-02-23');
INSERT INTO public.renting VALUES (440, 18, 49, 10, '2019-01-21');
INSERT INTO public.renting VALUES (441, 50, 27, 9, '2018-04-26');
INSERT INTO public.renting VALUES (442, 38, 58, NULL, '2018-08-08');
INSERT INTO public.renting VALUES (443, 83, 54, 7, '2019-04-20');
INSERT INTO public.renting VALUES (444, 120, 59, 3, '2018-08-10');
INSERT INTO public.renting VALUES (445, 117, 63, NULL, '2019-04-04');
INSERT INTO public.renting VALUES (446, 37, 68, NULL, '2019-02-27');
INSERT INTO public.renting VALUES (447, 85, 30, NULL, '2019-01-15');
INSERT INTO public.renting VALUES (448, 123, 64, 10, '2019-03-22');
INSERT INTO public.renting VALUES (449, 72, 66, NULL, '2018-08-01');
INSERT INTO public.renting VALUES (450, 23, 54, 7, '2019-02-11');
INSERT INTO public.renting VALUES (451, 111, 15, NULL, '2019-03-25');
INSERT INTO public.renting VALUES (452, 49, 7, NULL, '2018-03-07');
INSERT INTO public.renting VALUES (453, 121, 52, 7, '2018-07-10');
INSERT INTO public.renting VALUES (454, 118, 32, 6, '2018-08-28');
INSERT INTO public.renting VALUES (455, 86, 35, NULL, '2018-11-25');
INSERT INTO public.renting VALUES (456, 7, 3, NULL, '2018-05-23');
INSERT INTO public.renting VALUES (457, 25, 30, 7, '2019-03-03');
INSERT INTO public.renting VALUES (458, 93, 47, NULL, '2019-04-24');
INSERT INTO public.renting VALUES (459, 50, 38, NULL, '2018-08-20');
INSERT INTO public.renting VALUES (460, 97, 34, 9, '2017-10-23');
INSERT INTO public.renting VALUES (461, 68, 67, NULL, '2019-04-27');
INSERT INTO public.renting VALUES (462, 58, 43, NULL, '2019-02-22');
INSERT INTO public.renting VALUES (463, 29, 68, NULL, '2018-08-28');
INSERT INTO public.renting VALUES (464, 108, 9, NULL, '2018-02-11');
INSERT INTO public.renting VALUES (465, 84, 42, NULL, '2019-02-11');
INSERT INTO public.renting VALUES (466, 17, 21, NULL, '2018-06-20');
INSERT INTO public.renting VALUES (467, 99, 41, 8, '2017-12-21');
INSERT INTO public.renting VALUES (468, 15, 32, 7, '2019-01-30');
INSERT INTO public.renting VALUES (469, 35, 69, 8, '2018-04-05');
INSERT INTO public.renting VALUES (470, 108, 29, NULL, '2017-04-25');
INSERT INTO public.renting VALUES (471, 49, 3, NULL, '2019-01-01');
INSERT INTO public.renting VALUES (472, 54, 33, NULL, '2019-02-09');
INSERT INTO public.renting VALUES (473, 60, 58, NULL, '2019-03-24');
INSERT INTO public.renting VALUES (474, 123, 51, 10, '2019-01-07');
INSERT INTO public.renting VALUES (475, 21, 4, 6, '2019-02-07');
INSERT INTO public.renting VALUES (476, 78, 42, 10, '2018-07-04');
INSERT INTO public.renting VALUES (477, 5, 68, NULL, '2019-04-01');
INSERT INTO public.renting VALUES (478, 4, 13, 7, '2018-04-13');
INSERT INTO public.renting VALUES (479, 42, 70, 5, '2019-02-17');
INSERT INTO public.renting VALUES (480, 53, 42, NULL, '2019-04-15');
INSERT INTO public.renting VALUES (481, 94, 7, NULL, '2017-04-20');
INSERT INTO public.renting VALUES (482, 113, 1, NULL, '2018-11-29');
INSERT INTO public.renting VALUES (483, 49, 2, 7, '2017-04-02');
INSERT INTO public.renting VALUES (484, 19, 11, NULL, '2019-02-23');
INSERT INTO public.renting VALUES (485, 30, 16, NULL, '2018-05-04');
INSERT INTO public.renting VALUES (486, 41, 40, NULL, '2018-06-29');
INSERT INTO public.renting VALUES (487, 61, 48, 10, '2017-08-14');
INSERT INTO public.renting VALUES (488, 100, 71, 6, '2019-04-09');
INSERT INTO public.renting VALUES (489, 14, 27, NULL, '2018-10-21');
INSERT INTO public.renting VALUES (490, 52, 19, 9, '2018-07-28');
INSERT INTO public.renting VALUES (491, 49, 31, 8, '2017-12-17');
INSERT INTO public.renting VALUES (492, 103, 17, NULL, '2019-04-13');
INSERT INTO public.renting VALUES (493, 102, 1, 7, '2018-10-28');
INSERT INTO public.renting VALUES (494, 105, 13, 7, '2019-03-06');
INSERT INTO public.renting VALUES (495, 41, 66, 8, '2018-10-21');
INSERT INTO public.renting VALUES (496, 13, 69, 6, '2017-07-20');
INSERT INTO public.renting VALUES (497, 23, 24, NULL, '2018-04-22');
INSERT INTO public.renting VALUES (498, 115, 42, NULL, '2019-03-16');
INSERT INTO public.renting VALUES (499, 98, 41, 7, '2017-12-01');
INSERT INTO public.renting VALUES (500, 17, 57, 10, '2018-11-05');
INSERT INTO public.renting VALUES (501, 97, 20, 7, '2017-12-30');
INSERT INTO public.renting VALUES (502, 35, 58, NULL, '2017-12-27');
INSERT INTO public.renting VALUES (503, 114, 12, NULL, '2017-08-05');
INSERT INTO public.renting VALUES (504, 26, 3, NULL, '2017-02-14');
INSERT INTO public.renting VALUES (505, 91, 61, NULL, '2018-01-28');
INSERT INTO public.renting VALUES (506, 105, 26, NULL, '2018-10-07');
INSERT INTO public.renting VALUES (507, 98, 37, 7, '2018-02-09');
INSERT INTO public.renting VALUES (508, 21, 16, NULL, '2018-02-09');
INSERT INTO public.renting VALUES (509, 59, 14, 6, '2018-06-05');
INSERT INTO public.renting VALUES (510, 36, 31, NULL, '2018-09-19');
INSERT INTO public.renting VALUES (511, 26, 45, 7, '2017-05-15');
INSERT INTO public.renting VALUES (512, 91, 62, NULL, '2019-04-04');
INSERT INTO public.renting VALUES (513, 116, 59, 9, '2019-02-08');
INSERT INTO public.renting VALUES (514, 92, 31, 6, '2018-05-20');
INSERT INTO public.renting VALUES (515, 104, 14, 7, '2017-07-24');
INSERT INTO public.renting VALUES (516, 72, 30, NULL, '2017-10-22');
INSERT INTO public.renting VALUES (517, 25, 5, NULL, '2017-09-13');
INSERT INTO public.renting VALUES (518, 1, 25, NULL, '2018-12-17');
INSERT INTO public.renting VALUES (519, 111, 58, NULL, '2017-06-27');
INSERT INTO public.renting VALUES (520, 1, 39, 6, '2018-12-29');
INSERT INTO public.renting VALUES (521, 110, 20, NULL, '2018-09-09');
INSERT INTO public.renting VALUES (522, 86, 33, NULL, '2018-04-27');
INSERT INTO public.renting VALUES (523, 27, 38, 10, '2019-03-22');
INSERT INTO public.renting VALUES (524, 15, 60, 7, '2018-09-07');
INSERT INTO public.renting VALUES (525, 14, 4, 7, '2018-09-09');
INSERT INTO public.renting VALUES (526, 109, 52, 7, '2019-03-03');
INSERT INTO public.renting VALUES (527, 112, 37, 7, '2019-01-08');
INSERT INTO public.renting VALUES (528, 49, 27, NULL, '2017-04-12');
INSERT INTO public.renting VALUES (529, 39, 23, 6, '2018-09-26');
INSERT INTO public.renting VALUES (530, 104, 17, NULL, '2019-04-19');
INSERT INTO public.renting VALUES (531, 121, 48, NULL, '2018-06-04');
INSERT INTO public.renting VALUES (532, 79, 7, 8, '2019-02-08');
INSERT INTO public.renting VALUES (533, 123, 12, 8, '2019-01-16');
INSERT INTO public.renting VALUES (534, 65, 26, NULL, '2017-08-20');
INSERT INTO public.renting VALUES (535, 57, 32, NULL, '2018-04-21');
INSERT INTO public.renting VALUES (536, 7, 50, 8, '2018-09-16');
INSERT INTO public.renting VALUES (537, 82, 52, 9, '2019-03-06');
INSERT INTO public.renting VALUES (538, 76, 36, 9, '2019-01-06');
INSERT INTO public.renting VALUES (539, 65, 45, NULL, '2017-07-29');
INSERT INTO public.renting VALUES (540, 91, 4, 8, '2018-04-26');
INSERT INTO public.renting VALUES (541, 123, 64, NULL, '2019-04-15');
INSERT INTO public.renting VALUES (542, 110, 50, 7, '2018-06-04');
INSERT INTO public.renting VALUES (543, 89, 54, NULL, '2018-11-06');
INSERT INTO public.renting VALUES (544, 17, 41, NULL, '2018-06-14');
INSERT INTO public.renting VALUES (545, 94, 54, 10, '2019-01-23');
INSERT INTO public.renting VALUES (546, 111, 41, 8, '2018-06-08');
INSERT INTO public.renting VALUES (547, 65, 63, NULL, '2018-08-17');
INSERT INTO public.renting VALUES (548, 34, 70, 7, '2018-07-11');
INSERT INTO public.renting VALUES (549, 119, 44, 10, '2019-04-29');
INSERT INTO public.renting VALUES (550, 21, 53, 8, '2019-03-17');
INSERT INTO public.renting VALUES (551, 86, 13, 8, '2018-08-29');
INSERT INTO public.renting VALUES (552, 28, 56, 1, '2017-03-27');
INSERT INTO public.renting VALUES (553, 93, 59, NULL, '2017-04-28');
INSERT INTO public.renting VALUES (554, 34, 49, 8, '2019-04-22');
INSERT INTO public.renting VALUES (555, 10, 5, NULL, '2018-12-02');
INSERT INTO public.renting VALUES (556, 94, 42, NULL, '2018-08-20');
INSERT INTO public.renting VALUES (557, 78, 25, 8, '2018-10-11');
INSERT INTO public.renting VALUES (558, 41, 19, 3, '2019-01-13');
INSERT INTO public.renting VALUES (559, 93, 3, NULL, '2018-02-17');
INSERT INTO public.renting VALUES (560, 11, 49, 6, '2019-04-18');
INSERT INTO public.renting VALUES (561, 113, 36, 5, '2018-06-29');
INSERT INTO public.renting VALUES (562, 33, 18, NULL, '2019-03-10');
INSERT INTO public.renting VALUES (563, 29, 5, NULL, '2018-05-11');
INSERT INTO public.renting VALUES (564, 114, 68, 7, '2017-12-06');
INSERT INTO public.renting VALUES (565, 63, 53, 10, '2018-10-25');
INSERT INTO public.renting VALUES (566, 28, 45, 7, '2018-05-29');
INSERT INTO public.renting VALUES (567, 28, 49, 8, '2019-02-24');
INSERT INTO public.renting VALUES (568, 29, 43, NULL, '2018-09-15');
INSERT INTO public.renting VALUES (569, 78, 26, NULL, '2018-08-16');
INSERT INTO public.renting VALUES (570, 87, 56, NULL, '2018-03-31');
INSERT INTO public.renting VALUES (571, 92, 28, 9, '2018-11-22');
INSERT INTO public.renting VALUES (572, 4, 61, 6, '2019-04-16');
INSERT INTO public.renting VALUES (573, 111, 23, NULL, '2018-09-24');
INSERT INTO public.renting VALUES (574, 7, 14, NULL, '2019-02-08');
INSERT INTO public.renting VALUES (575, 45, 31, 10, '2018-06-09');
INSERT INTO public.renting VALUES (576, 38, 25, NULL, '2018-09-02');
INSERT INTO public.renting VALUES (577, 35, 65, 9, '2017-07-03');
INSERT INTO public.renting VALUES (578, 35, 16, NULL, '2017-06-20');


--
-- Name: actors actors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actors
    ADD CONSTRAINT actors_pkey PRIMARY KEY (actor_id);


--
-- Name: actsin actsin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actsin
    ADD CONSTRAINT actsin_pkey PRIMARY KEY (actsin_id);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- Name: movies movies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (movie_id);


--
-- Name: renting renting_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.renting
    ADD CONSTRAINT renting_pkey PRIMARY KEY (renting_id);


--
-- PostgreSQL database dump complete
--

