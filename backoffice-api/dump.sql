--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

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
-- Name: band; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.band (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    origin character varying(255) DEFAULT NULL::character varying,
    city character varying(255) DEFAULT NULL::character varying,
    start_year integer,
    end_year integer,
    founder character varying(255) DEFAULT NULL::character varying,
    members integer,
    musical_trend character varying(255) DEFAULT NULL::character varying,
    presentation text
);


ALTER TABLE public.band OWNER TO app;

--
-- Name: band_id_seq; Type: SEQUENCE; Schema: public; Owner: app
--

CREATE SEQUENCE public.band_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.band_id_seq OWNER TO app;

--
-- Name: doctrine_migration_versions; Type: TABLE; Schema: public; Owner: app
--

CREATE TABLE public.doctrine_migration_versions (
    version character varying(191) NOT NULL,
    executed_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    execution_time integer
);


ALTER TABLE public.doctrine_migration_versions OWNER TO app;

--
-- Data for Name: band; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.band (id, name, origin, city, start_year, end_year, founder, members, musical_trend, presentation) FROM stdin;
119	The Beatles	Royaume-Uni 	Liverpool	1960	1970	John Lennon	4	\N	The Beatles [ðə ˈbiːtəlz] est un quatuor musical britannique originaire de Liverpool, en Angleterre. Le noyau du groupe se forme avec les Quarrymen fondés ...
120	Indochine	France	paris	1981	\N	Nicola Sirkis et Dominique Nicolas	5	pop rock	Indochine est un groupe de pop rock français originaire de Paris, formé par Nicola Sirkis et Dominique Nicolas en 1981. Le groupe est issu du courant new wave
121	Noir Désir	France	bordeaux	1980	2010	Bertrand Cantat	4	rock	Noir Désir est un groupe de rock français, originaire de Bordeaux, en Gironde. Formé dans les années 1980, et dissout en 2010, il se compose de Bertrand Cantat, Denis Barthe, Serge Teyssot-Gay et Frédéric Vidalenc remplacé par Jean-Paul Roy à partir de 1996
122	Nirvana	Etats-unis	Aberdeen	1987	1994	Kurt Cobain	3	grunge	Nirvana est un groupe de grunge américain, originaire d'Aberdeen, dans l'État de Washington, formé en 1987 par le chanteur-guitariste Kurt Cobain et le bassiste Krist Novoselic
123	Led Zeppelin	Royaume-Uni 	Londres	1968	1980	Jimmy Page	\N	rock	Led Zeppelin [lɛd ˈzɛpələn] est un groupe britannique de rock, originaire de Londres, en Angleterre. Il est fondé en 1968 par Jimmy Page, avec Robert Plant, John Paul Jones et John Bonham, et dissout à la suite de la mort de ce dernier, en 1980
124	Depeche Mode	Royaume-Uni 	Basildon	1980	\N	\N	3	rock	Depeche Mode est un groupe britannique de new wave et rock alternatif, originaire de Basildon, dans l'Essex, en Angleterre. Formé en 1980, le groupe apparait au sein du courant de la synthpop et devient rapidement influent et populaire sur la scène internationale. Son nom provient d'un magazine français, Dépêche Mode
125	Téléphone	France	Paris	1976	1986	\N	4	rock	Téléphone est un groupe de rock français. Il est formé le 12 novembre 1976 et séparé le 21 avril 1986. Composé de Jean-Louis Aubert, Louis Bertignac, Corine Marienneau et Richard Kolinka, il connaît un énorme succès dès ses débuts avec plusieurs tubes et des tournées très populaires
126	Massive Attack	Royaume-Uni 	bristol	1987	\N	\N	\N	Trip hop	Massive Attack est un groupe musical britannique, originaire de Bristol, précurseur de la musique trip hop. Il se compose, à l'origine, de Robert Del Naja, Grant Marshall et Andrew Vowles
127	Pink Floyd	Royaume-Uni 	Londres	1964	2014	Syd Barrett,	3	rock	Pink Floyd [pɪŋk flɔɪd] est un groupe britannique de rock originaire de Londres. Le groupe débute avec un premier album de musique psychédélique pour ensuite bifurquer vers le rock progressif. Formé en 1965, il est considéré comme un pionnier et représentant majeur de ces styles musicaux.
164	The Beatles	Royaume-Uni 	Liverpool	1960	1970	John Lennon	4	\N	The Beatles [ðə ˈbiːtəlz] est un quatuor musical britannique originaire de Liverpool, en Angleterre. Le noyau du groupe se forme avec les Quarrymen fondés ...
165	Indochine	France	paris	1981	\N	Nicola Sirkis et Dominique Nicolas	5	pop rock	Indochine est un groupe de pop rock français originaire de Paris, formé par Nicola Sirkis et Dominique Nicolas en 1981. Le groupe est issu du courant new wave
166	Noir Désir	France	bordeaux	1980	2010	Bertrand Cantat	4	rock	Noir Désir est un groupe de rock français, originaire de Bordeaux, en Gironde. Formé dans les années 1980, et dissout en 2010, il se compose de Bertrand Cantat, Denis Barthe, Serge Teyssot-Gay et Frédéric Vidalenc remplacé par Jean-Paul Roy à partir de 1996
167	Nirvana	Etats-unis	Aberdeen	1987	1994	Kurt Cobain	3	grunge	Nirvana est un groupe de grunge américain, originaire d'Aberdeen, dans l'État de Washington, formé en 1987 par le chanteur-guitariste Kurt Cobain et le bassiste Krist Novoselic
168	Led Zeppelin	Royaume-Uni 	Londres	1968	1980	Jimmy Page	\N	rock	Led Zeppelin [lɛd ˈzɛpələn] est un groupe britannique de rock, originaire de Londres, en Angleterre. Il est fondé en 1968 par Jimmy Page, avec Robert Plant, John Paul Jones et John Bonham, et dissout à la suite de la mort de ce dernier, en 1980
169	Depeche Mode	Royaume-Uni 	Basildon	1980	\N	\N	3	rock	Depeche Mode est un groupe britannique de new wave et rock alternatif, originaire de Basildon, dans l'Essex, en Angleterre. Formé en 1980, le groupe apparait au sein du courant de la synthpop et devient rapidement influent et populaire sur la scène internationale. Son nom provient d'un magazine français, Dépêche Mode
170	Téléphone	France	Paris	1976	1986	\N	4	rock	Téléphone est un groupe de rock français. Il est formé le 12 novembre 1976 et séparé le 21 avril 1986. Composé de Jean-Louis Aubert, Louis Bertignac, Corine Marienneau et Richard Kolinka, il connaît un énorme succès dès ses débuts avec plusieurs tubes et des tournées très populaires
171	Massive Attack	Royaume-Uni 	bristol	1987	\N	\N	\N	Trip hop	Massive Attack est un groupe musical britannique, originaire de Bristol, précurseur de la musique trip hop. Il se compose, à l'origine, de Robert Del Naja, Grant Marshall et Andrew Vowles
172	Pink Floyd	Royaume-Uni 	Londres	1964	2014	Syd Barrett,	3	rock	Pink Floyd [pɪŋk flɔɪd] est un groupe britannique de rock originaire de Londres. Le groupe débute avec un premier album de musique psychédélique pour ensuite bifurquer vers le rock progressif. Formé en 1965, il est considéré comme un pionnier et représentant majeur de ces styles musicaux.
128	The Beatles	Royaume-Uni 	Liverpool	1960	1970	John Lennon	4	\N	The Beatles [ðə ˈbiːtəlz] est un quatuor musical britannique originaire de Liverpool, en Angleterre. Le noyau du groupe se forme avec les Quarrymen fondés ...
129	Indochine	France	paris	1981	\N	Nicola Sirkis et Dominique Nicolas	5	pop rock	Indochine est un groupe de pop rock français originaire de Paris, formé par Nicola Sirkis et Dominique Nicolas en 1981. Le groupe est issu du courant new wave
130	Noir Désir	France	bordeaux	1980	2010	Bertrand Cantat	4	rock	Noir Désir est un groupe de rock français, originaire de Bordeaux, en Gironde. Formé dans les années 1980, et dissout en 2010, il se compose de Bertrand Cantat, Denis Barthe, Serge Teyssot-Gay et Frédéric Vidalenc remplacé par Jean-Paul Roy à partir de 1996
131	Nirvana	Etats-unis	Aberdeen	1987	1994	Kurt Cobain	3	grunge	Nirvana est un groupe de grunge américain, originaire d'Aberdeen, dans l'État de Washington, formé en 1987 par le chanteur-guitariste Kurt Cobain et le bassiste Krist Novoselic
132	Led Zeppelin	Royaume-Uni 	Londres	1968	1980	Jimmy Page	\N	rock	Led Zeppelin [lɛd ˈzɛpələn] est un groupe britannique de rock, originaire de Londres, en Angleterre. Il est fondé en 1968 par Jimmy Page, avec Robert Plant, John Paul Jones et John Bonham, et dissout à la suite de la mort de ce dernier, en 1980
133	Depeche Mode	Royaume-Uni 	Basildon	1980	\N	\N	3	rock	Depeche Mode est un groupe britannique de new wave et rock alternatif, originaire de Basildon, dans l'Essex, en Angleterre. Formé en 1980, le groupe apparait au sein du courant de la synthpop et devient rapidement influent et populaire sur la scène internationale. Son nom provient d'un magazine français, Dépêche Mode
134	Téléphone	France	Paris	1976	1986	\N	4	rock	Téléphone est un groupe de rock français. Il est formé le 12 novembre 1976 et séparé le 21 avril 1986. Composé de Jean-Louis Aubert, Louis Bertignac, Corine Marienneau et Richard Kolinka, il connaît un énorme succès dès ses débuts avec plusieurs tubes et des tournées très populaires
135	Massive Attack	Royaume-Uni 	bristol	1987	\N	\N	\N	Trip hop	Massive Attack est un groupe musical britannique, originaire de Bristol, précurseur de la musique trip hop. Il se compose, à l'origine, de Robert Del Naja, Grant Marshall et Andrew Vowles
136	Pink Floyd	Royaume-Uni 	Londres	1964	2014	Syd Barrett,	3	rock	Pink Floyd [pɪŋk flɔɪd] est un groupe britannique de rock originaire de Londres. Le groupe débute avec un premier album de musique psychédélique pour ensuite bifurquer vers le rock progressif. Formé en 1965, il est considéré comme un pionnier et représentant majeur de ces styles musicaux.
173	The Beatles	Royaume-Uni 	Liverpool	1960	1970	John Lennon	4	\N	The Beatles [ðə ˈbiːtəlz] est un quatuor musical britannique originaire de Liverpool, en Angleterre. Le noyau du groupe se forme avec les Quarrymen fondés ...
174	Indochine	France	paris	1981	\N	Nicola Sirkis et Dominique Nicolas	5	pop rock	Indochine est un groupe de pop rock français originaire de Paris, formé par Nicola Sirkis et Dominique Nicolas en 1981. Le groupe est issu du courant new wave
175	Noir Désir	France	bordeaux	1980	2010	Bertrand Cantat	4	rock	Noir Désir est un groupe de rock français, originaire de Bordeaux, en Gironde. Formé dans les années 1980, et dissout en 2010, il se compose de Bertrand Cantat, Denis Barthe, Serge Teyssot-Gay et Frédéric Vidalenc remplacé par Jean-Paul Roy à partir de 1996
176	Nirvana	Etats-unis	Aberdeen	1987	1994	Kurt Cobain	3	grunge	Nirvana est un groupe de grunge américain, originaire d'Aberdeen, dans l'État de Washington, formé en 1987 par le chanteur-guitariste Kurt Cobain et le bassiste Krist Novoselic
177	Led Zeppelin	Royaume-Uni 	Londres	1968	1980	Jimmy Page	\N	rock	Led Zeppelin [lɛd ˈzɛpələn] est un groupe britannique de rock, originaire de Londres, en Angleterre. Il est fondé en 1968 par Jimmy Page, avec Robert Plant, John Paul Jones et John Bonham, et dissout à la suite de la mort de ce dernier, en 1980
178	Depeche Mode	Royaume-Uni 	Basildon	1980	\N	\N	3	rock	Depeche Mode est un groupe britannique de new wave et rock alternatif, originaire de Basildon, dans l'Essex, en Angleterre. Formé en 1980, le groupe apparait au sein du courant de la synthpop et devient rapidement influent et populaire sur la scène internationale. Son nom provient d'un magazine français, Dépêche Mode
179	Téléphone	France	Paris	1976	1986	\N	4	rock	Téléphone est un groupe de rock français. Il est formé le 12 novembre 1976 et séparé le 21 avril 1986. Composé de Jean-Louis Aubert, Louis Bertignac, Corine Marienneau et Richard Kolinka, il connaît un énorme succès dès ses débuts avec plusieurs tubes et des tournées très populaires
180	Massive Attack	Royaume-Uni 	bristol	1987	\N	\N	\N	Trip hop	Massive Attack est un groupe musical britannique, originaire de Bristol, précurseur de la musique trip hop. Il se compose, à l'origine, de Robert Del Naja, Grant Marshall et Andrew Vowles
181	Pink Floyd	Royaume-Uni 	Londres	1964	2014	Syd Barrett,	3	rock	Pink Floyd [pɪŋk flɔɪd] est un groupe britannique de rock originaire de Londres. Le groupe débute avec un premier album de musique psychédélique pour ensuite bifurquer vers le rock progressif. Formé en 1965, il est considéré comme un pionnier et représentant majeur de ces styles musicaux.
137	The Beatles	Royaume-Uni 	Liverpool	1960	1970	John Lennon	4	\N	The Beatles [ðə ˈbiːtəlz] est un quatuor musical britannique originaire de Liverpool, en Angleterre. Le noyau du groupe se forme avec les Quarrymen fondés ...
138	Indochine	France	paris	1981	\N	Nicola Sirkis et Dominique Nicolas	5	pop rock	Indochine est un groupe de pop rock français originaire de Paris, formé par Nicola Sirkis et Dominique Nicolas en 1981. Le groupe est issu du courant new wave
139	Noir Désir	France	bordeaux	1980	2010	Bertrand Cantat	4	rock	Noir Désir est un groupe de rock français, originaire de Bordeaux, en Gironde. Formé dans les années 1980, et dissout en 2010, il se compose de Bertrand Cantat, Denis Barthe, Serge Teyssot-Gay et Frédéric Vidalenc remplacé par Jean-Paul Roy à partir de 1996
141	Led Zeppelin	Royaume-Uni 	Londres	1968	1980	Jimmy Page	\N	rock	Led Zeppelin [lɛd ˈzɛpələn] est un groupe britannique de rock, originaire de Londres, en Angleterre. Il est fondé en 1968 par Jimmy Page, avec Robert Plant, John Paul Jones et John Bonham, et dissout à la suite de la mort de ce dernier, en 1980
142	Depeche Mode	Royaume-Uni 	Basildon	1980	\N	\N	3	rock	Depeche Mode est un groupe britannique de new wave et rock alternatif, originaire de Basildon, dans l'Essex, en Angleterre. Formé en 1980, le groupe apparait au sein du courant de la synthpop et devient rapidement influent et populaire sur la scène internationale. Son nom provient d'un magazine français, Dépêche Mode
143	Téléphone	France	Paris	1976	1986	\N	4	rock	Téléphone est un groupe de rock français. Il est formé le 12 novembre 1976 et séparé le 21 avril 1986. Composé de Jean-Louis Aubert, Louis Bertignac, Corine Marienneau et Richard Kolinka, il connaît un énorme succès dès ses débuts avec plusieurs tubes et des tournées très populaires
144	Massive Attack	Royaume-Uni 	bristol	1987	\N	\N	\N	Trip hop	Massive Attack est un groupe musical britannique, originaire de Bristol, précurseur de la musique trip hop. Il se compose, à l'origine, de Robert Del Naja, Grant Marshall et Andrew Vowles
145	Pink Floyd	Royaume-Uni 	Londres	1964	2014	Syd Barrett,	3	rock	Pink Floyd [pɪŋk flɔɪd] est un groupe britannique de rock originaire de Londres. Le groupe débute avec un premier album de musique psychédélique pour ensuite bifurquer vers le rock progressif. Formé en 1965, il est considéré comme un pionnier et représentant majeur de ces styles musicaux.
140	Noir Désir	France	bordeaux	1980	2010	Bertrand Cantat	5	rock	Noir Désir est un groupe de rock français, originaire de Bordeaux, en Gironde. Formé dans les années 1980, et dissout en 2010, il s…
146	The Beatles	Royaume-Uni 	Liverpool	1960	1970	John Lennon	4	\N	The Beatles [ðə ˈbiːtəlz] est un quatuor musical britannique originaire de Liverpool, en Angleterre. Le noyau du groupe se forme avec les Quarrymen fondés ...
147	Indochine	France	paris	1981	\N	Nicola Sirkis et Dominique Nicolas	5	pop rock	Indochine est un groupe de pop rock français originaire de Paris, formé par Nicola Sirkis et Dominique Nicolas en 1981. Le groupe est issu du courant new wave
148	Noir Désir	France	bordeaux	1980	2010	Bertrand Cantat	4	rock	Noir Désir est un groupe de rock français, originaire de Bordeaux, en Gironde. Formé dans les années 1980, et dissout en 2010, il se compose de Bertrand Cantat, Denis Barthe, Serge Teyssot-Gay et Frédéric Vidalenc remplacé par Jean-Paul Roy à partir de 1996
149	Nirvana	Etats-unis	Aberdeen	1987	1994	Kurt Cobain	3	grunge	Nirvana est un groupe de grunge américain, originaire d'Aberdeen, dans l'État de Washington, formé en 1987 par le chanteur-guitariste Kurt Cobain et le bassiste Krist Novoselic
150	Led Zeppelin	Royaume-Uni 	Londres	1968	1980	Jimmy Page	\N	rock	Led Zeppelin [lɛd ˈzɛpələn] est un groupe britannique de rock, originaire de Londres, en Angleterre. Il est fondé en 1968 par Jimmy Page, avec Robert Plant, John Paul Jones et John Bonham, et dissout à la suite de la mort de ce dernier, en 1980
151	Depeche Mode	Royaume-Uni 	Basildon	1980	\N	\N	3	rock	Depeche Mode est un groupe britannique de new wave et rock alternatif, originaire de Basildon, dans l'Essex, en Angleterre. Formé en 1980, le groupe apparait au sein du courant de la synthpop et devient rapidement influent et populaire sur la scène internationale. Son nom provient d'un magazine français, Dépêche Mode
152	Téléphone	France	Paris	1976	1986	\N	4	rock	Téléphone est un groupe de rock français. Il est formé le 12 novembre 1976 et séparé le 21 avril 1986. Composé de Jean-Louis Aubert, Louis Bertignac, Corine Marienneau et Richard Kolinka, il connaît un énorme succès dès ses débuts avec plusieurs tubes et des tournées très populaires
153	Massive Attack	Royaume-Uni 	bristol	1987	\N	\N	\N	Trip hop	Massive Attack est un groupe musical britannique, originaire de Bristol, précurseur de la musique trip hop. Il se compose, à l'origine, de Robert Del Naja, Grant Marshall et Andrew Vowles
154	Pink Floyd	Royaume-Uni 	Londres	1964	2014	Syd Barrett,	3	rock	Pink Floyd [pɪŋk flɔɪd] est un groupe britannique de rock originaire de Londres. Le groupe débute avec un premier album de musique psychédélique pour ensuite bifurquer vers le rock progressif. Formé en 1965, il est considéré comme un pionnier et représentant majeur de ces styles musicaux.
155	The Beatles	Royaume-Uni 	Liverpool	1960	1970	John Lennon	4	\N	The Beatles [ðə ˈbiːtəlz] est un quatuor musical britannique originaire de Liverpool, en Angleterre. Le noyau du groupe se forme avec les Quarrymen fondés ...
156	Indochine	France	paris	1981	\N	Nicola Sirkis et Dominique Nicolas	5	pop rock	Indochine est un groupe de pop rock français originaire de Paris, formé par Nicola Sirkis et Dominique Nicolas en 1981. Le groupe est issu du courant new wave
157	Noir Désir	France	bordeaux	1980	2010	Bertrand Cantat	4	rock	Noir Désir est un groupe de rock français, originaire de Bordeaux, en Gironde. Formé dans les années 1980, et dissout en 2010, il se compose de Bertrand Cantat, Denis Barthe, Serge Teyssot-Gay et Frédéric Vidalenc remplacé par Jean-Paul Roy à partir de 1996
158	Nirvana	Etats-unis	Aberdeen	1987	1994	Kurt Cobain	3	grunge	Nirvana est un groupe de grunge américain, originaire d'Aberdeen, dans l'État de Washington, formé en 1987 par le chanteur-guitariste Kurt Cobain et le bassiste Krist Novoselic
159	Led Zeppelin	Royaume-Uni 	Londres	1968	1980	Jimmy Page	\N	rock	Led Zeppelin [lɛd ˈzɛpələn] est un groupe britannique de rock, originaire de Londres, en Angleterre. Il est fondé en 1968 par Jimmy Page, avec Robert Plant, John Paul Jones et John Bonham, et dissout à la suite de la mort de ce dernier, en 1980
160	Depeche Mode	Royaume-Uni 	Basildon	1980	\N	\N	3	rock	Depeche Mode est un groupe britannique de new wave et rock alternatif, originaire de Basildon, dans l'Essex, en Angleterre. Formé en 1980, le groupe apparait au sein du courant de la synthpop et devient rapidement influent et populaire sur la scène internationale. Son nom provient d'un magazine français, Dépêche Mode
161	Téléphone	France	Paris	1976	1986	\N	4	rock	Téléphone est un groupe de rock français. Il est formé le 12 novembre 1976 et séparé le 21 avril 1986. Composé de Jean-Louis Aubert, Louis Bertignac, Corine Marienneau et Richard Kolinka, il connaît un énorme succès dès ses débuts avec plusieurs tubes et des tournées très populaires
162	Massive Attack	Royaume-Uni 	bristol	1987	\N	\N	\N	Trip hop	Massive Attack est un groupe musical britannique, originaire de Bristol, précurseur de la musique trip hop. Il se compose, à l'origine, de Robert Del Naja, Grant Marshall et Andrew Vowles
163	Pink Floyd	Royaume-Uni 	Londres	1964	2014	Syd Barrett,	3	rock	Pink Floyd [pɪŋk flɔɪd] est un groupe britannique de rock originaire de Londres. Le groupe débute avec un premier album de musique psychédélique pour ensuite bifurquer vers le rock progressif. Formé en 1965, il est considéré comme un pionnier et représentant majeur de ces styles musicaux.
116	Téléphone	France	Paris	1976	1986	\N	4	rock	Téléphone est un groupe de rock français. Il est formé le 12 novembre 1976 et séparé le 21 avril 1986. Composé de Jean-Louis Aubert, Louis Bertignac, Corine Marienneau et Richard Kolinka, il connaît un énorme succès dès ses débuts avec plusieurs tubes et des tournées très populaire
117	Massive Attack	Royaume-Uni 	bristol	1987	\N	\N	\N	Trip hop	Massive Attack est un groupe musical britannique, originaire de Bristol, précurseur de la musique trip hop. Il se compose, à l'origine, de Robert Del Naja, Grant Marshall et Andrew Vowles
118	Pink Floyd	Royaume-Uni 	Londres	1964	2014	Syd Barrett,	3	rock	Pink Floyd [pɪŋk flɔɪd] est un groupe britannique de rock originaire de Londres. Le groupe débute avec un premier album de musique psychédélique pour ensuite bifurquer vers le rock progressif. Formé en 1965, il est considéré comme un pionnier et représentant majeur de ces styles musicaux.
\.


--
-- Data for Name: doctrine_migration_versions; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.doctrine_migration_versions (version, executed_at, execution_time) FROM stdin;
DoctrineMigrations\\Version20230731201123	2023-07-31 20:11:45	10
\.


--
-- Name: band_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.band_id_seq', 181, true);


--
-- Name: band band_pkey; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.band
    ADD CONSTRAINT band_pkey PRIMARY KEY (id);


--
-- Name: doctrine_migration_versions doctrine_migration_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: app
--

ALTER TABLE ONLY public.doctrine_migration_versions
    ADD CONSTRAINT doctrine_migration_versions_pkey PRIMARY KEY (version);


--
-- PostgreSQL database dump complete
--

