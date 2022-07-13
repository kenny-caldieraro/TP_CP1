--
-- Base de données :  "oquiz"
--
BEGIN;

-- On est obligé de supprimer la clé étrangère "bonne réponse" lors de l'ajout des données, car les tables "answer" et "question" sont liées dans les 2 sens
ALTER TABLE
  "answer" DROP CONSTRAINT answer_question_id_fkey;

SET
  CLIENT_ENCODING TO UTF8;

--
-- Déchargement des données de la table "answer"
--
INSERT INTO
  "answer" ("id", "description", "question_id")
VALUES
  (1, 'Un gland', 1),
  (2, 'Willy', 2),
  (3, 'Un requin', 3),
  (4, 'Dingo', 4),
  (5, 'Rox', 5),
  (6, 'Pluto', 6),
  (7, 'Jerry', 7),
  (8, 'Scooby-Doo', 8),
  (9, 'Daffy Duck', 9),
  (10, 'Un cochon', 10),
  (11, 'Un suricate', 11),
  (12, 'Beethoven', 12),
  (13, 'Dalmatien', 13),
  (14, 'Un éléphant', 14),
  (15, 'L''Ingénu', 15),
  (16, 'Hello Kitty', 16),
  (17, 'Gromit', 17),
  (18, 'Félix', 18),
  (19, 'Une fourmi', 19),
  (20, 'Lucky Luke', 20),
  (21, 'Un renard', 21),
  (22, 'Un lapin', 22),
  (23, 'Belle', 23),
  (24, 'Franklin', 24),
  (25, 'Buddy', 25),
  (26, 'Nana', 26),
  (27, 'Lil Bub', 27),
  (28, 'Chipeur', 28),
  (29, 'Edmond', 29),
  (30, 'Oberhausen', 30),
  (31, 'Cacaoyer', 31),
  (32, 'Beurre de cacao', 32),
  (33, 'On les grille', 33),
  (34, 'Noir', 34),
  (35, 'Suchard', 35),
  (36, 'La mort', 36),
  (37, 'Noir', 37),
  (38, 'Juliette Binoche', 38),
  (39, 'Cabosse', 39),
  (40, 'Noir', 40),
  (41, 'Les Mayas', 41),
  (42, 'Une quarantaine', 42),
  (43, 'La Côte d''Ivoire', 43),
  (44, 'La pâte de cacao', 44),
  (45, 'L''Angleterre', 45),
  (46, 'Deux', 46),
  (47, 'La Suisse', 47),
  (48, 'Du Mexique', 48),
  (49, 'Blanc', 49),
  (50, '20', 50),
  (51, 'Un mariage', 51),
  (52, 'Les Olmèques', 52),
  (53, 'En Espagne', 53),
  (54, '100 000', 54),
  (55, 'Cortés', 55),
  (56, 'Grand cru', 56),
  (57, 'La masse', 57),
  (58, 'Le tourteau', 58),
  (59, 'Chocolat amer', 59),
  (60, 'Érotique', 60),
  (61, 'Linus Torvalds', 61),
  (62, 'Il est libre', 62),
  (63, 'Un manchot', 63),
  (64, 'Rm', 64),
  (65, 'Red Hat', 65),
  (66, 'Android', 66),
  (67, 'Une distribution', 67),
  (68, 'Apache', 68),
  (69, 'Tux', 69),
  (70, 'Cat', 70),
  (71, '1991', 71),
  (72, 'Ubuntu', 72),
  (73, 'Konqueror', 73),
  (74, 'Mandriva', 74),
  (75, '.deb', 75),
  (76, 'Useradd', 76),
  (77, 'GNU', 77),
  (78, 'Debian', 78),
  (79, 'Slackware', 79),
  (80, 'X Window', 80),
  (81, 'Richard Stallman', 81),
  (82, 'XMMS', 82),
  (83, 'Canonical', 83),
  (84, 'SUSE', 84),
  (85, 'Debian', 85),
  (86, 'Cuba', 86),
  (87, 'Larry Ewing', 87),
  (88, 'Quake III Arena', 88),
  (89, 'Pandora', 89),
  (90, 'Freax', 90),
  (91, 'Anakin Skywalker', 91),
  (92, 'Yoda', 92),
  (93, 'Jedi', 93),
  (94, 'L''Étoile Noire', 94),
  (95, 'Sénatrice Padme', 95),
  (96, 'De module', 96),
  (97, 'La Force', 97),
  (98, 'Les siths', 98),
  (99, 'Han Solo', 99),
  (100, 'L''armée des clones', 100),
  (101, 'Palpatine', 101),
  (102, 'Han Solo', 102),
  (103, 'Il perd une main', 103),
  (104, 'Mace Windu', 104),
  (105, 'Qui-Gon Jinn', 105),
  (106, 'Dark Maul', 106),
  (107, 'Faucon Millénium', 107),
  (108, 'Han Solo', 108),
  (109, 'Tatooine', 109),
  (110, 'Boba Fett', 110),
  (111, 'Midi-chloriens', 111),
  (112, 'Plus de 20 000', 112),
  (113, 'Dark Plagueis', 113),
  (114, '5 et 6', 114),
  (115, 'Bataille de Yavin', 115),
  (116, 'L''avoir sauvé', 116),
  (117, 'Lando Calrissian', 117),
  (118, 'Dagobah', 118),
  (119, 'Dark Vador', 119),
  (120, '28 ans', 120),
  (121, 'La Kriek', 121),
  (122, 'Rouge', 122),
  (123, 'La Bush', 123),
  (124, 'Bière d''Abbaye', 124),
  (125, 'Kwak', 125),
  (126, 'Bouchon mécanique', 126),
  (127, 'Hoegaarden', 127),
  (128, 'Rosée', 128),
  (129, 'Orval', 129),
  (130, 'Barbar', 130),
  (131, '33 cl', 131),
  (132, 'Rochefort 12', 132),
  (133, 'Charles Quint', 133),
  (134, 'Ciney', 134),
  (135, 'Bleue', 135),
  (136, 'Moinette', 136),
  (137, 'St Feuillien', 137),
  (138, 'Grimbergen', 138),
  (139, 'Judas', 139),
  (140, 'La Chouffe', 140),
  (141, 'Lambic', 141),
  (142, 'Van Honsebrouck', 142),
  (143, 'Caracole', 143),
  (144, 'Un cheval', 144),
  (145, 'Saison 1900', 145),
  (146, 'Blanche du Hainaut', 146),
  (147, 'Blanche', 147),
  (148, 'Bon Secours', 148),
  (149, 'Ename', 149),
  (150, 'Gouyasse', 150),
  (151, 'Belle des Champs', 151),
  (152, 'Babybel', 152),
  (153, 'Boursin', 153),
  (154, 'Le brie', 154),
  (155, 'Le comté', 155),
  (156, 'Emmental', 156),
  (157, 'Le gruyère', 157),
  (158, 'Le maroilles', 158),
  (159, 'Le petit-suisse ', 159),
  (160, 'Le Bergues', 160),
  (161, 'Le beaufort', 161),
  (162, 'Époisses', 162),
  (163, 'La Mimolette vieille', 163),
  (164, 'Reblochon', 164),
  (165, 'Le roquefort', 165),
  (166, 'Saint-nectaire', 166),
  (167, 'Le dauphin', 167),
  (168, 'Le figou', 168),
  (169, 'Le saint-marcellin', 169),
  (170, 'La tomme de Savoie', 170),
  (171, 'Beaufort', 171),
  (172, 'Brillat-savarin', 172),
  (173, 'Le coulommiers', 173),
  (174, 'Le livarot', 174),
  (175, 'Le morbier', 175),
  (176, 'Le laguiole', 176),
  (177, '400', 177),
  (178, 'Le munster', 178),
  (179, 'Le barousse', 179),
  (180, 'Le Curé nantais', 180),
  (265, 'Une pierre', 1),
  (266, 'Tom', 2),
  (267, 'Une orque', 3),
  (268, 'Félix', 4),
  (269, 'Alex', 5),
  (270, 'Hector', 6),
  (271, 'Titi', 7),
  (272, 'Pluto', 8),
  (273, 'Titi', 9),
  (274, 'Un mouton', 10),
  (275, 'Un écureuil', 11),
  (276, 'Mozart', 12),
  (277, 'Berger allemand', 13),
  (278, 'Une girafe', 14),
  (279, 'L''Affranchi', 15),
  (280, 'Hola Ginola', 16),
  (281, 'Rouky', 17),
  (282, 'Figaro', 18),
  (283, 'Un cafard', 19),
  (284, 'Gaston Lagaffe', 20),
  (285, 'Un lion', 21),
  (286, 'Un renard', 22),
  (287, 'Simba', 23),
  (288, 'Gamera', 24),
  (289, 'Snoopy', 25),
  (290, 'Belle', 26),
  (291, 'Bébert', 27),
  (292, 'Silver', 28),
  (293, 'Babe', 29),
  (294, 'Brunswick', 30),
  (295, 'Pacanier', 31),
  (296, 'Saindoux', 32),
  (297, 'On les écrase', 33),
  (298, 'Blanc', 34),
  (299, 'Lindt', 35),
  (300, 'La paralysie', 36),
  (301, 'Au lait', 37),
  (302, 'Isabelle Adjani', 38),
  (303, 'Caboche', 39),
  (304, 'Blanc', 40),
  (305, 'Les Incas', 41),
  (306, 'Une dizaine', 42),
  (307, 'Le Brésil', 43),
  (308, 'Le lait', 44),
  (309, 'La Suisse', 45),
  (310, 'Quatre', 46),
  (311, 'La Belgique', 47),
  (312, 'De Bolivie', 48),
  (313, 'Noir', 49),
  (314, '200', 50),
  (315, 'Un décès', 51),
  (316, 'Les Africains', 52),
  (317, 'En Italie', 53),
  (318, '10 000', 54),
  (319, 'Christophe Colomb', 55),
  (320, 'Origine', 56),
  (321, 'La tasse', 57),
  (322, 'Le crabe', 58),
  (323, 'Chocolat noir', 59),
  (324, 'Jeunesse', 60),
  (325, 'Steeve Jobs', 61),
  (326, 'Il est beau', 62),
  (327, 'Une marmotte', 63),
  (328, 'Rem', 64),
  (329, 'Zubuntu', 65),
  (330, 'iOS', 66),
  (331, 'Un progiciel', 67),
  (332, 'Comanche', 68),
  (333, 'Wilber', 69),
  (334, 'Type', 70),
  (335, '1993', 71),
  (336, 'Gentoo', 72),
  (337, 'Firefox', 73),
  (338, 'Debian', 74),
  (339, '.dev', 75),
  (340, 'Adduser', 76),
  (341, 'BSD', 77),
  (342, 'Red Hat', 78),
  (343, 'Ubuntu', 79),
  (344, 'K Window', 80),
  (345, 'Linus Torvalds', 81),
  (346, 'Mplayer', 82),
  (347, 'Pentax', 83),
  (348, 'Red Hat', 84),
  (349, 'SUSE', 85),
  (350, 'Le Venezuela', 86),
  (351, 'Jeffrey Lynch', 87),
  (352, 'Super Mario Kart', 88),
  (353, 'Game Gear', 89),
  (354, 'Serval', 90),
  (355, 'Yoda', 91),
  (356, 'Anakin Skywalker', 92),
  (357, 'Zodiak', 93),
  (358, 'L''Étoile qui tue', 94),
  (359, 'Leia Organa', 95),
  (360, 'De nodule', 96),
  (361, 'La lumière', 97),
  (362, 'Les friths', 98),
  (363, 'Luke Skywalker', 99),
  (364, 'Les faucons', 100),
  (365, 'Padme Amidala', 101),
  (366, 'Obi-Wan Kenobi', 102),
  (367, 'Il gagne le duel', 103),
  (368, 'Anakin Skywalker', 104),
  (369, 'Ki-Adi-Mundi', 105),
  (370, 'Dark Sidious', 106),
  (371, 'Anneau Solaire', 107),
  (372, 'Luke Skywalker', 108),
  (373, 'Dagobah', 109),
  (374, 'Jabba le Hutt', 110),
  (375, 'Meti-chlorien', 111),
  (376, 'Plus de 10 000', 112),
  (377, 'Dark Vador', 113),
  (378, '1 à 3', 114),
  (379, 'Bataille de Jaku', 115),
  (380, 'L''avoir retrouvé', 116),
  (381, 'Jabba le Hutt', 117),
  (382, 'Naboo', 118),
  (383, 'Luke Skywalker', 119),
  (384, '26 ans', 120),
  (385, 'La Chimay', 121),
  (386, 'Blonde', 122),
  (387, 'La Mort Subite', 123),
  (388, 'Bière Bio', 124),
  (389, 'Lupulus', 125),
  (390, 'Capsule', 126),
  (391, 'Bacchus', 127),
  (392, 'Blanche', 128),
  (393, 'Leffe', 129),
  (394, 'Ename', 130),
  (395, '25 cl', 131),
  (396, 'Rochefort 10', 132),
  (397, 'Ferdinand Ier', 133),
  (398, 'Couvin', 134),
  (399, 'Rouge', 135),
  (400, 'Chimay', 136),
  (401, 'Rochefort 10', 137),
  (402, 'Westmalle', 138),
  (403, 'Hair', 139),
  (404, 'La Barbar', 140),
  (405, 'Stout', 141),
  (406, 'Bosteels', 142),
  (407, 'Moinette', 143),
  (408, 'Un lion', 144),
  (409, 'Saison 1800', 145),
  (410, 'Ciney', 146),
  (411, 'Ambrée', 147),
  (412, 'Charles Quint', 148),
  (413, 'Caracole', 149),
  (414, 'Judas', 150),
  (415, 'Tomme du Jura', 151),
  (416, 'Chavroux', 152),
  (417, 'Reblochon', 153),
  (418, 'Le gruyère', 154),
  (419, 'Le fourme', 155),
  (420, 'Roquefort', 156),
  (421, 'Le brebis', 157),
  (422, 'Le brie', 158),
  (423, 'Le maroilles', 159),
  (424, 'Le livarot', 160),
  (425, 'Le brie', 161),
  (426, 'Cabecou', 162),
  (427, 'Le mouflon', 163),
  (428, 'Emmental', 164),
  (429, 'Le munster', 165),
  (430, 'Époisses', 166),
  (431, 'Le marsouin', 167),
  (432, 'La tomme de Savoie', 168),
  (433, 'Le saint-julien', 169),
  (434, 'Le vacherin', 170),
  (435, 'Cantal', 171),
  (436, 'Pélardon', 172),
  (437, 'Le charolais', 173),
  (438, 'Le fédou', 174),
  (439, 'Le savaron', 175),
  (440, 'Le barousse', 176),
  (441, '300', 177),
  (442, 'Le morbier', 178),
  (443, 'Le Curé nantais', 179),
  (444, 'Le boursin', 180),
  (520, 'Un os', 1),
  (521, 'Monica', 2),
  (522, 'Un kraken', 3),
  (523, 'Donald', 4),
  (524, 'Z', 5),
  (525, 'Taz', 6),
  (526, 'Manny', 7),
  (527, 'Beethoven', 8),
  (528, 'Bugs Bunny', 9),
  (529, 'Un chien', 10),
  (530, 'Un tatou', 11),
  (531, 'Chopin', 12),
  (532, 'Fox-terrier', 13),
  (533, 'Un chien', 14),
  (534, 'L''Iconoclaste', 15),
  (535, 'Santa Maria', 16),
  (536, 'Coyote', 17),
  (537, 'José', 18),
  (538, 'Une libellule', 19),
  (539, 'Tintin', 20),
  (540, 'Un ours', 21),
  (541, 'Un chien', 22),
  (542, 'Daisy', 23),
  (543, 'Donatello', 24),
  (544, 'Oscar', 25),
  (545, 'Jasmine', 26),
  (546, 'Simon', 27),
  (547, 'Sylvester', 28),
  (548, 'Grégoire', 29),
  (549, 'Karlsruhe', 30),
  (550, 'Cotonnier', 31),
  (551, 'Beurre salé', 32),
  (552, 'On les épluche', 33),
  (553, 'Au lait', 34),
  (554, 'Tobler', 35),
  (555, 'La cécité', 36),
  (556, 'Praliné', 37),
  (557, 'Karin Viard', 38),
  (558, 'Ciboulot', 39),
  (559, 'Au lait', 40),
  (560, 'Les Toltèques', 41),
  (561, 'Une centaine', 42),
  (562, 'Le Mexique', 43),
  (563, 'Le beurre', 44),
  (564, 'Le Brésil', 45),
  (565, 'Six', 46),
  (566, 'La France', 47),
  (567, 'Du Mozambique', 48),
  (568, 'Praliné', 49),
  (569, '2 000', 50),
  (570, 'Une naissance', 51),
  (571, 'Les Berbères', 52),
  (572, 'En Belgique', 53),
  (573, '1 000', 54),
  (574, 'Charcot', 55),
  (575, 'Premier choix', 56),
  (576, 'La crasse', 57),
  (577, 'Le homard', 58),
  (578, 'Chocolat au lait', 59),
  (579, 'Humour', 60),
  (580, 'Larry Ellison', 61),
  (581, 'Il est Finlandais', 62),
  (582, 'Un caribou', 63),
  (583, 'Del', 64),
  (584, 'Souze', 65),
  (585, 'Windows Phone', 66),
  (586, 'Un intégré', 67),
  (587, 'Siou', 68),
  (588, 'Gnu', 69),
  (589, 'Man', 70),
  (590, '1995', 71),
  (591, 'Mandriva', 72),
  (592, 'Netscape', 73),
  (593, 'SUSE', 74),
  (594, '.rss', 75),
  (595, 'Passwd', 76),
  (596, 'Mimix', 77),
  (597, 'Slackware', 78),
  (598, 'Red Hat', 79),
  (599, 'Z Window', 80),
  (600, 'John Von Neumann', 81),
  (601, 'Tomahawk', 82),
  (602, 'Panasonic', 83),
  (603, 'Ubuntu', 84),
  (604, 'Red Hat', 85),
  (605, 'Le Kenya', 86),
  (606, 'Rob Janoff', 87),
  (607, 'Zelda', 88),
  (608, 'N-Gage', 89),
  (609, 'Panther', 90),
  (610, 'Mace Windu', 91),
  (611, 'Jabba', 92),
  (612, 'Table ronde', 93),
  (613, 'La Lune obscure', 94),
  (614, 'Madpe', 95),
  (615, 'De acklay', 96),
  (616, 'Le langage droïde', 97),
  (617, 'Les Ch''tis', 98),
  (618, 'Chewbacca', 99),
  (619, 'Les Bantha', 100),
  (620, 'Valorum', 101),
  (621, 'Luke Skywalker', 102),
  (622, 'Yoda tue Dooku', 103),
  (623, 'Qui Go Jin', 104),
  (624, 'Plo Koon', 105),
  (625, 'Dark Pantouf', 106),
  (626, 'Intergalactique', 107),
  (627, 'Obi-Wan Kenobi', 108),
  (628, 'Naboo', 109),
  (629, 'Han Solo', 110),
  (630, 'Chlorydrate', 111),
  (631, 'Plus de 5 000', 112),
  (632, 'Dark Bane', 113),
  (633, '3 et 4', 114),
  (634, 'Bataille de Coruscant', 115),
  (635, 'L''avoir trahi', 116),
  (636, 'Boba Fett', 117),
  (637, 'Utapau', 118),
  (638, 'La princesse Leia', 119),
  (639, '24 ans', 120),
  (640, 'La Leffe', 121),
  (641, 'Ambrée', 122),
  (642, 'La Stella', 123),
  (643, 'Trappiste', 124),
  (644, 'Bacchus', 125),
  (645, 'Bouchon de liège', 126),
  (646, 'Corsendonck', 127),
  (647, 'Bleue', 128),
  (648, 'Bush', 129),
  (649, 'Caracole', 130),
  (650, '50 cl', 131),
  (651, 'Rocherfort 8', 132),
  (652, 'Philippe II', 133),
  (653, 'Verviers', 134),
  (654, 'Verte', 135),
  (655, 'Duvel', 136),
  (656, 'Chimay', 137),
  (657, 'St. Bernardus', 138),
  (658, 'Bloody Mary', 139),
  (659, 'La Durboyse', 140),
  (660, 'Pils', 141),
  (661, 'Liefmans', 142),
  (662, 'Rochefort', 143),
  (663, 'Un ours', 144),
  (664, 'Saison 1700', 145),
  (665, 'Zulte', 146),
  (666, 'Brune', 147),
  (667, 'St Feuillien', 148),
  (668, 'Moinette', 149),
  (669, 'Palm', 150),
  (670, 'Petit chèvre', 151),
  (671, 'Saint-paulin', 152),
  (672, 'Emmental', 153),
  (673, 'Le roquefort', 154),
  (674, 'Le demi-sel', 155),
  (675, 'Gruyère', 156),
  (676, 'Le beaufort', 157),
  (677, 'Le gruyère', 158),
  (678, 'Le coulommiers ', 159),
  (679, 'Le savaron', 160),
  (680, 'Le morbier', 161),
  (681, 'Petit-suisse', 162),
  (682, 'Le pavé du Nord', 163),
  (683, 'Roquefort', 164),
  (684, 'Le brie', 165),
  (685, 'Roquefort', 166),
  (686, 'Le wallaby', 167),
  (687, 'Le saint-nectaire', 168),
  (688, 'Le saint-siméon', 169),
  (689, 'Le vieux moulin', 170),
  (690, 'Livernon', 171),
  (691, 'Mélusine', 172),
  (692, 'Le chevrotin', 173),
  (693, 'Le livernon', 174),
  (694, 'Le trou du Cru', 175),
  (695, 'Le livarot', 176),
  (696, '200', 177),
  (697, 'Le savaron', 178),
  (698, 'Le mouflon', 179),
  (699, 'Le charolais', 180),
  (775, 'Une bille', 1),
  (776, 'Jennifer', 2),
  (777, 'Un piranha', 3),
  (778, 'Mortimer', 4),
  (779, 'Simba', 5),
  (780, 'Sylvestre', 6),
  (781, 'Grosminet', 7),
  (782, 'Droopy', 8),
  (783, 'Elmer Fudd', 9),
  (784, 'Une chèvre', 10),
  (785, 'Un castor', 11),
  (786, 'Brahms', 12),
  (787, 'Jack Russel', 13),
  (788, 'Un cerf', 14),
  (789, 'Le malin', 15),
  (790, 'Bravo Sammy', 16),
  (791, 'Kaa', 17),
  (792, 'André', 18),
  (793, 'Une araignée', 19),
  (794, 'Astérix', 20),
  (795, 'Un tigre', 21),
  (796, 'Un kangourou', 22),
  (797, 'Aurore', 23),
  (798, 'Caroline', 24),
  (799, 'Scooby', 25),
  (800, 'Dolly', 26),
  (801, 'Choupette', 27),
  (802, 'Denver', 28),
  (803, 'Jonathan', 29),
  (804, 'Mannheim', 30),
  (805, 'Palmier', 31),
  (806, 'Beurre gras', 32),
  (807, 'On les tord', 33),
  (808, 'Praliné', 34),
  (809, 'Jacobs', 35),
  (810, 'Le diabète', 36),
  (811, 'Blanc', 37),
  (812, 'Judith Godrèche', 38),
  (813, 'Carabosse', 39),
  (814, 'Praliné', 40),
  (815, 'Les Otomis', 41),
  (816, 'Un millier', 42),
  (817, 'Le Cameroun', 43),
  (818, 'Le sucre', 44),
  (819, 'Le Mexique', 45),
  (820, 'Huit', 46),
  (821, 'Le Portugal', 47),
  (822, 'De Madagascar', 48),
  (823, 'Au lait', 49),
  (824, '20 000', 50),
  (825, 'Un sacrifice', 51),
  (826, 'Les Aztèques', 52),
  (827, 'En France', 53),
  (828, '100', 54),
  (829, 'Foucauld', 55),
  (830, 'Label rouge', 56),
  (831, 'La nasse', 57),
  (832, 'La crevette', 58),
  (833, 'Chocolat blanc', 59),
  (834, 'Aventure', 60),
  (835, 'Bill Gates', 61),
  (836, 'Il est amusant', 62),
  (837, 'Un gnou', 63),
  (838, 'Delete', 64),
  (839, 'Mandrika', 65),
  (840, 'BlackBerry 10', 66),
  (841, 'Une logithèque', 67),
  (842, 'Mohican', 68),
  (843, 'Puffy', 69),
  (844, 'Ls', 70),
  (845, '1997', 71),
  (846, 'Fedora', 72),
  (847, 'Chrome', 73),
  (848, 'Slackwave', 74),
  (849, '.rpm', 75),
  (850, 'Mkaccount', 76),
  (851, 'iOS', 77),
  (852, 'Fedora', 78),
  (853, 'Mandriva', 79),
  (854, 'L Window', 80),
  (855, 'Alan Cox', 81),
  (856, 'Spotify', 82),
  (857, 'Nikon', 83),
  (858, 'Mandriva', 84),
  (859, 'Ubuntu', 85),
  (860, 'La Finlande', 86),
  (861, 'Wes Wilson', 87),
  (862, 'Splinter Cell', 88),
  (863, 'GP32', 89),
  (864, 'Longhorn', 90),
  (865, 'Leia', 91),
  (866, 'Yado', 92),
  (867, 'Samourai', 93),
  (868, 'Le côté obscur', 94),
  (869, 'Obiwana', 95),
  (870, 'De nexu', 96),
  (871, 'L''immortalité', 97),
  (872, 'Les Vicks', 98),
  (873, 'Obi-Wan Kenobi', 99),
  (874, 'Les Gungans', 100),
  (875, 'Yoda', 101),
  (876, 'Anakin Skywalker', 102),
  (877, 'Dooku lui file sa toux', 103),
  (878, 'Obiwan Kenobi', 104),
  (879, 'Adi Gallia', 105),
  (880, 'Dark Leouf', 106),
  (881, 'Enterprise', 107),
  (882, 'Dark Vador', 108),
  (883, 'Mustafar', 109),
  (884, 'Zam Wesell', 110),
  (885, 'Chlori-Metica', 111),
  (886, 'Plus de 1 000', 112),
  (887, 'Dark Tyranus', 113),
  (888, '2 et 3', 114),
  (889, 'Bataille de Naboo', 115),
  (890, 'L''avoir aimé', 116),
  (891, 'Watto', 117),
  (892, 'Malastare', 118),
  (893, 'Han Solo', 119),
  (894, '30 ans', 120),
  (895, 'La Duvel', 121),
  (896, 'Noire', 122),
  (897, 'La Tongerlo', 123),
  (898, 'Swiss Made', 124),
  (899, 'Duvel', 125),
  (900, 'Bouchon à visser', 126),
  (901, 'Floreffe', 127),
  (902, 'Rouge', 128),
  (903, 'Kriek', 129),
  (904, 'Affligem', 130),
  (905, '75 cl', 131),
  (906, 'Rocherfort 6', 132),
  (907, 'Charles VI', 133),
  (908, 'Waremme', 134),
  (909, 'Jaune', 135),
  (910, 'Barbar', 136),
  (911, 'Orval', 137),
  (912, 'Vedett', 138),
  (913, 'Born This Way', 139),
  (914, 'La Maes', 140),
  (915, 'Triple', 141),
  (916, 'Van Steenberge', 142),
  (917, 'Gordon', 143),
  (918, 'Un éléphant', 144),
  (919, 'Saison 1600', 145),
  (920, 'Affligem', 146),
  (921, 'Noire', 147),
  (922, 'Grimbergen', 148),
  (923, 'Rochefort', 149),
  (924, 'Rochefort', 150),
  (925, 'Palet du Poitou', 151),
  (926, 'Époisses', 152),
  (927, 'Roquefort', 153),
  (928, 'Le cantal', 154),
  (929, 'Le chèvre', 155),
  (930, 'Brie', 156),
  (931, 'La figuette', 157),
  (932, 'Le roquefort', 158),
  (933, 'Le saint-marcellin', 159),
  (934, 'Le beaufort', 160);

