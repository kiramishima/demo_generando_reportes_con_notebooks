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
-- Name: game_sales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.game_sales (
    game character varying(100) NOT NULL,
    platform character varying(64),
    publisher character varying(64),
    developer character varying(64),
    games_sold numeric(5,2),
    year integer
);


ALTER TABLE public.game_sales OWNER TO postgres;

--
-- Name: reviews; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reviews (
    game character varying(100) NOT NULL,
    critic_score numeric(4,2),
    user_score numeric(4,2)
);


ALTER TABLE public.reviews OWNER TO postgres;

--
-- Name: top_critic_years; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.top_critic_years (
    year integer NOT NULL,
    avg_critic_score numeric(4,2)
);


ALTER TABLE public.top_critic_years OWNER TO postgres;

--
-- Name: top_critic_years_more_than_four_games; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.top_critic_years_more_than_four_games (
    year integer NOT NULL,
    num_games integer,
    avg_critic_score numeric(4,2)
);


ALTER TABLE public.top_critic_years_more_than_four_games OWNER TO postgres;

--
-- Name: top_user_years_more_than_four_games; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.top_user_years_more_than_four_games (
    year integer NOT NULL,
    num_games integer,
    avg_user_score numeric(4,2)
);


ALTER TABLE public.top_user_years_more_than_four_games OWNER TO postgres;

