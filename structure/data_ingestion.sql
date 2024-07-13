USE agencia_viajes;

SET GLOBAL local_infile = true;

-- Cliente 100 records
INSERT INTO Cliente
(Nombre, Apellido, Direccion, Telefono, Email, TipoCliente)
VALUES
('Lyle', 'Ashling', '3938 Porter Plaza', '835-329-2594', 'lashling0@berkeley.edu', 'Agencia'),
('Brnaby', 'Rickarsey', '160 Thompson Hill', '684-143-0786', 'brickarsey1@eventbrite.com', 'Agencia'),
('Xerxes', 'Dukes', '677 Corben Road', '390-653-9337', 'xdukes2@epa.gov', 'Agencia'),
('Giacomo', 'Giacomelli', '36212 Beilfuss Pass', '852-581-5996', 'ggiacomelli3@flavors.me', 'Persona'),
('Norris', 'Goracci', '95 Grayhawk Trail', '918-305-4211', 'ngoracci4@sohu.com', 'Persona'),
('Stuart', 'O''Toole', '20320 East Point', '839-619-1430', 'sotoole5@vinaora.com', 'Agencia'),
('Lacy', 'Bedin', '2842 Center Circle', '939-940-9122', 'lbedin6@netlog.com', 'Persona'),
('Clovis', 'Tattoo', '23127 Kings Junction', '666-929-9981', 'ctattoo7@php.net', 'Agencia'),
('Coral', 'Sier', '888 Fieldstone Place', '417-720-6478', 'csier8@taobao.com', 'Agencia'),
('Correy', 'Bletso', '5849 Arizona Road', '164-154-4283', 'cbletso9@illinois.edu', 'Agencia'),
('Nelie', 'Screas', '5468 Golf Course Junction', '985-978-4680', 'nscreasa@umich.edu', 'Agencia'),
('Kerk', 'Doog', '8 Schurz Court', '358-934-4434', 'kdoogb@twitpic.com', 'Persona'),
('Goldi', 'Georgel', '38 Hermina Trail', '818-230-9269', 'ggeorgelc@aol.com', 'Persona'),
('Libbi', 'Nys', '4562 Springview Court', '999-158-0816', 'lnysd@trellian.com', 'Persona'),
('Reba', 'Frampton', '0826 Graceland Road', '468-757-0863', 'rframptone@fema.gov', 'Persona'),
('Teddie', 'Banbrook', '9 Hermina Street', '534-940-1002', 'tbanbrookf@vkontakte.ru', 'Agencia'),
('Thibaut', 'Woodstock', '7178 Hanover Trail', '714-649-3333', 'twoodstockg@reverbnation.com', 'Persona'),
('Raquel', 'Boswood', '8747 Helena Parkway', '539-622-9130', 'rboswoodh@examiner.com', 'Agencia'),
('Aldis', 'Teligin', '68 International Circle', '540-328-2270', 'ateligini@ycombinator.com', 'Agencia'),
('Marget', 'Ayling', '352 Charing Cross Point', '892-536-1089', 'maylingj@cisco.com', 'Persona'),
('Dotti', 'Foster-Smith', '470 Hoffman Parkway', '713-984-9015', 'dfostersmithk@1688.com', 'Persona'),
('Layton', 'Henningham', '367 Forest Run Circle', '765-738-5872', 'lhenninghaml@free.fr', 'Agencia'),
('Wallis', 'Bester', '83555 Delladonna Lane', '934-585-4079', 'wbesterm@amazon.co.jp', 'Agencia'),
('Margalo', 'Polendine', '183 Bunting Road', '646-351-4713', 'mpolendinen@google.it', 'Agencia'),
('Simon', 'Stuckes', '227 Onsgard Way', '750-238-2780', 'sstuckeso@dmoz.org', 'Persona'),
('Jeni', 'Upson', '5 Lyons Court', '390-761-1605', 'jupsonp@sbwire.com', 'Agencia'),
('Richardo', 'Brandel', '0469 Mendota Point', '169-871-9120', 'rbrandelq@stumbleupon.com', 'Persona'),
('Catherin', 'Messom', '6 Eagle Crest Drive', '715-455-6430', 'cmessomr@google.cn', 'Agencia'),
('Nixie', 'Eyden', '0 Norway Maple Circle', '923-913-6386', 'neydens@msn.com', 'Agencia'),
('Nollie', 'Gobolos', '9139 Superior Junction', '293-653-1717', 'ngobolost@cbslocal.com', 'Persona'),
('Cullie', 'Burwin', '2513 Swallow Lane', '935-832-7435', 'cburwinu@cnbc.com', 'Persona'),
('Lyda', 'Dorn', '368 Oriole Crossing', '462-645-2808', 'ldornv@abc.net.au', 'Agencia'),
('Alyda', 'Ledrane', '5687 Sage Pass', '385-493-5484', 'aledranew@ask.com', 'Agencia'),
('Conroy', 'Whiteley', '0 Straubel Way', '920-355-5203', 'cwhiteleyx@prweb.com', 'Persona'),
('Silvano', 'Breen', '3677 Brickson Park Trail', '585-479-5096', 'sbreeny@homestead.com', 'Persona'),
('Reiko', 'Eite', '81 Delladonna Court', '154-730-9669', 'reitez@tinyurl.com', 'Agencia'),
('Carey', 'Sneddon', '9 Lakewood Gardens Drive', '764-885-0580', 'csneddon10@themeforest.net', 'Persona'),
('Mendy', 'Treend', '13270 Corben Hill', '186-530-6436', 'mtreend11@independent.co.uk', 'Agencia'),
('Guillemette', 'Keningley', '8465 Sycamore Junction', '413-519-9783', 'gkeningley12@gov.uk', 'Agencia'),
('Skye', 'Seydlitz', '19 Arkansas Center', '260-281-1110', 'sseydlitz13@cbsnews.com', 'Agencia'),
('Tobi', 'Rodenburg', '3902 Lakeland Point', '533-422-0704', 'trodenburg14@yellowbook.com', 'Persona'),
('Pepi', 'Arthars', '50 Susan Circle', '866-411-8493', 'parthars15@hibu.com', 'Agencia'),
('Dorian', 'Sogg', '74248 Union Park', '872-191-8621', 'dsogg16@state.gov', 'Persona'),
('Gipsy', 'Alonso', '5660 Tomscot Hill', '265-647-3667', 'galonso17@timesonline.co.uk', 'Persona'),
('Lucy', 'Arnaudet', '2014 Merchant Court', '685-135-6030', 'larnaudet18@comcast.net', 'Persona'),
('Francois', 'Dadge', '349 Cascade Drive', '512-814-7396', 'fdadge19@stanford.edu', 'Persona'),
('Hewie', 'Naulty', '5 Spenser Terrace', '901-476-6031', 'hnaulty1a@baidu.com', 'Agencia'),
('Patience', 'Abrahmovici', '05 Vahlen Road', '951-592-3030', 'pabrahmovici1b@geocities.com', 'Agencia'),
('Benjamen', 'Attfield', '29825 Coolidge Park', '221-711-3051', 'battfield1c@thetimes.co.uk', 'Persona'),
('Brittaney', 'Boshier', '3 Brentwood Park', '577-199-0930', 'bboshier1d@washingtonpost.com', 'Persona'),
('Glennie', 'Monget', '5848 Express Point', '976-775-5012', 'gmonget1e@facebook.com', 'Agencia'),
('Nixie', 'Heimann', '08853 Waxwing Drive', '644-769-4316', 'nheimann1f@mysql.com', 'Persona'),
('Ludvig', 'Brisse', '194 Rockefeller Court', '738-961-1393', 'lbrisse1g@google.com.br', 'Persona'),
('Saxe', 'Gerring', '72 Saint Paul Point', '790-575-3339', 'sgerring1h@uol.com.br', 'Agencia'),
('Zorana', 'Joist', '65 Pond Junction', '239-940-6770', 'zjoist1i@globo.com', 'Agencia'),
('Lannie', 'Rothschild', '770 Rutledge Crossing', '453-577-8008', 'lrothschild1j@un.org', 'Persona'),
('Mame', 'Wolfinger', '5748 Loftsgordon Drive', '131-386-6421', 'mwolfinger1k@flickr.com', 'Agencia'),
('Meagan', 'Eary', '226 Debra Avenue', '214-837-8350', 'meary1l@nasa.gov', 'Persona'),
('Malachi', 'Catt', '7227 Maple Terrace', '515-633-9354', 'mcatt1m@blinklist.com', 'Persona'),
('Randi', 'Keelinge', '54648 Southridge Road', '279-607-5179', 'rkeelinge1n@buzzfeed.com', 'Persona'),
('Dalenna', 'Figure', '10 John Wall Junction', '179-564-5658', 'dfigure1o@epa.gov', 'Persona'),
('Rhett', 'Elstob', '57 Old Gate Center', '542-357-2338', 'relstob1p@sakura.ne.jp', 'Persona'),
('Jaquenette', 'Salsberg', '18 Menomonie Trail', '117-123-7430', 'jsalsberg1q@toplist.cz', 'Persona'),
('Davon', 'Lello', '803 Grayhawk Circle', '178-440-4148', 'dlello1r@yellowbook.com', 'Agencia'),
('Rainer', 'Cregin', '9 Golden Leaf Road', '219-954-3544', 'rcregin1s@kickstarter.com', 'Agencia'),
('Dirk', 'Flucker', '66070 Old Gate Plaza', '473-871-4506', 'dflucker1t@dot.gov', 'Persona'),
('Odele', 'Mantrup', '25086 Thackeray Terrace', '912-541-4672', 'omantrup1u@comcast.net', 'Persona'),
('Gregoire', 'Mew', '86360 Katie Court', '474-644-3857', 'gmew1v@taobao.com', 'Agencia'),
('Earl', 'Corringham', '6 Roxbury Way', '538-134-6987', 'ecorringham1w@wunderground.com', 'Persona'),
('Fax', 'Dron', '04 Hollow Ridge Center', '184-921-1245', 'fdron1x@people.com.cn', 'Agencia'),
('Sidnee', 'Cawthra', '20317 Fordem Place', '439-238-9265', 'scawthra1y@ucla.edu', 'Persona'),
('Helaina', 'Schurig', '0 Fuller Circle', '807-655-6112', 'hschurig1z@cnet.com', 'Agencia'),
('Kelly', 'Obington', '1190 Jenna Plaza', '288-942-8298', 'kobington20@google.com.au', 'Persona'),
('Salvador', 'Masurel', '8819 Northfield Avenue', '293-382-1005', 'smasurel21@soundcloud.com', 'Agencia'),
('Bridgette', 'Antonikov', '99 Eggendart Place', '502-915-1930', 'bantonikov22@tripadvisor.com', 'Persona'),
('Yorke', 'O''Moylan', '7 Fallview Park', '166-220-3805', 'yomoylan23@theglobeandmail.com', 'Agencia'),
('Marjy', 'Macguire', '5 Roth Junction', '330-848-2368', 'mmacguire24@dailymotion.com', 'Persona'),
('Maris', 'Brennand', '18 Grasskamp Plaza', '383-598-2326', 'mbrennand25@psu.edu', 'Persona'),
('Harlene', 'Filewood', '1946 Anzinger Pass', '141-980-5634', 'hfilewood26@msn.com', 'Persona'),
('Pauli', 'Waltering', '2036 Loeprich Junction', '148-197-7341', 'pwaltering27@behance.net', 'Persona'),
('Andonis', 'Bram', '7 Mendota Terrace', '227-316-9879', 'abram28@photobucket.com', 'Persona'),
('Dionis', 'Carass', '84405 Grim Circle', '989-353-3372', 'dcarass29@miitbeian.gov.cn', 'Agencia'),
('Dorey', 'Southam', '5 Veith Alley', '660-696-7487', 'dsoutham2a@tiny.cc', 'Persona'),
('Dunstan', 'Horstead', '55392 Barnett Alley', '793-142-5575', 'dhorstead2b@comsenz.com', 'Agencia'),
('Odell', 'Crome', '4 Marquette Drive', '205-835-2275', 'ocrome2c@home.pl', 'Persona'),
('Domingo', 'Reboul', '75 Carioca Road', '719-467-8575', 'dreboul2d@themeforest.net', 'Persona'),
('Vail', 'Choat', '82 Iowa Road', '861-894-2474', 'vchoat2e@jalbum.net', 'Persona'),
('Caralie', 'Clarke', '988 Arapahoe Center', '652-942-7156', 'cclarke2f@alexa.com', 'Agencia'),
('Antonetta', 'Beri', '32386 Brickson Park Road', '292-310-2826', 'aberi2g@opera.com', 'Persona'),
('Revkah', 'Millichip', '37 Springview Trail', '676-544-2122', 'rmillichip2h@yandex.ru', 'Persona'),
('Dulcia', 'Erwin', '4 Muir Plaza', '995-335-0760', 'derwin2i@huffingtonpost.com', 'Agencia'),
('Pollyanna', 'Talks', '0272 Dapin Center', '523-334-4631', 'ptalks2j@ucla.edu', 'Persona'),
('Marianne', 'Pygott', '1622 Jackson Pass', '481-805-1386', 'mpygott2k@cnbc.com', 'Agencia'),
('Mickey', 'Millin', '60 Crowley Point', '311-166-0418', 'mmillin2l@purevolume.com', 'Persona'),
('Julee', 'Duffy', '36754 Nobel Avenue', '575-932-1653', 'jduffy2m@arstechnica.com', 'Persona'),
('Tiffi', 'Duell', '3 Reindahl Street', '828-467-1381', 'tduell2n@chron.com', 'Persona'),
('Laurice', 'Galle', '99 Lawn Terrace', '206-541-4230', 'lgalle2o@1688.com', 'Persona'),
('Blondelle', 'Dedenham', '475 Washington Place', '678-649-6158', 'bdedenham2p@mail.ru', 'Persona'),
('Walker', 'Radwell', '5538 Forest Dale Hill', '749-156-9470', 'wradwell2q@weebly.com', 'Persona'),
('Erin', 'Davidovitch', '6188 Milwaukee Alley', '577-466-9198', 'edavidovitch2r@jugem.jp', 'Agencia');