INSERT INTO
  "answer" ("id", "description", "question_id")
VALUES
  (935, 'Le munster', 161),
  (936, 'Roquefort', 162),
  (937, 'La rigotte', 163),
  (938, 'Gruyère', 164),
  (939, 'Le beaufort', 165),
  (940, 'Livernon', 166),
  (941, 'Le lapin', 167),
  (942, 'Le petit chèvre', 168),
  (943, 'Le saint-paulin', 169),
  (944, 'La rigotte', 170),
  (945, 'Reblochon', 171),
  (946, 'Gaperon', 172),
  (947, 'Le civray', 173),
  (948, 'Le montbriac', 174),
  (949, 'Le vachard', 175),
  (950, 'Le fédou', 176),
  (951, '100', 177),
  (952, 'Le trou du Cru', 178),
  (953, 'Le munster', 179),
  (954, 'La figuette', 180);

--
-- Déchargement des données de la table "users"
--
INSERT INTO
  "user" (
    "id",
    "firstname",
    "lastname",
    "email",
    "password"
  )
VALUES
  (
    1,
    'Philippe',
    'Candille',
    'philippe@oclock.io',
    '$2b$10$7vwYGrz2TGeyG4X8YnD9BOag9I.YKGUTJELs64qGmcK/syHu2BzTG'
  ),
  (
    3,
    'Chuck',
    'Norris',
    'chuck@oclock.io',
    '$2b$10$7vwYGrz2TGeyG4X8YnD9BOag9I.YKGUTJELs64qGmcK/syHu2BzTG'
  );