--
-- Data for Name: game_sales; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.game_sales VALUES ('7 Days to Die for PC', 'PC', 'The Fun Pimps', 'The Fun Pimps', 4.18, 2013);
INSERT INTO public.game_sales VALUES ('ARK: Survival Evolved for PC', 'PC', 'Studio Wildcard', 'Studio Wildcard', 4.50, 2015);
INSERT INTO public.game_sales VALUES ('Age of Empires II: HD Edition for PC', 'PC', 'Microsoft Studios', 'Hidden Path Entertainment', 5.82, 2013);
INSERT INTO public.game_sales VALUES ('Animal Crossing: City Folk for Wii', 'Wii', 'Nintendo', 'Nintendo EAD', 4.32, 2008);
INSERT INTO public.game_sales VALUES ('Animal Crossing: New Horizons for NS', 'NS', 'Nintendo', 'Nintendo', 13.41, 2020);
INSERT INTO public.game_sales VALUES ('Animal Crossing: New Leaf for 3DS', '3DS', 'Nintendo', 'Nintendo EAD', 12.55, 2013);
INSERT INTO public.game_sales VALUES ('Animal Crossing: Wild World for DS', 'DS', 'Nintendo', 'Nintendo EAD', 11.75, 2005);
INSERT INTO public.game_sales VALUES ('Arma 2: Operation Arrowhead for PC', 'PC', 'Meridian4', 'Bohemia Interactive', 4.51, 2010);
INSERT INTO public.game_sales VALUES ('Arma III for PC', 'PC', 'Bohemia Interactive', 'Bohemia Interactive', 4.00, 2013);
INSERT INTO public.game_sales VALUES ('Assassin''s Creed II for PS3', 'PS3', 'Ubisoft', 'Ubisoft Montreal', 5.57, 2009);
INSERT INTO public.game_sales VALUES ('Assassin''s Creed II for X360', 'X360', 'Ubisoft', 'Ubisoft Montreal', 5.30, 2009);
INSERT INTO public.game_sales VALUES ('Assassin''s Creed III for PS3', 'PS3', 'Ubisoft', 'Ubisoft Montreal', 6.50, 2012);
INSERT INTO public.game_sales VALUES ('Assassin''s Creed III for X360', 'X360', 'Ubisoft', 'Ubisoft Montreal', 5.31, 2012);
INSERT INTO public.game_sales VALUES ('Assassin''s Creed Origins for PS4', 'PS4', 'Ubisoft', 'Ubisoft Montreal', 4.06, 2017);
INSERT INTO public.game_sales VALUES ('Assassin''s Creed for PS3', 'PS3', 'Ubisoft', 'Ubisoft Montreal', 4.83, 2007);
INSERT INTO public.game_sales VALUES ('Assassin''s Creed for X360', 'X360', 'Ubisoft', 'Ubisoft Montreal', 5.55, 2007);
INSERT INTO public.game_sales VALUES ('Assassin''s Creed: Revelations for PS3', 'PS3', 'Ubisoft', 'Ubisoft Montreal', 4.23, 2011);
INSERT INTO public.game_sales VALUES ('Assassin''s Creed: Revelations for X360', 'X360', 'Ubisoft', 'Ubisoft Montreal', 4.22, 2011);
INSERT INTO public.game_sales VALUES ('Assassin''s Creed: Unity for PS4', 'PS4', 'Ubisoft', 'Ubisoft Montreal', 4.14, 2014);
INSERT INTO public.game_sales VALUES ('Asteroids for 2600', '2600', 'Atari', 'Atari', 4.31, 1981);
INSERT INTO public.game_sales VALUES ('Batman: Arkham Asylum for PS3', 'PS3', 'Eidos Interactive', 'Rocksteady Studios', 4.28, 2009);
INSERT INTO public.game_sales VALUES ('Batman: Arkham City for PS3', 'PS3', 'Warner Bros. Interactive', 'Rocksteady Studios', 5.54, 2011);
INSERT INTO public.game_sales VALUES ('Batman: Arkham City for X360', 'X360', 'Warner Bros. Interactive', 'Rocksteady Studios', 4.75, 2011);
INSERT INTO public.game_sales VALUES ('Batman: Arkham Knight for PS4', 'PS4', 'Warner Bros. Interactive', 'Rocksteady Studios', 4.11, 2015);
INSERT INTO public.game_sales VALUES ('Battlefield 1 for PS4', 'PS4', 'Electronic Arts', 'EA DICE', 7.26, 2016);
INSERT INTO public.game_sales VALUES ('Battlefield 1 for XOne', 'XOne', 'Electronic Arts', 'EA DICE', 5.13, 2016);
INSERT INTO public.game_sales VALUES ('Battlefield 3 for PS3', 'PS3', 'Electronic Arts', 'Dice', 7.21, 2011);
INSERT INTO public.game_sales VALUES ('Battlefield 3 for X360', 'X360', 'Electronic Arts', 'Dice', 7.35, 2011);
INSERT INTO public.game_sales VALUES ('Big Brain Academy for DS', 'DS', 'Nintendo', 'Nintendo EAD', 6.15, 2006);
INSERT INTO public.game_sales VALUES ('BioShock Infinite for PC', 'PC', '2K Games', 'Irrational Games', 4.56, 2013);
INSERT INTO public.game_sales VALUES ('Brain Age 2: More Training in Minutes a Day for DS', 'DS', 'Nintendo', 'Nintendo SDD', 14.88, 2007);
INSERT INTO public.game_sales VALUES ('Brain Age: Train Your Brain in Minutes a Day for DS', 'DS', 'Nintendo', 'Nintendo SDD', 19.01, 2006);
INSERT INTO public.game_sales VALUES ('Call of Duty 4: Modern Warfare for PS3', 'PS3', 'Activision', 'Infinity Ward', 6.72, 2007);
INSERT INTO public.game_sales VALUES ('Call of Duty 4: Modern Warfare for X360', 'X360', 'Activision', 'Infinity Ward', 9.41, 2007);
INSERT INTO public.game_sales VALUES ('Call of Duty: Advanced Warfare for PS3', 'PS3', 'Activision', 'High Moon Studios', 4.27, 2014);
INSERT INTO public.game_sales VALUES ('Call of Duty: Advanced Warfare for PS4', 'PS4', 'Activision', 'Sledgehammer Games', 7.53, 2014);
INSERT INTO public.game_sales VALUES ('Call of Duty: Advanced Warfare for X360', 'X360', 'Activision', 'High Moon Studios', 4.34, 2014);
INSERT INTO public.game_sales VALUES ('Call of Duty: Advanced Warfare for XOne', 'XOne', 'Activision', 'Sledgehammer Games', 5.22, 2014);
INSERT INTO public.game_sales VALUES ('Call of Duty: Black Ops 3 for PS4', 'PS4', 'Activision', 'Treyarch', 15.09, 2015);
INSERT INTO public.game_sales VALUES ('Call of Duty: Black Ops 3 for XOne', 'XOne', 'Activision', 'Treyarch', 7.37, 2015);
INSERT INTO public.game_sales VALUES ('Call of Duty: Black Ops II for PS3', 'PS3', 'Activision', 'Treyarch', 13.80, 2012);
INSERT INTO public.game_sales VALUES ('Call of Duty: Black Ops II for X360', 'X360', 'Activision', 'Treyarch', 13.86, 2012);
INSERT INTO public.game_sales VALUES ('Call of Duty: Black Ops IIII for PS4', 'PS4', 'Activision', 'Treyarch', 9.32, 2018);
INSERT INTO public.game_sales VALUES ('Call of Duty: Black Ops IIII for XOne', 'XOne', 'Activision', 'Treyarch', 4.85, 2018);
INSERT INTO public.game_sales VALUES ('Call of Duty: Black Ops for PS3', 'PS3', 'Activision', 'Treyarch', 12.67, 2010);
INSERT INTO public.game_sales VALUES ('Call of Duty: Black Ops for X360', 'X360', 'Activision', 'Treyarch', 14.74, 2010);
INSERT INTO public.game_sales VALUES ('Call of Duty: Ghosts for PS3', 'PS3', 'Activision', 'Infinity Ward', 10.13, 2013);
INSERT INTO public.game_sales VALUES ('Call of Duty: Ghosts for PS4', 'PS4', 'Activision', 'Infinity Ward', 4.17, 2013);
INSERT INTO public.game_sales VALUES ('Call of Duty: Ghosts for X360', 'X360', 'Activision', 'Infinity Ward', 10.41, 2013);
INSERT INTO public.game_sales VALUES ('Call of Duty: Infinite Warfare for PS4', 'PS4', 'Activision', 'Infinity Ward', 8.48, 2016);
INSERT INTO public.game_sales VALUES ('Call of Duty: Infinite Warfare for XOne', 'XOne', 'Activision', 'Infinity Ward', 4.79, 2016);
INSERT INTO public.game_sales VALUES ('Call of Duty: Modern Warfare 2 for PS3', 'PS3', 'Activision', 'Infinity Ward', 10.61, 2009);
INSERT INTO public.game_sales VALUES ('Call of Duty: Modern Warfare 2 for X360', 'X360', 'Activision', 'Infinity Ward', 13.53, 2009);
INSERT INTO public.game_sales VALUES ('Call of Duty: Modern Warfare 3 for PS3', 'PS3', 'Activision', 'Infinity Ward', 13.35, 2011);
INSERT INTO public.game_sales VALUES ('Call of Duty: Modern Warfare 3 for X360', 'X360', 'Activision', 'Infinity Ward', 14.82, 2011);
INSERT INTO public.game_sales VALUES ('Call of Duty: Modern Warfare for PS4', 'PS4', 'Activision', 'Infinity Ward', 30.13, 2019);
INSERT INTO public.game_sales VALUES ('Call of Duty: WWII for PS4', 'PS4', 'Activision', 'Sledgehammer Games', 13.40, 2017);
INSERT INTO public.game_sales VALUES ('Call of Duty: WWII for XOne', 'XOne', 'Activision', 'Sledgehammer Games', 6.23, 2017);
INSERT INTO public.game_sales VALUES ('Call of Duty: World at War for PS3', 'PS3', 'Activision', 'Treyarch', 5.43, 2008);
INSERT INTO public.game_sales VALUES ('Call of Duty: World at War for X360', 'X360', 'Activision', 'Treyarch', 7.50, 2008);
INSERT INTO public.game_sales VALUES ('Carnival Games for Wii', 'Wii', 'Global Star Software', 'Cat Daddy Games', 4.06, 2007);
INSERT INTO public.game_sales VALUES ('Cities: Skylines for PC', 'PC', 'Paradox Interactive', 'Colossal Order', 6.00, 2015);
INSERT INTO public.game_sales VALUES ('Cooking Mama for DS', 'DS', 'Majesco', 'Office Create', 5.66, 2006);
INSERT INTO public.game_sales VALUES ('Counter-Strike for PC', 'PC', 'Sierra Studios', 'Unknown', 4.20, 2000);
INSERT INTO public.game_sales VALUES ('Counter-Strike: Global Offensive for PC', 'PC', 'Valve', 'Valve Corporation', 40.00, 2012);
INSERT INTO public.game_sales VALUES ('Counter-Strike: Source for PC', 'PC', 'VU Games', 'Valve Software', 15.00, 2004);
INSERT INTO public.game_sales VALUES ('Crash Bandicoot 2: Cortex Strikes Back for PS', 'PS', 'Sony Computer Entertainment', 'Naughty Dog', 7.58, 1997);
INSERT INTO public.game_sales VALUES ('Crash Bandicoot 3: Warped for PS', 'PS', 'Sony Computer Entertainment', 'Naughty Dog', 7.13, 1998);
INSERT INTO public.game_sales VALUES ('Crash Bandicoot N. Sane Trilogy for PS4', 'PS4', 'Activision', 'Vicarious Visions', 4.83, 2017);
INSERT INTO public.game_sales VALUES ('Crash Bandicoot for PS', 'PS', 'Sony Computer Entertainment', 'Naughty Dog', 6.82, 1996);
INSERT INTO public.game_sales VALUES ('Crash Bandicoot: The Wrath of Cortex for PS2', 'PS2', 'Universal Interactive', 'Traveller''s Tales', 5.42, 2001);
INSERT INTO public.game_sales VALUES ('Crash Team Racing for PS', 'PS', 'Sony Computer Entertainment', 'Naughty Dog', 4.79, 1999);
INSERT INTO public.game_sales VALUES ('Daxter for PSP', 'PSP', 'Sony Computer Entertainment', 'Ready at Dawn', 4.23, 2006);
INSERT INTO public.game_sales VALUES ('Dead Island for PC', 'PC', 'Deep Silver', 'Techland', 4.52, 2011);
INSERT INTO public.game_sales VALUES ('Destiny 2 for PS4', 'PS4', 'Activision', 'Bungie', 4.14, 2017);
INSERT INTO public.game_sales VALUES ('Destiny for PS4', 'PS4', 'Activision', 'Bungie', 5.76, 2014);
INSERT INTO public.game_sales VALUES ('Diablo II for PC', 'PC', 'Blizzard Entertainment', 'Blizzard North', 4.00, 2000);
INSERT INTO public.game_sales VALUES ('Diablo III for PC', 'PC', 'Blizzard Entertainment', 'Blizzard Entertainment', 12.00, 2012);
INSERT INTO public.game_sales VALUES ('Diddy Kong Racing for N64', 'N64', 'Nintendo', 'Rare Ltd.', 4.88, 1997);
INSERT INTO public.game_sales VALUES ('Disney''s Aladdin for GEN', 'GEN', 'Sega', 'Virgin Interactive', 4.00, 1993);
INSERT INTO public.game_sales VALUES ('Donkey Kong 64 for N64', 'N64', 'Nintendo', 'Rare Ltd.', 5.27, 1999);
INSERT INTO public.game_sales VALUES ('Donkey Kong Country 2: Diddy''s Kong Quest for SNES', 'SNES', 'Nintendo', 'Rare Ltd.', 5.15, 1995);
INSERT INTO public.game_sales VALUES ('Donkey Kong Country Returns for Wii', 'Wii', 'Nintendo', 'Retro Studios', 6.53, 2010);
INSERT INTO public.game_sales VALUES ('Donkey Kong Country for SNES', 'SNES', 'Nintendo', 'Rare Ltd.', 9.30, 1994);
INSERT INTO public.game_sales VALUES ('Dr. Mario for GB', 'GB', 'Nintendo', 'Nintendo R&D1', 5.34, 1990);
INSERT INTO public.game_sales VALUES ('Dr. Mario for NES', 'NES', 'Nintendo', 'Nintendo R&D1', 4.85, 1990);
INSERT INTO public.game_sales VALUES ('Dragon Quest IX: Sentinels of the Starry Skies for DS', 'DS', 'Nintendo', 'Level 5', 5.50, 2010);
INSERT INTO public.game_sales VALUES ('Dragon Quest VII for PS', 'PS', 'Enix', 'Heart Beat', 4.30, 2001);
INSERT INTO public.game_sales VALUES ('Dragon Quest VIII: Journey of the Cursed King for PS2', 'PS2', 'Square Enix', 'Level 5 / Armor Project', 4.90, 2005);
INSERT INTO public.game_sales VALUES ('Driver 2 for PS', 'PS', 'Atari', 'Reflections Interactive', 4.73, 2000);
INSERT INTO public.game_sales VALUES ('Driver for PS', 'PS', 'GT Interactive', 'Reflections Interactive', 6.27, 1999);
INSERT INTO public.game_sales VALUES ('Duck Hunt for NES', 'NES', 'Nintendo', 'Nintendo R&D1', 28.31, 1985);
INSERT INTO public.game_sales VALUES ('Euro Truck Simulator 2 for PC', 'PC', 'SCS Software', 'SCS Software', 5.98, 2013);
INSERT INTO public.game_sales VALUES ('Excitebike for NES', 'NES', 'Nintendo', 'Nintendo R&D1', 4.16, 1985);
INSERT INTO public.game_sales VALUES ('EyeToy Play for PS2', 'PS2', 'Sony Computer Entertainment', 'SCEE London Studio', 4.00, 2003);
INSERT INTO public.game_sales VALUES ('FIFA 07 Soccer for PS2', 'PS2', 'EA Sports', 'Team Fusion', 4.11, 2006);
INSERT INTO public.game_sales VALUES ('FIFA 13 for PS3', 'PS3', 'EA Sports', 'EA Canada', 8.01, 2012);
INSERT INTO public.game_sales VALUES ('FIFA 13 for X360', 'X360', 'EA Sports', 'EA Canada', 5.11, 2012);
INSERT INTO public.game_sales VALUES ('FIFA 14 for PS3', 'PS3', 'EA Sports', 'EA Canada', 6.61, 2013);
INSERT INTO public.game_sales VALUES ('FIFA 14 for X360', 'X360', 'EA Sports', 'EA Canada', 4.15, 2013);
INSERT INTO public.game_sales VALUES ('FIFA 15 for PS3', 'PS3', 'EA Sports', 'EA Canada', 4.56, 2014);
INSERT INTO public.game_sales VALUES ('FIFA 15 for PS4', 'PS4', 'EA Sports', 'EA Canada', 6.32, 2014);
INSERT INTO public.game_sales VALUES ('FIFA 16 for PS4', 'PS4', 'EA Sports', 'EA Canada', 8.22, 2015);
INSERT INTO public.game_sales VALUES ('FIFA 17 for PS4', 'PS4', 'Electronic Arts', 'EA Canada', 10.94, 2016);
INSERT INTO public.game_sales VALUES ('FIFA 18 for PS4', 'PS4', 'EA Sports', 'EA Vancouver', 11.80, 2017);
INSERT INTO public.game_sales VALUES ('FIFA 19 for PS4', 'PS4', 'Electronic Arts', 'EA Sports', 9.15, 2018);
INSERT INTO public.game_sales VALUES ('FIFA 20 for PS4', 'PS4', 'Electronic Arts', 'EA Sports', 7.15, 2019);
INSERT INTO public.game_sales VALUES ('FIFA Soccer 06 for PS2', 'PS2', 'EA Sports', 'EA Canada', 4.21, 2005);
INSERT INTO public.game_sales VALUES ('FIFA Soccer 11 for PS3', 'PS3', 'EA Sports', 'EA Canada', 5.08, 2010);
INSERT INTO public.game_sales VALUES ('FIFA Soccer 12 for PS3', 'PS3', 'EA Sports', 'EA Canada', 6.65, 2011);
INSERT INTO public.game_sales VALUES ('FIFA Soccer 12 for X360', 'X360', 'EA Sports', 'EA Canada', 4.18, 2011);
INSERT INTO public.game_sales VALUES ('Fable III for X360', 'X360', 'Microsoft Game Studios', 'Lionhead Studios', 5.10, 2010);
INSERT INTO public.game_sales VALUES ('Fallout 3 for PS3', 'PS3', 'Bethesda Softworks', 'Bethesda Game Studios', 4.00, 2008);
INSERT INTO public.game_sales VALUES ('Fallout 3 for X360', 'X360', 'Bethesda Softworks', 'Bethesda Game Studios', 4.96, 2008);
INSERT INTO public.game_sales VALUES ('Fallout 4 for PC', 'PC', 'Bethesda Softworks', 'Bethesda Game Studios', 6.60, 2015);
INSERT INTO public.game_sales VALUES ('Fallout 4 for PS4', 'PS4', 'Bethesda Softworks', 'Bethesda Game Studios', 8.48, 2015);
INSERT INTO public.game_sales VALUES ('Fallout 4 for XOne', 'XOne', 'Bethesda Softworks', 'Bethesda Game Studios', 5.03, 2015);
INSERT INTO public.game_sales VALUES ('Fallout: New Vegas for PC', 'PC', 'Bethesda Softworks', 'Obsidian Entertainment', 5.22, 2010);
INSERT INTO public.game_sales VALUES ('Fallout: New Vegas for X360', 'X360', 'Bethesda Softworks', 'Obsidian Entertainment', 4.08, 2010);
INSERT INTO public.game_sales VALUES ('Far Cry 4 for PS4', 'PS4', 'Ubisoft', 'Ubisoft Montreal', 4.06, 2014);
INSERT INTO public.game_sales VALUES ('Final Fantasy IX for PS', 'PS', 'Square', 'SquareSoft', 5.50, 2000);
INSERT INTO public.game_sales VALUES ('Final Fantasy VII for PS', 'PS', 'Sony Computer Entertainment', 'SquareSoft', 9.90, 1997);
INSERT INTO public.game_sales VALUES ('Final Fantasy VIII for PS', 'PS', 'Square EA', 'SquareSoft', 8.60, 1999);
INSERT INTO public.game_sales VALUES ('Final Fantasy X for PS2', 'PS2', 'Square', 'SquareSoft', 8.60, 2001);
INSERT INTO public.game_sales VALUES ('Final Fantasy X-2 for PS2', 'PS2', 'Square Enix', 'Square Enix', 5.50, 2003);
INSERT INTO public.game_sales VALUES ('Final Fantasy XII for PS2', 'PS2', 'Square Enix', 'Square Enix', 6.40, 2006);
INSERT INTO public.game_sales VALUES ('Final Fantasy XIII for PS3', 'PS3', 'Square Enix', 'Square Enix', 5.35, 2010);
INSERT INTO public.game_sales VALUES ('Final Fantasy XV for PS4', 'PS4', 'Square Enix', 'Square Enix', 5.07, 2016);
INSERT INTO public.game_sales VALUES ('Forza Motorsport 2 for X360', 'X360', 'Microsoft Game Studios', 'Turn 10 Studios', 4.05, 2007);
INSERT INTO public.game_sales VALUES ('Forza Motorsport 3 for X360', 'X360', 'Microsoft Game Studios', 'Turn 10 Studios', 5.50, 2009);
INSERT INTO public.game_sales VALUES ('Forza Motorsport 4 for X360', 'X360', 'Microsoft Studios', 'Turn 10 Studio', 4.60, 2011);
INSERT INTO public.game_sales VALUES ('Frogger for PS', 'PS', 'Hasbro Interactive', 'Millenium Interactive', 4.16, 1997);
INSERT INTO public.game_sales VALUES ('Garry''s Mod for PC', 'PC', 'Valve', 'Facepunch Studios', 16.90, 2006);
INSERT INTO public.game_sales VALUES ('Gears of War 2 for X360', 'X360', 'Microsoft Game Studios', 'Epic Games', 5.00, 2008);
INSERT INTO public.game_sales VALUES ('Gears of War for X360', 'X360', 'Microsoft Game Studios', 'Epic Games', 5.00, 2006);
INSERT INTO public.game_sales VALUES ('God of War (2018) for PS4', 'PS4', 'Sony Interactive Entertainment', 'SIE Santa Monica Studio', 11.00, 2018);
INSERT INTO public.game_sales VALUES ('God of War II for PS2', 'PS2', 'Sony Computer Entertainment', 'SCEA Santa Monica Studio', 4.24, 2007);
INSERT INTO public.game_sales VALUES ('God of War III for PS3', 'PS3', 'Sony Computer Entertainment', 'SCEA Santa Monica Studio', 7.60, 2010);
INSERT INTO public.game_sales VALUES ('God of War for PS2', 'PS2', 'Sony Computer Entertainment', 'SCEA Santa Monica Studio', 4.62, 2005);
INSERT INTO public.game_sales VALUES ('GoldenEye 007 for N64', 'N64', 'Nintendo', 'Rare Ltd.', 8.09, 1997);
INSERT INTO public.game_sales VALUES ('Golf for NES', 'NES', 'Nintendo', 'Nintendo', 4.01, 1985);
INSERT INTO public.game_sales VALUES ('Gran Turismo 2 for PS', 'PS', 'Sony Computer Entertainment', 'Polyphony Digital', 9.37, 1999);
INSERT INTO public.game_sales VALUES ('Gran Turismo 3: A-Spec for PS2', 'PS2', 'Sony Computer Entertainment', 'Polyphony Digital', 14.89, 2001);
INSERT INTO public.game_sales VALUES ('Gran Turismo 4 for PS2', 'PS2', 'Sony Computer Entertainment', 'Polyphony Digital', 11.76, 2005);
INSERT INTO public.game_sales VALUES ('Gran Turismo 5 Prologue for PS3', 'PS3', 'Sony Computer Entertainment', 'Polyphony Digital', 5.35, 2008);
INSERT INTO public.game_sales VALUES ('Gran Turismo 5 for PS3', 'PS3', 'Sony Computer Entertainment', 'Polyphony Digital', 11.95, 2010);
INSERT INTO public.game_sales VALUES ('Gran Turismo 6 for PS3', 'PS3', 'Sony Computer Entertainment America', 'Polyphony Digital', 5.22, 2013);
INSERT INTO public.game_sales VALUES ('Gran Turismo for PS', 'PS', 'Sony Computer Entertainment', 'Polyphony Digital', 10.85, 1998);
INSERT INTO public.game_sales VALUES ('Gran Turismo for PSP', 'PSP', 'Sony Computer Entertainment', 'Polyphony Digital', 4.67, 2009);
INSERT INTO public.game_sales VALUES ('Grand Theft Auto III for PS2', 'PS2', 'Rockstar Games', 'DMA Design', 13.10, 2001);
INSERT INTO public.game_sales VALUES ('Grand Theft Auto IV for PS3', 'PS3', 'Rockstar Games', 'Rockstar North', 10.57, 2008);
INSERT INTO public.game_sales VALUES ('Grand Theft Auto IV for X360', 'X360', 'Rockstar Games', 'Rockstar North', 11.09, 2008);
INSERT INTO public.game_sales VALUES ('Grand Theft Auto V for PC', 'PC', 'Rockstar Games', 'Rockstar North', 12.60, 2015);
INSERT INTO public.game_sales VALUES ('Grand Theft Auto V for PS3', 'PS3', 'Rockstar Games', 'Rockstar North', 20.32, 2013);
INSERT INTO public.game_sales VALUES ('Grand Theft Auto V for PS4', 'PS4', 'Rockstar Games', 'Rockstar North', 19.39, 2014);
INSERT INTO public.game_sales VALUES ('Grand Theft Auto V for X360', 'X360', 'Rockstar Games', 'Rockstar North', 15.86, 2013);
INSERT INTO public.game_sales VALUES ('Grand Theft Auto V for XOne', 'XOne', 'Rockstar Games', 'Rockstar North', 8.72, 2014);
INSERT INTO public.game_sales VALUES ('Grand Theft Auto: Liberty City Stories for PSP', 'PSP', 'Rockstar Games', 'Rockstar Leeds', 7.72, 2005);
INSERT INTO public.game_sales VALUES ('Grand Theft Auto: San Andreas for PS2', 'PS2', 'Rockstar Games', 'Rockstar North', 17.30, 2004);
INSERT INTO public.game_sales VALUES ('Grand Theft Auto: Vice City Stories for PSP', 'PSP', 'Rockstar Games', 'Rockstar Leeds', 5.08, 2006);
INSERT INTO public.game_sales VALUES ('Grand Theft Auto: Vice City for PS2', 'PS2', 'Rockstar Games', 'Rockstar North', 16.15, 2002);
INSERT INTO public.game_sales VALUES ('Guild Wars 2 for PC', 'PC', 'NCSoft', 'ArenaNet', 7.00, 2012);
INSERT INTO public.game_sales VALUES ('Guild Wars for PC', 'PC', 'NCSoft', 'ArenaNet', 6.50, 2005);
INSERT INTO public.game_sales VALUES ('Guitar Hero II for PS2', 'PS2', 'RedOctane', 'Harmonix Music Systems', 5.12, 2006);
INSERT INTO public.game_sales VALUES ('Guitar Hero III: Legends of Rock for PS2', 'PS2', 'RedOctane', 'BudCat Creations', 4.98, 2007);
INSERT INTO public.game_sales VALUES ('Guitar Hero III: Legends of Rock for Wii', 'Wii', 'RedOctane', 'Vicarious Visions', 4.60, 2007);
INSERT INTO public.game_sales VALUES ('Guitar Hero III: Legends of Rock for X360', 'X360', 'RedOctane', 'Neversoft', 4.53, 2007);
INSERT INTO public.game_sales VALUES ('Half-Life 2 for PC', 'PC', 'VU Games', 'Valve Software', 12.00, 2004);
INSERT INTO public.game_sales VALUES ('Half-Life for PC', 'PC', 'Sierra Entertainment', 'Valve Software', 9.30, 1998);
INSERT INTO public.game_sales VALUES ('Halo 2 for XB', 'XB', 'Microsoft Game Studios', 'Bungie Studios', 8.00, 2004);
INSERT INTO public.game_sales VALUES ('Halo 3 for X360', 'X360', 'Microsoft Game Studios', 'Bungie Studios', 14.50, 2007);
INSERT INTO public.game_sales VALUES ('Halo 3: ODST for X360', 'X360', 'Microsoft Game Studios', 'Bungie', 6.35, 2009);
INSERT INTO public.game_sales VALUES ('Halo 4 for X360', 'X360', 'Microsoft Studios', '343 Industries', 9.96, 2012);
INSERT INTO public.game_sales VALUES ('Halo 5: Guardians for XOne', 'XOne', 'Microsoft Studios', '343 Industries', 5.00, 2015);
INSERT INTO public.game_sales VALUES ('Halo: Combat Evolved for XB', 'XB', 'Microsoft', 'Bungie Studios', 5.00, 2001);
INSERT INTO public.game_sales VALUES ('Halo: Reach for X360', 'X360', 'Microsoft Game Studios', 'Bungie', 9.97, 2010);
INSERT INTO public.game_sales VALUES ('Horizon: Zero Dawn for PS4', 'PS4', 'Sony Interactive Entertainment', 'Guerrilla Games', 10.00, 2017);
INSERT INTO public.game_sales VALUES ('Just Cause 2 for PC', 'PC', 'Eidos Interactive', 'Avalanche Studios', 4.16, 2010);
INSERT INTO public.game_sales VALUES ('Just Dance 2 for Wii', 'Wii', 'Ubisoft', 'Ubisoft Paris', 5.25, 2010);
INSERT INTO public.game_sales VALUES ('Just Dance 3 for Wii', 'Wii', 'Ubisoft', 'Ubisoft Paris', 10.14, 2011);
INSERT INTO public.game_sales VALUES ('Just Dance 4 for Wii', 'Wii', 'Ubisoft', 'Ubisoft', 6.89, 2012);
INSERT INTO public.game_sales VALUES ('Just Dance for Wii', 'Wii', 'Ubisoft', 'Ubisoft Paris', 4.00, 2009);
INSERT INTO public.game_sales VALUES ('Kinect Adventures! for X360', 'X360', 'Microsoft Game Studios', 'Good Science Studio', 24.00, 2010);
INSERT INTO public.game_sales VALUES ('Kingdom Hearts II for PS2', 'PS2', 'Square Enix', 'Square Enix', 5.20, 2006);
INSERT INTO public.game_sales VALUES ('Kingdom Hearts for PS2', 'PS2', 'Square EA', 'SquareSoft', 6.30, 2002);
INSERT INTO public.game_sales VALUES ('Kirby''s Dream Land for GB', 'GB', 'Nintendo', 'HAL Laboratory', 5.13, 1992);
INSERT INTO public.game_sales VALUES ('LEGO Star Wars: The Complete Saga for DS', 'DS', 'LucasArts', 'Traveller''s Tales', 4.77, 2007);
INSERT INTO public.game_sales VALUES ('LEGO Star Wars: The Complete Saga for Wii', 'Wii', 'LucasArts', 'Traveller''s Tales', 5.66, 2007);
INSERT INTO public.game_sales VALUES ('Left 4 Dead for PC', 'PC', 'Valve Corporation', 'Valve Software', 4.60, 2008);
INSERT INTO public.game_sales VALUES ('Link''s Crossbow Training for Wii', 'Wii', 'Nintendo', 'Nintendo EAD', 5.79, 2007);
INSERT INTO public.game_sales VALUES ('LittleBigPlanet for PS3', 'PS3', 'Sony Computer Entertainment', 'Media Molecule', 4.50, 2008);
INSERT INTO public.game_sales VALUES ('Luigi''s Mansion 3 for NS', 'NS', 'Nintendo', 'Next Level Games, Inc.', 6.33, 2019);
INSERT INTO public.game_sales VALUES ('Luigi''s Mansion: Dark Moon for 3DS', '3DS', 'Nintendo', 'Next Level Games', 6.16, 2013);
INSERT INTO public.game_sales VALUES ('Madden NFL 06 for PS2', 'PS2', 'EA Sports', 'EA Tiburon', 4.91, 2005);
INSERT INTO public.game_sales VALUES ('Madden NFL 07 for PS2', 'PS2', 'EA Sports', 'EA Tiburon', 4.49, 2006);
INSERT INTO public.game_sales VALUES ('Madden NFL 2003 for PS2', 'PS2', 'EA Sports', 'EA Tiburon', 4.14, 2002);
INSERT INTO public.game_sales VALUES ('Madden NFL 2004 for PS2', 'PS2', 'EA Sports', 'EA Tiburon', 5.23, 2003);
INSERT INTO public.game_sales VALUES ('Madden NFL 2005 for PS2', 'PS2', 'EA Sports', 'EA Tiburon', 4.53, 2004);
INSERT INTO public.game_sales VALUES ('Mario & Luigi: Bowser''s Inside Story for DS', 'DS', 'Nintendo', 'AlphaDream Corporation', 4.56, 2009);
INSERT INTO public.game_sales VALUES ('Mario & Sonic at the Olympic Games for DS', 'DS', 'Sega', 'Sega', 5.10, 2008);
INSERT INTO public.game_sales VALUES ('Mario & Sonic at the Olympic Winter Games for Wii', 'Wii', 'Sega', 'Sega', 4.54, 2009);
INSERT INTO public.game_sales VALUES ('Mario Kart 64 for N64', 'N64', 'Nintendo', 'Nintendo EAD', 9.87, 1997);
INSERT INTO public.game_sales VALUES ('Mario Kart 7 for 3DS', '3DS', 'Nintendo', 'Nintendo EAD / Retro Studios', 18.71, 2011);
INSERT INTO public.game_sales VALUES ('Mario Kart 8 Deluxe for NS', 'NS', 'Nintendo', 'Nintendo EPD', 24.77, 2017);
INSERT INTO public.game_sales VALUES ('Mario Kart 8 for WiiU', 'WiiU', 'Nintendo', 'Nintendo', 8.45, 2014);
INSERT INTO public.game_sales VALUES ('Mario Kart DS for DS', 'DS', 'Nintendo', 'Nintendo EAD', 23.60, 2005);
INSERT INTO public.game_sales VALUES ('Mario Kart Wii for Wii', 'Wii', 'Nintendo', 'Nintendo EAD', 37.32, 2008);
INSERT INTO public.game_sales VALUES ('Mario Kart: Double Dash!! for GC', 'GC', 'Nintendo', 'Nintendo EAD', 6.88, 2003);
INSERT INTO public.game_sales VALUES ('Mario Kart: Super Circuit for GBA', 'GBA', 'Nintendo', 'Intelligent Systems', 5.91, 2001);
INSERT INTO public.game_sales VALUES ('Mario Party 8 for Wii', 'Wii', 'Nintendo', 'Hudson Soft', 8.85, 2007);
INSERT INTO public.game_sales VALUES ('Mario Party DS for DS', 'DS', 'Nintendo', 'Hudson Soft', 9.31, 2007);
INSERT INTO public.game_sales VALUES ('Marvel''s Spider-Man for PS4', 'PS4', 'Sony Interactive Entertainment', 'Insomniac Games', 13.20, 2018);
INSERT INTO public.game_sales VALUES ('Medal of Honor: Frontline for PS2', 'PS2', 'Electronic Arts', 'EA Los Angeles', 6.83, 2002);
INSERT INTO public.game_sales VALUES ('Medal of Honor: Rising Sun for PS2', 'PS2', 'Electronic Arts', 'EA Los Angeles', 5.13, 2003);
INSERT INTO public.game_sales VALUES ('Metal Gear Solid 2: Sons of Liberty for PS2', 'PS2', 'Konami', 'Konami Computer Entertainment Japan', 6.05, 2001);
INSERT INTO public.game_sales VALUES ('Metal Gear Solid 3: Snake Eater for PS2', 'PS2', 'Konami', 'KCEJ / Kojima Productions', 4.23, 2004);
INSERT INTO public.game_sales VALUES ('Metal Gear Solid 4: Guns of the Patriots for PS3', 'PS3', 'Konami', 'Kojima Productions', 6.00, 2008);
INSERT INTO public.game_sales VALUES ('Metal Gear Solid for PS', 'PS', 'Konami', 'Konami Computer Entertainment Japan', 6.00, 1998);
INSERT INTO public.game_sales VALUES ('Michael Jackson: The Experience for Wii', 'Wii', 'Ubisoft', 'Ubisoft Montpellier', 4.37, 2010);
INSERT INTO public.game_sales VALUES ('Microsoft Flight Simulator for PC', 'PC', 'Microsoft', 'Microsoft', 5.12, 1996);
INSERT INTO public.game_sales VALUES ('Minecraft for PC', 'PC', 'Mojang', 'Mojang AB', 33.15, 2010);
INSERT INTO public.game_sales VALUES ('Minecraft for PS3', 'PS3', 'Sony Computer Entertainment America', 'Mojang', 6.05, 2014);
INSERT INTO public.game_sales VALUES ('Minecraft for PS4', 'PS4', 'Sony Computer Entertainment', 'Mojang', 6.33, 2014);
INSERT INTO public.game_sales VALUES ('Minecraft for X360', 'X360', 'Microsoft Studios', 'Mojang', 13.00, 2013);
INSERT INTO public.game_sales VALUES ('Minecraft for XOne', 'XOne', 'Microsoft Studios', 'Mojang', 5.43, 2014);
INSERT INTO public.game_sales VALUES ('Monster Hunter 4 Ultimate for 3DS', '3DS', 'Capcom', 'Capcom', 4.20, 2015);
INSERT INTO public.game_sales VALUES ('Monster Hunter 4 for 3DS', '3DS', 'Capcom', 'Capcom', 4.10, 2013);
INSERT INTO public.game_sales VALUES ('Monster Hunter Freedom 3 for PSP', 'PSP', 'Capcom', 'Capcom', 4.90, 2010);
INSERT INTO public.game_sales VALUES ('Monster Hunter Generations for 3DS', '3DS', 'Capcom', 'Capcom', 4.30, 2016);
INSERT INTO public.game_sales VALUES ('Monster Hunter: World for PS4', 'PS4', 'Capcom', 'Capcom', 4.00, 2018);
INSERT INTO public.game_sales VALUES ('Mortal Kombat 11 for PS4', 'PS4', 'NetherRealm Studios', 'Warner Bros. Interactive Entertainment', 4.20, 2019);
INSERT INTO public.game_sales VALUES ('Myst for PC', 'PC', 'Broderbund', 'Cyan Worlds', 6.30, 1995);
INSERT INTO public.game_sales VALUES ('NBA 2K20 for PS4', 'PS4', '2K Sports', 'Visual Concepts', 8.00, 2019);
INSERT INTO public.game_sales VALUES ('Namco Museum Vol.3 for PS', 'PS', 'Namco', 'Namco', 4.05, 1997);
INSERT INTO public.game_sales VALUES ('Namco Museum for GBA', 'GBA', 'Namco', 'Mass Media', 4.24, 2001);
INSERT INTO public.game_sales VALUES ('Namco Museum: 50th Anniversary for PS2', 'PS2', 'Namco', 'Digital Eclipse', 3.98, 2005);
INSERT INTO public.game_sales VALUES ('Need for Speed Underground 2 for PS2', 'PS2', 'Electronic Arts', 'EA Black Box', 6.90, 2004);
INSERT INTO public.game_sales VALUES ('Need for Speed Underground for PS2', 'PS2', 'Electronic Arts', 'EA Black Box', 7.20, 2003);
INSERT INTO public.game_sales VALUES ('Need for Speed: Most Wanted for PS2', 'PS2', 'Electronic Arts', 'EA Canada', 4.37, 2005);
INSERT INTO public.game_sales VALUES ('New Super Mario Bros. 2 for 3DS', '3DS', 'Nintendo', 'Nintendo', 13.34, 2012);
INSERT INTO public.game_sales VALUES ('New Super Mario Bros. U Deluxe for NS', 'NS', 'Nintendo', 'Nintendo EPD', 6.60, 2019);
INSERT INTO public.game_sales VALUES ('New Super Mario Bros. U for WiiU', 'WiiU', 'Nintendo', 'Nintendo EAD', 5.80, 2012);
INSERT INTO public.game_sales VALUES ('New Super Mario Bros. Wii for Wii', 'Wii', 'Nintendo', 'Nintendo EAD', 30.30, 2009);
INSERT INTO public.game_sales VALUES ('New Super Mario Bros. for DS', 'DS', 'Nintendo', 'Nintendo EAD', 30.80, 2006);
INSERT INTO public.game_sales VALUES ('Nintendo Land for WiiU', 'WiiU', 'Nintendo', 'Nintendo', 5.20, 2012);
INSERT INTO public.game_sales VALUES ('Nintendogs + cats for 3DS', '3DS', 'Nintendo', 'Nintendo EAD', 4.59, 2011);
INSERT INTO public.game_sales VALUES ('Nintendogs for DS', 'DS', 'Nintendo', 'Nintendo EAD', 23.96, 2005);
INSERT INTO public.game_sales VALUES ('Overwatch for PS4', 'PS4', 'Blizzard Entertainment', 'Blizzard Entertainment', 4.54, 2016);
INSERT INTO public.game_sales VALUES ('PLAYERUNKNOWN''S BATTLEGROUNDS for PC', 'PC', 'PUBG Corporation', 'PUBG Corporation', 36.60, 2017);
INSERT INTO public.game_sales VALUES ('Pac-Man for 2600', '2600', 'Atari', 'Atari', 7.70, 1982);
INSERT INTO public.game_sales VALUES ('Pitfall! for 2600', '2600', 'Activision', 'Activision', 4.50, 1982);
INSERT INTO public.game_sales VALUES ('Pokemon Black / White Version for DS', 'DS', 'Nintendo', 'Game Freak', 15.64, 2011);
INSERT INTO public.game_sales VALUES ('Pokemon Black 2 and White 2 for DS', 'DS', 'Nintendo', 'Game Freak', 8.52, 2012);
INSERT INTO public.game_sales VALUES ('Pokemon Crystal Version for GBC', 'GBC', 'Nintendo', 'Game Freak', 6.39, 2001);
INSERT INTO public.game_sales VALUES ('Pokemon Diamond / Pearl Version for DS', 'DS', 'Nintendo', 'Game Freak', 17.67, 2007);
INSERT INTO public.game_sales VALUES ('Pokemon Emerald Version for GBA', 'GBA', 'Nintendo', 'Game Freak', 7.06, 2005);
INSERT INTO public.game_sales VALUES ('Pokemon FireRed / LeafGreen Version for GBA', 'GBA', 'Nintendo', 'Game Freak', 12.00, 2004);
INSERT INTO public.game_sales VALUES ('Pokemon Gold / Silver Version for GB', 'GB', 'Nintendo', 'Game Freak', 23.10, 2000);
INSERT INTO public.game_sales VALUES ('Pokemon Heart Gold / Soul Silver Version for DS', 'DS', 'Nintendo', 'Game Freak', 12.72, 2010);
INSERT INTO public.game_sales VALUES ('Pokemon Mystery Dungeon: Explorers of Time / Darkness for DS', 'DS', 'Nintendo', 'ChunSoft', 4.88, 2008);
INSERT INTO public.game_sales VALUES ('Pokemon Omega Ruby/Pokemon Alpha Sapphire for 3DS', '3DS', 'Nintendo', 'Game Freak', 14.27, 2014);
INSERT INTO public.game_sales VALUES ('Pokemon Pinball for GBC', 'GBC', 'Nintendo', 'Jupiter Corporation', 5.31, 1999);
INSERT INTO public.game_sales VALUES ('Pokemon Platinum Version for DS', 'DS', 'Nintendo', 'Game Freak', 7.60, 2009);
INSERT INTO public.game_sales VALUES ('Pokemon Red / Green / Blue Version for GB', 'GB', 'Nintendo', 'Game Freak', 31.38, 1998);
INSERT INTO public.game_sales VALUES ('Pokemon Ruby / Sapphire Version for GBA', 'GBA', 'Nintendo', 'Game Freak', 16.22, 2003);
INSERT INTO public.game_sales VALUES ('Pokemon Stadium for N64', 'N64', 'Nintendo', 'HAL Laboratory', 5.46, 2000);
INSERT INTO public.game_sales VALUES ('Pokemon Sun/Moon for 3DS', '3DS', 'Nintendo', 'Game Freak', 16.18, 2016);
INSERT INTO public.game_sales VALUES ('Pokemon Sword / Shield for NS', 'NS', 'Nintendo', 'Game Freak', 17.37, 2019);
INSERT INTO public.game_sales VALUES ('Pokemon X/Y for 3DS', '3DS', 'Nintendo', 'Game Freak', 16.45, 2013);
INSERT INTO public.game_sales VALUES ('Pokemon Yellow: Special Pikachu Edition for GB', 'GB', 'Nintendo', 'Game Freak', 14.64, 1999);
INSERT INTO public.game_sales VALUES ('Pokemon: Let''s Go, Pikachu! for NS', 'NS', 'Nintendo', 'Game Freak', 4.57, 2018);
INSERT INTO public.game_sales VALUES ('Pokemon: Let''s Go, Pikachu/Eevee for NS', 'NS', 'Nintendo', 'Game Freak', 11.97, 2018);
INSERT INTO public.game_sales VALUES ('Pokemon: Ultra Sun and Ultra Moon for 3DS', '3DS', 'Nintendo', 'Game Freak', 8.77, 2017);
INSERT INTO public.game_sales VALUES ('Portal 2 for PC', 'PC', 'Valve', 'Valve Software', 13.06, 2011);
INSERT INTO public.game_sales VALUES ('Portal for PC', 'PC', 'Valve Corporation', 'Valve Software', 9.97, 2008);
INSERT INTO public.game_sales VALUES ('Professor Layton and the Curious Village for DS', 'DS', 'Nintendo', 'Level 5', 4.49, 2008);
INSERT INTO public.game_sales VALUES ('Red Dead Redemption 2 for PS4', 'PS4', 'Rockstar Games', 'Rockstar Games', 13.94, 2018);
INSERT INTO public.game_sales VALUES ('Red Dead Redemption 2 for XOne', 'XOne', 'Rockstar Games', 'Rockstar Games', 5.77, 2018);
INSERT INTO public.game_sales VALUES ('Red Dead Redemption for PS3', 'PS3', 'Rockstar Games', 'Rockstar San Diego', 6.57, 2011);
INSERT INTO public.game_sales VALUES ('Red Dead Redemption for X360', 'X360', 'Rockstar Games', 'Rockstar San Diego', 6.50, 2010);
INSERT INTO public.game_sales VALUES ('Resident Evil 2 for PS', 'PS', 'Capcom', 'Capcom', 4.96, 1998);
INSERT INTO public.game_sales VALUES ('Resident Evil 5 for PS3', 'PS3', 'Capcom', 'Capcom', 5.10, 2009);
INSERT INTO public.game_sales VALUES ('Resistance: Fall of Man for PS3', 'PS3', 'Sony Computer Entertainment', 'Insomniac Games', 4.37, 2006);
INSERT INTO public.game_sales VALUES ('Riven: The Sequel to Myst for PC', 'PC', 'Red Orb', 'Cyan Worlds', 4.50, 1997);
INSERT INTO public.game_sales VALUES ('RollerCoaster Tycoon 3 for PC', 'PC', 'Atari', 'Frontier Developments', 10.00, 2004);
INSERT INTO public.game_sales VALUES ('Rust for PC', 'PC', 'Facepunch Studios', 'Facepunch Studios', 9.02, 2018);
INSERT INTO public.game_sales VALUES ('Sid Meier''s Civilization VI for PC', 'PC', '2K Games', 'Firaxis Games', 5.50, 2016);
INSERT INTO public.game_sales VALUES ('Sonic the Hedgehog 2 for GEN', 'GEN', 'Sega', 'Sonic Team', 6.00, 1992);
INSERT INTO public.game_sales VALUES ('Sonic the Hedgehog for GEN', 'GEN', 'Sega', 'Sonic Team', 15.00, 1991);
INSERT INTO public.game_sales VALUES ('Spider-Man: The Movie for PS2', 'PS2', 'Activision', 'Treyarch', 4.48, 2002);
INSERT INTO public.game_sales VALUES ('Splatoon 2 for NS', 'NS', 'Nintendo', 'Nintendo EPD', 10.13, 2017);
INSERT INTO public.game_sales VALUES ('Splatoon for WiiU', 'WiiU', 'Nintendo', 'Nintendo EAD', 4.95, 2015);
INSERT INTO public.game_sales VALUES ('Spyro the Dragon for PS', 'PS', 'Sony Computer Entertainment', 'Insomniac Games', 5.00, 1998);
INSERT INTO public.game_sales VALUES ('Star Fox 64 for N64', 'N64', 'Nintendo', 'Nintendo EAD', 4.00, 1997);
INSERT INTO public.game_sales VALUES ('Star Wars Battlefront (2015) for PS4', 'PS4', 'Electronic Arts', 'EA DICE', 8.03, 2015);
INSERT INTO public.game_sales VALUES ('Star Wars Battlefront (2015) for XOne', 'XOne', 'Electronic Arts', 'EA DICE', 4.15, 2015);
INSERT INTO public.game_sales VALUES ('Star Wars Battlefront II (2017) for PS4', 'PS4', 'Electronic Arts', 'EA DICE', 4.53, 2017);
INSERT INTO public.game_sales VALUES ('StarCraft II: Wings of Liberty for PC', 'PC', 'Blizzard Entertainment', 'Blizzard Entertainment', 4.50, 2010);
INSERT INTO public.game_sales VALUES ('StarCraft for PC', 'PC', 'Blizzard Entertainment', 'Blizzard Entertainment', 11.00, 1998);
INSERT INTO public.game_sales VALUES ('Starbound for PC', 'PC', 'Infocom, Inc.', 'Unknown', 4.31, 2014);
INSERT INTO public.game_sales VALUES ('Stardew Valley for PC', 'PC', 'Chucklefish', 'ConcernedApe', 4.91, 2016);
INSERT INTO public.game_sales VALUES ('Street Fighter II Turbo for SNES', 'SNES', 'Capcom', 'Capcom', 4.10, 1993);
INSERT INTO public.game_sales VALUES ('Street Fighter II: The World Warrior for SNES', 'SNES', 'Capcom', 'Capcom', 6.30, 1992);
INSERT INTO public.game_sales VALUES ('Street Fighter IV for PS3', 'PS3', 'Capcom', 'Capcom / Dimps Corporation', 4.19, 2009);
INSERT INTO public.game_sales VALUES ('Super Mario 3D Land for 3DS', '3DS', 'Nintendo', 'Nintendo EAD Tokyo', 12.70, 2011);
INSERT INTO public.game_sales VALUES ('Super Mario 3D World for WiiU', 'WiiU', 'Nintendo', 'Nintendo EAD Tokyo', 5.84, 2013);
INSERT INTO public.game_sales VALUES ('Super Mario 64 DS for DS', 'DS', 'Nintendo', 'Nintendo EAD', 11.06, 2004);
INSERT INTO public.game_sales VALUES ('Super Mario 64 for N64', 'N64', 'Nintendo', 'Nintendo EAD', 11.91, 1996);
INSERT INTO public.game_sales VALUES ('Super Mario Advance 4: Super Mario Bros. 3 for GBA', 'GBA', 'Nintendo', 'Nintendo EAD', 5.43, 2003);
INSERT INTO public.game_sales VALUES ('Super Mario Advance for GBA', 'GBA', 'Nintendo', 'Nintendo EAD', 5.57, 2001);
INSERT INTO public.game_sales VALUES ('Super Mario All-Stars for SNES', 'SNES', 'Nintendo', 'Nintendo EAD', 10.55, 1993);
INSERT INTO public.game_sales VALUES ('Super Mario Bros. 2 for NES', 'NES', 'Nintendo', 'Nintendo EAD', 7.46, 1988);
INSERT INTO public.game_sales VALUES ('Super Mario Bros. 3 for NES', 'NES', 'Nintendo', 'Nintendo R&D2', 17.28, 1990);
INSERT INTO public.game_sales VALUES ('Super Mario Bros. Deluxe for GB', 'GB', 'Nintendo', 'Nintendo EAD', 5.07, 1999);
INSERT INTO public.game_sales VALUES ('Super Mario Bros. for NES', 'NES', 'Nintendo', 'Nintendo EAD', 40.24, 1985);
INSERT INTO public.game_sales VALUES ('Super Mario Galaxy 2 for Wii', 'Wii', 'Nintendo', 'Nintendo EAD Tokyo', 7.41, 2010);
INSERT INTO public.game_sales VALUES ('Super Mario Galaxy for Wii', 'Wii', 'Nintendo', 'Nintendo EAD Tokyo', 12.80, 2007);
INSERT INTO public.game_sales VALUES ('Super Mario Kart for SNES', 'SNES', 'Nintendo', 'Nintendo EAD', 8.76, 1992);
INSERT INTO public.game_sales VALUES ('Super Mario Land 2: 6 Golden Coins for GB', 'GB', 'Nintendo', 'Nintendo R&D1', 11.18, 1992);
INSERT INTO public.game_sales VALUES ('Super Mario Land 3: Wario Land for GB', 'GB', 'Nintendo', 'Nintendo R&D1', 5.19, 1994);
INSERT INTO public.game_sales VALUES ('Super Mario Land for GB', 'GB', 'Nintendo', 'Nintendo R&D1', 18.14, 1989);
INSERT INTO public.game_sales VALUES ('Super Mario Maker 2 for NS', 'NS', 'Nintendo', 'Nintendo', 5.48, 2019);
INSERT INTO public.game_sales VALUES ('Super Mario Maker for WiiU', 'WiiU', 'Nintendo', 'Nintendo EAD', 4.01, 2015);
INSERT INTO public.game_sales VALUES ('Super Mario Odyssey for NS', 'NS', 'Nintendo', 'Nintendo EPD', 17.41, 2017);
INSERT INTO public.game_sales VALUES ('Super Mario Party for NS', 'NS', 'Nintendo', 'Nd Cube Co., Ltd.', 10.10, 2018);
INSERT INTO public.game_sales VALUES ('Super Mario Sunshine for GC', 'GC', 'Nintendo', 'Nintendo EAD', 5.91, 2002);
INSERT INTO public.game_sales VALUES ('Super Mario World 2: Yoshi''s Island for SNES', 'SNES', 'Nintendo', 'Nintendo EAD', 4.12, 1995);
INSERT INTO public.game_sales VALUES ('Super Mario World for SNES', 'SNES', 'Nintendo', 'Nintendo EAD', 20.61, 1991);
INSERT INTO public.game_sales VALUES ('Super Mario World: Super Mario Advance 2 for GBA', 'GBA', 'Nintendo', 'Nintendo EAD', 5.69, 2002);
INSERT INTO public.game_sales VALUES ('Super Paper Mario for Wii', 'Wii', 'Nintendo', 'Intelligent Systems', 4.23, 2007);
INSERT INTO public.game_sales VALUES ('Super Smash Bros. Brawl for Wii', 'Wii', 'Nintendo', 'Project Sora', 13.32, 2008);
INSERT INTO public.game_sales VALUES ('Super Smash Bros. Melee for GC', 'GC', 'Nintendo', 'HAL Laboratory', 7.41, 2001);
INSERT INTO public.game_sales VALUES ('Super Smash Bros. Ultimate for NS', 'NS', 'Nintendo', 'Bandai Namco Games', 18.84, 2018);
INSERT INTO public.game_sales VALUES ('Super Smash Bros. for 3DS for 3DS', '3DS', 'Nintendo', 'Bandai Namco Games', 9.59, 2014);
INSERT INTO public.game_sales VALUES ('Super Smash Bros. for N64', 'N64', 'Nintendo', 'HAL Laboratory', 5.55, 1999);
INSERT INTO public.game_sales VALUES ('Super Smash Bros. for Wii U for WiiU', 'WiiU', 'Nintendo', 'Bandai Namco Games', 5.37, 2014);
INSERT INTO public.game_sales VALUES ('Teenage Mutant Ninja Turtles for NES', 'NES', 'Ultra Games', 'Konami', 4.17, 1989);
INSERT INTO public.game_sales VALUES ('Tekken 2 for PS', 'PS', 'Namco', 'Namco', 5.74, 1996);
INSERT INTO public.game_sales VALUES ('Tekken 3 for PS', 'PS', 'Namco', 'Namco', 8.30, 1998);
INSERT INTO public.game_sales VALUES ('Tekken Tag Tournament for PS2', 'PS2', 'Namco', 'Namco', 4.05, 2000);
INSERT INTO public.game_sales VALUES ('Terraria for PC', 'PC', 'Unknown', 'Re-Logic', 14.00, 2011);
INSERT INTO public.game_sales VALUES ('Tetris for GB', 'GB', 'Nintendo', 'Bullet Proof Software', 30.26, 1989);
INSERT INTO public.game_sales VALUES ('Tetris for NES', 'NES', 'Nintendo', 'Nintendo', 5.58, 1989);
INSERT INTO public.game_sales VALUES ('The Binding of Isaac for PC', 'PC', 'Edmund McMillen', 'Edmund McMillen', 7.17, 2011);
INSERT INTO public.game_sales VALUES ('The Elder Scrolls IV: Oblivion for X360', 'X360', 'Take-Two Interactive', 'Bethesda Softworks', 4.47, 2009);
INSERT INTO public.game_sales VALUES ('The Elder Scrolls V: Skyrim for PC', 'PC', 'Bethesda Softworks', 'Bethesda Game Studios', 3.99, 2011);
INSERT INTO public.game_sales VALUES ('The Elder Scrolls V: Skyrim for PS3', 'PS3', 'Bethesda Softworks', 'Bethesda Game Studios', 6.49, 2011);
INSERT INTO public.game_sales VALUES ('The Elder Scrolls V: Skyrim for X360', 'X360', 'Bethesda Softworks', 'Bethesda Game Studios', 8.88, 2011);
INSERT INTO public.game_sales VALUES ('The Forest for PC', 'PC', 'Endnight Games Ltd', 'Unknown', 5.30, 2014);
INSERT INTO public.game_sales VALUES ('The Last of Us Remastered for PS4', 'PS4', 'Sony Computer Entertainment', 'Naughty Dog', 11.78, 2014);
INSERT INTO public.game_sales VALUES ('The Last of Us for PS3', 'PS3', 'Sony Computer Entertainment America', 'Naughty Dog', 8.15, 2013);
INSERT INTO public.game_sales VALUES ('The Last of Us: Part II for PS4', 'PS4', 'Sony Interactive Entertainment', 'Naughty Dog', 4.00, 2020);
INSERT INTO public.game_sales VALUES ('The Legend of Zelda for NES', 'NES', 'Nintendo', 'Nintendo EAD', 6.51, 1987);
INSERT INTO public.game_sales VALUES ('The Legend of Zelda: A Link Between Worlds for 3DS', '3DS', 'Nintendo', 'Nintendo EAD', 4.07, 2013);
INSERT INTO public.game_sales VALUES ('The Legend of Zelda: A Link to the Past for SNES', 'SNES', 'Nintendo', 'Nintendo EAD', 4.61, 1992);
INSERT INTO public.game_sales VALUES ('The Legend of Zelda: Breath of the Wild for NS', 'NS', 'Nintendo', 'Nintendo EPD', 17.41, 2017);
INSERT INTO public.game_sales VALUES ('The Legend of Zelda: Link''s Awakening for NS', 'NS', 'Nintendo', 'Nintendo', 4.38, 2019);
INSERT INTO public.game_sales VALUES ('The Legend of Zelda: Ocarina of Time 3D for 3DS', '3DS', 'Nintendo', 'GREZZO', 6.02, 2011);
INSERT INTO public.game_sales VALUES ('The Legend of Zelda: Ocarina of Time for N64', 'N64', 'Nintendo', 'Nintendo EAD', 7.60, 1998);
INSERT INTO public.game_sales VALUES ('The Legend of Zelda: Oracle of Ages / Seasons for GBC', 'GBC', 'Nintendo', 'Capcom', 3.99, 2001);
INSERT INTO public.game_sales VALUES ('The Legend of Zelda: Phantom Hourglass for DS', 'DS', 'Nintendo', 'Nintendo EAD', 4.76, 2007);
INSERT INTO public.game_sales VALUES ('The Legend of Zelda: The Wind Waker for GC', 'GC', 'Nintendo', 'Nintendo EAD', 4.43, 2003);
INSERT INTO public.game_sales VALUES ('The Legend of Zelda: Twilight Princess for Wii', 'Wii', 'Nintendo', 'Nintendo EAD', 7.26, 2006);
INSERT INTO public.game_sales VALUES ('The Lord of the Rings: The Two Towers for PS2', 'PS2', 'Electronic Arts', 'Stormfront Studios', 4.67, 2002);
INSERT INTO public.game_sales VALUES ('The Simpsons: Hit & Run for PS2', 'PS2', 'VU Games', 'Radical Entertainment', 4.70, 2003);
INSERT INTO public.game_sales VALUES ('The Sims 3 for PC', 'PC', 'Electronic Arts', 'EA Redwood Shores', 7.96, 2009);
INSERT INTO public.game_sales VALUES ('The Sims 4 for PC', 'PC', 'Electronic Arts', 'Maxis', 4.10, 2014);
INSERT INTO public.game_sales VALUES ('The Witcher 3: Wild Hunt for PC', 'PC', 'Warner Bros. Interactive Entertainment', 'CD Projekt Red Studio', 12.40, 2015);
INSERT INTO public.game_sales VALUES ('The Witcher 3: Wild Hunt for PS4', 'PS4', 'Warner Bros. Interactive Entertainment', 'CD Projekt Red Studio', 10.80, 2015);
INSERT INTO public.game_sales VALUES ('The Witcher 3: Wild Hunt for XOne', 'XOne', 'Warner Bros. Interactive Entertainment', 'CD Projekt Red Studio', 4.30, 2015);
INSERT INTO public.game_sales VALUES ('Tom Clancy''s Rainbow Six: Siege for PS4', 'PS4', 'Ubisoft', 'Ubisoft Montreal', 4.36, 2015);
INSERT INTO public.game_sales VALUES ('Tom Clancy''s The Division for PS4', 'PS4', 'Ubisoft', 'Massive Entertainment', 4.37, 2016);
INSERT INTO public.game_sales VALUES ('Tomb Raider (2013) for PC', 'PC', 'Square Enix', 'Crystal Dynamics', 5.50, 2013);
INSERT INTO public.game_sales VALUES ('Tomb Raider II for PS', 'PS', 'Eidos Interactive', 'Core Design Ltd.', 5.24, 1997);
INSERT INTO public.game_sales VALUES ('Tomb Raider for PS', 'PS', 'Eidos Interactive', 'Core Design Ltd.', 4.63, 1996);
INSERT INTO public.game_sales VALUES ('Tomodachi Life for 3DS', '3DS', 'Nintendo', 'Nintendo', 6.59, 2014);
INSERT INTO public.game_sales VALUES ('Tony Hawk''s Pro Skater 2 for PS', 'PS', 'Activision', 'Neversoft Entertainment', 4.68, 2000);
INSERT INTO public.game_sales VALUES ('Tony Hawk''s Pro Skater 3 for PS2', 'PS2', 'Activision', 'Neversoft Entertainment', 4.41, 2001);
INSERT INTO public.game_sales VALUES ('Tony Hawk''s Pro Skater for PS', 'PS', 'Activision', 'Neversoft Entertainment', 5.02, 1999);
INSERT INTO public.game_sales VALUES ('Uncharted 2: Among Thieves for PS3', 'PS3', 'Sony Computer Entertainment', 'Naughty Dog', 6.74, 2009);
INSERT INTO public.game_sales VALUES ('Uncharted 3: Drake''s Deception for PS3', 'PS3', 'Sony Computer Entertainment', 'Naughty Dog', 9.30, 2011);
INSERT INTO public.game_sales VALUES ('Uncharted 4: A Thief''s End for PS4', 'PS4', 'Sony Interactive Entertainment', 'Naughty Dog', 16.25, 2016);
INSERT INTO public.game_sales VALUES ('Uncharted: Drake''s Fortune for PS3', 'PS3', 'Sony Computer Entertainment', 'Naughty Dog', 4.97, 2007);
INSERT INTO public.game_sales VALUES ('Uncharted: The Nathan Drake Collection for PS4', 'PS4', 'Sony Computer Entertainment', 'Bluepoint Games', 5.70, 2015);
INSERT INTO public.game_sales VALUES ('Warcraft III: Reign of Chaos for PC', 'PC', 'Blizzard Entertainment', 'Blizzard Entertainment', 4.50, 2002);
INSERT INTO public.game_sales VALUES ('Warzone 2100 for PS', 'PS', 'Eidos Interactive', 'Pumpkin Studios', 5.01, 1999);
INSERT INTO public.game_sales VALUES ('Watch Dogs for PS4', 'PS4', 'Ubisoft', 'Ubisoft Montreal', 4.32, 2014);
INSERT INTO public.game_sales VALUES ('Wii Fit Plus for Wii', 'Wii', 'Nintendo', 'Nintendo EAD', 21.13, 2009);
INSERT INTO public.game_sales VALUES ('Wii Fit for Wii', 'Wii', 'Nintendo', 'Nintendo EAD', 22.67, 2008);
INSERT INTO public.game_sales VALUES ('Wii Party for Wii', 'Wii', 'Nintendo', 'Nd Cube Co., Ltd.', 9.34, 2010);
INSERT INTO public.game_sales VALUES ('Wii Play for Wii', 'Wii', 'Nintendo', 'Nintendo EAD', 28.02, 2007);
INSERT INTO public.game_sales VALUES ('Wii Sports Resort for Wii', 'Wii', 'Nintendo', 'Nintendo EAD', 33.13, 2009);
INSERT INTO public.game_sales VALUES ('Wii Sports for Wii', 'Wii', 'Nintendo', 'Nintendo EAD', 82.90, 2006);
INSERT INTO public.game_sales VALUES ('Winning Eleven: Pro Evolution Soccer 2007 for PS2', 'PS2', 'Konami', 'Konami Computer Entertainment Tokyo', 4.39, 2007);
INSERT INTO public.game_sales VALUES ('World Soccer Winning Eleven 9 for PS2', 'PS2', 'Konami', 'Konami Computer Entertainment Tokyo', 4.06, 2006);
INSERT INTO public.game_sales VALUES ('World of Warcraft for PC', 'PC', 'Blizzard Entertainment', 'Blizzard Entertainment', 12.00, 2004);
INSERT INTO public.game_sales VALUES ('World of Warcraft: Cataclysm for PC', 'PC', 'Blizzard Entertainment', 'Blizzard Entertainment', 4.70, 2010);
INSERT INTO public.game_sales VALUES ('World of Warcraft: Wrath of the Lich King for PC', 'PC', 'Blizzard Entertainment', 'Blizzard Entertainment', 4.00, 2008);
INSERT INTO public.game_sales VALUES ('Yokai Watch 2: Bony Spirits / Fleshy Souls / Psychic Specters for 3DS', '3DS', 'Nintendo', 'Level 5', 7.29, 2016);
INSERT INTO public.game_sales VALUES ('Zelda II: The Adventure of Link for NES', 'NES', 'Nintendo', 'Nintendo EAD', 4.38, 1988);


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.reviews VALUES ('Wii Sports for Wii', 7.70, 8.00);
INSERT INTO public.reviews VALUES ('Super Mario Bros. for NES', 10.00, 8.20);
INSERT INTO public.reviews VALUES ('Counter-Strike: Global Offensive for PC', 8.00, 7.50);
INSERT INTO public.reviews VALUES ('Mario Kart Wii for Wii', 8.20, 9.10);
INSERT INTO public.reviews VALUES ('PLAYERUNKNOWN''S BATTLEGROUNDS for PC', 8.60, 4.70);
INSERT INTO public.reviews VALUES ('Minecraft for PC', 10.00, 7.80);
INSERT INTO public.reviews VALUES ('Wii Sports Resort for Wii', 8.00, 8.80);
INSERT INTO public.reviews VALUES ('Pokemon Red / Green / Blue Version for GB', 9.40, 8.80);
INSERT INTO public.reviews VALUES ('New Super Mario Bros. for DS', 9.10, 8.10);
INSERT INTO public.reviews VALUES ('New Super Mario Bros. Wii for Wii', 8.60, 9.20);
INSERT INTO public.reviews VALUES ('Tetris for GB', 9.40, 8.70);
INSERT INTO public.reviews VALUES ('Call of Duty: Modern Warfare for PS4', 8.00, 3.30);
INSERT INTO public.reviews VALUES ('Duck Hunt for NES', 7.50, 8.30);
INSERT INTO public.reviews VALUES ('Wii Play for Wii', 5.90, 6.50);
INSERT INTO public.reviews VALUES ('Mario Kart 8 Deluxe for NS', 9.30, 8.70);
INSERT INTO public.reviews VALUES ('Kinect Adventures! for X360', 6.70, NULL);
INSERT INTO public.reviews VALUES ('Nintendogs for DS', 8.40, 8.50);
INSERT INTO public.reviews VALUES ('Mario Kart DS for DS', 9.10, 9.40);
INSERT INTO public.reviews VALUES ('Pokemon Gold / Silver Version for GB', 9.20, 8.80);
INSERT INTO public.reviews VALUES ('Wii Fit for Wii', 7.90, NULL);
INSERT INTO public.reviews VALUES ('Wii Fit Plus for Wii', 8.00, NULL);
INSERT INTO public.reviews VALUES ('Super Mario World for SNES', 8.50, 9.30);
INSERT INTO public.reviews VALUES ('Grand Theft Auto V for PS3', 9.40, 8.30);
INSERT INTO public.reviews VALUES ('Grand Theft Auto V for PS4', 9.70, 8.40);
INSERT INTO public.reviews VALUES ('Brain Age: Train Your Brain in Minutes a Day for DS', 8.10, NULL);
INSERT INTO public.reviews VALUES ('Super Smash Bros. Ultimate for NS', 9.40, 9.70);
INSERT INTO public.reviews VALUES ('Mario Kart 7 for 3DS', 8.20, 8.30);
INSERT INTO public.reviews VALUES ('Pokemon Diamond / Pearl Version for DS', 8.60, NULL);
INSERT INTO public.reviews VALUES ('Super Mario Odyssey for NS', 9.90, 9.00);
INSERT INTO public.reviews VALUES ('The Legend of Zelda: Breath of the Wild for NS', 9.90, 10.00);
INSERT INTO public.reviews VALUES ('Pokemon Sword / Shield for NS', 8.00, 4.60);
INSERT INTO public.reviews VALUES ('Grand Theft Auto: San Andreas for PS2', 9.50, 9.10);
INSERT INTO public.reviews VALUES ('Super Mario Bros. 3 for NES', 9.80, 9.30);
INSERT INTO public.reviews VALUES ('Pokemon X/Y for 3DS', 8.90, 9.70);
INSERT INTO public.reviews VALUES ('Uncharted 4: A Thief''s End for PS4', 9.20, 8.40);
INSERT INTO public.reviews VALUES ('Pokemon Ruby / Sapphire Version for GBA', 8.80, 8.60);
INSERT INTO public.reviews VALUES ('Pokemon Sun/Moon for 3DS', 9.00, 7.70);
INSERT INTO public.reviews VALUES ('Grand Theft Auto: Vice City for PS2', 9.60, 8.80);
INSERT INTO public.reviews VALUES ('Grand Theft Auto V for X360', 10.00, NULL);
INSERT INTO public.reviews VALUES ('Pokemon Black / White Version for DS', 8.60, 9.00);
INSERT INTO public.reviews VALUES ('Call of Duty: Black Ops 3 for PS4', 8.10, 4.90);
INSERT INTO public.reviews VALUES ('Counter-Strike: Source for PC', 9.30, NULL);
INSERT INTO public.reviews VALUES ('Sonic the Hedgehog for GEN', 8.60, 8.30);
INSERT INTO public.reviews VALUES ('Gran Turismo 3: A-Spec for PS2', 9.30, 8.90);
INSERT INTO public.reviews VALUES ('Brain Age 2: More Training in Minutes a Day for DS', 8.00, NULL);
INSERT INTO public.reviews VALUES ('Call of Duty: Modern Warfare 3 for X360', 8.70, NULL);
INSERT INTO public.reviews VALUES ('Call of Duty: Black Ops for X360', 8.80, NULL);
INSERT INTO public.reviews VALUES ('Pokemon Yellow: Special Pikachu Edition for GB', 8.70, 8.80);
INSERT INTO public.reviews VALUES ('Halo 3 for X360', 9.60, 9.50);
INSERT INTO public.reviews VALUES ('Pokemon Omega Ruby/Pokemon Alpha Sapphire for 3DS', 8.30, 7.40);
INSERT INTO public.reviews VALUES ('Terraria for PC', 8.80, 8.60);
INSERT INTO public.reviews VALUES ('Red Dead Redemption 2 for PS4', 9.80, 7.90);
INSERT INTO public.reviews VALUES ('Call of Duty: Black Ops II for X360', 9.30, NULL);
INSERT INTO public.reviews VALUES ('Call of Duty: Black Ops II for PS3', 9.30, NULL);
INSERT INTO public.reviews VALUES ('Call of Duty: Modern Warfare 2 for X360', 9.50, 9.00);
INSERT INTO public.reviews VALUES ('Animal Crossing: New Horizons for NS', 9.00, 5.40);
INSERT INTO public.reviews VALUES ('Call of Duty: WWII for PS4', 8.00, 4.30);
INSERT INTO public.reviews VALUES ('Call of Duty: Modern Warfare 3 for PS3', 8.80, NULL);
INSERT INTO public.reviews VALUES ('New Super Mario Bros. 2 for 3DS', 7.50, 7.30);
INSERT INTO public.reviews VALUES ('Super Smash Bros. Brawl for Wii', 9.20, 9.70);
INSERT INTO public.reviews VALUES ('Marvel''s Spider-Man for PS4', 9.10, 8.70);
INSERT INTO public.reviews VALUES ('Grand Theft Auto III for PS2', 9.50, NULL);
INSERT INTO public.reviews VALUES ('Portal 2 for PC', 9.70, 9.00);
INSERT INTO public.reviews VALUES ('Minecraft for X360', 8.50, NULL);
INSERT INTO public.reviews VALUES ('Super Mario Galaxy for Wii', 9.70, 9.60);
INSERT INTO public.reviews VALUES ('Pokemon Heart Gold / Soul Silver Version for DS', 8.60, NULL);
INSERT INTO public.reviews VALUES ('Super Mario 3D Land for 3DS', 8.90, 8.40);
INSERT INTO public.reviews VALUES ('Call of Duty: Black Ops for PS3', 8.70, NULL);
INSERT INTO public.reviews VALUES ('Grand Theft Auto V for PC', 9.60, 7.70);
INSERT INTO public.reviews VALUES ('Animal Crossing: New Leaf for 3DS', 8.60, 8.80);
INSERT INTO public.reviews VALUES ('The Witcher 3: Wild Hunt for PC', 9.30, 9.40);
INSERT INTO public.reviews VALUES ('Pokemon FireRed / LeafGreen Version for GBA', 8.30, NULL);
INSERT INTO public.reviews VALUES ('World of Warcraft for PC', 9.20, 8.00);
INSERT INTO public.reviews VALUES ('Half-Life 2 for PC', 9.70, NULL);
INSERT INTO public.reviews VALUES ('Diablo III for PC', 9.00, 4.10);
INSERT INTO public.reviews VALUES ('Pokemon: Let''s Go, Pikachu/Eevee for NS', 8.00, 6.20);
INSERT INTO public.reviews VALUES ('Gran Turismo 5 for PS3', 8.30, NULL);
INSERT INTO public.reviews VALUES ('Super Mario 64 for N64', 9.70, 9.00);
INSERT INTO public.reviews VALUES ('FIFA 18 for PS4', 8.30, 3.40);
INSERT INTO public.reviews VALUES ('The Last of Us Remastered for PS4', 9.50, 9.10);
INSERT INTO public.reviews VALUES ('Gran Turismo 4 for PS2', 8.70, NULL);
INSERT INTO public.reviews VALUES ('Animal Crossing: Wild World for DS', 8.50, NULL);
INSERT INTO public.reviews VALUES ('Super Mario Land 2: 6 Golden Coins for GB', 9.00, 8.50);
INSERT INTO public.reviews VALUES ('Grand Theft Auto IV for X360', 10.00, NULL);
INSERT INTO public.reviews VALUES ('Super Mario 64 DS for DS', 8.60, NULL);
INSERT INTO public.reviews VALUES ('God of War (2018) for PS4', 9.70, 10.00);
INSERT INTO public.reviews VALUES ('StarCraft for PC', 8.70, NULL);
INSERT INTO public.reviews VALUES ('FIFA 17 for PS4', 8.90, 4.80);
INSERT INTO public.reviews VALUES ('Gran Turismo for PS', 9.50, NULL);
INSERT INTO public.reviews VALUES ('The Witcher 3: Wild Hunt for PS4', 9.20, 9.20);
INSERT INTO public.reviews VALUES ('Call of Duty: Modern Warfare 2 for PS3', 9.50, NULL);
INSERT INTO public.reviews VALUES ('Grand Theft Auto IV for PS3', 10.00, 9.00);
INSERT INTO public.reviews VALUES ('Super Mario All-Stars for SNES', 9.20, 9.50);
INSERT INTO public.reviews VALUES ('Call of Duty: Ghosts for X360', 6.90, NULL);
INSERT INTO public.reviews VALUES ('Just Dance 3 for Wii', 7.50, NULL);
INSERT INTO public.reviews VALUES ('Call of Duty: Ghosts for PS3', 7.50, NULL);
INSERT INTO public.reviews VALUES ('Splatoon 2 for NS', 8.20, 8.50);
INSERT INTO public.reviews VALUES ('Super Mario Party for NS', 7.30, 7.50);
INSERT INTO public.reviews VALUES ('Horizon: Zero Dawn for PS4', 9.10, 8.00);
INSERT INTO public.reviews VALUES ('RollerCoaster Tycoon 3 for PC', 8.30, NULL);
INSERT INTO public.reviews VALUES ('Halo: Reach for X360', 9.30, NULL);
INSERT INTO public.reviews VALUES ('Portal for PC', 9.00, NULL);
INSERT INTO public.reviews VALUES ('Halo 4 for X360', 9.80, NULL);
INSERT INTO public.reviews VALUES ('Final Fantasy VII for PS', 9.60, 9.50);
INSERT INTO public.reviews VALUES ('Mario Kart 64 for N64', 8.50, NULL);
INSERT INTO public.reviews VALUES ('Super Smash Bros. for 3DS for 3DS', 8.40, NULL);
INSERT INTO public.reviews VALUES ('Call of Duty 4: Modern Warfare for X360', 9.60, 9.00);
INSERT INTO public.reviews VALUES ('Gran Turismo 2 for PS', 9.20, NULL);
INSERT INTO public.reviews VALUES ('Wii Party for Wii', 7.00, NULL);
INSERT INTO public.reviews VALUES ('Call of Duty: Black Ops IIII for PS4', 8.30, 4.00);
INSERT INTO public.reviews VALUES ('Mario Party DS for DS', 7.10, NULL);
INSERT INTO public.reviews VALUES ('Uncharted 3: Drake''s Deception for PS3', 9.30, 6.30);
INSERT INTO public.reviews VALUES ('Donkey Kong Country for SNES', 9.00, 8.80);
INSERT INTO public.reviews VALUES ('Half-Life for PC', 9.50, NULL);
INSERT INTO public.reviews VALUES ('FIFA 19 for PS4', 8.30, 1.70);
INSERT INTO public.reviews VALUES ('Rust for PC', 6.10, 6.20);
INSERT INTO public.reviews VALUES ('The Elder Scrolls V: Skyrim for X360', 9.30, NULL);
INSERT INTO public.reviews VALUES ('Mario Party 8 for Wii', 6.50, NULL);
INSERT INTO public.reviews VALUES ('Pokemon: Ultra Sun and Ultra Moon for 3DS', 8.10, NULL);
INSERT INTO public.reviews VALUES ('Super Mario Kart for SNES', 10.00, NULL);
INSERT INTO public.reviews VALUES ('Grand Theft Auto V for XOne', 9.00, 9.00);
INSERT INTO public.reviews VALUES ('Final Fantasy X for PS2', 9.00, 10.00);
INSERT INTO public.reviews VALUES ('Final Fantasy VIII for PS', 9.40, NULL);
INSERT INTO public.reviews VALUES ('Pokemon Black 2 and White 2 for DS', 8.00, 8.30);
INSERT INTO public.reviews VALUES ('Call of Duty: Infinite Warfare for PS4', 7.70, 3.80);
INSERT INTO public.reviews VALUES ('Fallout 4 for PS4', 8.60, 6.60);
INSERT INTO public.reviews VALUES ('Mario Kart 8 for WiiU', 8.80, 8.90);
INSERT INTO public.reviews VALUES ('Tekken 3 for PS', 9.60, NULL);
INSERT INTO public.reviews VALUES ('FIFA 16 for PS4', 8.50, 4.40);
INSERT INTO public.reviews VALUES ('The Last of Us for PS3', 9.50, NULL);
INSERT INTO public.reviews VALUES ('GoldenEye 007 for N64', 9.80, NULL);
INSERT INTO public.reviews VALUES ('Star Wars Battlefront (2015) for PS4', 7.10, NULL);
INSERT INTO public.reviews VALUES ('Halo 2 for XB', 9.60, NULL);
INSERT INTO public.reviews VALUES ('NBA 2K20 for PS4', 7.80, 1.20);
INSERT INTO public.reviews VALUES ('The Sims 3 for PC', 8.50, NULL);
INSERT INTO public.reviews VALUES ('Grand Theft Auto: Liberty City Stories for PSP', 8.80, NULL);
INSERT INTO public.reviews VALUES ('Pac-Man for 2600', 9.00, 7.40);
INSERT INTO public.reviews VALUES ('Pokemon Platinum Version for DS', 8.30, 8.90);
INSERT INTO public.reviews VALUES ('The Legend of Zelda: Ocarina of Time for N64', 9.90, 10.00);
INSERT INTO public.reviews VALUES ('God of War III for PS3', 9.20, 9.40);
INSERT INTO public.reviews VALUES ('Crash Bandicoot 2: Cortex Strikes Back for PS', 8.60, NULL);
INSERT INTO public.reviews VALUES ('Call of Duty: Advanced Warfare for PS4', 8.50, 5.70);
INSERT INTO public.reviews VALUES ('Call of Duty: World at War for X360', 8.50, 7.80);
INSERT INTO public.reviews VALUES ('Super Mario Bros. 2 for NES', 8.50, 8.10);
INSERT INTO public.reviews VALUES ('Super Mario Galaxy 2 for Wii', 9.70, 9.80);
INSERT INTO public.reviews VALUES ('Super Smash Bros. Melee for GC', 9.20, NULL);
INSERT INTO public.reviews VALUES ('Battlefield 3 for X360', 8.50, NULL);
INSERT INTO public.reviews VALUES ('The Legend of Zelda: Twilight Princess for Wii', 9.50, 9.60);
INSERT INTO public.reviews VALUES ('Battlefield 1 for PS4', 9.10, 7.90);
INSERT INTO public.reviews VALUES ('Battlefield 3 for PS3', 8.50, NULL);
INSERT INTO public.reviews VALUES ('Need for Speed Underground for PS2', 8.60, NULL);
INSERT INTO public.reviews VALUES ('The Binding of Isaac for PC', 8.30, 8.40);
INSERT INTO public.reviews VALUES ('FIFA 20 for PS4', 7.90, 1.10);
INSERT INTO public.reviews VALUES ('Crash Bandicoot 3: Warped for PS', 9.30, NULL);
INSERT INTO public.reviews VALUES ('Pokemon Emerald Version for GBA', 7.70, NULL);
INSERT INTO public.reviews VALUES ('Guild Wars 2 for PC', 9.00, 8.10);
INSERT INTO public.reviews VALUES ('Need for Speed Underground 2 for PS2', 8.30, NULL);
INSERT INTO public.reviews VALUES ('Mario Kart: Double Dash!! for GC', 8.50, NULL);
INSERT INTO public.reviews VALUES ('Medal of Honor: Frontline for PS2', 9.00, NULL);
INSERT INTO public.reviews VALUES ('Crash Bandicoot for PS', 7.80, NULL);
INSERT INTO public.reviews VALUES ('Uncharted 2: Among Thieves for PS3', 9.50, 9.60);
INSERT INTO public.reviews VALUES ('Call of Duty 4: Modern Warfare for PS3', 9.50, 9.60);
INSERT INTO public.reviews VALUES ('FIFA Soccer 12 for PS3', 9.20, NULL);
INSERT INTO public.reviews VALUES ('FIFA 14 for PS3', 9.00, NULL);
INSERT INTO public.reviews VALUES ('New Super Mario Bros. U Deluxe for NS', 8.00, 6.60);
INSERT INTO public.reviews VALUES ('Fallout 4 for PC', 9.00, 5.50);
INSERT INTO public.reviews VALUES ('Tomodachi Life for 3DS', 7.80, 7.60);
INSERT INTO public.reviews VALUES ('Red Dead Redemption for PS3', 9.50, NULL);
INSERT INTO public.reviews VALUES ('Donkey Kong Country Returns for Wii', 8.60, NULL);
INSERT INTO public.reviews VALUES ('The Legend of Zelda for NES', 8.40, 8.80);
INSERT INTO public.reviews VALUES ('Assassin''s Creed III for PS3', 8.80, NULL);
INSERT INTO public.reviews VALUES ('Guild Wars for PC', 8.70, NULL);
INSERT INTO public.reviews VALUES ('Red Dead Redemption for X360', 9.50, 10.00);
INSERT INTO public.reviews VALUES ('The Elder Scrolls V: Skyrim for PS3', 9.00, NULL);
INSERT INTO public.reviews VALUES ('Final Fantasy XII for PS2', 9.40, 9.50);
INSERT INTO public.reviews VALUES ('Pokemon Crystal Version for GBC', 8.70, NULL);
INSERT INTO public.reviews VALUES ('Halo 3: ODST for X360', 8.70, NULL);
INSERT INTO public.reviews VALUES ('Minecraft for PS4', 9.40, NULL);
INSERT INTO public.reviews VALUES ('Luigi''s Mansion 3 for NS', 8.60, 8.50);
INSERT INTO public.reviews VALUES ('FIFA 15 for PS4', 8.10, 5.70);
INSERT INTO public.reviews VALUES ('Kingdom Hearts for PS2', 8.50, NULL);
INSERT INTO public.reviews VALUES ('Myst for PC', 8.90, 8.00);
INSERT INTO public.reviews VALUES ('Driver for PS', 8.50, NULL);
INSERT INTO public.reviews VALUES ('Call of Duty: WWII for XOne', 8.00, 4.00);
INSERT INTO public.reviews VALUES ('Luigi''s Mansion: Dark Moon for 3DS', 8.60, 8.50);
INSERT INTO public.reviews VALUES ('Big Brain Academy for DS', 7.70, NULL);
INSERT INTO public.reviews VALUES ('Minecraft for PS3', 9.50, NULL);
INSERT INTO public.reviews VALUES ('Metal Gear Solid 2: Sons of Liberty for PS2', 9.50, 7.00);
INSERT INTO public.reviews VALUES ('The Legend of Zelda: Ocarina of Time 3D for 3DS', 9.30, 9.00);
INSERT INTO public.reviews VALUES ('Metal Gear Solid 4: Guns of the Patriots for PS3', 9.30, 9.80);
INSERT INTO public.reviews VALUES ('Metal Gear Solid for PS', 9.30, NULL);
INSERT INTO public.reviews VALUES ('Cities: Skylines for PC', 8.50, 8.90);
INSERT INTO public.reviews VALUES ('Euro Truck Simulator 2 for PC', 8.50, 8.70);
INSERT INTO public.reviews VALUES ('Mario Kart: Super Circuit for GBA', 9.30, NULL);
INSERT INTO public.reviews VALUES ('Super Mario Sunshine for GC', 9.20, NULL);
INSERT INTO public.reviews VALUES ('Super Mario 3D World for WiiU', 9.50, 8.90);
INSERT INTO public.reviews VALUES ('Age of Empires II: HD Edition for PC', 6.80, 7.90);
INSERT INTO public.reviews VALUES ('New Super Mario Bros. U for WiiU', 8.40, 8.00);
INSERT INTO public.reviews VALUES ('Link''s Crossbow Training for Wii', 6.90, NULL);
INSERT INTO public.reviews VALUES ('Red Dead Redemption 2 for XOne', 9.70, 7.40);
INSERT INTO public.reviews VALUES ('Destiny for PS4', 7.60, 6.10);
INSERT INTO public.reviews VALUES ('Tekken 2 for PS', 9.10, NULL);
INSERT INTO public.reviews VALUES ('Uncharted: The Nathan Drake Collection for PS4', 8.60, 8.50);
INSERT INTO public.reviews VALUES ('Super Mario World: Super Mario Advance 2 for GBA', 9.40, NULL);
INSERT INTO public.reviews VALUES ('LEGO Star Wars: The Complete Saga for Wii', 8.00, NULL);
INSERT INTO public.reviews VALUES ('Cooking Mama for DS', 6.60, NULL);
INSERT INTO public.reviews VALUES ('Super Mario Advance for GBA', 8.20, NULL);
INSERT INTO public.reviews VALUES ('Assassin''s Creed II for PS3', 9.00, NULL);
INSERT INTO public.reviews VALUES ('Assassin''s Creed for X360', 8.20, 8.00);
INSERT INTO public.reviews VALUES ('Super Smash Bros. for N64', 8.40, NULL);
INSERT INTO public.reviews VALUES ('Batman: Arkham City for PS3', 9.60, NULL);
INSERT INTO public.reviews VALUES ('Forza Motorsport 3 for X360', 9.20, 9.80);
INSERT INTO public.reviews VALUES ('Dragon Quest IX: Sentinels of the Starry Skies for DS', 8.60, NULL);
INSERT INTO public.reviews VALUES ('Final Fantasy IX for PS', 9.20, NULL);
INSERT INTO public.reviews VALUES ('Final Fantasy X-2 for PS2', 8.30, NULL);
INSERT INTO public.reviews VALUES ('Sid Meier''s Civilization VI for PC', 8.80, 7.00);
INSERT INTO public.reviews VALUES ('Tomb Raider (2013) for PC', 8.80, NULL);
INSERT INTO public.reviews VALUES ('Super Mario Maker 2 for NS', 8.80, 8.50);
INSERT INTO public.reviews VALUES ('Pokemon Stadium for N64', 7.50, NULL);
INSERT INTO public.reviews VALUES ('Super Mario Advance 4: Super Mario Bros. 3 for GBA', 9.20, NULL);
INSERT INTO public.reviews VALUES ('Call of Duty: World at War for PS3', 8.40, NULL);
INSERT INTO public.reviews VALUES ('Crash Bandicoot: The Wrath of Cortex for PS2', 6.90, NULL);
INSERT INTO public.reviews VALUES ('Super Smash Bros. for Wii U for WiiU', 9.20, 8.90);
INSERT INTO public.reviews VALUES ('Final Fantasy XIII for PS3', 8.00, 9.20);
INSERT INTO public.reviews VALUES ('Gran Turismo 5 Prologue for PS3', 8.30, NULL);
INSERT INTO public.reviews VALUES ('Pokemon Pinball for GBC', 8.70, NULL);
INSERT INTO public.reviews VALUES ('Assassin''s Creed III for X360', 8.50, NULL);
INSERT INTO public.reviews VALUES ('Assassin''s Creed II for X360', 9.10, NULL);
INSERT INTO public.reviews VALUES ('The Forest for PC', 8.30, 7.30);
INSERT INTO public.reviews VALUES ('Donkey Kong 64 for N64', 9.30, NULL);
INSERT INTO public.reviews VALUES ('Just Dance 2 for Wii', 7.30, NULL);
INSERT INTO public.reviews VALUES ('Tomb Raider II for PS', 7.60, NULL);
INSERT INTO public.reviews VALUES ('Madden NFL 2004 for PS2', 9.50, NULL);
INSERT INTO public.reviews VALUES ('Call of Duty: Advanced Warfare for XOne', 8.30, 5.50);
INSERT INTO public.reviews VALUES ('Fallout: New Vegas for PC', 8.30, NULL);
INSERT INTO public.reviews VALUES ('Kingdom Hearts II for PS2', 8.30, NULL);
INSERT INTO public.reviews VALUES ('Nintendo Land for WiiU', 7.80, 7.90);
INSERT INTO public.reviews VALUES ('Super Mario Land 3: Wario Land for GB', 7.90, NULL);
INSERT INTO public.reviews VALUES ('Donkey Kong Country 2: Diddy''s Kong Quest for SNES', 9.30, NULL);
INSERT INTO public.reviews VALUES ('Medal of Honor: Rising Sun for PS2', 5.90, NULL);
INSERT INTO public.reviews VALUES ('Battlefield 1 for XOne', 9.30, 7.60);
INSERT INTO public.reviews VALUES ('Microsoft Flight Simulator for PC', 7.00, NULL);
INSERT INTO public.reviews VALUES ('Guitar Hero II for PS2', 9.20, NULL);
INSERT INTO public.reviews VALUES ('Resident Evil 5 for PS3', 8.60, 8.80);
INSERT INTO public.reviews VALUES ('Fable III for X360', 7.80, NULL);
INSERT INTO public.reviews VALUES ('Mario & Sonic at the Olympic Games for DS', 7.00, NULL);
INSERT INTO public.reviews VALUES ('Grand Theft Auto: Vice City Stories for PSP', 8.40, NULL);
INSERT INTO public.reviews VALUES ('FIFA Soccer 11 for PS3', 8.70, NULL);
INSERT INTO public.reviews VALUES ('Final Fantasy XV for PS4', 8.10, 9.50);
INSERT INTO public.reviews VALUES ('Super Mario Bros. Deluxe for GB', 9.70, NULL);
INSERT INTO public.reviews VALUES ('Fallout 4 for XOne', 8.40, 6.40);
INSERT INTO public.reviews VALUES ('Tony Hawk''s Pro Skater for PS', 9.60, NULL);
INSERT INTO public.reviews VALUES ('Warzone 2100 for PS', 7.50, NULL);
INSERT INTO public.reviews VALUES ('Spyro the Dragon for PS', 8.70, NULL);
INSERT INTO public.reviews VALUES ('Gears of War for X360', 9.40, 9.40);
INSERT INTO public.reviews VALUES ('Gears of War 2 for X360', 9.40, 9.50);
INSERT INTO public.reviews VALUES ('Halo 5: Guardians for XOne', 8.60, 6.40);
INSERT INTO public.reviews VALUES ('Halo: Combat Evolved for XB', 9.50, NULL);
INSERT INTO public.reviews VALUES ('Guitar Hero III: Legends of Rock for PS2', 8.20, NULL);
INSERT INTO public.reviews VALUES ('Uncharted: Drake''s Fortune for PS3', 8.70, 8.60);
INSERT INTO public.reviews VALUES ('Resident Evil 2 for PS', 9.30, NULL);
INSERT INTO public.reviews VALUES ('Fallout 3 for X360', 9.00, 8.60);
INSERT INTO public.reviews VALUES ('Splatoon for WiiU', 8.40, 8.70);
INSERT INTO public.reviews VALUES ('Madden NFL 06 for PS2', 9.10, NULL);
INSERT INTO public.reviews VALUES ('Stardew Valley for PC', 9.20, 8.70);
INSERT INTO public.reviews VALUES ('Dragon Quest VIII: Journey of the Cursed King for PS2', 8.60, NULL);
INSERT INTO public.reviews VALUES ('Pokemon Mystery Dungeon: Explorers of Time / Darkness for DS', 6.40, NULL);
INSERT INTO public.reviews VALUES ('Diddy Kong Racing for N64', 8.30, NULL);
INSERT INTO public.reviews VALUES ('Crash Bandicoot N. Sane Trilogy for PS4', 8.00, 8.50);
INSERT INTO public.reviews VALUES ('Assassin''s Creed for PS3', 8.20, 8.50);
INSERT INTO public.reviews VALUES ('Call of Duty: Infinite Warfare for XOne', 7.80, 3.60);
INSERT INTO public.reviews VALUES ('Crash Team Racing for PS', 9.20, NULL);
INSERT INTO public.reviews VALUES ('LEGO Star Wars: The Complete Saga for DS', 7.80, NULL);
INSERT INTO public.reviews VALUES ('The Legend of Zelda: Phantom Hourglass for DS', 9.10, NULL);
INSERT INTO public.reviews VALUES ('Batman: Arkham City for X360', 9.50, NULL);
INSERT INTO public.reviews VALUES ('Driver 2 for PS', 7.00, NULL);
INSERT INTO public.reviews VALUES ('The Simpsons: Hit & Run for PS2', 7.70, NULL);
INSERT INTO public.reviews VALUES ('World of Warcraft: Cataclysm for PC', 9.00, NULL);
INSERT INTO public.reviews VALUES ('Tony Hawk''s Pro Skater 2 for PS', 9.30, NULL);
INSERT INTO public.reviews VALUES ('Gran Turismo for PSP', 7.70, 9.50);
INSERT INTO public.reviews VALUES ('The Lord of the Rings: The Two Towers for PS2', 8.30, NULL);
INSERT INTO public.reviews VALUES ('Tomb Raider for PS', 8.90, NULL);
INSERT INTO public.reviews VALUES ('God of War for PS2', 9.30, NULL);
INSERT INTO public.reviews VALUES ('The Legend of Zelda: A Link to the Past for SNES', 10.00, NULL);
INSERT INTO public.reviews VALUES ('Left 4 Dead for PC', 8.60, 8.50);
INSERT INTO public.reviews VALUES ('Guitar Hero III: Legends of Rock for Wii', 8.60, NULL);
INSERT INTO public.reviews VALUES ('Forza Motorsport 4 for X360', 9.10, NULL);
INSERT INTO public.reviews VALUES ('Nintendogs + cats for 3DS', 7.20, NULL);
INSERT INTO public.reviews VALUES ('Pokemon: Let''s Go, Pikachu! for NS', 8.30, 6.10);
INSERT INTO public.reviews VALUES ('BioShock Infinite for PC', 9.50, 8.60);
INSERT INTO public.reviews VALUES ('Mario & Luigi: Bowser''s Inside Story for DS', 9.10, NULL);
INSERT INTO public.reviews VALUES ('FIFA 15 for PS3', 6.90, NULL);
INSERT INTO public.reviews VALUES ('Overwatch for PS4', 8.80, 6.40);
INSERT INTO public.reviews VALUES ('Mario & Sonic at the Olympic Winter Games for Wii', 6.80, NULL);
INSERT INTO public.reviews VALUES ('Madden NFL 2005 for PS2', 9.50, NULL);
INSERT INTO public.reviews VALUES ('Guitar Hero III: Legends of Rock for X360', 8.70, NULL);
INSERT INTO public.reviews VALUES ('Dead Island for PC', 7.10, 6.90);
INSERT INTO public.reviews VALUES ('Warcraft III: Reign of Chaos for PC', 9.30, NULL);
INSERT INTO public.reviews VALUES ('StarCraft II: Wings of Liberty for PC', 9.30, NULL);
INSERT INTO public.reviews VALUES ('LittleBigPlanet for PS3', 9.40, 9.20);
INSERT INTO public.reviews VALUES ('ARK: Survival Evolved for PC', 7.00, 5.20);
INSERT INTO public.reviews VALUES ('Professor Layton and the Curious Village for DS', 8.70, NULL);
INSERT INTO public.reviews VALUES ('Madden NFL 07 for PS2', 8.50, NULL);
INSERT INTO public.reviews VALUES ('Spider-Man: The Movie for PS2', 8.20, NULL);
INSERT INTO public.reviews VALUES ('The Elder Scrolls IV: Oblivion for X360', 9.20, NULL);
INSERT INTO public.reviews VALUES ('The Legend of Zelda: The Wind Waker for GC', 9.60, NULL);
INSERT INTO public.reviews VALUES ('Tony Hawk''s Pro Skater 3 for PS2', 9.10, NULL);
INSERT INTO public.reviews VALUES ('Winning Eleven: Pro Evolution Soccer 2007 for PS2', 8.80, NULL);
INSERT INTO public.reviews VALUES ('The Legend of Zelda: Link''s Awakening for NS', 8.70, 8.40);
INSERT INTO public.reviews VALUES ('Michael Jackson: The Experience for Wii', 5.60, NULL);
INSERT INTO public.reviews VALUES ('Tom Clancy''s The Division for PS4', 8.00, 7.00);
INSERT INTO public.reviews VALUES ('Need for Speed: Most Wanted for PS2', 8.60, NULL);
INSERT INTO public.reviews VALUES ('Resistance: Fall of Man for PS3', 8.50, 9.10);
INSERT INTO public.reviews VALUES ('Call of Duty: Advanced Warfare for X360', 9.10, NULL);
INSERT INTO public.reviews VALUES ('Animal Crossing: City Folk for Wii', 7.10, 8.80);
INSERT INTO public.reviews VALUES ('Watch Dogs for PS4', 8.00, 6.40);
INSERT INTO public.reviews VALUES ('Starbound for PC', 8.10, 7.10);
INSERT INTO public.reviews VALUES ('Asteroids for 2600', 7.60, 7.80);
INSERT INTO public.reviews VALUES ('Dragon Quest VII for PS', 8.00, 3.00);
INSERT INTO public.reviews VALUES ('Monster Hunter Generations for 3DS', 8.80, 8.00);
INSERT INTO public.reviews VALUES ('The Witcher 3: Wild Hunt for XOne', 9.10, 9.20);
INSERT INTO public.reviews VALUES ('Batman: Arkham Asylum for PS3', 9.00, NULL);
INSERT INTO public.reviews VALUES ('Call of Duty: Advanced Warfare for PS3', 9.10, NULL);
INSERT INTO public.reviews VALUES ('Namco Museum for GBA', 8.50, NULL);
INSERT INTO public.reviews VALUES ('God of War II for PS2', 9.30, 9.80);
INSERT INTO public.reviews VALUES ('Daxter for PSP', 8.60, NULL);
INSERT INTO public.reviews VALUES ('Super Paper Mario for Wii', 8.50, NULL);
INSERT INTO public.reviews VALUES ('Assassin''s Creed: Revelations for PS3', 8.80, NULL);
INSERT INTO public.reviews VALUES ('Metal Gear Solid 3: Snake Eater for PS2', 9.00, NULL);
INSERT INTO public.reviews VALUES ('Assassin''s Creed: Revelations for X360', 7.90, NULL);
INSERT INTO public.reviews VALUES ('FIFA Soccer 06 for PS2', 8.40, NULL);
INSERT INTO public.reviews VALUES ('Counter-Strike for PC', 8.90, NULL);
INSERT INTO public.reviews VALUES ('Monster Hunter 4 Ultimate for 3DS', 8.80, 8.60);
INSERT INTO public.reviews VALUES ('Mortal Kombat 11 for PS4', 8.20, 3.60);
INSERT INTO public.reviews VALUES ('Street Fighter IV for PS3', 9.30, 9.00);
INSERT INTO public.reviews VALUES ('FIFA Soccer 12 for X360', 9.20, NULL);
INSERT INTO public.reviews VALUES ('Call of Duty: Ghosts for PS4', 7.50, 3.80);
INSERT INTO public.reviews VALUES ('Teenage Mutant Ninja Turtles for NES', 5.90, NULL);
INSERT INTO public.reviews VALUES ('Just Cause 2 for PC', 8.20, NULL);
INSERT INTO public.reviews VALUES ('Excitebike for NES', 8.40, NULL);
INSERT INTO public.reviews VALUES ('Frogger for PS', 2.00, NULL);
INSERT INTO public.reviews VALUES ('Star Wars Battlefront (2015) for XOne', 6.90, NULL);
INSERT INTO public.reviews VALUES ('FIFA 14 for X360', 9.10, NULL);
INSERT INTO public.reviews VALUES ('Destiny 2 for PS4', 8.50, 4.90);
INSERT INTO public.reviews VALUES ('Madden NFL 2003 for PS2', 9.40, NULL);
INSERT INTO public.reviews VALUES ('Super Mario World 2: Yoshi''s Island for SNES', 9.00, NULL);
INSERT INTO public.reviews VALUES ('Batman: Arkham Knight for PS4', 8.10, 7.80);
INSERT INTO public.reviews VALUES ('FIFA 07 Soccer for PS2', 8.40, NULL);
INSERT INTO public.reviews VALUES ('The Sims 4 for PC', 7.00, 4.00);
INSERT INTO public.reviews VALUES ('Street Fighter II Turbo for SNES', 9.00, NULL);
INSERT INTO public.reviews VALUES ('Fallout: New Vegas for X360', 8.20, NULL);
INSERT INTO public.reviews VALUES ('The Legend of Zelda: A Link Between Worlds for 3DS', 9.30, 9.00);
INSERT INTO public.reviews VALUES ('Far Cry 4 for PS4', 8.40, 7.70);
INSERT INTO public.reviews VALUES ('Carnival Games for Wii', 4.20, NULL);
INSERT INTO public.reviews VALUES ('World Soccer Winning Eleven 9 for PS2', 8.90, NULL);
INSERT INTO public.reviews VALUES ('Assassin''s Creed Origins for PS4', 8.10, 7.20);
INSERT INTO public.reviews VALUES ('Forza Motorsport 2 for X360', 9.10, NULL);
INSERT INTO public.reviews VALUES ('Tekken Tag Tournament for PS2', 8.70, NULL);
INSERT INTO public.reviews VALUES ('Super Mario Maker for WiiU', 8.80, 8.70);
INSERT INTO public.reviews VALUES ('Monster Hunter: World for PS4', 9.30, 9.00);
INSERT INTO public.reviews VALUES ('Fallout 3 for PS3', 8.80, NULL);
INSERT INTO public.reviews VALUES ('The Last of Us: Part II for PS4', 9.40, 5.60);
INSERT INTO public.reviews VALUES ('Star Fox 64 for N64', 9.00, NULL);
INSERT INTO public.reviews VALUES ('World of Warcraft: Wrath of the Lich King for PC', 9.30, 9.30);
INSERT INTO public.reviews VALUES ('Just Dance for Wii', 5.40, NULL);
INSERT INTO public.reviews VALUES ('Diablo II for PC', 8.80, NULL);
INSERT INTO public.reviews VALUES ('EyeToy Play for PS2', 7.50, NULL);
INSERT INTO public.reviews VALUES ('The Elder Scrolls V: Skyrim for PC', 9.20, 8.20);
INSERT INTO public.reviews VALUES ('Namco Museum: 50th Anniversary for PS2', 5.00, NULL);
INSERT INTO public.reviews VALUES ('NBA 2K16 for PS4', 8.70, 6.70);
INSERT INTO public.reviews VALUES ('Left 4 Dead 2 for X360', 9.00, NULL);
INSERT INTO public.reviews VALUES ('Far Cry 5 for PS4', 7.90, 6.80);
INSERT INTO public.reviews VALUES ('Assassin''s Creed IV: Black Flag for PS3', 8.70, NULL);
INSERT INTO public.reviews VALUES ('Battlefield 4 for PS4', 8.30, 7.00);
INSERT INTO public.reviews VALUES ('EA Sports Active for Wii', 8.30, NULL);
INSERT INTO public.reviews VALUES ('Half-Life 2: Episode One for PC', 8.70, NULL);
INSERT INTO public.reviews VALUES ('Dragon Quest III for NES', NULL, 8.00);
INSERT INTO public.reviews VALUES ('Tony Hawk''s Underground for PS2', 8.70, NULL);
INSERT INTO public.reviews VALUES ('Just Dance 2014 for Wii', 7.40, NULL);
INSERT INTO public.reviews VALUES ('Professor Layton and the Diabolical Box for DS', 8.50, NULL);
INSERT INTO public.reviews VALUES ('Sports Champions for PS3', 7.60, NULL);
INSERT INTO public.reviews VALUES ('World Soccer Winning Eleven 8 International for PS2', 9.30, NULL);
INSERT INTO public.reviews VALUES ('Resident Evil VII: Biohazard for PS4', 8.60, NULL);
INSERT INTO public.reviews VALUES ('Monster Hunter Freedom Unite for PSP', 7.70, 9.70);
INSERT INTO public.reviews VALUES ('Madden NFL 20 for PS4', 7.60, 1.50);
INSERT INTO public.reviews VALUES ('Gran Turismo Sport for PS4', 7.50, 6.00);
INSERT INTO public.reviews VALUES ('LEGO Indiana Jones: The Original Adventures for X360', 7.50, NULL);
INSERT INTO public.reviews VALUES ('The Sims: Unleashed for PC', 7.30, NULL);
INSERT INTO public.reviews VALUES ('Ratchet & Clank: Size Matters for PSP', 8.50, NULL);
INSERT INTO public.reviews VALUES ('Harry Potter and the Sorcerer''s Stone for PS', 8.00, NULL);
INSERT INTO public.reviews VALUES ('Pokemon Trading Card Game for GB', 8.30, NULL);
INSERT INTO public.reviews VALUES ('FIFA 17 for XOne', 8.80, 5.10);
INSERT INTO public.reviews VALUES ('Spyro: Year of the Dragon for PS', 9.10, NULL);
INSERT INTO public.reviews VALUES ('FIFA Soccer 2005 for PS2', 8.40, NULL);
INSERT INTO public.reviews VALUES ('Diablo III: Reaper of Souls for PC', 8.70, 6.60);
INSERT INTO public.reviews VALUES ('The Legend of Zelda: Skyward Sword for Wii', 9.40, NULL);
INSERT INTO public.reviews VALUES ('Tony Hawk''s Pro Skater 4 for PS2', 9.60, NULL);
INSERT INTO public.reviews VALUES ('MySims for DS', 6.70, NULL);
INSERT INTO public.reviews VALUES ('Midnight Club 3: DUB Edition for PSP', 7.20, NULL);
INSERT INTO public.reviews VALUES ('Banjo-Kazooie for N64', 9.30, 9.40);