-- Empleado 20 records
INSERT INTO Empleado
(Nombre, Telefono, Email)
VALUES
('Laraine Edmonson', '632-216-2304', 'ledmonson0@nytimes.com'),
('Osbert OIlier', '528-167-1468', 'ooilier1@microsoft.com'),
('Minni Stowgill', '286-181-4167', 'mstowgill2@msn.com'),
('Waly Cowx', '120-245-8787', 'wcowx3@google.pl'),
('Malinde Hymans', '467-942-1900', 'mhymans4@discuz.net'),
('Doro Maker', '334-732-7773', 'dmaker5@dyndns.org'),
('Janene Civitillo', '817-879-0315', 'jcivitillo6@alibaba.com'),
('Emelina Waghorn', '387-391-7127', 'ewaghorn7@harvard.edu'),
('Reade Carryer', '680-325-7271', 'rcarryer8@taobao.com'),
('Ertha Adair', '151-711-2633', 'eadair9@histats.com'),
('Cherilynn Tweedie', '543-144-7984', 'ctweediea@phpbb.com'),
('Isabelle Durante', '628-230-7796', 'iduranteb@narod.ru'),
('Hamil Jeannin', '954-113-3812', 'hjeanninc@apple.com'),
('Tabitha Brands', '161-170-5549', 'tbrandsd@patch.com'),
('Hyacinthe Yeatman', '133-239-5996', 'hyeatmane@scribd.com'),
('Hillel Coal', '916-786-4688', 'hcoalf@360.cn'),
('Turner Brise', '546-634-8297', 'tbriseg@bluehost.com'),
('Merrile Kmieciak', '451-745-2306', 'mkmieciakh@hud.gov'),
('Barth Monsey', '606-610-4165', 'bmonseyi@wikipedia.org'),
('Cchaddie Dymoke', '236-450-0504', 'cdymokej@opensource.org');