--
-- Déchargement des données de la table "levels"
--
INSERT INTO
  "level" ("id", "name")
VALUES
  (1, 'Débutant'),
  (2, 'Confirmé'),
  (3, 'Expert');

--
-- Déchargement des données de la table "quiz"
--
INSERT INTO
  "quiz" ("id", "title", "description", "user_id")
VALUES
  (
    1,
    'Animaux célèbres - I',
    'Tantôt effrayants, tdropantôt drôles.',
    1
  ),
  (
    2,
    'Le chocolat - I',
    'Bon pour le moral, un peu moins pour le foie.',
    1
  ),
  (
    3,
    'Linux - I',
    'Non, ce n''est pas un pingouin!',
    1
  ),
  (4, 'Star Wars - I', 'La légende continue.', 1),
  (
    5,
    'Les bières belges - I',
    'Patrimoine exporté dans le monde entier',
    3
  ),
  (
    6,
    'Les fromages de France - I',
    'Près de 1000 fromages différents',
    3
  ),
  (
    7,
    'Animaux célèbres - II',
    'Tantôt effrayants, tantôt drôles.',
    1
  ),
  (
    8,
    'Animaux célèbres - III',
    'Tantôt effrayants, tantôt drôles.',
    1
  ),
  (
    9,
    'Le chocolat - II',
    'Bon pour le moral, un peu moins pour le foie.',
    3
  ),
  (
    10,
    'Le chocolat - III',
    'Bon pour le moral, un peu moins pour le foie.',
    1
  ),
  (
    11,
    'Linux - II',
    'Non, ce n''est pas un pingouin!',
    3
  ),
  (
    12,
    'Linux - III',
    'Non, ce n''est pas un pingouin!',
    3
  ),
  (13, 'Star Wars - II', 'La légende continue.', 1),
  (14, 'Star Wars - III', 'La légende continue.', 1),
  (
    15,
    'Les bières belges - II',
    'Patrimoine exporté dans le monde entier',
    3
  ),
  (
    16,
    'Les bières belges - III',
    'Patrimoine exporté dans le monde entier',
    3
  ),
  (
    17,
    'Les fromages de France - II',
    'Près de 1000 fromages différents',
    3
  ),
  (
    18,
    'Les fromages de France - III',
    'Près de 1000 fromages différents',
    3
  );

--
-- Déchargement des données de la table "question"
--
INSERT INTO
  "question" (
    "id",
    "quiz_id",
    "question",
    "level_id",
    "anecdote",
    "wiki",
    "answer_id"
  )