--
-- Data for Name: top_critic_years; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.top_critic_years VALUES (1990, 9.80);
INSERT INTO public.top_critic_years VALUES (1992, 9.67);
INSERT INTO public.top_critic_years VALUES (1998, 9.32);
INSERT INTO public.top_critic_years VALUES (2020, 9.20);
INSERT INTO public.top_critic_years VALUES (1993, 9.10);
INSERT INTO public.top_critic_years VALUES (1995, 9.07);
INSERT INTO public.top_critic_years VALUES (2004, 9.03);
INSERT INTO public.top_critic_years VALUES (1982, 9.00);
INSERT INTO public.top_critic_years VALUES (2002, 8.99);
INSERT INTO public.top_critic_years VALUES (1999, 8.93);


--
-- Data for Name: top_critic_years_more_than_four_games; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.top_critic_years_more_than_four_games VALUES (1998, 10, 9.32);
INSERT INTO public.top_critic_years_more_than_four_games VALUES (2004, 11, 9.03);
INSERT INTO public.top_critic_years_more_than_four_games VALUES (2002, 9, 8.99);
INSERT INTO public.top_critic_years_more_than_four_games VALUES (1999, 11, 8.93);
INSERT INTO public.top_critic_years_more_than_four_games VALUES (2001, 13, 8.82);
INSERT INTO public.top_critic_years_more_than_four_games VALUES (2011, 26, 8.76);
INSERT INTO public.top_critic_years_more_than_four_games VALUES (2016, 13, 8.67);
INSERT INTO public.top_critic_years_more_than_four_games VALUES (2013, 18, 8.66);
INSERT INTO public.top_critic_years_more_than_four_games VALUES (2008, 20, 8.63);
INSERT INTO public.top_critic_years_more_than_four_games VALUES (2017, 13, 8.62);


