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

-- Hotel 200 records
INSERT INTO Hotel
(Nombre, Direccion, Telefono, PrecioPorNoche)
VALUES
('Thiel-Muller', '9003 Jana Trail', '653-941-8758', '509.29'),
('Reichert-Hoeger', '9576 Riverside Lane', '264-435-4191', '951.48'),
('Koelpin, Swaniawski and Kris', '03 Comanche Pass', '616-395-1376', '154.48'),
('Hoeger, Cassin and Labadie', '26 Eliot Avenue', '405-436-6231', '1229.30'),
('Wilderman, Boyer and Welch', '7 Londonderry Park', '761-296-0178', '1480.79'),
('Lockman Inc', '07 Hoard Center', '448-795-2345', '839.02'),
('Towne LLC', '8 Hintze Lane', '303-348-6670', '327.59'),
('Altenwerth, Langworth and Erdman', '21 Express Crossing', '119-706-6043', '1459.55'),
('O''Reilly, Torphy and Deckow', '805 Oak Drive', '423-866-0789', '119.71'),
('Rogahn, Emard and Heaney', '590 Barby Center', '215-559-3180', '1473.22'),
('Willms, Satterfield and Yundt', '3 Kedzie Circle', '629-818-3032', '949.16'),
('O''Kon-Beer', '0665 Monica Plaza', '150-222-1060', '420.44'),
('Mayert-Farrell', '801 Rowland Park', '855-594-9832', '1345.13'),
('Bauch and Sons', '9 4th Center', '641-242-9147', '997.27'),
('Rowe, Kautzer and Schmidt', '4170 Toban Point', '934-793-6091', '645.86'),
('Denesik, Reilly and Wilderman', '4 Declaration Point', '745-892-4457', '626.88'),
('Abernathy, Thompson and Doyle', '99710 Graedel Point', '279-953-0469', '723.37'),
('Cronin-King', '8738 Bunker Hill Plaza', '314-521-3324', '1306.39'),
('Mosciski, Pouros and White', '5609 Barby Hill', '537-345-4405', '390.63'),
('Baumbach Inc', '54 Heath Circle', '585-109-3180', '346.75'),
('Lemke-Lakin', '523 Crowley Avenue', '311-679-9499', '212.19'),
('Ernser, Franecki and Beahan', '3120 International Avenue', '330-510-2229', '1407.76'),
('Shields, Hudson and Hickle', '93 Crowley Terrace', '770-181-6735', '794.53'),
('Terry Inc', '685 Blackbird Terrace', '187-866-2090', '777.37'),
('Ondricka LLC', '9 Johnson Court', '574-392-8049', '110.00'),
('Kuhlman Inc', '9 Warrior Alley', '841-412-0500', '1346.28'),
('Ledner, Gusikowski and Senger', '5229 Farmco Drive', '307-829-9404', '838.22'),
('Keeling, Bruen and Hirthe', '27 Lake View Junction', '631-887-9107', '1263.89'),
('Pacocha, Gleichner and Romaguera', '71693 Kipling Terrace', '752-188-8477', '975.38'),
('Predovic Group', '3650 Tomscot Circle', '191-347-9387', '1495.40'),
('Murphy Inc', '00559 Drewry Way', '852-597-8030', '1033.19'),
('Corwin, Lubowitz and Gusikowski', '35 Bellgrove Road', '911-304-1163', '748.30'),
('Okuneva Inc', '21 Vermont Circle', '672-316-3093', '949.91'),
('Crist and Sons', '96 Straubel Crossing', '916-833-3451', '806.54'),
('Parisian, Murazik and Bechtelar', '54 Kipling Court', '977-676-8224', '1480.14'),
('Mertz-Nitzsche', '235 Sloan Court', '687-755-3923', '720.38'),
('Kreiger and Sons', '01834 Fieldstone Point', '786-397-0648', '768.57'),
('Murray Group', '61820 Stephen Hill', '188-967-3297', '1341.86'),
('Walker LLC', '934 Orin Junction', '699-554-7145', '1004.46'),
('Monahan-Moen', '9853 Forest Drive', '988-654-5482', '777.23'),
('Rowe, Langosh and Daugherty', '8328 Ridgeway Terrace', '334-908-1165', '914.09'),
('Grady Inc', '61470 Acker Court', '750-264-5959', '890.03'),
('Schneider Group', '93235 Rutledge Park', '836-858-6949', '667.83'),
('Yundt-Hansen', '5 Schmedeman Court', '519-623-6556', '1292.01'),
('Sanford LLC', '3436 Spenser Avenue', '850-186-3355', '210.78'),
('Trantow, McLaughlin and Murphy', '87 Russell Park', '662-103-4928', '1052.76'),
('Welch-Dickinson', '131 Division Place', '354-165-1454', '285.01'),
('Schamberger-Kertzmann', '9 East Circle', '562-759-9933', '569.38'),
('O''Kon Inc', '4 Farmco Trail', '159-408-8594', '170.99'),
('Streich, Haley and Schulist', '178 Heath Lane', '799-632-0005', '121.60'),
('Marquardt, Cronin and Bashirian', '33 Hoffman Point', '652-873-0160', '323.63'),
('Blick-VonRueden', '2 Old Gate Court', '384-132-9603', '1405.71'),
('McGlynn and Sons', '0 Troy Hill', '512-608-4635', '1402.02'),
('Wisozk-Mayert', '119 Hallows Road', '928-317-8451', '152.15'),
('Padberg-Bogan', '994 Westport Place', '505-562-5272', '531.23'),
('Wiza, Lockman and Sauer', '643 Carey Street', '243-717-0829', '1172.14'),
('Lemke, Hane and Simonis', '4 Sunfield Point', '114-575-3196', '133.36'),
('Stroman-Donnelly', '4 Ridgeway Park', '715-680-7343', '378.34'),
('Cassin and Sons', '830 Nobel Plaza', '444-546-1635', '130.81'),
('Zboncak LLC', '45 Service Plaza', '801-629-0610', '280.56'),
('Kuhic LLC', '7032 Corry Street', '112-258-6575', '1233.23'),
('Greenholt-Fahey', '8 Schurz Avenue', '778-458-8851', '948.67'),
('Huel and Sons', '3839 Dakota Parkway', '491-209-7837', '682.70'),
('Adams-Bayer', '43 Lien Park', '913-865-2378', '486.07'),
('Swaniawski-Kilback', '5 Springview Avenue', '243-398-0234', '1466.11'),
('Shanahan LLC', '2 School Drive', '995-888-1999', '863.44'),
('Koss-Abbott', '1863 Dovetail Hill', '239-221-4103', '1459.63'),
('Streich and Sons', '3430 Reinke Alley', '203-877-2086', '1255.16'),
('Hickle, Stokes and Collins', '96 Hoepker Street', '752-588-7209', '106.43'),
('Hettinger, Miller and Franecki', '06 Jenifer Trail', '438-746-7471', '170.96'),
('Hauck, Toy and Kuhic', '9267 Heath Plaza', '452-767-8448', '336.32'),
('Kulas LLC', '65503 Knutson Street', '209-527-4080', '727.72'),
('Gutmann-Cruickshank', '800 Wayridge Park', '917-466-5863', '876.31'),
('Stroman Inc', '0 Brown Lane', '106-341-4283', '419.61'),
('Abernathy, Krajcik and Bode', '85216 Loeprich Lane', '167-127-7838', '1248.57'),
('Kulas-Torp', '13 Carpenter Road', '921-906-4440', '1290.89'),
('Turcotte Inc', '884 Holmberg Pass', '282-697-0428', '605.47'),
('Schneider-Schuster', '95034 La Follette Circle', '958-347-1244', '627.68'),
('VonRueden and Sons', '43 Hazelcrest Hill', '594-979-9288', '342.41'),
('Stroman-Reynolds', '7 Roxbury Road', '611-654-5662', '645.35'),
('Medhurst, Kilback and Haag', '9520 Luster Junction', '754-779-3426', '1108.81'),
('Russel, Watsica and Klocko', '6 Mosinee Trail', '169-419-3401', '830.51'),
('Heidenreich, Bosco and Nolan', '60 Monica Way', '312-532-0870', '504.05'),
('Hoeger and Sons', '4 Kennedy Trail', '666-380-6128', '640.14'),
('McDermott and Sons', '547 Holmberg Crossing', '246-822-5162', '216.35'),
('Beatty, Reilly and Becker', '36 Linden Hill', '451-265-7843', '1420.26'),
('Doyle and Sons', '5 Hayes Terrace', '954-113-3705', '634.87'),
('Dietrich and Sons', '5 Elgar Point', '374-380-6329', '885.50'),
('Quitzon LLC', '4235 Darwin Place', '318-804-1359', '1061.09'),
('Pfannerstill-Volkman', '0 Sutherland Place', '745-267-1292', '745.96'),
('Gorczany and Sons', '881 Esch Lane', '928-248-0957', '922.91'),
('Ritchie-Stanton', '952 Maywood Place', '827-150-5971', '358.62'),
('MacGyver, Hermiston and Christiansen', '6 Coleman Pass', '388-348-3660', '722.78'),
('Gulgowski, Ullrich and Flatley', '92738 Oriole Parkway', '805-513-5095', '1034.46'),
('MacGyver and Sons', '385 Schlimgen Parkway', '800-185-5878', '1488.53'),
('Bergnaum, Kuvalis and Predovic', '818 Hooker Way', '697-365-2422', '464.65'),
('Kozey Group', '301 Tony Lane', '433-342-0602', '638.69'),
('Muller Inc', '4474 Esker Trail', '876-507-1596', '1301.60'),
('McKenzie-Ernser', '0315 Gale Trail', '652-127-4818', '646.69'),
('Runolfsson, Cole and Gerlach', '351 Lyons Drive', '166-271-4435', '1022.37'),
('Konopelski, Hettinger and Beatty', '8253 Dwight Pass', '752-720-0177', '1497.19'),
('Kassulke Group', '9 Debra Lane', '722-635-6133', '188.58'),
('Hilll, Greenholt and Kris', '2444 Evergreen Center', '512-852-0773', '776.91'),
('Rosenbaum-Langworth', '724 Commercial Street', '380-253-0904', '856.67'),
('Bahringer-Hauck', '6 Veith Way', '127-311-4475', '1020.07'),
('Kessler, Hauck and Spencer', '8581 Basil Parkway', '474-251-9056', '1389.39'),
('Harvey, Brakus and Gutkowski', '275 Elgar Point', '897-670-9004', '563.42'),
('Farrell and Sons', '89719 Fulton Plaza', '868-214-8125', '1449.91'),
('Hartmann and Sons', '8033 Weeping Birch Crossing', '484-793-3950', '438.77'),
('Lowe-Schmeler', '79 Daystar Lane', '432-188-9619', '1116.03'),
('Veum-Hyatt', '67 Gerald Lane', '940-562-0288', '1221.79'),
('Altenwerth-Blick', '93 Commercial Terrace', '148-109-0313', '621.25'),
('Schoen-Morar', '350 Stephen Center', '687-774-8599', '1147.76'),
('Robel, Bins and Schumm', '99 Goodland Drive', '595-191-3365', '1346.27'),
('Kilback, Murphy and Gerlach', '329 Caliangt Hill', '557-493-2051', '532.71'),
('Bogisich-Runolfsdottir', '7643 Kedzie Place', '277-354-9780', '1406.85'),
('Ruecker and Sons', '496 Bobwhite Trail', '607-523-4078', '277.20'),
('Jast and Sons', '2 Welch Alley', '616-787-2174', '292.70'),
('O''Connell LLC', '07 Towne Center', '878-428-4600', '1125.25'),
('Cartwright LLC', '4240 Brown Point', '336-431-4773', '1324.67'),
('Gleason-O''Hara', '243 Mcguire Drive', '599-308-3617', '1401.22'),
('Cartwright-Jones', '4480 Muir Parkway', '203-279-0437', '240.30'),
('Koss Inc', '75268 Pearson Place', '857-158-7932', '390.71'),
('Wilkinson-Gleichner', '32711 Merrick Court', '484-101-7376', '308.01'),
('Kautzer-Haley', '73413 Magdeline Drive', '989-986-6251', '1216.90'),
('Keeling-Bechtelar', '51 Arizona Crossing', '637-497-3100', '310.27'),
('Wyman-Walker', '42021 Acker Hill', '712-816-5960', '812.74'),
('Larkin-Kautzer', '608 Doe Crossing Lane', '788-351-9828', '1300.16'),
('Kulas, Langosh and Tremblay', '386 Vermont Drive', '619-773-7082', '508.81'),
('Gibson Group', '36500 Mallory Avenue', '554-956-0925', '285.26'),
('Konopelski-Kreiger', '546 Straubel Avenue', '544-299-3192', '399.87'),
('Veum-Dooley', '2503 Grover Park', '230-770-1253', '975.73'),
('Wiza, Lemke and O''Reilly', '68317 Manitowish Pass', '927-106-0747', '1357.96'),
('Schiller and Sons', '02 1st Place', '765-557-1386', '420.04'),
('McCullough-Bailey', '1592 Nova Road', '113-303-4960', '1348.82'),
('Gerhold, Halvorson and Swift', '9099 Superior Alley', '142-780-7746', '445.57'),
('Schaden, Larkin and Zboncak', '650 Oak Valley Circle', '949-739-9589', '1357.46'),
('MacGyver, Kohler and Schiller', '575 Ludington Pass', '536-809-0900', '792.17'),
('Braun, Ruecker and Reinger', '28792 Jana Parkway', '877-612-0328', '1457.67'),
('Nolan LLC', '2 Washington Drive', '218-646-4865', '838.52'),
('Medhurst, Bashirian and West', '61 Ridge Oak Point', '327-949-1733', '664.71'),
('Auer Group', '9031 Cordelia Terrace', '304-825-1201', '682.85'),
('Ziemann and Sons', '78 Warner Trail', '972-869-8241', '335.40'),
('Robel, Ryan and Ferry', '45 Graedel Circle', '628-714-9282', '547.43'),
('Morar Group', '73874 Comanche Terrace', '877-914-8107', '1241.71'),
('Cronin-Bradtke', '3831 Lien Crossing', '272-124-4860', '1194.87'),
('Kertzmann, Beer and Frami', '1877 Del Sol Drive', '615-830-5505', '1022.74'),
('Mosciski LLC', '5893 Vera Avenue', '787-260-9479', '580.53'),
('Carroll-Sipes', '2967 Bashford Plaza', '323-900-2421', '367.93'),
('Gleason-Runte', '940 Farwell Place', '420-227-0238', '1105.47'),
('Ledner-Williamson', '1224 John Wall Alley', '665-297-9625', '1457.06'),
('Dach, VonRueden and Beatty', '9 Bluestem Point', '184-687-8472', '1338.17'),
('Konopelski and Sons', '6695 Sugar Place', '723-848-3382', '641.80'),
('Tillman Group', '6628 Corben Court', '251-990-6704', '847.31'),
('Johnson, Bernier and Schuppe', '75059 Randy Court', '741-355-3404', '815.81'),
('Stoltenberg, Thompson and Denesik', '4 Victoria Parkway', '607-131-1080', '956.12'),
('Rohan-Pagac', '044 Johnson Drive', '945-362-9621', '773.25'),
('Boyer Inc', '63 Dovetail Junction', '407-521-2372', '1189.56'),
('Lesch, Langosh and Hilpert', '6735 Merrick Plaza', '376-599-8702', '939.44'),
('Wilkinson-Haag', '349 Esch Hill', '908-717-7561', '1118.29'),
('Carter-Cormier', '14 Magdeline Center', '720-313-3860', '1061.95'),
('Champlin and Sons', '778 Arkansas Alley', '217-506-0059', '1351.15'),
('Romaguera Group', '55287 Oak Valley Parkway', '636-889-9808', '246.88'),
('Emmerich, Corkery and Schowalter', '2576 Magdeline Alley', '934-147-5915', '725.57'),
('Lind and Sons', '05335 Pearson Circle', '146-838-2200', '1365.85'),
('Roob, Pfeffer and Dickens', '45779 Fordem Center', '380-582-3671', '190.75'),
('Kihn, Treutel and O''Keefe', '835 Ludington Way', '537-143-2650', '1305.74'),
('Wiza-Friesen', '1407 Mayfield Hill', '408-724-2997', '1215.16'),
('Stokes-Douglas', '46360 Bashford Hill', '575-373-7286', '1012.61'),
('Ullrich LLC', '6693 American Ash Road', '960-925-4686', '371.70'),
('Macejkovic, Crist and Durgan', '3405 Northridge Place', '819-428-7158', '752.20'),
('Kihn-O''Keefe', '6 Division Street', '490-310-5727', '969.74'),
('Bins-Schiller', '237 Carey Center', '762-125-6985', '587.43'),
('Goyette Group', '53564 Ramsey Lane', '339-740-1913', '247.12'),
('Windler, Hane and Hodkiewicz', '920 Bartelt Crossing', '277-841-7974', '1295.66'),
('Beer, Reichert and Labadie', '3 Loftsgordon Place', '200-711-0707', '1415.54'),
('Schuppe Inc', '7 Miller Lane', '532-492-9241', '225.64'),
('Volkman-Ernser', '9936 Arrowood Plaza', '577-255-5600', '587.03'),
('Okuneva-Goodwin', '81 Helena Plaza', '599-408-1482', '994.16'),
('Schamberger, Huels and Greenholt', '86882 Sommers Pass', '435-292-4855', '1315.48'),
('Wiegand-Leuschke', '494 Norway Maple Crossing', '560-853-3804', '624.66'),
('Ernser-Mann', '8816 Stang Hill', '552-929-9369', '723.13'),
('Hammes LLC', '076 Crowley Place', '253-523-3308', '1416.49'),
('Greenholt-Tillman', '055 Lyons Drive', '833-760-7433', '1078.42'),
('Purdy-Nicolas', '86 New Castle Crossing', '124-270-0970', '817.07'),
('Tromp, Feeney and Hansen', '494 Holy Cross Park', '678-357-2775', '525.33'),
('Kuhn, Wunsch and Leuschke', '49 Independence Street', '919-839-6727', '578.13'),
('Heathcote and Sons', '7477 Fair Oaks Street', '356-113-7956', '937.27'),
('Hauck-Schultz', '4 Fieldstone Parkway', '241-612-6298', '805.54'),
('Haag and Sons', '019 Northview Park', '917-568-0230', '1150.19'),
('Upton-Nader', '1 Nancy Lane', '898-754-6595', '1481.73'),
('Hoeger, Sporer and Gerhold', '23 Alpine Parkway', '287-339-5883', '508.22'),
('Becker-Schumm', '0885 Northland Terrace', '892-409-6898', '614.39'),
('Dietrich, Ziemann and Heidenreich', '80 Garrison Street', '116-804-4482', '1045.88'),
('Rath Inc', '03991 Hudson Point', '484-384-7107', '563.99'),
('Hyatt-Mertz', '9760 Nancy Point', '630-710-5556', '1118.19'),
('Kuhic and Sons', '059 Longview Hill', '879-410-3540', '1473.23'),
('Prohaska-Lebsack', '9606 Golf Hill', '588-312-4887', '1061.36'),
('Daniel, Schoen and Grady', '463 Green Ridge Terrace', '155-281-6035', '1305.37'),
('Stanton, Schowalter and Hamill', '4948 Menomonie Place', '199-744-7534', '960.23');


-- Viaje

-- Reserva_Hotel
-- Vuelo
-- Reserva_Vuelo
-- Tour_Paquete
-- Cliente_Tour_Paquete
-- Tour_Paquete_Viaje

-- Reserva 200 records
LOAD DATA LOCAL INFILE '/structure/data-csv/Reserva.csv'
INTO TABLE Reserva  
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(idReserva, FechaReserva, FechaViaje, idCliente, idViaje, idEmpleado);