VALUES
  (
    1,
    1,
    'Dans le film d''animation L''Âge de glace, qu''est-ce qui échappe à l''écureuil Scrat ?',
    1,
    'À l''occasion de la sortie de L''Âge de glace 4, Scrat a eu son double de cire au Musée Grévin le 20 juin 2012.',
    'Scrat',
    1
  ),
  (
    2,
    7,
    'Comment se nomme l''orque à sauver dans une saga cinématographique populaire ?',
    1,
    'Si les deuxième et troisième films sont des suites du premier, le 4e n''a aucun lien avec le reste et est en quelque sorte un reboot.',
    'Sauvez_Willy_(série_de_films)',
    2
  ),
  (
    3,
    8,
    'Dans le film Les Dents de la mer, quel animal provoque la terreur sur l''île d''Amity ?',
    1,
    'Les Dents de la mer est un film charnière qui a rétrospectivement été considéré comme le premier des blockbusters américains.',
    'Les_Dents_de_la_mer',
    3
  ),
  (
    4,
    1,
    'Quel personnage de Disney, ami de Mickey Mouse, est un chien anthropomorphe très maladroit ?',
    1,
    'À partir des années 1990, Dingo est devenu papa dans une série télévisée dans laquelle son fils se prénomme Max.',
    'Dingo_(Disney)',
    4
  ),
  (
    5,
    7,
    'Dans un film d''animation de Disney, comment se nomme le renardeau ami d''un chien de chasse ?',
    1,
    'Rox et Rouky est le dernier dessin animé de Disney commençant par un générique complet et finissant par « The End ».',
    'Rox_et_Rouky',
    5
  ),
  (
    6,
    8,
    'Quel est le nom du chien de Mickey, apparenté à la race des Saint-Hubert ?',
    1,
    'Dessiné par Norman Ferguson, Pluto est considéré comme l''un des premiers personnages Disney à sortir du modèle standard.',
    'Pluto_(Disney)',
    6
  ),
  (
    7,
    1,
    'Dans le célèbre dessin animé, qui le chat Tom poursuit-il sans cesse ?',
    1,
    'Malgré sa popularité très acclamée, les courts-métrages Tom et Jerry ont fait l''objet de nombreuses controverses.',
    'Tom_et_Jerry',
    7
  ),
  (
    8,
    7,
    'Quel chien peureux a pour compagnons Samy, Daphné, Véra et Fred ?',
    1,
    'Une gamme Lego est sortie en 2015 avec six produits inspirés de différents épisodes et fi de Scooby-Do.',
    'Scooby-Doo',
    8
  ),
  (
    9,
    8,
    'Parmi ces personnages des Looney Tunes, lequel est un canard ?',
    1,
    'Daffy Ducka « sévi » dans 126 dessins animés jusqu''en 1968 au cinéma avant d''en disparaître totalement.',
    'Daffy_Duck',
    9
  ),
  (
    10,
    1,
    'Dans les deux films Babe, quel animal campe le personnage principal ?',
    1,
    'Babe eut l''idée tout à fait farfelue de devenir chien de berger, ou plutôt « cochon de berger ».',
    'Babe',
    10
  ),
  (
    11,
    7,
    'Dans le film Le Roi Lion, quel animal est Timon, le grand ami de Pumbaa ?',
    2,
    'Le suricate est toujours là quand on a besoin de lui, mais il est très souvent ailleurs quand on est avec lui.',
    'Timon_(Disney)',
    11
  ),
  (
    12,
    8,
    'Quel nom de compositeur désigne aussi un saint-bernard héros de films ?',
    2,
    'Le chien fut baptisé Beethoven parce qu''il a aboyé à la symphonie n°5 de Ludwig van Beethoven.',
    'Beethoven_(série_de_films)',
    12
  ),
  (
    13,
    1,
    'Des spécimens de quelle race de chiens intéressent tout particulièrement Cruella d''Enfer ?',
    2,
    'Le personnage de Cruella d''Enfer fut en partie inspiré par Tallulah Bankhead, dont certaines excentricités furent reprises dans le film.',
    'Cruella_d''Enfer',
    13
  ),
  (
    14,
    7,
    'Dans un film d''animation de Disney, quel animal est moqué pour ses grandes oreilles ?',
    2,
    'Un message d''espoir est délivré par l''histoire : « quand on fait de son mieux, on en retire quelque chose de bien à la fin ».',
    'Dumbo',
    14
  ),
  (
    15,
    8,
    'Quel cheval de selle autrichien Napoléon Bonaparte a-t-il emporté avec lui sur l''île d''Elbe ?',
    2,
    'Également surnommé Wagram en l''honneur de la bataille du même nom, Napoléon l''appréciait énormément.',
    'L''Ingénu_(cheval)',
    15
  ),
  (
    16,
    1,
    'Quelle marque est représentée par un chat blanc généralement habillé de couleur rose ?',
    2,
    'Selon le profil officiel de Hello Kitty, cette dernière se nomme Kitty White et est née à Londres, en Angleterre.',
    'Hello_Kitty',
    16
  ),
  (
    17,
    7,
    'Dans les films d''animation en pâte à modeler, qui est le partenaire canin de Wallace ?',
    2,
    'Tous les personnages sont en plasticine et les scènes sont animées image par image (stop motion).',
    'Wallace_et_Gromit',
    17
  ),
  (
    18,
    8,
    'Comment s''appelle le chat noir et blanc, héros d''une pub pour de la nourriture pour chats ?',
    2,
    'Felix ne prend pas d''accent, principalement en raison de l''internationalisation des marques.',
    'Purina',
    18
  ),
  (
    19,
    1,
    'Dans le film d''animation de Pixar 1001 Pattes, quel insecte est Tilt, le personnage principal ?',
    2,
    'Woody le cow-boy héros du film d''animation Toy Story est apparu dans le bêtisier du générique de fin.',
    '1001_pattes',
    19
  ),
  (
    20,
    7,
    'Auprès de quel héros de BD le chien inefficace Rantanplan s''est-il illustré ?',
    2,
    'Rantanplan appartient à l''administration pénitentiaire, et a pour maître, le gardien Pavlov (en référence au fameux réflexe).',
    'Rantanplan',
    20
  ),
  (
    21,
    8,
    'Dans la film d''animation Robin des Bois, quel animal est Robin des Bois ?',
    3,
    'La réalisation de Robin des Bois sera marquée par la réutilisation d''éléments d''animation des précédentes productions Disney.',
    'Robin_des_Bois_(film,_1973)',
    21
  ),
  (
    22,
    1,
    'De quel animal prénommé Roger veut-on « la peau » dans un film d''animation ?',
    3,
    'Zemeckis dira de Roger qu''il a « un corps de chez Disney, une tête de chez Warner et une attitude à la Tex Avery ».',
    'Roger_Rabbit',
    22
  ),
  (
    23,
    7,
    'Dans le roman de Cécile Aubry, quelle chienne Sébastien recueille-t-il dans son village ?',
    3,
    'Belle et Sébastien a fait l''objet d''une adaptation en feuilleton télévisé, d''une série d''animation japonaise et de deux films.',
    'Belle_et_Sébastien',
    23
  ),
  (
    24,
    8,
    'Quelle tortue sait « compter deux par deux et lacer ses chaussures » ?',
    3,
    'Dans chaque épisode, Franklin a un dilemme qu''il résout toujours à la fin, permettant aux enfants de s''identifier au personnage.',
    'Franklin_(série_télévisée)',
    24
  ),
  (
    25,
    1,
    'Quel chien est devenu le rival du chat Socks en tant qu''animal de compagnie de la famille Clinton ?',
    3,
    'Les parents Clinton ont adopté un labrador nommé Buddy en hommage à l''oncle de Bill qui vient de décéder.',
    'Animaux_domestiques_des_présidents_des_États-Unis',
    25
  ),
  (
    26,
    7,
    'Dans Peter Pan, comment se nomme la chienne de Wendy, John et Michael ?',
    3,
    'Peter Pan est un personnage créé par l''auteur écossais J. M. Barrie, apparu pour la première fois en 1902.',
    'Peter_Pan',
    26
  ),
  (
    27,
    8,
    'Quel célèbre chat a une langue qui pend en permanence suite à une malformation ?',
    3,
    'La célèbre chatte est apparue dans un spot de l''ONG Greenpeace à l''occasion de la Journée internationale des tigres.',
    'Lil_Bub',
    27
  ),
  (
    28,
    1,
    'Dans le dessin animé Dora l''exploratrice, comment s''appelle le renard voleur ?',
    3,
    'Par ce biais de ce méchant renard voleur, la série tente de faire distinguer aux enfants le bien du mal.',
    'Dora_l''exploratrice',
    28
  ),
  (
    29,
    7,
    'Quel cochon Martin Veyron et Jean-Marc Rochette ont-ils inventé pour une BD humoristique ?',
    3,
    'Le style de cette série à l''humour cru et hilarant se situe entre l''underground américain et la tradition animalière française.',
    'Edmond_le_cochon',
    29
  ),
  (
    30,
    8,
    'Dans l''aquarium de quelle ville allemande Paul le poulpe a-t-il eu son heure de gloire ?',
    3,
    'Paul était renommé pour le spectacle de ses prédictions du résultat des matchs de léquipe d''Allemagne de football.',
    'Paul_le_poulpe',
    30
  ),
  (
    31,
    2,
    'À partir de la fève de quel arbre le chocolat est-il produit ?',
    1,
    'Les fèves de cacao sont extraites des baies, que l''on ouvre à la récolte et que l''on met à sécher.',
    'Fève_de_cacao',
    31
  ),
  (
    32,
    9,
    'Quel beurre est extrait de la pâte de cacao liquide servant à la création du chocolat ?',
    1,
    'Le beurre de cacao est une des graisses les plus stables connues, contenant des antioxydants naturels.',
    'Beurre_de_cacao',
    32
  ),
  (
    33,
    10,
    'Que fait-on quand on torréfie les fèves de cacao pour la préparation du chocolat ?',
    1,
    'La torréfaction, c''est-à-dire un chauffage de 140 à 160 °C pendant 20 à 30 minutes, permet le développement des arômes du cacao.',
    'Fève_de_cacao',
    33
  ),
  (
    34,
    2,
    'Quel chocolat, parfois mélangé avec des épices, contient le moins de sucre ?',
    1,
    'La qualité du chocolat noir dépend des ingrédients utilisés, et de son pourcentage en cacao.',
    'Chocolat_noir',
    34
  ),
  (
    35,
    9,
    'En 1825, quel Suisse a créé une désormais célèbre fabrique de chocolat ?',
    1,
    'Philippe Suchard débuta dans la confiserie en 1825 à Neuchâtel et se lanca dans le chocolat à Serrières en 1826.',
    'Philippe_Suchard',
    35
  ),
  (
    36,
    10,
    'Que provoque la consommation de chocolat chez la plupart des animaux de compagnie ?',
    1,
    'Le chocolat contient de la théobromine, un produit semblable à la caféine que leur métabolisme ne permet pas d''éliminer.',
    'Chocolat',
    36
  ),
  (
    37,
    2,
    'Quel chocolat, riche en acides gras saturés, est le plus amère ?',
    1,
    'Le chocolat noir, qui contient peu de cholesterol et très peu de sodium, est une bonne source de magnésium.',
    'Chocolat_noir',
    37
  ),
  (
    38,
    9,
    'Qui incarne la chocolatière dans le film adapté du roman Le chocolat de Joanne Harris ? ',
    1,
    'En 1959, durant le carême, une jeune femme et sa fille reprennent la vieille pâtisserie pour ouvrir une chocolaterie.',
    'Le_Chocolat',
    38
  ),
  (
    39,
    10,
    'Comment appelle-t-on le fruit du cacaoyer, se présentant sous la forme d''une baie ?',
    1,
    'Les cabosses se trouvent sur le tronc et les grosses branches, et non pas sur les rameaux jeunes.',
    'Cabosse',
    39
  ),
  (
    40,
    2,
    'Quel chocolat, généralement préféré par les puristes, ne contient pas de lait ?',
    1,
    'Réglementairement, le chocolat noir doit contenir au moins 35 % de cacao, sans limite supérieure pour la concentration de cacao.',
    'Chocolat_noir',
    40
  ),
  (
    41,
    9,
    'De quel peuple le chocolat serait-il originaire, l''associant à leur dieu de la fertilité ?',
    2,
    'Les Aztèques associaient le chocolat avec Xochiquetzal (qui a donné son nom au chocolat), la déesse de la fertilité.',
    'Chocolat',
    41
  ),
  (
    42,
    10,
    'Combien trouve-t-on environ de fèves de cacao dans une cabosse ?',
    2,
    'La cabosse a une forme allongée et ressemble à un concombre assez rebondi.',
    'Cabosse',
    42
  ),
  (
    43,
    2,
    'Quel est le premier pays producteur de cacao, loin devant le Ghana et l''Indonésie ?',
    2,
    'La production de cacao était en 2006 de 4.06 millions de tonnes, en hausse constante depuis 2003.',
    'Cacao',
    43
  ),
  (
    44,
    9,
    'Quel élément différencie le chocolat blanc des autres chocolats ?',
    2,
    'Le chocolat blanc a d''abord été distribué en Amérique en 1948 avec l''introduction des barres de chocolat « blanc alpin » Nestlé.',
    'Chocolat_blanc',
    44
  ),
  (
    45,
    9,
    'Dans quel pays a été fabriquée la première tablette de chocolat ?',
    2,
    'Les premières plaques de chocolat ont été baptisées « Chocolat délicieux à manger ».',
    'Tablette_de_chocolat',
    45
  ),
  (
    46,
    2,
    'Combien peut-on faire de récoltes par an sur un cacaoyer en bonne santé ?',
    2,
    'La maturation des fruits du cacaoyer dure, selon les génotypes, de cinq à sept mois.',
    'Cacaoyer',
    46
  ),
  (
    47,
    9,
    'Quel pays européen est le plus grand consommateur de chocolat ?',
    2,
    'Les variantes au lait et fondant ont été créées respectivement par Daniel Peter en 1875 et Rudolf Lindt en 1879.',
    'Suisse',
    47
  ),
  (
    48,
    9,
    'De quel pays le cacaoyer, domestiqué il y a environ 3 000 ans, est-il originaire ?',
    2,
    'Le cacaoyer fut très probablement domestiqué au départ pour la confection d''une boisson fermentée, donc alcoolisée.',
    'Cacaoyer',
    48
  ),
  (
    49,
    2,
    'Quel chocolat, devant contenir au minimum 20 % de beurre de cacao, est le plus sucré ?',
    2,
    'Le chocolat blanc a été produit pour la première fois par Nestlé en Suisse dans les années 1930.',
    'Chocolat_blanc',
    49
  ),
  (
    50,
    9,
    'Combien de cabosses un cacaoyer peut-il produire en moyenne ?',
    2,
    'Chaque cabosse, ressemblant à un petit ballon de football américain, peut peser jusqu''à 400 g pour 15 à 20 cm de long.',
    'Cacaoyer',
    50
  ),
  (
    51,
    10,
    'Pour les préliminaires de quel événement les Mayas se servent-ils du chocolat ?',
    3,
    'Le cacao purifie aussi les enfants mayas lors de cérémonies ou accompagne le défunt pour son voyage vers l''au-delà.',
    'Chocolat',
    51
  ),
  (
    52,
    2,
    'Quelle civilisation précolombienne a la première cultivé le cacao ?',
    3,
    'La culture olmèque demeure inconnue jusqu''à la deuxième moitié du XIXe siècle.',
    'Olmèques',
    52
  ),
  (
    53,
    9,
    'Dans quel pays d''Europe a-t-on commencé à consommer du chocolat ?',
    3,
    'Ce n''est qu''à partir de la conquête des Aztèques par les Espagnols que le chocolat fut importé en Europe.',
    'Chocolat',
    53
  ),
  (
    54,
    10,
    'Combien de fleurs un cacaoyer peut-il produire annuellement ?',
    3,
    'Les fleurs apparaissent toute l''année sur des renflements du bois de l''arbre, appelés « coussinets floraux ».',
    'Cacaoyer',
    54
  ),
  (
    55,
    2,
    'Quel explorateur a rapporté le cacao en Europe en 1528 ?',
    3,
    'Hernán Cortés s''est emparé de l''Empire aztèque pour le compte de Charles Quint, roi de Castille et empereur romain germanique.',
    'Hernán_Cortés',
    55
  ),
  (
    56,
    9,
    'Quel chocolat noir est issu de cacao d''une seule plantation ?',
    3,
    'En France, c''est l''Institut national de l''origine et de la qualité qui classifie la qualité des chocolats.',
    'Chocolat_noir',
    56
  ),
  (
    57,
    10,
    'Quelle substance est obtenue après broyage des fèves du cacaoyer ?',
    3,
    'Les fèves de cacao contiennent environ 50 % de matière grasse appelée « beurre de cacao ».',
    'Fève_de_cacao',
    57
  ),
  (
    58,
    2,
    'Une fois la masse de cacao pressée, quel produit est utilisé pour faire du cacao en poudre ?',
    3,
    'Deux procédés de trituration sont possibles : la pression discontinue à froid et la pression continue à chaud.',
    'Tourteau_(résidu)',
    58
  ),
  (
    59,
    9,
    'Laura Esquivel, écrivaine mexicaine contemporaine, a publié un livre intitulé...',
    3,
    'Laura Esquivel est un auteur qui cherche constamment de nouveaux et originaux chemins dans ses uvres.',
    'Laura_Esquivel',
    59
  ),
  (
    60,
    10,
    'Dans quel rayon BD peut-on trouver l''album Fraise et chocolat ?',
    3,
    'Aurélia Aurita est une auteure de bande dessinée française d''origine chinoise et khmère.',
    'Aurélia_Aurita_(bande_dessinée)',
    60
  ),
  (
    61,
    3,
    'Quel programmeur a créé et continue de diriger le développement du noyau de Linux ?',
    1,
    'Linus a découvert l''informatique vers l''âge de 11 ans grâce à l''ordinateur de son grand-père, un Commodore VIC-20.',
    'Linus_Torvalds',
    61
  ),
  (
    62,
    11,
    'Quel est le principal atout de Linux, développé et maintenu par Linus Torvalds ?',
    1,
    'Linux est le nom couramment donné à tout système d''exploitation libre fonctionnant avec le noyau Linux.',
    'Linux',
    62
  ),
  (
    63,
    12,
    'Quel animal représentant Linux est aussi la mascotte de l''université d''Helsinki ?',
    1,
    'Dessiné en 1996, son usage est libre et se retrouve dans de très nombreux projets et logotypes liés à Linux.',
    'Tux',
    63
  ),
  (
    64,
    3,
    'Quelle commande Linux, basée sur la commande UNIX, utilise-t-on pour effacer un fichier ?',
    1,
    'De par la filiation avec UNIX, la ligne de commande est toujours disponible dans GNU/Linux, quelle que soit la distribution.',
    'Linux',
    64
  ),
  (
    65,
    12,
    'Laquelle de ces propositions désigne une distribution Linux fondée en 1993 ?',
    1,
    'Red Hat est l''une des entreprises dédiées aux logiciels Open Source les plus importantes et les plus reconnues.',
    'Red_Hat',
    65
  ),
  (
    66,
    12,
    'Quel système d''exploitation mobile majeur de l''industrie actuelle s''appuie sur un noyau Linux ?',
    1,
    'En 2015, Android est le système d''exploitation le plus utilisé dans le monde avec plus de 80 % de parts de marché.',
    'Android',
    66
  ),
  (
    67,
    3,
    'Sous Linux, comment appelle-t-on les logiciels assemblés autour du noyau ?',
    1,
    'Il existe une très grande variété de distributions, ayant chacune des objectifs et une philosophie particulière.',
    'Distribution_GNU/Linux',
    67
  ),
  (
    68,
    11,
    'Quel serveur web présent sous Linux est aussi présent sur les serveurs du monde entier ?',
    1,
    'Depuis avril 1996, selon l''étude permanente de Netcraft, Apache est devenu le serveur HTTP le plus répandu sur Internet.',
    'Apache_HTTP_Server',
    68
  ),
  (
    69,
    12,
    'Quel est le nom de la mascotte de Linux, connue de tous les passionnés du système d''exploitation ?',
    1,
    'Le dessin du personnage a été choisi à l''issue d''un concours organisé en 1996 remporté par Larry Ewing.',
    'Tux',
    69
  ),
  (
    70,
    3,
    'Parmi ces commandes Linux, laquelle affiche à l''écran le contenu d''un fichier texte ?',
    1,
    'La différence essentielle de Linux par rapport à d''autres systèmes d''exploitation concurrents est d''être un système d''exploitation libre.',
    'Linux',
    70
  ),
  (
    71,
    11,
    'En quelle année Linus Torvalds a-t-il livré la première version du noyau Linux ?',
    2,
    'En 1991, les compatibles PC dominent le marché des ordinateurs personnels et fonctionnent généralement sous MS-DOS ou Windows.',
    'Linux',
    71
  ),
  (
    72,
    12,
    'Quel ancien mot bantou désigne une célèbre distribution Linux ?',
    2,
    'Le nom de la distribution provient d''un ancien mot bantou qui signifie « Je suis ce que je suis grâce à ce que nous sommes tous ».',
    'Ubuntu',
    72
  ),
  (
    73,
    11,
    'Quel navigateur web et gestionnaire de fichiers est utilisé par défaut pour KDE ?',
    2,
    'Konqueror peut également afficher le contenu d''un serveur FTP, permettre de parcourir le réseau local et de visualiser des fichiers.',
    'Konqueror',
    73
  ),
  (
    74,
    3,
    'Quel nom porte la distribution française de Linux, une des plus simples à installer et à utiliser ?',
    2,
    'Ciblant à la fois le grand public et les professionnels, cette distribution GNU/Linux est construite autour de KDE.',
    'Mandriva_Linux',
    74
  ),
  (
    75,
    3,
    'Quel type de fichiers est pris en compte par le gestionnaires de paquets intégré à Ubuntu ?',
    2,
    'Par défaut, Ubuntu est installé avec une pluralité de logiciels libres tels que LibreOffice, Firefox, Thunderbird et Transmission.',
    'Ubuntu',
    75
  ),
  (
    76,
    11,
    'Sous Linux, quelle commande est utilisée pour créer un compte utilisateur ?',
    2,
    'Grâce à sa ligne de commande, scientifiques, ingénieurs et développeurs comptent parmi ses plus fréquents utilisateurs.',
    'Linux',
    76
  ),
  (
    77,
    11,
    'De quel projet sont tirés les outils gravitant autour de Linux ?',
    2,
    'GNU est un projet de système d''exploitation libre lancé en 1983 par Richard Stallman, puis maintenu par le projet GNU.',
    'GNU',
    77
  ),
  (
    78,
    12,
    'De quelle distribution Linux est dérivé le système d''exploitation Ubuntu ?',
    2,
    'Ancien développeur Debian, Mark Shuttleworth souhaitait une version plus facile d''accès pour les novices.',
    'Ubuntu',
    78
  ),
  (
    79,
    12,
    'Quelle est la plus ancienne distribution Linux encore maintenue à ce jour ?',
    2,
    'Slackware est une distribution Linux qui, à la différence d''autres distributions, a longtemps été maintenue par une seule personne.',
    'Slackware',
    79
  ),
  (
    80,
    11,
    'Quel environnement graphique de type « fenêtré » est utilisé sous Linux ?',
    2,
    'Cet environnement graphique gère l''interaction homme-machine par l''écran, la souris et le clavier de certains ordinateurs en réseau.',
    'X_Window_System',
    80
  ),
  (
    81,
    12,
    'Quel programmeur et militant du logiciel libre a créé le Projet GNU en 1984 ?',
    3,
    'Richard Stallman consacre la majeure partie de son temps à la promotion du logiciel libre auprès de divers publics.',
    'Richard_Stallman',
    81
  ),
  (
    82,
    3,
    'Quel lecteur multimédia ressemblant à Winamp est souvent utilisé sous Linux ?',
    3,
    'XMMS fut originellement codé sous le nom de X11Amp par Peter et Mikal Alm en novembre 1997, pour combler un manque sou Linux.',
    'XMMS',
    82
  ),
  (
    83,
    3,
    'Quelle société financée par l''entrepreneur sud-africain Mark Shuttleworth commandite Ubuntu ?',
    3,
    'Cette société, basée sur l''Île de Man, a été créée en 2004 et opère dans 30 pays différents et emploie 500 personnes.',
    'Canonical',
    83
  ),
  (
    84,
    3,
    'Avec quel acteur du monde Linux Microsoft a-t-il signé un accord d''importance ?',
    3,
    'Apparue au début de l''année 1994, SUSE est donc la plus ancienne distribution commerciale encore existante.',
    'SUSE',
    84
  ),
  (
    85,
    3,
    'La station spatiale internationale a abandonné Windows au profit de quelle distribution Linux ?',
    3,
    'Debian est utilisée comme base de nombreuses autres distributions telles que Knoppix et Ubuntu qui rencontrent un grand succès.',
    'Debian',
    85
  ),
  (
    86,
    11,
    'Quel pays utilise à ce jour le plus Linux comme système d''exploitation de bureau ?',
    3,
    'Les deux environnements GNOME et KDE, qui reposent sur des technologies communes, ont atteint une maturité certaine.',
    'Linux',
    86
  ),
  (
    87,
    11,
    'Quel graphiste a dessiné en 1996 le manchot Tux initial, mascotte du projet Linux ?',
    3,
    'Ce programmeur américain a réalisé la mascotte Tux avec l''aide du logiciel libre The GIMP.',
    'Larry_Ewing',
    87
  ),
  (
    88,
    11,
    'Lequel de ces jeux tourne nativement sous GNU/Linux ?',
    3,
    'Le jeu développé par id Software a également été publié sur Macintosh, sur Dreamcast, sur PlayStation 2 et sur Xbox Live Arcade.',
    'Quake_III_Arena',
    88
  ),
  (
    89,
    12,
    'Quelle console de jeu open source possède un système d''exploitation Linux compilé ?',
    3,
    'La Pandora est capable à ce jour de lancer Quake, Quake II et Quake III Arena sans ralentissement.',
    'Pandora_(console_portable)',
    89
  ),
  (
    90,
    12,
    'Comment fut initialement appelé le projet Linux, qui deviendra par la suite une marque déposée ?',
    3,
    'Le projet trouve son nom définitif grâce à Ari Lemmke qui héberge le travail de Linus Torvalds dans un répertoire nommé Linux.',
    'Linux',
    90
  ),
  (
    91,
    4,
    'Qui est le padawan du chevalier et maître Jedi Obi-Wan Kenobi ?',
    1,
    'Obi-Wan Kenobi est tout d''abord le padawan de Qui-Gon Jinn avant de devenir lui-même l''instructeur d''Anakin Skywalker.',
    'Obi-Wan_Kenobi',
    91
  ),
  (
    92,
    4,
    'Quel petit bonhomme vert a enseigné à Luke comment utiliser la Force ?',
    1,
    'Yoda est présent dans cinq épisodes sur les sept que compte la saga (I, II, III, V, VI).',
    'Yoda',
    92
  ),
  (
    93,
    4,
    'Dans la saga Star Wars, quels chevaliers se battent avec des sabres lasers ?',
    1,
    'L''Ordre Jedi est dirigé par le Conseil Jedi, qui se réunit sur la planète Coruscant.',
    'Jedi',
    93
  ),
  (
    94,
    13,
    'De quelle station spatiale ennemie la princesse Leia apprend-elle les plans de construction ?',
    1,
    'L''Étoile noire et l''Étoile de la mort sont deux stations spatiales sidérales mobiles de la taille d''une lune.',
    'Étoile_de_la_mort',
    94
  ),
  (
    95,
    13,
    'Personnage central de la saga Star Wars, avec qui Anakin Skywalker se marie-t-il ?',
    1,
    'Padmé Amidala Skywalker est née en 46 av. BY sur Naboo et morte en 19 av. BY sur Polis Massa.',
    'Padmé_Amidala',
    95
  ),
  (
    96,
    13,
    'Pour aider les Jedi a réparer leur vaisseau, Anakin doit gagner une course...',
    1,
    'Après une course acharnée et très disputée, Anakin parviendra finalement à remporter la victoire.',
    'Star_Wars,_épisode_I_:_La_Menace_fantôme',
    96
  ),
  (
    97,
    14,
    'Que contrôlent les Jedi qui les rendent très différents des simples humains ?',
    1,
    'Les chevaliers Jedi forment un ordre d''individus qui sont aptes à maîtriser la Force, et qui l''utilisent uniquement pour faire le bien.',
    'Jedi',
    97
  ),
  (
    98,
    14,
    'Quels puissants ennemis et « seigneurs » les Jedi pensent-ils avoir vaincu ?',
    1,
    'Les siths sont les ennemis jurés des Jedi dont ils constituent une menace pour la République Galactique.',
    'Sith',
    98
  ),
  (
    99,
    14,
    'De qui la princesse Leia tombe-t-elle amoureuse dans la saga Star Wars ?',
    1,
    'Han Solo est un contrebandier, pilote et ancien élève officier impérial qui dut déserter pour sauver Chewbacca.',
    'Han_Solo',
    99
  ),
  (
    100,
    4,
    'Quelle armée aidera les Jedi pour ensuite se retourner contre eux et les forces du mal ?',
    1,
    'L''Attaque des clones est l''un des premiers films à être tourné entièrement en numérique.',
    'Star_Wars,_épisode_II_:_L''Attaque_des_clones',
    100
  ),
  (
    101,
    4,
    'Quel chancelier suprême est seigneur noir des Sith et homme politique dans la série Star Wars ?',
    2,
    'Originaire de Naboo, Palpatine a été formé au côté obscur de la Force dès le plus jeune âge par son maître, Dark Plagueis.',
    'Palpatine',
    101
  ),
  (
    102,
    4,
    'De qui Chewbacca, le plus célèbre des guerriers Wookie, est-il le co-pilote ?',
    2,
    'Chewbacca fait partie du noyau de rebelles qui ont restauré la liberté dans la galaxie.',
    'Chewbacca',
    102
  ),
  (
    103,
    4,
    'Que se passe-t-il lorsqu''Anakin Skywalker affronte le compte Dooku la première fois ?',
    2,
    'Dooku fut l''héritier d''une famille d''aristocrates et diplomates de Serenno à la fortune colossale.',
    'Comte_Dooku',
    103
  ),
  (
    104,
    13,
    'Parmi ces personnages de Star Wars, qui dirige le conseil des Jedi avec Yoda ?',
    2,
    'En plus de sa réputation de sage, Windu est considéré comme l''un des meilleurs combattants au sabre laser de l''Ordre Jedi.',
    'Mace_Windu',
    104
  ),
  (
    105,
    13,
    'Quel maître Jedi d''Obi-Wan Kenobi sera finalement tué par Dark Maul ?',
    2,
    'Le personnage est interprété par Liam Neeson et doublé par Samuel Labarthe en France.',
    'Qui-Gon_Jinn',
    105
  ),
  (
    106,
    13,
    'Quel apprenti Sith Obi-Wan va-t-il tuer en vengeant la mort de son maître ?',
    2,
    'Le personnage de Dark Maul fut créé par l''illustrateur Iain Mccaig pour Industrial Light & Magic.',
    'Dark_Maul',
    106
  ),
  (
    107,
    13,
    'Quel nom porte le vaisseau spatial du contrebandier Han Solo ?',
    2,
    'Le Faucon Millénium fut appelé Millenium Condor dans la version française du premier épisode produit.',
    'Faucon_Millenium',
    107
  ),
  (
    108,
    14,
    'Qui tue Boba Fett, redoutable chasseur de primes connu pour son adresse à traquer sa proie ?',
    2,
    'On apprendra plus tard qu''il échappe à la digestion du Gerand Sarlacc et qu''il reviendra dans l''histoire.',
    'Boba_Fett',
    108
  ),
  (
    109,
    14,
    'Sur quelle planète vit Anakin avant de partir rejoindre les Jedi ?',
    2,
    'Située dans la Bordure extérieure, cette planète désertique est le refuge des plus vils brigands de la galaxie.',
    'Tatooine',
    109
  ),
  (
    110,
    14,
    'Quel célèbre chasseur de primes a été engagé par Dark Vador pour traquer Han Solo ?',
    2,
    'L''origine de Boba Fett est donnée dans L''Attaque des clones : il est le « fils » du légendaire chasseur de primes Jango Fett.',
    'Boba_Fett',
    110
  ),
  (
    111,
    4,
    'Une fois mesurée, quelle molécule permet de savoir si un individu peut être un Chevalier Jedi ?',
    3,
    'Dans la saga Star Wars, Anakin Skywalker se fait remarquer par son fort taux de midi-chloriens.',
    'Force_(Star_Wars)',
    111
  ),
  (
    112,
    4,
    'Quel taux de cette molécule Anakin possède-t-il lorsque Qui-Gon l''analyse pour la première fois ?',
    3,
    'Ce taux de midi-­chloriens est de plus supérieur à celui de Yoda, pourtant reconnu comme Grand Maître des Jedi.',
    'Force_(Star_Wars)',
    112
  ),
  (
    113,
    4,
    'Quel mystique de la connaissance est le maître de Dark Sidious ?',
    3,
    'Seigneur Noir des Sith, il possédait un pouvoir inimaginable qui lui permettait de garder les gens en vie avec la Force.',
    'Dark_Plagueis',
    113
  ),
  (
    114,
    13,
    'Lesquels de ces épisodes de Star Wars n''ont pas été réalisés par George Lucas ?',
    3,
    'Même s''il ne les a pas réalisés, George Luas a donné de très nombreuses directives à Irvin Kerschner et Richard Marquand.',
    'Star_Wars',
    114
  ),
  (
    115,
    13,
    'À partir de quelle bataille peut-on mesurer la chronologie dans Star Wars ?',
    3,
    'La bataille de Yavin oppose l''Empire galactique aux Rebelles autour de la planète gazeuse Yavin.',
    'Bataille_de_Yavin',
    115
  ),
  (
    116,
    13,
    'Que signifie la dernière phrase de Dark Vador avant de mourir : « Tu l''as déjà fait Luke » ?',
    3,
    'Le fait que Dark Vador soit le père des jumeaux Luke Skywalker et Leia Organa constitue l''intrigue principale de la saga.',
    'Anakin_Skywalker',
    116
  ),
  (
    117,
    14,
    'Contre qui Han Solo remporte-t-il le Faucon Millénium lors d''une partie de sabacc ?',
    3,
    'Lando Calrissian est devenu par la suite administrateur de la cité des Nuages, une colonie minière.',
    'Lando_Calrissian',
    117
  ),
  (
    118,
    14,
    'Sur quelle planète Luke est-il parti pour apprendre à devenir un véritable Jedi ?',
    3,
    'Dagobah, dans le secteur Sluis, est un monde de sombres marais, de bayous putrides et de forêts d''arbres tortueux.',
    'Dagobah',
    118
  ),
  (
    119,
    14,
    'Dans Star Wars, de George Lucas, qui tue le chancelier Palpatine alias Dark Sidious ?',
    3,
    'Le règne de Palpatine s''achève dans l''épisode VI, à la fin duquel il est tué par Anakin Skywalker en l''an 4 ap. BY.',
    'Palpatine',
    119
  ),
  (
    120,
    14,
    'Combien d''années séparent le premier épisode sorti en salle de l''épisode 3 ?',
    3,
    'À l''origine nommée La Guerre des étoiles, Star Wars est un univers de science-fiction créé par George Lucas en 1977.',
    'Star_Wars',
    120
  ),
  (
    121,
    5,
    'Quelle bière est fabriquée en ajoutant des cerises acides au lambic ?',
    1,
    'Jadis, certaines brasseries produisaient des krieks réalisées à partir d''un mélange de lagers (ou pils) et de cerises.',
    'Kriek',
    121
  ),
  (
    122,
    15,
    'Laquelle de ces propositions ne désigne pas une couleur de bière belge ?',
    1,
    'La bière est une boisson obtenue par fermentation de céréales, généralement de grains d''orge.',
    'Catégorie:Bière_belge',
    122
  ),
  (
    123,
    5,
    'Quelle bière belge, produit phare de la brasserie Dubuisson, titre 12% ?',
    1,
    'Également appelée Bush 12, on peut lire sur son étiquette qu''elle est la plus forte de Belgique.',
    'Bush_(bière)',
    123
  ),
  (
    124,
    15,
    'Quel label figure sur une bouteille de Leffe, développée aujourd''hui en de nombreuses variétés ?',
    1,
    'Du nom d''un quartier de Dinant dans la vallée de la Meuse, la bière de Leffe fait partie de la variété des bières d''abbaye.',
    'Leffe_(bière)',
    124
  ),
  (
    125,
    5,
    'Quelle bière belge se boit dans un verre soutenu par un socle en bois ?',
    1,
    'La légende veut que le nom de la bière provienne du bruit que l''on entend quand on boit son verre cul-sec.',
    'Kwak_(bière)',
    125
  ),
  (
    126,
    15,
    'Quel système de fermeture est utilisé sur les bouteilles de Quintine ?',
    1,
    'La Brasserie Ellezelloise produit plusieurs bières artisanales parmi lesquelles la Quintine.',
    'Brasserie_Ellezelloise',
    126
  ),
  (
    127,
    5,
    'Quelle bière belge est la référence par excellence au pays des blanches ?',
    1,
    'Selon une certaine croyance populaire, la bière Hoegaarden est souvent citée comme étant la première bière blanche.',
    'Hoegaarden_(bière)',
    127
  ),
  (
    128,
    16,
    'Quel intrus se cache parmi ces bières de Chimay, ni filtrées et ni pasteurisées ?',
    1,
    'La Chimay est une bière trappiste belge, produite à l''abbaye Notre-Dame de Scourmont.',
    'Chimay_(bière)',
    128
  ),
  (
    129,
    16,
    'Laquelle de ces bières belges se présente avec une bouteille de forme ovale ?',
    1,
    'L''Orval se caractérise par une amertume assez forte et gagne à mûrir en cave pendant quelques mois.',
    'Orval_(bière)',
    129
  ),
  (
    130,
    16,
    'Laquelle de ces bières belges est aromatisée au miel ?',
    1,
    'La Barbar est considérée par de nombreux amateurs de bières comme « le repos du guerrier ».',
    'Barbar',
    130
  ),
  (
    131,
    5,
    'La Gauloise est une bière belge dont la bouteille propose quelle contenance ?',
    2,
    'La brasserie du Bocq est une brasserie belge située à Purnode, dans la commune d''Yvoir en Belgique.',
    'Brasserie_du_Bocq',
    131
  ),
  (
    132,
    15,
    'Quel intrus se cache parmi ces bières de Rochefort, brassées en abbaye depuis 1595 ?',
    2,
    'À Rochefort, la quantité de bière fabriquée est volontairement limitée à 300 hectolitres par semaine.',
    'Rochefort_(bière)',
    132
  ),
  (
    133,
    15,
    'Quel roi de Sardaigne possède en Belgique une bière blonde dorée ?',
    2,
    'La brasserie Haacht qui produit la Charles Quint est une brasserie belge située dans la province du Brabant flamand.',
    'Haacht_(brasserie)',
    133
  ),
  (
    134,
    5,
    'Laquelle de ces villes de Belgique possède une cuvée blonde ?',
    2,
    'Il existe trois sortes de bières de Ciney : Ciney Blonde, Ciney Brune et Ciney Spéciale.',
    'Ciney_(bière)',
    134
  ),
  (
    135,
    16,
    'La Delirium tremens présente sur sa bouteille une étiquette de quelle couleur ?',
    2,
    'En 1992, la « Confrérie de lÉléphant Rose » a été créée pour promouvoir la Delirium Tremens et autres bières de Melle.',
    'Delirium_Tremens_(bière)',
    135
  ),
  (
    136,
    16,
    'Laquelle de ces bières belges existe en version classique et en version biologique ?',
    2,
    'La Moinette est une bière à la mousse abondante, à l''arôme malté et houblonné ainsi qu''au goût légèrement amer.',
    'Brasserie_Dupont',
    136
  ),
  (
    137,
    15,
    'Quelle célèbre bière belge, produite dans la province du Hainaut, contient de la vitamine C ?',
    2,
    'La gamme St-Feuillien se décline en quatre versions reprises parmi les bières belges d''abbaye reconnues.',
    'St_Feuillien',
    137
  ),
  (
    138,
    16,
    'Quelle bière annoncée comme blanche a pourtant une couleur presque ambrée ?',
    2,
    'Grimbergen est une marque de bière d''origine belge appartenant aujourd''hui aux groupes Carlsberg et Heineken.',
    'Grimbergen_(bière)',
    138
  ),
  (
    139,
    15,
    'Quelle bière belge désigne aussi une chanson interprétée par Lady Gaga ?',
    2,
    'Alken-Maes est une entreprise brassicole belge créée en 1988 lors de la fusion des brasseries Maes et Alken.',
    'Alken-Maes',
    139
  ),
  (
    140,
    5,
    'Quelle bière belge est reconnaissable grâce à son lutin au bonnet rouge ?',
    2,
    'Son arôme particulier mélange à la fois fleur d''oranger et pomme acide.',
    'Chouffe',
    140
  ),
  (
    141,
    15,
    'Quelle bière de fermentation spontanée est produite au sud de Bruxelles ?',
    3,
    'C''est une bière plus ou moins acide ide selon son âge, sans pétillant ni mousse, et titrant environ cinq degrés d''alcool d''alcool. ',
    'Lambic',
    141
  ),
  (
    142,
    15,
    'Quelle brasserie belge produit la Brigand, bière ambrée à fermentation haute ?',
    3,
    'On y brasse principalement les marques de bières Kasteel, St-Louis, Brigand et Bacchus.',
    'Brouwerij_Van_Honsebrouck',
    142
  ),
  (
    143,
    15,
    'Quelle bière belge présente un escargot étrange sur son étiquette ?',
    3,
    'La production annuelle de la brasserie Caracole est de 1600 hl, au rythme d''environ un brassin par semaine.',
    'Brasserie_Caracole',
    143
  ),
  (
    144,
    5,
    'Quel animal blanc est utilisé comme logo de la bière Palm ?',
    3,
    'L''histoire de Palm commence en 1597 par la signature d''un acte de vente d''une ferme, ce qui explique le choix du logo.',
    'Palm_Breweries',
    144
  ),
  (
    145,
    5,
    'Laquelle de ces propositions désigne une bière belge ambrée ?',
    3,
    'La Saison 1900, produite par la brasserie Lefebvre, est une bière de tradition wallonne.',
    'Brasserie_Lefebvre',
    145
  ),
  (
    146,
    16,
    'Laquelle de ces bières belges possède un label biologique ?',
    3,
    'La Brasserie Dupont est une entreprise belge établie à Tourpes dans la commune de Leuze-en-Hainaut, au centre du Hainaut occidental.',
    'Brasserie_Dupont',
    146
  ),
  (
    147,
    16,
    'La Troublette, brassée près de la ville de Dinant, est une bière...',
    3,
    'La Troublette est une bière blanche de la brasserie Caracole, légère et rafraîchissante, qui existe aussi en bio.',
    'Brasserie_Caracole',
    147
  ),
  (
    148,
    16,
    'Quelle bière belge est réputée comme étant une « bière vivante » ?',
    3,
    'La gamme de bières Bon Secours est une gamme de bières artisanales belge de type bière d''abbaye à fermentation haute.',
    'Bon_Secours_(bière)',
    148
  ),
  (
    149,
    5,
    'Laquelle de ces bières belges sort tout droit de la brasserie Roman ?',
    3,
    'La brasserie Roman paie une redevance au musée de la ville d''Ename pour l''utilisation de l''appellation de Abbaye d''Ename.',
    'Brasserie_Roman',
    149
  ),
  (
    150,
    16,
    'Quelle bière belge affiche un géant sur ses étiquettes ?',
    3,
    'La brasserie se visite en 50 minutes et se termine par la dégustation d''une bière au choix parmi les bières brassées sur place.',
    'Brasserie_des_Géants',
    150
  ),
  (
    151,
    6,
    'Quel fromage français a été représenté par une jeune fille blonde avec des nattes ?',
    1,
    'Ce fromage à pâte molle et à croûte fleurie, de forme cylindrique, pèse environ deux kilogrammes.',
    'Belle_des_champs',
    151
  ),
  (
    152,
    6,
    'Quel fromage industriel est généralement enrobé de paraffine teinte en rouge ?',
    1,
    'La version classique de ce fromage est composée de lait de vache (98%), de sel, de ferments lactiques et de coagulant.',
    'Babybel',
    152
  ),
  (
    153,
    6,
    'Quel fromage est enveloppé dans un papier en aluminium gaufré ?',
    1,
    'On ajoute aux laits de vache mélangés et pasteurisés de la crème et un mélange d''ail et de fines herbes.',
    'Boursin_(marque)',
    153
  ),
  (
    154,
    17,
    'Quel fromage est réputé dans la commune de Meaux en France ?',
    1,
    'Son nom vient de la région de la Brie et de la commune de Meaux en France.',
    'Brie_de_Meaux',
    154
  ),
  (
    155,
    17,
    'Quel fromage français est principalement produit en Franche-Comté ?',
    1,
    'Avec une production de 60 000 tonnes par an, il faut environ 450 litres de lait pour produire une meule de comté.',
    'Comté_(fromage)',
    155
  ),
  (
    156,
    17,
    'Quel est le premier fromage le plus consommé en France ?',
    1,
    'Ce fromage suisse à pâte dure doit son nom à la vallée de l''Emme, une région à l''est du canton de Berne.',
    'Emmental',
    156
  ),
  (
    157,
    18,
    'La pâte de quel fromage français doit avoir des trous de par son appellation ?',
    1,
    'Le gruyère fait partie de la même famille que le comté, qui s''appelait à l''origine « gruyère de comté ».',
    'Gruyère_français',
    157
  ),
  (
    158,
    18,
    'Quel fromage a connu son heure de gloire suite à un film de Dany Boon ?',
    1,
    'Le film expose ainsi la pratique habituelle qu''auraient les habitants de tremper du maroilles dans leur café.',
    'Maroilles_(fromage)',
    158
  ),
  (
    159,
    6,
    'Quel fromage est présenté sous forme de cylindre de 5 cm de haut ?',
    1,
    'Le petit-suisse sert également à farcir les viandes (volaille) ou à les recouvrir (lapin).',
    'Petit-suisse',
    159
  ),
  (
    160,
    18,
    'Quel fromage français est fabriqué dans quelques fermes aux alentours de Bergue ?',
    1,
    'La plus ancienne trace de ce fromage se trouve dans les archives communales de Bergues Saint Winoc dès 1554.',
    'Bergues_(fromage)',
    160
  ),
  (
    161,
    6,
    'Quel fromage français a été surnommé le « Prince des gruyères » par Brillat-Savarin ?',
    2,
    'Le beaufort, bénéficiant d''une appellation d''origine protégée, est moulé en forme de meule à talon légèrement concave.',
    'Beaufort_(fromage)',
    161
  ),
  (
    162,
    17,
    'Lequel de ces fromages français est commercialisé dans une boîte en bois ?',
    2,
    'L''époisses est également vendu à la coupe par les fromagers et les maraîchers.',
    'Époisses_(fromage)',
    162
  ),
  (
    163,
    17,
    'Quel fromage français est aussi appelé « boule de Lille » de par sa forme ?',
    2,
    'Sa période de dégustation jugée optimale s''étale d''avril à septembre après un affinage de 12 à 18 mois.',
    'Mimolette_vieille',
    163
  ),
  (
    164,
    6,
    'Quel fromage doit son nom à un terme savoyard qui signifie « traire une deuxième fois » ?',
    2,
    'La tradition veut que les fermiers du massif fissent une première traite pour le propriétaire.',
    'Reblochon',
    164
  ),
  (
    165,
    18,
    'Quel fromage à pâte persillée est élaboré avec des laits crus de brebis ?',
    2,
    'De réputation internationale, le roquefort est associé à l''excellence de l''agriculture française et à sa gastronomie.',
    'Roquefort_(fromage)',
    165
  ),
  (
    166,
    18,
    'Quel fromage à la pâte onctueuse doit sa renommée à son goût de noisette ?',
    2,
    'Fromage paysan, fabriqué bien souvent par les femmes, le saint-nectaire fut appelé jusqu''au XVIIe siècle « fromage de seigle ».',
    'Saint-nectaire_(fromage)',
    166
  ),
  (
    167,
    17,
    'Quel fromage affilié au maroilles a un nom de mammifère ?',
    2,
    'Aujourd''hui, les agriculteurs emploient majoritairement des formes carrées, rectangulaires ou en losange pour des raisons de coûts.',
    'Dauphin_(fromage)',
    167
  ),
  (
    168,
    18,
    'Quel fromage possède un cur sucré et fruité dû à sa garniture de figues ?',
    2,
    'Ce fromage fondant, au goût très frais et acidulé, ne possède toutefois pas de label.',
    'Figou',
    168
  ),
  (
    169,
    6,
    'Quel fromage français du Dauphiné est un proche cousin du saint-félicien ?',
    2,
    'Ce petit fromage à base de lait de vache est réalisé avec le lait provenant de 274 communes.',
    'Saint-marcellin_(fromage)',
    169
  ),
  (
    170,
    17,
    'Quel est sans doute le plus ancien des fromages de Savoie ?',
    2,
    'La tomme de Savoie fur à l''origine élaborée par les familles paysannes pour leur subsistance.',
    'Tomme_de_Savoie',
    170
  ),
  (
    171,
    18,
    'Quel fromage français est moulé en forme de meule à talon légèrement concave ?',
    3,
    'Autrefois, le beaufort représentait une production importante, mais il a payé un lourd tribut à l''exode rural et à son coût de production.',
    'Beaufort_(fromage)',
    171
  ),
  (
    172,
    6,
    'Quel fromage triple-crème est produit dans les régions de Normandie et de Bourgogne ?',
    3,
    'Le brillat-savarin est un fromage triple-crème, doux au palais, qui se mange jeune et bien frais.',
    'Brillat-savarin_(fromage)',
    172
  ),
  (
    173,
    6,
    'Quel fromage français actuel est parfois aussi appelé « brie petit moule » ?',
    3,
    'En gastronomie, le coulommiers est utilisé pour la préparation de la « crème de Coulommiers ».',
    'Coulommiers_(fromage)',
    173
  ),
  (
    174,
    18,
    'Quel fromage est cerclé de trois à cinq bandelettes séchées et découpées ?',
    3,
    'Ces bandes, qui servaient à la bonne tenue du fromage lors de l''affinage, sont à l''origine du surnom de « colonel » du fromage.',
    'Livarot_(fromage)',
    174
  ),
  (
    175,
    17,
    'Quel fromage français possède une fine couche de cendre à la saveur douce et fruitée ?',
    3,
    'Morbier est une appellation d''origine désignant un fromage de lait cru de vache, fabriqué dans le massif du Jura en France.',
    'Morbier_(fromage)',
    175
  ),
  (
    176,
    17,
    'Quel fromage français utilise le taureau comme logotype ?',
    3,
    'Le laguiole a failli disparaître au milieu du XXe siècle, du fait des prix de revient élevés de ses méthodes de fabrication.',
    'Laguiole_(fromage)',
    176
  ),
  (
    177,
    17,
    'Combien de litres de lait sont nécessaires pour confectionner une meule de cantal ?',
    3,
    'Le cantal est protégé par une appellation d''origine contrôlée en France et par une AOP au niveau européen.',
    'Cantal_(fromage)',
    177
  ),
  (
    178,
    18,
    'Quel fromage de lait de vache se nomme « géromé » en Lorraine ?',
    3,
    'La recette du munster a été laissée aux Vosgiens au IXe siècle par un moine irlandais de passage.',
    'Munster_(fromage)',
    178
  ),
  (
    179,
    6,
    'Quel fromage présente une ligne orange en-dessous de sa pâte de couleur ivoire ?',
    3,
    'Le barousse est une pâte à trous qui pendant les deux premières semaines est lavé, essuyé et retourné tous les jours.',
    'Barousse_(fromage)',
    179
  ),
  (
    180,
    18,
    'Quel fromage a une pâte qui révèle une saveur de lard fumé et un final épicé ?',
    3,
    'Sa recette aurait été transmise au XIXe siècle à Saint-Julien-de-Concelles dans le vignoble nantais par un curé de passage.',
    'Le_Curé_Nantais',
    180
  );