--
-- Data for Name: top_user_years_more_than_four_games; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.top_user_years_more_than_four_games VALUES (1997, 8, 9.50);
INSERT INTO public.top_user_years_more_than_four_games VALUES (1998, 10, 9.40);
INSERT INTO public.top_user_years_more_than_four_games VALUES (2010, 23, 9.24);
INSERT INTO public.top_user_years_more_than_four_games VALUES (2009, 20, 9.18);
INSERT INTO public.top_user_years_more_than_four_games VALUES (2008, 20, 9.03);
INSERT INTO public.top_user_years_more_than_four_games VALUES (1996, 5, 9.00);
INSERT INTO public.top_user_years_more_than_four_games VALUES (2005, 13, 8.95);
INSERT INTO public.top_user_years_more_than_four_games VALUES (2006, 16, 8.95);
INSERT INTO public.top_user_years_more_than_four_games VALUES (2000, 8, 8.80);
INSERT INTO public.top_user_years_more_than_four_games VALUES (2002, 9, 8.80);


--
-- Name: game_sales game_sales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game_sales
    ADD CONSTRAINT game_sales_pkey PRIMARY KEY (game);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (game);


--
-- Name: top_critic_years_more_than_four_games top_critic_years_more_than_four_games_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.top_critic_years_more_than_four_games
    ADD CONSTRAINT top_critic_years_more_than_four_games_pkey PRIMARY KEY (year);


--
-- Name: top_critic_years top_critic_years_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.top_critic_years
    ADD CONSTRAINT top_critic_years_pkey PRIMARY KEY (year);


--
-- Name: top_user_years_more_than_four_games top_user_years_more_than_four_games_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.top_user_years_more_than_four_games
    ADD CONSTRAINT top_user_years_more_than_four_games_pkey PRIMARY KEY (year);


--
-- PostgreSQL database dump complete
--