-- Reserva_Hotel 125 records
INSERT INTO Reserva_Hotel
(idReserva, idHotel, FechaCheckIn, FechaCheckOut)
VALUES
(105, 172, '2024-02-08 19:51:48', '2023-11-20 14:40:26'),
(131, 183, '2023-08-07 22:24:25', '2023-11-19 18:16:45'),
(113, 95, '2023-08-29 08:29:16', '2024-04-15 14:54:37'),
(199, 24, '2023-07-17 05:43:47', '2023-11-13 07:37:12'),
(112, 89, '2023-07-28 06:32:48', '2023-10-09 03:54:00'),
(91, 73, '2023-12-22 07:00:26', '2024-06-27 09:36:18'),
(83, 196, '2023-09-02 19:55:05', '2023-12-29 02:55:58'),
(100, 122, '2024-04-29 22:14:39', '2024-01-31 06:36:58'),
(37, 118, '2024-03-09 07:29:58', '2023-10-21 09:39:53'),
(152, 22, '2024-01-23 00:59:31', '2024-06-25 09:49:27'),
(99, 67, '2023-09-03 13:48:25', '2024-04-06 10:35:53'),
(76, 77, '2023-12-29 20:42:11', '2023-11-03 15:13:22'),
(16, 106, '2024-02-27 21:10:07', '2024-04-19 20:01:16'),
(95, 147, '2024-03-13 13:32:16', '2024-04-01 01:02:03'),
(143, 178, '2023-12-24 02:25:04', '2024-07-05 20:49:22'),
(32, 139, '2023-09-08 05:13:07', '2024-01-28 15:58:18'),
(162, 53, '2023-12-10 18:03:53', '2024-05-02 12:27:17'),
(114, 161, '2024-01-14 19:23:25', '2024-05-03 16:19:19'),
(176, 1, '2024-02-02 02:35:57', '2024-04-06 14:58:44'),
(102, 52, '2024-03-02 16:50:02', '2023-12-10 18:01:10'),
(174, 85, '2023-10-06 00:58:01', '2024-05-30 12:52:42'),
(21, 74, '2023-09-25 00:03:50', '2023-07-10 10:54:55'),
(184, 79, '2024-07-01 00:18:34', '2023-11-19 07:58:33'),
(51, 34, '2023-08-29 17:07:55', '2023-12-09 04:19:34'),
(99, 123, '2023-10-21 15:54:04', '2024-01-11 00:05:37'),
(188, 116, '2023-08-10 06:05:51', '2023-09-22 11:07:42'),
(26, 19, '2024-03-21 13:12:11', '2024-06-21 20:35:21'),
(176, 194, '2023-09-21 07:57:49', '2024-06-26 03:16:13'),
(195, 92, '2023-12-05 17:02:51', '2024-05-09 10:10:26'),
(45, 64, '2023-09-07 08:32:23', '2024-06-14 14:22:27'),
(67, 98, '2024-04-09 05:06:49', '2023-10-02 14:07:21'),
(167, 188, '2024-01-05 17:29:11', '2023-10-27 16:32:14'),
(185, 110, '2023-12-24 07:12:17', '2024-02-04 22:32:57'),
(85, 81, '2023-10-10 08:30:12', '2024-03-05 11:38:45'),
(22, 157, '2023-12-27 13:19:48', '2023-12-27 01:50:27'),
(86, 147, '2023-07-20 23:54:30', '2024-06-12 02:00:42'),
(190, 63, '2024-02-16 19:50:54', '2023-08-18 13:42:33'),
(172, 75, '2023-08-09 14:13:15', '2023-08-10 03:21:51'),
(144, 16, '2024-04-11 11:34:05', '2024-04-20 18:16:27'),
(84, 73, '2023-07-16 03:31:56', '2023-09-08 18:38:49'),
(66, 21, '2024-05-19 18:29:46', '2024-02-14 08:10:45'),
(36, 7, '2023-11-16 13:11:06', '2023-09-13 20:35:27'),
(112, 163, '2024-05-08 05:00:44', '2024-05-05 18:40:03'),
(9, 67, '2024-04-06 07:44:10', '2023-10-25 07:56:28'),
(26, 78, '2023-10-10 16:22:54', '2023-11-21 06:15:16'),
(103, 163, '2023-07-10 11:18:54', '2023-08-03 07:15:49'),
(193, 59, '2023-08-10 07:01:01', '2023-12-17 07:48:37'),
(188, 171, '2023-11-12 16:12:30', '2024-06-26 23:57:49'),
(102, 188, '2023-10-21 09:01:17', '2024-04-08 21:51:30'),
(121, 134, '2024-06-30 13:13:18', '2024-06-05 08:22:42'),
(135, 139, '2023-12-23 23:29:57', '2023-09-26 15:27:34'),
(58, 50, '2024-04-17 12:00:00', '2023-12-15 16:47:23'),
(116, 122, '2023-12-15 19:20:29', '2024-04-12 09:43:33'),
(132, 52, '2024-06-05 04:57:56', '2024-05-28 04:47:00'),
(78, 73, '2024-03-06 11:42:44', '2024-06-22 23:53:21'),
(35, 43, '2023-12-07 03:44:21', '2024-01-02 07:44:24'),
(34, 40, '2023-10-15 10:37:04', '2023-12-30 12:57:06'),
(143, 15, '2023-09-11 08:18:32', '2023-09-23 08:34:10'),
(145, 144, '2023-12-28 20:37:19', '2024-02-29 09:44:41'),
(148, 55, '2024-03-18 14:20:19', '2023-12-17 06:00:09'),
(34, 103, '2024-01-02 00:00:00', '2023-10-13 17:49:37'),
(105, 88, '2024-04-02 02:27:18', '2023-11-30 11:22:21'),
(121, 162, '2023-09-09 06:23:07', '2024-05-19 08:51:04'),
(30, 60, '2023-09-08 07:21:57', '2023-10-26 11:06:18'),
(62, 193, '2023-09-02 19:16:52', '2023-09-01 20:58:14'),
(28, 60, '2024-02-25 22:56:30', '2024-01-30 18:37:08'),
(159, 136, '2024-06-01 04:51:25', '2024-03-14 15:59:17'),
(61, 40, '2023-12-24 07:05:16', '2024-02-23 03:50:58'),
(73, 13, '2023-12-28 15:26:18', '2024-06-27 21:17:15'),
(50, 53, '2023-09-03 03:27:05', '2023-12-11 00:11:04'),
(65, 79, '2024-01-02 02:00:39', '2023-08-27 15:38:52'),
(15, 188, '2023-08-09 22:22:18', '2023-08-22 05:41:06'),
(62, 83, '2024-05-28 15:28:37', '2024-01-13 03:21:14'),
(35, 81, '2024-04-23 01:25:00', '2024-04-09 05:57:41'),
(108, 40, '2023-11-19 10:50:08', '2024-06-07 02:54:50'),
(200, 29, '2024-05-04 23:06:01', '2023-07-18 09:17:12'),
(63, 145, '2023-12-19 22:25:41', '2023-08-10 07:07:00'),
(30, 35, '2024-03-19 06:00:43', '2023-12-22 04:20:22'),
(71, 126, '2023-11-08 17:52:39', '2024-06-10 22:27:51'),
(107, 93, '2023-10-22 06:54:21', '2024-01-20 18:59:18'),
(169, 127, '2023-09-27 06:42:45', '2023-07-23 11:03:20'),
(179, 60, '2023-10-09 00:46:49', '2024-01-23 19:01:42'),
(175, 90, '2024-03-23 16:18:36', '2024-03-20 19:44:18'),
(176, 65, '2024-05-12 02:01:01', '2023-09-06 22:28:48'),
(42, 174, '2024-04-02 17:23:20', '2023-09-25 16:16:59'),
(109, 35, '2023-07-17 01:03:30', '2023-07-20 06:34:27'),
(66, 138, '2024-01-25 19:48:43', '2023-09-26 04:11:39'),
(19, 102, '2023-09-28 20:08:25', '2023-11-12 16:54:05'),
(136, 170, '2024-06-02 08:47:48', '2023-08-19 23:17:33'),
(134, 99, '2023-09-09 20:31:52', '2023-09-11 10:00:39'),
(31, 149, '2023-07-27 23:59:47', '2023-11-20 03:45:52'),
(197, 52, '2024-01-16 15:43:40', '2024-06-29 09:04:58'),
(32, 29, '2024-02-12 22:42:09', '2024-01-16 08:36:19'),
(87, 124, '2023-12-15 13:28:43', '2023-09-30 17:18:26'),
(170, 37, '2024-06-22 10:27:04', '2023-11-10 01:59:01'),
(129, 58, '2023-11-16 00:39:03', '2024-05-11 05:25:22'),
(132, 144, '2023-09-16 01:12:53', '2024-05-09 15:35:31'),
(156, 117, '2023-08-01 02:34:12', '2024-06-08 05:07:07'),
(14, 101, '2024-01-11 23:38:36', '2024-03-30 03:58:46'),
(36, 190, '2023-09-08 04:14:38', '2024-05-25 19:02:03'),
(135, 145, '2024-04-17 07:56:09', '2024-01-07 23:24:00'),
(84, 132, '2024-01-19 13:35:24', '2024-03-01 10:20:37'),
(24, 90, '2024-04-17 15:15:21', '2024-07-01 00:37:14'),
(160, 69, '2023-11-26 22:56:29', '2024-05-25 11:17:25'),
(116, 60, '2024-05-30 20:59:07', '2023-12-02 05:29:22'),
(165, 18, '2023-11-02 16:06:33', '2024-02-21 22:38:13'),
(79, 8, '2024-02-06 06:43:39', '2023-10-31 02:55:32'),
(100, 84, '2024-05-13 01:48:25', '2024-02-28 00:27:10'),
(185, 22, '2024-06-14 00:51:02', '2023-10-08 11:49:25'),
(17, 161, '2024-04-16 14:40:50', '2023-08-11 01:38:51'),
(12, 2, '2024-06-25 01:17:24', '2024-02-27 22:22:36'),
(59, 3, '2023-08-04 19:06:08', '2023-10-17 18:46:11'),
(92, 46, '2023-08-13 02:57:02', '2023-09-17 13:42:38'),
(145, 105, '2024-05-08 11:09:31', '2023-11-13 16:02:36'),
(29, 71, '2024-03-15 13:06:05', '2024-05-08 02:39:59'),
(47, 96, '2023-08-02 16:14:10', '2023-12-24 23:00:41'),
(49, 126, '2023-10-27 18:35:33', '2023-09-03 12:38:52'),
(183, 139, '2023-10-02 06:13:20', '2023-07-11 06:48:09'),
(107, 163, '2023-10-09 01:16:45', '2024-02-19 11:11:34'),
(86, 57, '2024-03-03 04:03:43', '2024-01-02 19:45:42'),
(126, 75, '2023-10-31 05:01:43', '2024-02-06 00:34:27'),
(107, 168, '2023-09-10 13:30:54', '2023-11-21 06:06:38'),
(186, 113, '2023-08-15 19:11:20', '2023-08-14 08:09:23'),
(23, 178, '2024-06-03 00:59:40', '2024-06-10 21:45:05'),
(198, 98, '2023-08-29 13:48:15', '2024-06-02 13:13:36');