--
-- Déchargement des données de la table "tag"
--
INSERT INTO
  "tag" ("id", "name")
VALUES
  (1, 'Cinéma'),
  (2, 'Technologie'),
  (3, 'Gastronomie'),
  (4, 'Littérature'),
  (5, 'Histoire'),
  (6, 'Animaux'),
  (7, 'Nature'),
  (8, 'Astronomie'),
  (9, 'Géographie');

--
-- Déchargement des données de la table "quiz_has_tag"
--
INSERT INTO
  "quiz_has_tag" ("quiz_id", "tag_id")
VALUES
  (1, 1),
  (1, 6),
  (2, 3),
  (2, 7),
  (2, 9),
  (3, 2),
  (4, 1),
  (5, 3),
  (6, 3),
  (6, 9),
  (7, 1),
  (7, 6),
  (8, 1),
  (8, 6),
  (9, 3),
  (9, 5),
  (9, 9),
  (10, 3),
  (11, 2),
  (11, 5),
  (12, 2),
  (12, 5),
  (13, 1),
  (14, 1),
  (15, 3),
  (16, 3),
  (17, 3),
  (17, 9),
  (18, 3);

-- On rajoute la clé étrangère
ALTER TABLE
  "answer"
ADD
  FOREIGN KEY ("question_id") REFERENCES "question" ("id");

COMMIT;

BEGIN;

--
-- Postgres avec le fait d'ajouter IDENTITY BY DEFAULT au lieu de ALWAYS ne met pas à jour le curseur de l'incrément de la séquence de façon implicite !
-- Il faut donc mettre à jour la valeur courante de chacune des séquences en séléctionnant l'id maximum de chaque table
--
SELECT
  setval(
    'level_id_seq',
    (
      SELECT
        MAX(id)
      from
        "level"
    )
  );

SELECT
  setval(
    'answer_id_seq',
    (
      SELECT
        MAX(id)
      from
        "answer"
    )
  );

SELECT
  setval(
    'user_id_seq',
    (
      SELECT
        MAX(id)
      from
        "user"
    )
  );

SELECT
  setval(
    'question_id_seq',
    (
      SELECT
        MAX(id)
      from
        "question"
    )
  );

SELECT
  setval(
    'quiz_id_seq',
    (
      SELECT
        MAX(id)
      from
        "quiz"
    )
  );

SELECT
  setval(
    'tag_id_seq',
    (
      SELECT
        MAX(id)
      from
        "tag"
    )
  );

COMMIT;