--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

--
-- Name: levels_level_id_seq; Type: SEQUENCE SET; Schema: public; Owner: spacechem
--
create table if not exists levels
(
	level_id integer not null
		constraint levels_pk
			primary key,
	name text,
	internal_name text,
	number text,
	slug text,
	order1 integer,
	order2 integer,
	category text,
	outside_view boolean default false
);

alter table levels owner to spacechem;

create unique index if not exists levels_level_id_uindex
	on levels (level_id);



SELECT pg_catalog.setval('levels_level_id_seq', 207, true);


--
-- Data for Name: levels; Type: TABLE DATA; Schema: public; Owner: spacechem
--

INSERT INTO levels VALUES (1, 'Multiple Outputs', 'research-tutorial-6', '2-3', 'multiple-outputs', 2, 3, 'main', false);
INSERT INTO levels VALUES (17, 'Moustachium 602', 'tf2-1', 'TF2-1', 'moustachium-602', 1, 1, 'tf2', false);
INSERT INTO levels VALUES (15, 'Moustachium 604', 'tf2-2', 'TF2-2', 'moustachium-604', 1, 2, 'tf2', false);
INSERT INTO levels VALUES (16, 'Moustachium 608', 'tf2-3', 'TF2-3', 'moustachium-608', 1, 3, 'tf2', false);
INSERT INTO levels VALUES (8, 'Split Before Bonding', 'bonding-4', '3-3', 'split-before-bonding', 3, 3, 'main', false);
INSERT INTO levels VALUES (9, 'It Takes Three', 'bonding-3', '3-2', 'it-takes-three', 3, 2, 'main', false);
INSERT INTO levels VALUES (10, 'Every Day is the First Day', 'bonding-2', '3-1', 'every-day-is-the-first-day', 3, 1, 'main', false);
INSERT INTO levels VALUES (27, 'Crossover', 'research-tutorial-1point5', '1-3', 'crossover', 1, 3, 'main', false);
INSERT INTO levels VALUES (32, 'Special Assignment', 'organic-1', '8-1', 'special-assignment', 8, 1, 'main', false);
INSERT INTO levels VALUES (33, 'Ice to Meet You', 'fusion-1', '5-1', 'ice-to-meet-you', 5, 1, 'main', false);
INSERT INTO levels VALUES (34, 'Under the Ice', 'fusion-2', '5-2', 'under-the-ice', 5, 2, 'main', false);
INSERT INTO levels VALUES (35, 'Double Bonds', 'research-tutorial-4', '2-1', 'double-bonds', 2, 1, 'main', false);
INSERT INTO levels VALUES (37, 'A Brief History of SpaceChem', 'research-tutorial-2', '1-5', 'a-brief-history-of-spacechem', 1, 5, 'main', false);
INSERT INTO levels VALUES (38, 'Removing Bonds', 'research-tutorial-3', '1-6', 'removing-bonds', 1, 6, 'main', false);
INSERT INTO levels VALUES (39, 'Slightly Different', 'research-tutorial-1', '1-2', 'slightly-different', 1, 2, 'main', false);
INSERT INTO levels VALUES (40, 'Unknown Sender', 'fusion-3', '5-3', 'unknown-sender', 5, 3, 'main', false);
INSERT INTO levels VALUES (42, 'Suspicious Behavior', 'organic-2', '8-2', 'suspicious-behavior', 8, 2, 'main', false);
INSERT INTO levels VALUES (43, 'Sacr&#233; Bleu!', 'mining-3', '6-2', 'sacre-bleu!', 6, 2, 'main', false);
INSERT INTO levels VALUES (44, 'Like a Boss', 'mining-2', '6-1', 'like-a-boss', 6, 1, 'main', false);
INSERT INTO levels VALUES (45, 'Danger Zone', 'mining-1', '6-4', 'danger-zone', 6, 4, 'main', false);
INSERT INTO levels VALUES (46, 'The Plot Thickens', 'mining-7', '6-3', 'the-plot-thickens', 6, 3, 'main', false);
INSERT INTO levels VALUES (50, 'No Stomach for Lunch', 'research-3', '7-2', 'no-stomach-for-lunch', 7, 2, 'main', false);
INSERT INTO levels VALUES (53, 'Best Left Unanswered', 'research-tutorial-5', '2-2', 'best-left-unanswered', 2, 2, 'main', false);
INSERT INTO levels VALUES (55, 'An Introduction to Sensing', 'sensing-1', '4-1', 'an-introduction-to-sensing', 4, 1, 'main', false);
INSERT INTO levels VALUES (56, 'Random Oxides', 'sensing-3', '4-3', 'random-oxides', 4, 3, 'main', false);
INSERT INTO levels VALUES (92, 'Pyridine', 'published-13-1', '2-1-1', 'pyridine', 13, 1, 'researchnet', false);
INSERT INTO levels VALUES (90, 'Breakdown', 'published-13-2', '2-1-2', 'breakdown', 13, 2, 'researchnet', false);
INSERT INTO levels VALUES (91, 'Vitamin B3', 'published-13-3', '2-1-3', 'vitamin-b3', 13, 3, 'researchnet', false);
INSERT INTO levels VALUES (93, 'PVC', 'published-14-1', '2-2-1', 'pvc', 14, 1, 'researchnet', false);
INSERT INTO levels VALUES (95, 'PVA', 'published-14-2', '2-2-2', 'pva', 14, 2, 'researchnet', false);
INSERT INTO levels VALUES (94, 'Naphthalene', 'published-14-3', '2-2-3', 'naphthalene', 14, 3, 'researchnet', false);
INSERT INTO levels VALUES (57, 'Prelude to a Migraine', 'sensing-2', '4-2', 'prelude-to-a-migraine', 4, 2, 'main', false);
INSERT INTO levels VALUES (58, 'Accidents Happen', 'research-2', '7-5', 'accidents-happen', 7, 5, 'main', false);
INSERT INTO levels VALUES (59, 'An Introduction to Bonding', 'research-example-2', '1-4', 'an-introduction-to-bonding', 1, 4, 'main', false);
INSERT INTO levels VALUES (60, 'Of Pancakes and Spaceships', 'research-example-1', '1-1', 'of-pancakes-and-spaceships', 1, 1, 'main', false);
INSERT INTO levels VALUES (61, 'The Blue Danube', 'research-1', '7-1', 'the-blue-danube', 7, 1, 'main', false);
INSERT INTO levels VALUES (62, 'No Employment Record Found', 'research-6', '7-3', 'no-employment-record-found', 7, 3, 'main', false);
INSERT INTO levels VALUES (63, 'I Told You So', 'organic-3', '8-3', 'i-told-you-so', 8, 3, 'main', false);
INSERT INTO levels VALUES (64, 'Right All Along', 'research-5', '7-4', 'right-all-along', 7, 4, 'main', false);
INSERT INTO levels VALUES (2, 'Benzoic Acid', 'published-4-3', '1-4-3', 'benzoic-acid', 4, 3, 'researchnet', false);
INSERT INTO levels VALUES (21, 'Silica', 'published-6-2', '1-6-2', 'silica', 6, 2, 'researchnet', false);
INSERT INTO levels VALUES (22, 'Fission I', 'published-2-1', '1-2-1', 'fission-i', 2, 1, 'researchnet', false);
INSERT INTO levels VALUES (23, 'Fission III', 'published-2-3', '1-2-3', 'fission-iii', 2, 3, 'researchnet', false);
INSERT INTO levels VALUES (24, 'Fission II', 'published-2-2', '1-2-2', 'fission-ii', 2, 2, 'researchnet', false);
INSERT INTO levels VALUES (25, 'Tunnels II', 'published-1-2', '1-1-2', 'tunnels-ii', 1, 2, 'researchnet', false);
INSERT INTO levels VALUES (26, 'Tunnels III', 'published-1-3', '1-1-3', 'tunnels-iii', 1, 3, 'researchnet', false);
INSERT INTO levels VALUES (28, 'Tunnels I', 'published-1-1', '1-1-1', 'tunnels-i', 1, 1, 'researchnet', false);
INSERT INTO levels VALUES (29, 'Diethyl Ether', 'published-5-2', '1-5-2', 'diethyl-ether', 5, 2, 'researchnet', false);
INSERT INTO levels VALUES (31, '2-Hexene', 'published-5-3', '1-5-3', '2-hexene', 5, 3, 'researchnet', false);
INSERT INTO levels VALUES (36, 'Electrophilic Addition', 'published-5-1', '1-5-1', 'electrophilic-addition', 5, 1, 'researchnet', false);
INSERT INTO levels VALUES (68, 'Industrial Methanol', 'published-7-1', '1-7-1', 'industrial-methanol', 7, 1, 'researchnet', false);
INSERT INTO levels VALUES (69, 'Glyoxylic Acid', 'published-7-2', '1-7-2', 'glyoxylic-acid', 7, 2, 'researchnet', false);
INSERT INTO levels VALUES (70, 'Bioplastic', 'published-7-3', '1-7-3', 'bioplastic', 7, 3, 'researchnet', false);
INSERT INTO levels VALUES (71, 'Chlorination', 'published-8-1', '1-8-1', 'chlorination', 8, 1, 'researchnet', false);
INSERT INTO levels VALUES (72, 'Sulfuric Acid', 'published-8-2', '1-8-2', 'sulfuric-acid', 8, 2, 'researchnet', false);
INSERT INTO levels VALUES (65, 'There''s Something in the Fishcake', 'production-tutorial-2', '2-5', 'there''s-something-in-the-fishcake', 2, 5, 'main', true);
INSERT INTO levels VALUES (66, 'Sleepless on Sernimir IV', 'production-tutorial-3', '2-6', 'sleepless-on-sernimir-iv', 2, 6, 'main', true);
INSERT INTO levels VALUES (6, 'Settling into the Routine', 'bonding-6', '3-4', 'settling-into-the-routine', 3, 4, 'main', true);
INSERT INTO levels VALUES (5, 'Nothing Works', 'bonding-7', '3-5', 'nothing-works', 3, 5, 'main', true);
INSERT INTO levels VALUES (89, 'A Most Unfortunate Malfunction', 'bonding-boss', '3-6', 'a-most-unfortunate-malfunction', 3, 6, 'main', true);
INSERT INTO levels VALUES (7, 'Challenge: In-Place Swap', 'bonding-5', '3-C', 'challenge-in-place-swap', 3, 99, 'main', true);
INSERT INTO levels VALUES (52, 'No Ordinary Headache', 'sensing-4', '4-4', 'no-ordinary-headache', 4, 4, 'main', true);
INSERT INTO levels VALUES (51, 'No Thanks Necessary', 'sensing-5', '4-5', 'no-thanks-necessary', 4, 5, 'main', true);
INSERT INTO levels VALUES (54, 'Challenge: Going Green', 'sensing-6', '4-C', 'challenge-going-green', 4, 99, 'main', true);
INSERT INTO levels VALUES (88, 'No Need for Introductions', 'sensing-boss', '4-6', 'no-need-for-introductions', 4, 6, 'main', true);
INSERT INTO levels VALUES (11, 'Falling', 'fusion-5', '5-4', 'falling', 5, 4, 'main', true);
INSERT INTO levels VALUES (41, 'Challenge: Applied Fusion', 'fusion-6', '5-C', 'challenge-applied-fusion', 5, 99, 'main', true);
INSERT INTO levels VALUES (87, 'Exploding Head Syndrome', 'fusion-boss', '5-5', 'exploding-head-syndrome', 5, 5, 'main', true);
INSERT INTO levels VALUES (86, 'More than Machine', 'mining-boss', '6-5', 'more-than-machine', 6, 5, 'main', true);
INSERT INTO levels VALUES (48, 'Molecular Foundry', 'mining-5', '6-6', 'molecular-foundry', 6, 6, 'main', true);
INSERT INTO levels VALUES (49, 'Gas Works Park', 'mining-4', '6-7', 'gas-works-park', 6, 7, 'main', true);
INSERT INTO levels VALUES (47, 'Challenge: KOHCTPYKTOP', 'mining-6', '6-C', 'challenge-kohctpyktop', 6, 99, 'main', true);
INSERT INTO levels VALUES (85, 'Don''t Fear the Reaper', 'research-boss', '7-6', 'don''t-fear-the-reaper', 7, 6, 'main', true);
INSERT INTO levels VALUES (84, 'Freedom of Choice', 'organic-boss', '8-4', 'freedom-of-choice', 8, 4, 'main', true);
INSERT INTO levels VALUES (30, '&#931;-Ethylene', 'organic-6', '8-5b', 'sigma-ethylene', 8, 6, 'main', true);
INSERT INTO levels VALUES (83, 'End of the Line', 'warp-boss', '9-1', 'end-of-the-line', 9, 1, 'main', true);
INSERT INTO levels VALUES (73, 'Bad Times', 'published-8-3', '1-8-3', 'bad-times', 8, 3, 'researchnet', false);
INSERT INTO levels VALUES (74, 'Friedel-Crafts', 'published-9-1', '1-9-1', 'friedel-crafts', 9, 1, 'researchnet', false);
INSERT INTO levels VALUES (75, 'Bad Times, Part II', 'published-10-1', '1-10-1', 'bad-times-part-ii', 10, 1, 'researchnet', false);
INSERT INTO levels VALUES (76, 'Freon', 'published-10-2', '1-10-2', 'freon', 10, 2, 'researchnet', false);
INSERT INTO levels VALUES (77, 'Portland Cement', 'published-11-1', '1-11-1', 'portland-cement', 11, 1, 'researchnet', false);
INSERT INTO levels VALUES (78, 'Benzene Derivation', 'published-10-3', '1-10-3', 'benzene-derivation', 10, 3, 'researchnet', false);
INSERT INTO levels VALUES (79, 'Graphene', 'published-11-3b', '1-11-3', 'graphene', 11, 3, 'researchnet', false);
INSERT INTO levels VALUES (80, 'Solder Coarsening', 'published-11-2', '1-11-2', 'solder-coarsening', 11, 2, 'researchnet', false);
INSERT INTO levels VALUES (81, 'W&#246;hler Synthesis', 'published-9-2', '1-9-2', 'wohler-synthesis', 9, 2, 'researchnet', false);
INSERT INTO levels VALUES (82, 'Diels-Alder', 'published-9-3', '1-9-3', 'diels-alder', 9, 3, 'researchnet', false);
INSERT INTO levels VALUES (96, 'Waste Treatment', 'published-12-3', '1-12-3', 'waste-treatment', 12, 3, 'researchnet', false);
INSERT INTO levels VALUES (98, 'The Big Cleanup', 'published-12-1', '1-12-1', 'the-big-cleanup', 12, 1, 'researchnet', false);
INSERT INTO levels VALUES (97, 'Going Green Part II', 'published-12-2', '1-12-2', 'going-green-part-ii', 12, 2, 'researchnet', false);
INSERT INTO levels VALUES (3, 'Propane Accessories', 'published-4-2', '1-4-2', 'propane-accessories', 4, 2, 'researchnet', false);
INSERT INTO levels VALUES (4, 'Quantum Decomposition', 'published-4-1', '1-4-1', 'quantum-decomposition', 4, 1, 'researchnet', false);
INSERT INTO levels VALUES (12, 'Chloroform', 'published-3-1', '1-3-1', 'chloroform', 3, 1, 'researchnet', false);
INSERT INTO levels VALUES (13, 'Cycloaddition', 'published-3-2', '1-3-2', 'cycloaddition', 3, 2, 'researchnet', false);
INSERT INTO levels VALUES (14, 'KOHCTPYKTOP++', 'published-3-3', '1-3-3', 'kohctpyktop++', 3, 3, 'researchnet', false);
INSERT INTO levels VALUES (18, 'Mazeite''', 'published-6-1', '1-6-1', 'mazeite''', 6, 1, 'researchnet', false);
INSERT INTO levels VALUES (20, 'Galvanization', 'published-6-3', '1-6-3', 'galvanization', 6, 3, 'researchnet', false);
INSERT INTO levels VALUES (67, 'An Introduction to Pipelines', 'production-tutorial-1', '2-4', 'an-introduction-to-pipelines', 2, 4, 'main', true);
INSERT INTO levels VALUES (104, 'Anthraquinone', 'published-15-1', '2-3-1', 'anthraquinone', 15, 1, 'researchnet', false);
INSERT INTO levels VALUES (105, 'Soap', 'published-15-2', '2-3-2', 'soap', 15, 2, 'researchnet', false);
INSERT INTO levels VALUES (106, 'Glucose', 'published-15-3', '2-3-3', 'glucose', 15, 3, 'researchnet', false);
INSERT INTO levels VALUES (101, 'PZA', 'published-16-1', '2-4-1', 'pza', 16, 1, 'researchnet', false);
INSERT INTO levels VALUES (100, 'INH', 'published-16-2', '2-4-2', 'inh', 16, 2, 'researchnet', false);
INSERT INTO levels VALUES (99, 'PAS', 'published-16-3', '2-4-3', 'pas', 16, 3, 'researchnet', false);
INSERT INTO levels VALUES (107, 'Fusion - Germane', 'published-17-1', '2-5-1', 'fusion-germane', 17, 1, 'researchnet', false);
INSERT INTO levels VALUES (102, 'Fusion - Silane', 'published-17-2', '2-5-2', 'fusion-silane', 17, 2, 'researchnet', false);
INSERT INTO levels VALUES (103, 'Fermentation', 'published-17-3', '2-5-3', 'fermentation', 17, 3, 'researchnet', false);
INSERT INTO levels VALUES (19, '&#937;-Pseudoethyne', 'organic-5', '8-5a', 'omega-pseudoethyne', 8, 5, 'main', true);
INSERT INTO levels VALUES (111, 'Hydrazine', 'published-18-1', '2-6-1', 'hydrazine', 18, 1, 'researchnet', false);
INSERT INTO levels VALUES (113, 'Organometallics', 'published-18-2', '2-6-2', 'organometallics', 18, 2, 'researchnet', false);
INSERT INTO levels VALUES (112, 'Nonsense!', 'published-18-3', '2-6-3', 'nonsense', 18, 3, 'researchnet', false);
INSERT INTO levels VALUES (108, 'Iron and Ozone', 'published-19-1', '2-7-1', 'iron-and-ozone', 19, 1, 'researchnet', false);
INSERT INTO levels VALUES (109, 'Normalization', 'published-19-2', '2-7-2', 'normalization', 19, 2, 'researchnet', false);
INSERT INTO levels VALUES (110, 'Decomposition', 'published-19-3', '2-7-3', 'decomposition', 19, 3, 'researchnet', false);
INSERT INTO levels VALUES (114, 'QT-1', 'quantum-1', '1', 'qt-1', 1, 1, '63corvi', false);
INSERT INTO levels VALUES (116, 'QT-2', 'quantum-2', '2', 'qt-2', 1, 2, '63corvi', false);
INSERT INTO levels VALUES (115, 'QT-3', 'quantum-3', '4', 'qt-3', 1, 4, '63corvi', false);
INSERT INTO levels VALUES (118, 'Teleporters', 'quantum-4', '3', 'teleporters', 1, 3, '63corvi', true);
INSERT INTO levels VALUES (117, 'QT-4', 'quantum-5', '5', 'qt-4', 1, 5, '63corvi', false);
INSERT INTO levels VALUES (119, 'Precursor Compounds', 'quantum-6', '6', 'precursor-compounds', 1, 6, '63corvi', true);
INSERT INTO levels VALUES (120, 'Collapsar', 'quantum-boss', '7', 'collapsar', 1, 7, '63corvi', true);
INSERT INTO levels VALUES (125, 'Phenol', 'published-20-1', '2-8-1', 'phenol', 20, 1, 'researchnet', false);
INSERT INTO levels VALUES (121, 'Uracil', 'published-20-2', '2-8-2', 'uracil', 20, 2, 'researchnet', false);
INSERT INTO levels VALUES (129, 'Pyridine', 'published-20-3', '2-8-3', 'pyridine-2', 20, 3, 'researchnet', false);
INSERT INTO levels VALUES (126, 'Phosgene', 'published-21-1', '2-9-1', 'phosgene', 21, 1, 'researchnet', false);
INSERT INTO levels VALUES (128, 'Ignoble', 'published-21-2', '2-9-2', 'ignoble', 21, 2, 'researchnet', false);
INSERT INTO levels VALUES (127, 'Alchemy', 'published-21-3', '2-9-3', 'alchemy', 21, 3, 'researchnet', false);
INSERT INTO levels VALUES (124, 'Bosch-Meiser', 'published-22-1', '2-10-1', 'bosch-meiser', 22, 1, 'researchnet', false);
INSERT INTO levels VALUES (122, 'Beckmann Rearrangement', 'published-22-2', '2-10-2', 'beckmann-rearrangement', 22, 2, 'researchnet', false);
INSERT INTO levels VALUES (123, 'Stock-Pohland', 'published-22-3', '2-10-3', 'stock-pohland', 22, 3, 'researchnet', false);
INSERT INTO levels VALUES (132, 'Swapite', 'published-23-1', '2-11-1', 'swapite', 23, 1, 'researchnet', false);
INSERT INTO levels VALUES (130, 'Hardening', 'published-23-2', '2-11-2', 'hardening', 23, 2, 'researchnet', false);
INSERT INTO levels VALUES (131, 'Keying In', 'published-23-3', '2-11-3', 'keying-in', 23, 3, 'researchnet', false);
INSERT INTO levels VALUES (133, 'Ethane', 'published-24-1', '2-12-1', 'ethane', 24, 1, 'researchnet', false);
INSERT INTO levels VALUES (134, 'Cyclobutane', 'published-24-2', '2-12-2', 'cyclobutane', 24, 2, 'researchnet', false);
INSERT INTO levels VALUES (135, 'Styrene', 'published-24-3', '2-12-3', 'styrene', 24, 3, 'researchnet', false);
INSERT INTO levels VALUES (136, 'Thinner Line', 'published-25-1', '3-1-1', 'thinner-line', 25, 1, 'researchnet', true);
INSERT INTO levels VALUES (138, 'Decomposition of Ethanolamine', 'published-25-2', '3-1-2', 'decomposition-of-Ethanolamine', 25, 2, 'researchnet', true);
INSERT INTO levels VALUES (137, 'Anesthetics', 'published-25-3', '3-1-3', 'anesthetics', 25, 3, 'researchnet', true);
INSERT INTO levels VALUES (141, 'Fertigprodukt', 'published-26-1', '3-2-1', 'fertigprodukt', 26, 1, 'researchnet', true);
INSERT INTO levels VALUES (139, 'Novel Semiconductor', 'published-26-2', '3-2-2', 'novel-semiconductor', 26, 2, 'researchnet', true);
INSERT INTO levels VALUES (140, 'Passivation', 'published-26-3', '3-2-3', 'passivation', 26, 3, 'researchnet', false);
INSERT INTO levels VALUES (142, 'Life: Prep Work', 'published-27-1', '3-3-1', 'life-prep-work', 27, 1, 'researchnet', false);
INSERT INTO levels VALUES (143, 'Life: Cytosine', 'published-27-2', '3-3-2', 'life-cytosine', 27, 2, 'researchnet', false);
INSERT INTO levels VALUES (144, 'Life: Thymine', 'published-27-3', '3-3-3', 'life-thymine', 27, 3, 'researchnet', false);
INSERT INTO levels VALUES (145, 'ResearchNet Published 28-1', 'published-28-1', '28-1', 'published-28-1', 28, 1, 'researchnet', false);
INSERT INTO levels VALUES (146, 'ResearchNet Published 28-2', 'published-28-2', '28-2', 'published-28-2', 28, 2, 'researchnet', false);
INSERT INTO levels VALUES (147, 'ResearchNet Published 28-3', 'published-28-3', '28-3', 'published-28-3', 28, 3, 'researchnet', false);
INSERT INTO levels VALUES (148, 'ResearchNet Published 30-3', 'published-30-3', '30-3', 'published-30-3', 30, 3, 'researchnet', false);
INSERT INTO levels VALUES (149, 'ResearchNet Published 30-2', 'published-30-2', '30-2', 'published-30-2', 30, 2, 'researchnet', false);
INSERT INTO levels VALUES (150, 'ResearchNet Published 30-1', 'published-30-1', '30-1', 'published-30-1', 30, 1, 'researchnet', false);
INSERT INTO levels VALUES (151, 'ResearchNet Published 29-1', 'published-29-1', '29-1', 'published-29-1', 29, 1, 'researchnet', false);
INSERT INTO levels VALUES (152, 'ResearchNet Published 29-3', 'published-29-3', '29-3', 'published-29-3', 29, 3, 'researchnet', false);
INSERT INTO levels VALUES (153, 'ResearchNet Published 29-2', 'published-29-2', '29-2', 'published-29-2', 29, 2, 'researchnet', false);
INSERT INTO levels VALUES (154, 'ResearchNet Published 32-2', 'published-32-2', '32-2', 'published-32-2', 32, 2, 'researchnet', false);
INSERT INTO levels VALUES (155, 'ResearchNet Published 32-1', 'published-32-1', '32-1', 'published-32-1', 32, 1, 'researchnet', false);
INSERT INTO levels VALUES (156, 'ResearchNet Published 33-1', 'published-33-1', '33-1', 'published-33-1', 33, 1, 'researchnet', false);
INSERT INTO levels VALUES (157, 'ResearchNet Published 33-2', 'published-33-2', '33-2', 'published-33-2', 33, 2, 'researchnet', false);
INSERT INTO levels VALUES (158, 'ResearchNet Published 31-2', 'published-31-2', '31-2', 'published-31-2', 31, 2, 'researchnet', false);
INSERT INTO levels VALUES (159, 'ResearchNet Published 31-3', 'published-31-3', '31-3', 'published-31-3', 31, 3, 'researchnet', false);
INSERT INTO levels VALUES (160, 'ResearchNet Published 31-1', 'published-31-1', '31-1', 'published-31-1', 31, 1, 'researchnet', false);
INSERT INTO levels VALUES (161, 'ResearchNet Published 32-3', 'published-32-3', '32-3', 'published-32-3', 32, 3, 'researchnet', false);
INSERT INTO levels VALUES (162, 'ResearchNet Published 33-3', 'published-33-3', '33-3', 'published-33-3', 33, 3, 'researchnet', false);
INSERT INTO levels VALUES (163, 'ResearchNet Published 35-2', 'published-35-2', '35-2', 'published-35-2', 35, 2, 'researchnet', false);
INSERT INTO levels VALUES (164, 'ResearchNet Published 35-3', 'published-35-3', '35-3', 'published-35-3', 35, 3, 'researchnet', false);
INSERT INTO levels VALUES (165, 'ResearchNet Published 35-1', 'published-35-1', '35-1', 'published-35-1', 35, 1, 'researchnet', false);
INSERT INTO levels VALUES (166, 'ResearchNet Published 36-1', 'published-36-1', '36-1', 'published-36-1', 36, 1, 'researchnet', false);
INSERT INTO levels VALUES (167, 'ResearchNet Published 36-3', 'published-36-3', '36-3', 'published-36-3', 36, 3, 'researchnet', false);
INSERT INTO levels VALUES (168, 'ResearchNet Published 36-2', 'published-36-2', '36-2', 'published-36-2', 36, 2, 'researchnet', false);
INSERT INTO levels VALUES (169, 'ResearchNet Published 34-2', 'published-34-2', '34-2', 'published-34-2', 34, 2, 'researchnet', false);
INSERT INTO levels VALUES (170, 'ResearchNet Published 34-1', 'published-34-1', '34-1', 'published-34-1', 34, 1, 'researchnet', false);
INSERT INTO levels VALUES (171, 'ResearchNet Published 34-3', 'published-34-3', '34-3', 'published-34-3', 34, 3, 'researchnet', false);
INSERT INTO levels VALUES (172, 'ResearchNet Published 38-2', 'published-38-2', '38-2', 'published-38-2', 38, 2, 'researchnet', false);
INSERT INTO levels VALUES (173, 'ResearchNet Published 37-1', 'published-37-1', '37-1', 'published-37-1', 37, 1, 'researchnet', false);
INSERT INTO levels VALUES (174, 'ResearchNet Published 37-2', 'published-37-2', '37-2', 'published-37-2', 37, 2, 'researchnet', false);
INSERT INTO levels VALUES (175, 'ResearchNet Published 37-3', 'published-37-3', '37-3', 'published-37-3', 37, 3, 'researchnet', false);
INSERT INTO levels VALUES (176, 'ResearchNet Published 39-2', 'published-39-2', '39-2', 'published-39-2', 39, 2, 'researchnet', false);
INSERT INTO levels VALUES (177, 'ResearchNet Published 39-3', 'published-39-3', '39-3', 'published-39-3', 39, 3, 'researchnet', false);
INSERT INTO levels VALUES (178, 'ResearchNet Published 39-1', 'published-39-1', '39-1', 'published-39-1', 39, 1, 'researchnet', false);
INSERT INTO levels VALUES (179, 'ResearchNet Published 38-1', 'published-38-1', '38-1', 'published-38-1', 38, 1, 'researchnet', false);
INSERT INTO levels VALUES (180, 'ResearchNet Published 38-3', 'published-38-3', '38-3', 'published-38-3', 38, 3, 'researchnet', false);
INSERT INTO levels VALUES (181, 'ResearchNet Published 42-1', 'published-42-1', '42-1', 'published-42-1', 42, 1, 'researchnet', false);
INSERT INTO levels VALUES (182, 'ResearchNet Published 42-2', 'published-42-2', '42-2', 'published-42-2', 42, 2, 'researchnet', false);
INSERT INTO levels VALUES (183, 'ResearchNet Published 41-2', 'published-41-2', '41-2', 'published-41-2', 41, 2, 'researchnet', false);
INSERT INTO levels VALUES (184, 'ResearchNet Published 41-1', 'published-41-1', '41-1', 'published-41-1', 41, 1, 'researchnet', false);
INSERT INTO levels VALUES (185, 'ResearchNet Published 40-2', 'published-40-2', '40-2', 'published-40-2', 40, 2, 'researchnet', false);
INSERT INTO levels VALUES (186, 'ResearchNet Published 40-3', 'published-40-3', '40-3', 'published-40-3', 40, 3, 'researchnet', false);
INSERT INTO levels VALUES (187, 'ResearchNet Published 40-1', 'published-40-1', '40-1', 'published-40-1', 40, 1, 'researchnet', false);
INSERT INTO levels VALUES (188, 'ResearchNet Published 42-3', 'published-42-3', '42-3', 'published-42-3', 42, 3, 'researchnet', false);
INSERT INTO levels VALUES (189, 'ResearchNet Published 41-3', 'published-41-3', '41-3', 'published-41-3', 41, 3, 'researchnet', false);
INSERT INTO levels VALUES (190, 'ResearchNet Published 45-3', 'published-45-3', '45-3', 'published-45-3', 45, 3, 'researchnet', false);
INSERT INTO levels VALUES (191, 'ResearchNet Published 45-2', 'published-45-2', '45-2', 'published-45-2', 45, 2, 'researchnet', false);
INSERT INTO levels VALUES (192, 'ResearchNet Published 45-1', 'published-45-1', '45-1', 'published-45-1', 45, 1, 'researchnet', false);
INSERT INTO levels VALUES (193, 'ResearchNet Published 44-3', 'published-44-3', '44-3', 'published-44-3', 44, 3, 'researchnet', false);
INSERT INTO levels VALUES (194, 'ResearchNet Published 43-2', 'published-43-2', '43-2', 'published-43-2', 43, 2, 'researchnet', false);
INSERT INTO levels VALUES (195, 'ResearchNet Published 44-2', 'published-44-2', '44-2', 'published-44-2', 44, 2, 'researchnet', false);
INSERT INTO levels VALUES (196, 'ResearchNet Published 44-1', 'published-44-1', '44-1', 'published-44-1', 44, 1, 'researchnet', false);
INSERT INTO levels VALUES (197, 'ResearchNet Published 43-1', 'published-43-1', '43-1', 'published-43-1', 43, 1, 'researchnet', false);
INSERT INTO levels VALUES (198, 'ResearchNet Published 43-3', 'published-43-3', '43-3', 'published-43-3', 43, 3, 'researchnet', false);
INSERT INTO levels VALUES (199, 'ResearchNet Published 46-1', 'published-46-1', '46-1', 'published-46-1', 46, 1, 'researchnet', false);
INSERT INTO levels VALUES (200, 'ResearchNet Published 46-2', 'published-46-2', '46-2', 'published-46-2', 46, 2, 'researchnet', false);
INSERT INTO levels VALUES (201, 'ResearchNet Published 48-1', 'published-48-1', '48-1', 'published-48-1', 48, 1, 'researchnet', false);
INSERT INTO levels VALUES (202, 'ResearchNet Published 47-1', 'published-47-1', '47-1', 'published-47-1', 47, 1, 'researchnet', false);
INSERT INTO levels VALUES (203, 'ResearchNet Published 47-2', 'published-47-2', '47-2', 'published-47-2', 47, 2, 'researchnet', false);
INSERT INTO levels VALUES (204, 'ResearchNet Published 46-3', 'published-46-3', '46-3', 'published-46-3', 46, 3, 'researchnet', false);
INSERT INTO levels VALUES (205, 'ResearchNet Published 48-2', 'published-48-2', '48-2', 'published-48-2', 48, 2, 'researchnet', false);
INSERT INTO levels VALUES (206, 'ResearchNet Published 48-3', 'published-48-3', '48-3', 'published-48-3', 48, 3, 'researchnet', false);
INSERT INTO levels VALUES (207, 'ResearchNet Published 47-3', 'published-47-3', '47-3', 'published-47-3', 47, 3, 'researchnet', false);


--
-- PostgreSQL database dump complete
--