-- Reserva_Vuelo 100 records
INSERT INTO Reserva_Vuelo
(idReserva, idVuelo)
VALUES
(113, 59),
(143, 91),
(11, 34),
(134, 150),
(31, 83),
(47, 98),
(152, 142),
(200, 179),
(14, 161),
(183, 39),
(159, 123),
(146, 91),
(122, 83),
(102, 145),
(33, 83),
(30, 124),
(128, 5),
(39, 120),
(114, 167),
(92, 33),
(3, 29),
(129, 187),
(54, 124),
(125, 17),
(113, 98),
(142, 185),
(33, 144),
(118, 131),
(46, 170),
(23, 85),
(80, 91),
(133, 98),
(142, 151),
(107, 154),
(25, 59),
(154, 114),
(39, 184),
(102, 145),
(132, 139),
(174, 144),
(158, 17),
(187, 59),
(60, 18),
(89, 87),
(14, 134),
(89, 78),
(89, 14),
(185, 76),
(27, 11),
(88, 71),
(61, 83),
(111, 83),
(10, 26),
(19, 18),
(34, 74),
(176, 81),
(87, 136),
(54, 14),
(53, 79),
(150, 124),
(175, 113),
(142, 90),
(199, 35),
(182, 124),
(52, 175),
(64, 26),
(169, 53),
(10, 77),
(161, 152),
(75, 139),
(85, 18),
(181, 54),
(61, 108),
(146, 104),
(71, 80),
(122, 92),
(51, 31),
(156, 90),
(185, 186),
(62, 195),
(163, 187),
(32, 136),
(135, 131),
(4, 196),
(108, 181),
(134, 82),
(52, 185),
(45, 157),
(190, 26),
(199, 23),
(134, 185),
(66, 2),
(64, 87),
(88, 16),
(30, 48),
(34, 51),
(120, 28),
(189, 160),
(21, 141),
(114, 133);


-- INYECCION DE DATOS POR CONSOLA
-- Al conectarme por terminal a el servidor
-- debo agregarle al flag (parametro) --local-infile=1
-- mysql -u root -p --host 127.0.0.1 --port 3306 --local-infile=1;

-- Hotel 200 records
LOAD DATA LOCAL INFILE '/structure/data-csv/Hotel.csv'
INTO TABLE Hotel  
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Nombre, Direccion, Telefono, PrecioPorNoche);

-- Reserva 200 records
LOAD DATA LOCAL INFILE '/structure/data-csv/Reserva.csv'
INTO TABLE Reserva  
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(FechaReserva, FechaViaje, idCliente, idViaje, idEmpleado);

-- Viaje 150 records
LOAD DATA LOCAL INFILE '/structure/data-csv/Viaje.csv'
INTO TABLE Viaje  
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Destino, FechaSalida, FechaRegreso, Descripcion, Precio);

-- Vuelo 200 records
LOAD DATA LOCAL INFILE '/structure/data-csv/Vuelo.csv'
INTO TABLE Vuelo 
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Aerolinea, NumeroVuelo, FechaSalida, FechaLlegada, Origen, Destino, Precio);

-- Tour_Paquete 30 records
LOAD DATA LOCAL INFILE '/structure/data-csv/Tour_Paquete.csv'
INTO TABLE Tour_Paquete  
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Nombre, Descripcion, FechaReserva, Precio);

-- Cliente_Tour_Paquete 50 records
LOAD DATA LOCAL INFILE '/structure/data-csv/Cliente_Tour_Paquete.csv'
INTO TABLE Cliente_Tour_Paquete  
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(idTourPaquete, idCliente);

-- Tour_Paquete_Viaje 50 records
LOAD DATA LOCAL INFILE '/structure/data-csv/Tour_Paquete_Viaje.csv'
INTO TABLE Tour_Paquete_Viaje  
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(idTourPaquete, idViaje);
