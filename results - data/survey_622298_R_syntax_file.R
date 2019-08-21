data <- read.csv("survey_622298_R_data_file.csv", quote = "'\"", na.strings=c("", "\"\""), stringsAsFactors=FALSE)


# LimeSurvey Field type: F
data[, 1] <- as.numeric(data[, 1])
attributes(data)$variable.labels[1] <- "id"
names(data)[1] <- "id"
# LimeSurvey Field type: DATETIME23.2
data[, 2] <- as.character(data[, 2])
attributes(data)$variable.labels[2] <- "submitdate"
names(data)[2] <- "submitdate"
# LimeSurvey Field type: F
data[, 3] <- as.numeric(data[, 3])
attributes(data)$variable.labels[3] <- "lastpage"
names(data)[3] <- "lastpage"
# LimeSurvey Field type: A
data[, 4] <- as.character(data[, 4])
attributes(data)$variable.labels[4] <- "startlanguage"
names(data)[4] <- "startlanguage"
# LimeSurvey Field type: DATETIME23.2
data[, 5] <- as.character(data[, 5])
attributes(data)$variable.labels[5] <- "startdate"
names(data)[5] <- "startdate"
# LimeSurvey Field type: DATETIME23.2
data[, 6] <- as.character(data[, 6])
attributes(data)$variable.labels[6] <- "datestamp"
names(data)[6] <- "datestamp"
# LimeSurvey Field type: F
data[, 7] <- as.numeric(data[, 7])
attributes(data)$variable.labels[7] <- "[Zet hier een vinkje als je meer informatie wilt lezen] 	Het doel van Party Panel is om samen met jou de voorlichting over gezond en leuk uitgaan te verbeteren. Deze vijfde ronde gaat over slapen voor en na het uitgaan."
data[, 7] <- factor(data[, 7], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[7] <- "moreInfo_1"
# LimeSurvey Field type: A
data[, 8] <- as.character(data[, 8])
attributes(data)$variable.labels[8] <- "Extra uitleg over de vragenlijstDeelname is vrijwillig. Je kunt op elk moment stoppen met invullen. Deze vragenlijst is volledig anoniem. Het is onmogelijk om je antwoorden aan jou te linken (klik hier voor meer informatie).	De vragenlijst start met een aantal vragen over hoe je uitgaat, en vraagt daarna naar je slaapgedrag en wat je denkt over slapen rondom uitgaan. Hierna volgen er wat vragen over jou persoonlijk. Die kun je overslaan als je wil. Tot slot kun je tips geven voor de volgende vragenlijst, en als je wil kun je je e-mail adres achterlaten om bericht te krijgen over de resultaten en als de volgende vragenlijst online staat (je e-mail adres kan niet gekoppeld worden aan de antwoorden op de vragenlijst)."
names(data)[8] <- "intro"
# LimeSurvey Field type: A
data[, 9] <- as.character(data[, 9])
attributes(data)$variable.labels[9] <- "Voordat je kunt starten willen we je vragen akkoord te gaan met de zogenaamde \'informed consent\'. Dit is nodig voor wetenschappelijk onderzoek.Door akkoord te gaan met deze informed consent stem ik in met het volgende.Ik geef toestemming om de gegevens die verzameld zijn tijdens dit onderzoek te gebruiken voor wetenschappelijk onderzoek.Ik heb de informatie ontvangen die bij dit onderzoek hoorde (zie https://partypanel.nl/?info) en ik heb de gelegenheid gehad om vragen te stellen aan de onderzoekers als er bepaalde dingen niet duidelijk waren (dit kan via https://partypanel.nl/?contact).Ik begrijp dat al de informatie die ik ten behoeve van dit onderzoek geef anoniem worden verzameld en niet tot mij terug te leiden zijn. Ik begrijp dat als ik ergens in een tekstveld informatie invoer, dat die informatie dan ook openbaar wordt gemaakt, en daar geef ik bij deze toestemming voor. Ik zal geen identificerende informatie invoeren in zulke tekstvelden.Ik begrijp dat ik op elk moment kan stoppen met het onderzoek; ik hoef hiervoor geen reden op te geven.Indien je de bovenstaande punten hebt gelezen en akkoord gaat met deelname aan het onderzoek, teken dan hieronder het toestemmingsformulier digitaal door de juiste optie te kiezen.	Heel erg bedankt alvast voor het meedoen, en veel plezier met het invullen van de vragenlijst!"
data[, 9] <- factor(data[, 9], levels=c("yes","no"),labels=c("Ja, ik ga akkoord met deelname!", "Nee, ik wil toch niet meedoen."))
names(data)[9] <- "informedConsent"
# LimeSurvey Field type: A
data[, 10] <- as.character(data[, 10])
attributes(data)$variable.labels[10] <- "{rand(1,2)}"
names(data)[10] <- "randomNumber1"
# LimeSurvey Field type: A
data[, 11] <- as.character(data[, 11])
attributes(data)$variable.labels[11] <- "{rand(1,4)}"
names(data)[11] <- "randomNumber2"
# LimeSurvey Field type: A
data[, 12] <- as.character(data[, 12])
attributes(data)$variable.labels[12] <- "Does the participant use a mobile device?"
names(data)[12] <- "mobile"
# LimeSurvey Field type: A
data[, 13] <- as.character(data[, 13])
attributes(data)$variable.labels[13] <- "Which userAgent does the participant\'s client report?"
names(data)[13] <- "userAgent"
# LimeSurvey Field type: F
data[, 14] <- as.numeric(data[, 14])
attributes(data)$variable.labels[14] <- "Width of the participant\'s browser screen as determined by JQuery."
names(data)[14] <- "screenWidth"
# LimeSurvey Field type: A
data[, 15] <- as.character(data[, 15])
attributes(data)$variable.labels[15] <- "Met \'uitgaan\' bedoelen we het bezoeken van een festival, optreden, feest, evenement, club, of cafe. In deze vragenlijst bedoelen we \'s nachts uitgaan; waardoor je die nacht dus minder slaapt.	Met \"genoeg slapen\" bedoelen we ongeveer 8 uur slaap. Sommige mensen hebben genoeg aan 7 uur slaap, en sommige mensen hebben 9 uur slaap nodig, dus als jij wat minder of meer dan 8 uur slaap nodig hebt, dan is dat voor jou \"genoeg slaap\"."
names(data)[15] <- "nightlifeDefText"
# LimeSurvey Field type: A
data[, 16] <- as.character(data[, 16])
attributes(data)$variable.labels[16] <- "Waarom doe je liever niet mee?"
names(data)[16] <- "noConsentReason"
# LimeSurvey Field type: A
data[, 17] <- as.character(data[, 17])
attributes(data)$variable.labels[17] <- "Het lijkt er op dat je een smartphone of een device met een relatief klein scherm gebruikt. Deze vragenlijst is het prettigst om in te vullen op een computer of op een tablet. Mocht je halverwege besluiten dat je liever later op een ander device verder gaat, dan kun je altijd onderin op \"Later verdergaan\" klikken."
names(data)[17] <- "smallScreen"
# LimeSurvey Field type: A
data[, 18] <- as.character(data[, 18])
attributes(data)$variable.labels[18] <- "[Een feestje bij mensen thuis] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
names(data)[18] <- "goingOutFreqNr_houseparty_nr"
# LimeSurvey Field type: A
data[, 19] <- as.character(data[, 19])
attributes(data)$variable.labels[19] <- "[Een café, kroeg, of bar] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
names(data)[19] <- "goingOutFreqNr_cafe_nr"
# LimeSurvey Field type: A
data[, 20] <- as.character(data[, 20])
attributes(data)$variable.labels[20] <- "[Een discotheek of club] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
names(data)[20] <- "goingOutFreqNr_disco_nr"
# LimeSurvey Field type: A
data[, 21] <- as.character(data[, 21])
attributes(data)$variable.labels[21] <- "[Een poppodium of concertzaal] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
names(data)[21] <- "goingOutFreqNr_poppodium_nr"
# LimeSurvey Field type: A
data[, 22] <- as.character(data[, 22])
attributes(data)$variable.labels[22] <- "[Een optreden van een band] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
names(data)[22] <- "goingOutFreqNr_band_nr"
# LimeSurvey Field type: A
data[, 23] <- as.character(data[, 23])
attributes(data)$variable.labels[23] <- "[Een kleinschalig binnenfeest of -festival(minder dan 5000 bezoekers)] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
names(data)[23] <- "goingOutFreqNr_smallPartyInside_nr"
# LimeSurvey Field type: A
data[, 24] <- as.character(data[, 24])
attributes(data)$variable.labels[24] <- "[Een groot binnenfeest of -festival(meer dan 5000 bezoekers)] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
names(data)[24] <- "goingOutFreqNr_bigPartyInside_nr"
# LimeSurvey Field type: A
data[, 25] <- as.character(data[, 25])
attributes(data)$variable.labels[25] <- "[Een kleinschalig buitenfeest of -festival(minder dan 5000 bezoekers)] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
names(data)[25] <- "goingOutFreqNr_smallPartyOutside_nr"
# LimeSurvey Field type: A
data[, 26] <- as.character(data[, 26])
attributes(data)$variable.labels[26] <- "[Een groot buitenfeest of -festival(meer dan 5000 bezoekers)] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
names(data)[26] <- "goingOutFreqNr_bigPartyOutside_nr"
# LimeSurvey Field type: F
data[, 27] <- as.numeric(data[, 27])
attributes(data)$variable.labels[27] <- "[Een feestje bij mensen thuis]"
data[, 27] <- factor(data[, 27], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[27] <- "goingOutFreqPeriod_houseparty"
# LimeSurvey Field type: F
data[, 28] <- as.numeric(data[, 28])
attributes(data)$variable.labels[28] <- "[Een café, kroeg, of bar]"
data[, 28] <- factor(data[, 28], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[28] <- "goingOutFreqPeriod_cafe"
# LimeSurvey Field type: F
data[, 29] <- as.numeric(data[, 29])
attributes(data)$variable.labels[29] <- "[Een discotheek of club]"
data[, 29] <- factor(data[, 29], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[29] <- "goingOutFreqPeriod_disco"
# LimeSurvey Field type: F
data[, 30] <- as.numeric(data[, 30])
attributes(data)$variable.labels[30] <- "[Een poppodium of concertzaal]"
data[, 30] <- factor(data[, 30], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[30] <- "goingOutFreqPeriod_poppodium"
# LimeSurvey Field type: F
data[, 31] <- as.numeric(data[, 31])
attributes(data)$variable.labels[31] <- "[Een optreden van een band]"
data[, 31] <- factor(data[, 31], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[31] <- "goingOutFreqPeriod_band"
# LimeSurvey Field type: F
data[, 32] <- as.numeric(data[, 32])
attributes(data)$variable.labels[32] <- "[Een kleinschalig binnenfeest of -festival(minder dan 5000 bezoekers)]"
data[, 32] <- factor(data[, 32], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[32] <- "goingOutFreqPeriod_smallPartyInside"
# LimeSurvey Field type: F
data[, 33] <- as.numeric(data[, 33])
attributes(data)$variable.labels[33] <- "[Een groot binnenfeest of -festival(meer dan 5000 bezoekers)]"
data[, 33] <- factor(data[, 33], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[33] <- "goingOutFreqPeriod_bigPartyInside"
# LimeSurvey Field type: F
data[, 34] <- as.numeric(data[, 34])
attributes(data)$variable.labels[34] <- "[Een kleinschalig buitenfeest of -festival(minder dan 5000 bezoekers)]"
data[, 34] <- factor(data[, 34], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[34] <- "goingOutFreqPeriod_smallPartyOutside"
# LimeSurvey Field type: F
data[, 35] <- as.numeric(data[, 35])
attributes(data)$variable.labels[35] <- "[Een groot buitenfeest of -festival(meer dan 5000 bezoekers)]"
data[, 35] <- factor(data[, 35], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[35] <- "goingOutFreqPeriod_bigPartyOutside"
# LimeSurvey Field type: A
data[, 36] <- as.character(data[, 36])
attributes(data)$variable.labels[36] <- "{(goingOutFreqNr_houseparty_nr * goingOutFreqPeriod_houseparty) + (goingOutFreqNr_cafe_nr * goingOutFreqPeriod_cafe) + (goingOutFreqNr_disco_nr * goingOutFreqPeriod_disco) + (goingOutFreqNr_band_nr * goingOutFreqPeriod_band) + (goingOutFreqNr_smallPartyInside_nr * goingOutFreqPeriod_smallPartyInside) + (goingOutFreqNr_bigPartyInside_nr * goingOutFreqPeriod_bigPartyInside) + (goingOutFreqNr_smallPartyOutside_nr * goingOutFreqPeriod_smallPartyOutside) + (goingOutFreqNr_bigPartyOutside_nr * goingOutFreqPeriod_bigPartyOutside)}"
names(data)[36] <- "totalGoingOutFreq"
# LimeSurvey Field type: F
data[, 37] <- as.numeric(data[, 37])
attributes(data)$variable.labels[37] <- "[Het klopt echt.] Je hebt aangegeven dat je in het afgelopen halfjaar {totalGoingOutFreq} keer op de een of andere manier bent uitgegaan. Het afgelopen halfjaar omvatte 182 dagen, dus dat betekent dat je zo ongeveer elke dag bent uitgegaan. Weet je zeker dat dat klopt, of is er misschien iets fout gegaan?"
data[, 37] <- factor(data[, 37], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[37] <- "tooMuchGoingOutCheck_isCorrect"
# LimeSurvey Field type: F
data[, 38] <- as.numeric(data[, 38])
attributes(data)$variable.labels[38] <- "[Het klopt echt.] Je hebt aangegeven dat je in het afgelopen halfjaar {totalGoingOutFreq} keer op de een of andere manier bent uitgegaan. Party Panel richt zich op het Nederlandse uitgaansleven, dus als je echt niet vaak uitgaat, kan het zijn dat de vragen niet van toepassing zijn. Daarom even deze check: weet je zeker dat dat klopt, of is er misschien iets fout gegaan?"
data[, 38] <- factor(data[, 38], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[38] <- "rarelyWentOutCheck_isCorrect"
# LimeSurvey Field type: A
data[, 39] <- as.character(data[, 39])
attributes(data)$variable.labels[39] <- "[Een feestje bij mensen thuis] This is a hidden question used to store which venues this participant visits."
names(data)[39] <- "visitedVenues_houseparty"
# LimeSurvey Field type: A
data[, 40] <- as.character(data[, 40])
attributes(data)$variable.labels[40] <- "[Een café, kroeg, of bar] This is a hidden question used to store which venues this participant visits."
names(data)[40] <- "visitedVenues_cafe"
# LimeSurvey Field type: A
data[, 41] <- as.character(data[, 41])
attributes(data)$variable.labels[41] <- "[Een discotheek of club] This is a hidden question used to store which venues this participant visits."
names(data)[41] <- "visitedVenues_disco"
# LimeSurvey Field type: A
data[, 42] <- as.character(data[, 42])
attributes(data)$variable.labels[42] <- "[Een optreden van een band] This is a hidden question used to store which venues this participant visits."
names(data)[42] <- "visitedVenues_band"
# LimeSurvey Field type: A
data[, 43] <- as.character(data[, 43])
attributes(data)$variable.labels[43] <- "[Een kleinschalig binnenfeest of -festival] This is a hidden question used to store which venues this participant visits."
names(data)[43] <- "visitedVenues_smallPartyInside"
# LimeSurvey Field type: A
data[, 44] <- as.character(data[, 44])
attributes(data)$variable.labels[44] <- "[Een groot binnenfeest of -festival] This is a hidden question used to store which venues this participant visits."
names(data)[44] <- "visitedVenues_bigPartyInside"
# LimeSurvey Field type: A
data[, 45] <- as.character(data[, 45])
attributes(data)$variable.labels[45] <- "[Een kleinschalig buitenfeest of -festival] This is a hidden question used to store which venues this participant visits."
names(data)[45] <- "visitedVenues_smallPartyOutside"
# LimeSurvey Field type: A
data[, 46] <- as.character(data[, 46])
attributes(data)$variable.labels[46] <- "[Een groot buitenfeest of -festival] This is a hidden question used to store which venues this participant visits."
names(data)[46] <- "visitedVenues_bigPartyOutside"
# LimeSurvey Field type: A
data[, 47] <- as.character(data[, 47])
attributes(data)$variable.labels[47] <- "[Favoriete muziekgenre voor uitgaan:] Wat is jouw favoriete muziek voor als je uit gaat?"
names(data)[47] <- "musicPrefParty_genre1"
# LimeSurvey Field type: A
data[, 48] <- as.character(data[, 48])
attributes(data)$variable.labels[48] <- "[Op-één-na favoriete genre voor uitgaan:] Wat is jouw favoriete muziek voor als je uit gaat?"
names(data)[48] <- "musicPrefParty_genre2"
# LimeSurvey Field type: A
data[, 49] <- as.character(data[, 49])
attributes(data)$variable.labels[49] <- "[Op-twee-na favoriete genre voor uitgaan:] Wat is jouw favoriete muziek voor als je uit gaat?"
names(data)[49] <- "musicPrefParty_genre3"
# LimeSurvey Field type: F
data[, 50] <- as.numeric(data[, 50])
attributes(data)$variable.labels[50] <- "[Een partner (vriend of vriendin)] 	We gaan je verderop vragen stellen over de mensen in je omgeving, zoals je vrienden, ouders, en broers en zussen.	Zou je hier de mensen die er niet zijn kunnen uitvinken?"
data[, 50] <- factor(data[, 50], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[50] <- "socialReferents_partner"
# LimeSurvey Field type: F
data[, 51] <- as.numeric(data[, 51])
attributes(data)$variable.labels[51] <- "[Beste vrienden/vriendinnen] 	We gaan je verderop vragen stellen over de mensen in je omgeving, zoals je vrienden, ouders, en broers en zussen.	Zou je hier de mensen die er niet zijn kunnen uitvinken?"
data[, 51] <- factor(data[, 51], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[51] <- "socialReferents_bestFriends"
# LimeSurvey Field type: F
data[, 52] <- as.numeric(data[, 52])
attributes(data)$variable.labels[52] <- "[Andere vrienden] 	We gaan je verderop vragen stellen over de mensen in je omgeving, zoals je vrienden, ouders, en broers en zussen.	Zou je hier de mensen die er niet zijn kunnen uitvinken?"
data[, 52] <- factor(data[, 52], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[52] <- "socialReferents_otherFriends"
# LimeSurvey Field type: F
data[, 53] <- as.numeric(data[, 53])
attributes(data)$variable.labels[53] <- "[1 of meer ouders en/of verzorgers] 	We gaan je verderop vragen stellen over de mensen in je omgeving, zoals je vrienden, ouders, en broers en zussen.	Zou je hier de mensen die er niet zijn kunnen uitvinken?"
data[, 53] <- factor(data[, 53], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[53] <- "socialReferents_parents"
# LimeSurvey Field type: F
data[, 54] <- as.numeric(data[, 54])
attributes(data)$variable.labels[54] <- "[1 of meer broers en/of zussen] 	We gaan je verderop vragen stellen over de mensen in je omgeving, zoals je vrienden, ouders, en broers en zussen.	Zou je hier de mensen die er niet zijn kunnen uitvinken?"
data[, 54] <- factor(data[, 54], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[54] <- "socialReferents_siblings"
# LimeSurvey Field type: A
data[, 55] <- as.character(data[, 55])
attributes(data)$variable.labels[55] <- "{if(informedConsent == \"yes\", 1, 0)}"
names(data)[55] <- "accessToSurvey"
# LimeSurvey Field type: F
data[, 56] <- as.numeric(data[, 56])
attributes(data)$variable.labels[56] <- "Omdat Party Panel over het uitgaansleven gaat willen we graag ook weten of je middelen gebruikt. Als je dat niet wil zeggen of de vragen wil overslaan kun je dat hier aangeven."
data[, 56] <- factor(data[, 56], levels=c(1,0),labels=c("Ik wil deze vragen wel beantwoorden.", "Ik wil deze vragen liever overslaan."))
names(data)[56] <- "substanceUseWilling"
# LimeSurvey Field type: A
data[, 57] <- as.character(data[, 57])
attributes(data)$variable.labels[57] <- "[Alcohol] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[57] <- "substUseFreqNr_alc_nr"
# LimeSurvey Field type: A
data[, 58] <- as.character(data[, 58])
attributes(data)$variable.labels[58] <- "[Tabak (sigaretten, sigaren)] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[58] <- "substUseFreqNr_tbc_nr"
# LimeSurvey Field type: A
data[, 59] <- as.character(data[, 59])
attributes(data)$variable.labels[59] <- "[Cannabis (wiet, hasj)] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[59] <- "substUseFreqNr_cnb_nr"
# LimeSurvey Field type: A
data[, 60] <- as.character(data[, 60])
attributes(data)$variable.labels[60] <- "[XTC pillen] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[60] <- "substUseFreqNr_xtc_nr"
# LimeSurvey Field type: A
data[, 61] <- as.character(data[, 61])
attributes(data)$variable.labels[61] <- "[MDMA poeder] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[61] <- "substUseFreqNr_mdma_nr"
# LimeSurvey Field type: A
data[, 62] <- as.character(data[, 62])
attributes(data)$variable.labels[62] <- "[4-FA (4FMP)] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[62] <- "substUseFreqNr_fourfa_nr"
# LimeSurvey Field type: A
data[, 63] <- as.character(data[, 63])
attributes(data)$variable.labels[63] <- "[Cocaine] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[63] <- "substUseFreqNr_coke_nr"
# LimeSurvey Field type: A
data[, 64] <- as.character(data[, 64])
attributes(data)$variable.labels[64] <- "[Speed] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[64] <- "substUseFreqNr_spd_nr"
# LimeSurvey Field type: A
data[, 65] <- as.character(data[, 65])
attributes(data)$variable.labels[65] <- "[Lachgas] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[65] <- "substUseFreqNr_gas_nr"
# LimeSurvey Field type: A
data[, 66] <- as.character(data[, 66])
attributes(data)$variable.labels[66] <- "[GHB] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[66] <- "substUseFreqNr_ghb_nr"
# LimeSurvey Field type: A
data[, 67] <- as.character(data[, 67])
attributes(data)$variable.labels[67] <- "[2CB] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[67] <- "substUseFreqNr_2cb_nr"
# LimeSurvey Field type: A
data[, 68] <- as.character(data[, 68])
attributes(data)$variable.labels[68] <- "[Ketamine] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[68] <- "substUseFreqNr_ket_nr"
# LimeSurvey Field type: F
data[, 69] <- as.numeric(data[, 69])
attributes(data)$variable.labels[69] <- "[Alcohol]"
data[, 69] <- factor(data[, 69], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[69] <- "substUseFreqPeriod_alc"
# LimeSurvey Field type: F
data[, 70] <- as.numeric(data[, 70])
attributes(data)$variable.labels[70] <- "[Tabak (sigaretten, sigaren)]"
data[, 70] <- factor(data[, 70], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[70] <- "substUseFreqPeriod_tbc"
# LimeSurvey Field type: F
data[, 71] <- as.numeric(data[, 71])
attributes(data)$variable.labels[71] <- "[Cannabis (wiet, hasj)]"
data[, 71] <- factor(data[, 71], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[71] <- "substUseFreqPeriod_cnb"
# LimeSurvey Field type: F
data[, 72] <- as.numeric(data[, 72])
attributes(data)$variable.labels[72] <- "[XTC pillen]"
data[, 72] <- factor(data[, 72], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[72] <- "substUseFreqPeriod_xtc"
# LimeSurvey Field type: F
data[, 73] <- as.numeric(data[, 73])
attributes(data)$variable.labels[73] <- "[MDMA poeder]"
data[, 73] <- factor(data[, 73], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[73] <- "substUseFreqPeriod_mdma"
# LimeSurvey Field type: F
data[, 74] <- as.numeric(data[, 74])
attributes(data)$variable.labels[74] <- "[4-FA (4FMP)]"
data[, 74] <- factor(data[, 74], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[74] <- "substUseFreqPeriod_fourf"
# LimeSurvey Field type: F
data[, 75] <- as.numeric(data[, 75])
attributes(data)$variable.labels[75] <- "[Cocaine]"
data[, 75] <- factor(data[, 75], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[75] <- "substUseFreqPeriod_coke"
# LimeSurvey Field type: F
data[, 76] <- as.numeric(data[, 76])
attributes(data)$variable.labels[76] <- "[Speed]"
data[, 76] <- factor(data[, 76], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[76] <- "substUseFreqPeriod_spd"
# LimeSurvey Field type: F
data[, 77] <- as.numeric(data[, 77])
attributes(data)$variable.labels[77] <- "[Lachgas]"
data[, 77] <- factor(data[, 77], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[77] <- "substUseFreqPeriod_gas"
# LimeSurvey Field type: F
data[, 78] <- as.numeric(data[, 78])
attributes(data)$variable.labels[78] <- "[GHB]"
data[, 78] <- factor(data[, 78], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[78] <- "substUseFreqPeriod_ghb"
# LimeSurvey Field type: F
data[, 79] <- as.numeric(data[, 79])
attributes(data)$variable.labels[79] <- "[2CB]"
data[, 79] <- factor(data[, 79], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[79] <- "substUseFreqPeriod_2cb"
# LimeSurvey Field type: F
data[, 80] <- as.numeric(data[, 80])
attributes(data)$variable.labels[80] <- "[Ketamine]"
data[, 80] <- factor(data[, 80], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[80] <- "substUseFreqPeriod_ket"
# LimeSurvey Field type: A
data[, 81] <- as.character(data[, 81])
attributes(data)$variable.labels[81] <- "[Eerste andere middel] Heb je nog iets anders gebruikt dat niet in dit lijstje stond? Dan kun je dat hier aangeven. Anders kun je dit gewoon leeg laten."
names(data)[81] <- "otherSubstances_otherSubstance1"
# LimeSurvey Field type: A
data[, 82] <- as.character(data[, 82])
attributes(data)$variable.labels[82] <- "[Tweede andere middel] Heb je nog iets anders gebruikt dat niet in dit lijstje stond? Dan kun je dat hier aangeven. Anders kun je dit gewoon leeg laten."
names(data)[82] <- "otherSubstances_otherSubstance2"
# LimeSurvey Field type: A
data[, 83] <- as.character(data[, 83])
attributes(data)$variable.labels[83] <- "[Derde andere middel] Heb je nog iets anders gebruikt dat niet in dit lijstje stond? Dan kun je dat hier aangeven. Anders kun je dit gewoon leeg laten."
names(data)[83] <- "otherSubstances_otherSubstance3"
# LimeSurvey Field type: A
data[, 84] <- as.character(data[, 84])
attributes(data)$variable.labels[84] <- "[Vierde andere middel] Heb je nog iets anders gebruikt dat niet in dit lijstje stond? Dan kun je dat hier aangeven. Anders kun je dit gewoon leeg laten."
names(data)[84] <- "otherSubstances_otherSubstance4"
# LimeSurvey Field type: A
data[, 85] <- as.character(data[, 85])
attributes(data)$variable.labels[85] <- "[Vijfde andere middel] Heb je nog iets anders gebruikt dat niet in dit lijstje stond? Dan kun je dat hier aangeven. Anders kun je dit gewoon leeg laten."
names(data)[85] <- "otherSubstances_otherSubstance5"
# LimeSurvey Field type: A
data[, 86] <- as.character(data[, 86])
attributes(data)$variable.labels[86] <- "[{otherSubstances_otherSubstance1.NAOK}] [keer ...] Kun je ook aangeven hoe vaak?"
names(data)[86] <- "otherSubstFreqNr_otherSubstance1_nr"
# LimeSurvey Field type: A
data[, 87] <- as.character(data[, 87])
attributes(data)$variable.labels[87] <- "[{otherSubstances_otherSubstance2.NAOK}] [keer ...] Kun je ook aangeven hoe vaak?"
names(data)[87] <- "otherSubstFreqNr_otherSubstance2_nr"
# LimeSurvey Field type: A
data[, 88] <- as.character(data[, 88])
attributes(data)$variable.labels[88] <- "[{otherSubstances_otherSubstance3.NAOK}] [keer ...] Kun je ook aangeven hoe vaak?"
names(data)[88] <- "otherSubstFreqNr_otherSubstance3_nr"
# LimeSurvey Field type: A
data[, 89] <- as.character(data[, 89])
attributes(data)$variable.labels[89] <- "[{otherSubstances_otherSubstance4.NAOK}] [keer ...] Kun je ook aangeven hoe vaak?"
names(data)[89] <- "otherSubstFreqNr_otherSubstance4_nr"
# LimeSurvey Field type: A
data[, 90] <- as.character(data[, 90])
attributes(data)$variable.labels[90] <- "[{otherSubstances_otherSubstance5.NAOK}] [keer ...] Kun je ook aangeven hoe vaak?"
names(data)[90] <- "otherSubstFreqNr_otherSubstance5_nr"
# LimeSurvey Field type: F
data[, 91] <- as.numeric(data[, 91])
attributes(data)$variable.labels[91] <- "[{otherSubstances_otherSubstance1.NAOK}]"
data[, 91] <- factor(data[, 91], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[91] <- "otherSubstFreqPeriod_otherSubstance1"
# LimeSurvey Field type: F
data[, 92] <- as.numeric(data[, 92])
attributes(data)$variable.labels[92] <- "[{otherSubstances_otherSubstance2.NAOK}]"
data[, 92] <- factor(data[, 92], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[92] <- "otherSubstFreqPeriod_otherSubstance2"
# LimeSurvey Field type: F
data[, 93] <- as.numeric(data[, 93])
attributes(data)$variable.labels[93] <- "[{otherSubstances_otherSubstance3.NAOK}]"
data[, 93] <- factor(data[, 93], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[93] <- "otherSubstFreqPeriod_otherSubstance3"
# LimeSurvey Field type: F
data[, 94] <- as.numeric(data[, 94])
attributes(data)$variable.labels[94] <- "[{otherSubstances_otherSubstance4.NAOK}]"
data[, 94] <- factor(data[, 94], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[94] <- "otherSubstFreqPeriod_otherSubstance4"
# LimeSurvey Field type: F
data[, 95] <- as.numeric(data[, 95])
attributes(data)$variable.labels[95] <- "[{otherSubstances_otherSubstance5.NAOK}]"
data[, 95] <- factor(data[, 95], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[95] <- "otherSubstFreqPeriod_otherSubstance5"
# LimeSurvey Field type: F
data[, 96] <- as.numeric(data[, 96])
attributes(data)$variable.labels[96] <- "Hoeveel uur slaap je op een gewone door-de-weekse nacht?"
names(data)[96] <- "weekdaySleep"
# LimeSurvey Field type: F
data[, 97] <- as.numeric(data[, 97])
attributes(data)$variable.labels[97] <- "Hoe lang schat je dat je meestal slaapt als je \'s nachts uit bent geweest?"
names(data)[97] <- "goingOutSleep"
# LimeSurvey Field type: A
data[, 98] <- as.character(data[, 98])
attributes(data)$variable.labels[98] <- "Hoe lang schat je dat je meestal slaapt als je op een meerdaags festival bent?"
data[, 98] <- factor(data[, 98], levels=c("no"),labels=c("Ik ga niet naar meerdaagse festivals."))
names(data)[98] <- "atFestivalSleep"
# LimeSurvey Field type: F
data[, 99] <- as.numeric(data[, 99])
attributes(data)$variable.labels[99] <- "[Andere] Hoe lang schat je dat je meestal slaapt als je op een meerdaags festival bent?"
names(data)[99] <- "atFestivalSleep_other"
# LimeSurvey Field type: A
data[, 100] <- as.character(data[, 100])
attributes(data)$variable.labels[100] <- "Hoe lang schat je dat je meestal slaapt als je naar een eendaags festival bent geweest?"
data[, 100] <- factor(data[, 100], levels=c("no"),labels=c("Ik ga niet naar eendaagse festivals."))
names(data)[100] <- "afterFestivalSleep"
# LimeSurvey Field type: F
data[, 101] <- as.numeric(data[, 101])
attributes(data)$variable.labels[101] <- "[Andere] Hoe lang schat je dat je meestal slaapt als je naar een eendaags festival bent geweest?"
names(data)[101] <- "afterFestivalSleep_other"
# LimeSurvey Field type: F
data[, 102] <- as.numeric(data[, 102])
attributes(data)$variable.labels[102] <- "[Zorg jij wel eens dat je de drie nachten voordat je uitgaat genoeg slaapt?] 	Sommige mensen zorgen dat ze de nachten voordat ze uitgaan en/of nadat ze uit zijn geweest voldoende slapen, omdat ze (misschien) minder slapen als ze uitgaan.	Hoe is dat voor jou? Zorg jij dat je de drie nachten voor en de drie nachten na het uitgaan genoeg slaapt?"
data[, 102] <- factor(data[, 102], levels=c(1,2,3,4,5),labels=c("(Bijna) nooit", "Soms", "Regelmatig", "Vaak", "(Bijna) altijd"))
names(data)[102] <- "sleepBehav_pre"
# LimeSurvey Field type: F
data[, 103] <- as.numeric(data[, 103])
attributes(data)$variable.labels[103] <- "[Zorg jij wel eens dat je de drie nachten nadat je uit bent geweest genoeg slaapt?] 	Sommige mensen zorgen dat ze de nachten voordat ze uitgaan en/of nadat ze uit zijn geweest voldoende slapen, omdat ze (misschien) minder slapen als ze uitgaan.	Hoe is dat voor jou? Zorg jij dat je de drie nachten voor en de drie nachten na het uitgaan genoeg slaapt?"
data[, 103] <- factor(data[, 103], levels=c(1,2,3,4,5),labels=c("(Bijna) nooit", "Soms", "Regelmatig", "Vaak", "(Bijna) altijd"))
names(data)[103] <- "sleepBehav_post"
# LimeSurvey Field type: F
data[, 104] <- as.numeric(data[, 104])
attributes(data)$variable.labels[104] <- "Deze vragenlijst gaat over flirten in het uitgaansleven, specifiek over flirten waarbij persoonlijke grenzen worden overschreden.	Heb jij wel eens een heel onprettige ervaring gehad met flirten, intimiteit, of seks waarbij je grenzen werden overschreden en die een sterke negatieve indruk op je maakte?"
data[, 104] <- factor(data[, 104], levels=c(0,1),labels=c("Nee", "Ja"))
names(data)[104] <- "negativeExperience"
# LimeSurvey Field type: F
data[, 105] <- as.numeric(data[, 105])
attributes(data)$variable.labels[105] <- "Als het je fijn lijkt om eens met iemand te praten over je ervaringen, dan zijn er allerlei mensen om je te helpen. Hieronder staat een lijstje:			Sense kan helpen met allerlei vragen over seks en alles wat er mee samenhangt. Ze zijn beschikbaar via chat, telefoon, en email, maar je kunt ook een afspraak maken. Hun website is https://sense.info/nl/hulp-advies en hun telefoonnummer is 0900 402 4020 (5 cent per minuut, plus de kosten van je mobiele provider)			Een andere organisatie waar je terecht kunt is Verbreek de Stilte. Zij bieden volledig anoniem, via chat, mail of telefoon advies en hulp. Hun website is https://verbreekdestilte.nl en hun telefoonnummer is 0900 9999 001 (dit is een gratis nummer). Zij kunnen je ook doorverwijzen naar gratis hulp bij jou in de buurt.			Voor jongeren tussen 13 en 18 is er de kindertelefoon, waar je terecht kunt met allerlei onderwerpen. Hun website is https://www.kindertelefoon.nl/13-18/, en hun telefoonnummer is 0800 0432 (dit is ook een gratis nummer).	Als je het soms nog moeilijk hebt met je ervaringen raden wij je af om deze vragenlijst in te vullen. Deze vragenlijst gaat over lichte grensoverschrijdingen die niet als emotioneel belastend worden ervaren: maar toch zou de vragenlijst je kunnen herinneren aan je onprettige ervaringen.	Wil je toch verder, dan kun je dat hieronder aangeven. Onthoud dat je sowieso elk moment kunt stoppen als je wil."
data[, 105] <- factor(data[, 105], levels=c(0,1),labels=c("Ik wil inderdaad liever stoppen.", "Ik wil toch graag de vragenlijst invullen."))
names(data)[105] <- "referralAndConfirmat"
# LimeSurvey Field type: A
data[, 106] <- as.character(data[, 106])
attributes(data)$variable.labels[106] <- "De vragenlijst is nu afgerond.	Hier weer het lijstje met mensen die je kunnen helpen mocht je behoefte hebben om over je ervaringen te praten:			Sense kan helpen met allerlei vragen over seks en alles wat er mee samenhangt. Ze zijn beschikbaar via chat, telefoon, en email, maar je kunt ook een afspraak maken. Hun website is https://sense.info/nl/hulp-advies en hun telefoonnummer is 0900 402 4020 (5 cent per minuut, plus de kosten van je mobiele provider)			Een andere organisatie waar je terecht kunt is Verbreek de Stilte. Zij bieden volledig anoniem, via chat, mail of telefoon advies en hulp. Hun website is https://verbreekdestilte.nl en hun telefoonnummer is 0900 9999 001 (dit is een gratis nummer). Zij kunnen je ook doorverwijzen naar gratis hulp bij jou in de buurt.			Voor jongeren tussen 13 en 18 is er de kindertelefoon, waar je terecht kunt met allerlei onderwerpen. Hun website is https://www.kindertelefoon.nl/13-18/, en hun telefoonnummer is 0800 0432 (dit is ook een gratis nummer)."
names(data)[106] <- "negativeExpClosing"
# LimeSurvey Field type: F
data[, 107] <- as.numeric(data[, 107])
attributes(data)$variable.labels[107] <- "[Ik vind het beantwoorden van één deel wel genoeg.] 	We willen de vragenlijst kort houden (hij duurt ongeveer 20-30 minuten). We hebben hem daarom in tweeën gedeeld, en iedereen krijgt een ander deel:			{if(randomNumber1==1, \"\", \"\")}Zorgen dat je de drie nachten voordat je uitgaat 8 uur slaap krijgt {if(randomNumber1==1, \" (deze heb jij toegewezen gekregen)\", \"\")}			{if(randomNumber1==2, \"\", \"\")}Zorgen dat je de drie nachten nadat je uit bent geweest 8 uur slaap krijgt {if(randomNumber1==2, \" (deze heb jij toegewezen gekregen)\", \"\")}	Wil je meer invullen? Dan kun je dat hieronder aangeven.	Houd er wel rekening mee dat elke deel extra tijd kost (ongeveer 20 minuten per deel)."
data[, 107] <- factor(data[, 107], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[107] <- "subsurveyChoice_0"
# LimeSurvey Field type: F
data[, 108] <- as.numeric(data[, 108])
attributes(data)$variable.labels[108] <- "[Ik wil ook graag de vragen beantwoorden over zorgen dat ik de drie nachten voordat ik uit ga 8 uur slaap krijg] 	We willen de vragenlijst kort houden (hij duurt ongeveer 20-30 minuten). We hebben hem daarom in tweeën gedeeld, en iedereen krijgt een ander deel:			{if(randomNumber1==1, \"\", \"\")}Zorgen dat je de drie nachten voordat je uitgaat 8 uur slaap krijgt {if(randomNumber1==1, \" (deze heb jij toegewezen gekregen)\", \"\")}			{if(randomNumber1==2, \"\", \"\")}Zorgen dat je de drie nachten nadat je uit bent geweest 8 uur slaap krijgt {if(randomNumber1==2, \" (deze heb jij toegewezen gekregen)\", \"\")}	Wil je meer invullen? Dan kun je dat hieronder aangeven.	Houd er wel rekening mee dat elke deel extra tijd kost (ongeveer 20 minuten per deel)."
data[, 108] <- factor(data[, 108], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[108] <- "subsurveyChoice_1"
# LimeSurvey Field type: F
data[, 109] <- as.numeric(data[, 109])
attributes(data)$variable.labels[109] <- "[Ik wil ook graag de vragen beantwoorden over zorgen dat ik de drie nachten nadat ik uit ben geweest 8 uur slaap krijg] 	We willen de vragenlijst kort houden (hij duurt ongeveer 20-30 minuten). We hebben hem daarom in tweeën gedeeld, en iedereen krijgt een ander deel:			{if(randomNumber1==1, \"\", \"\")}Zorgen dat je de drie nachten voordat je uitgaat 8 uur slaap krijgt {if(randomNumber1==1, \" (deze heb jij toegewezen gekregen)\", \"\")}			{if(randomNumber1==2, \"\", \"\")}Zorgen dat je de drie nachten nadat je uit bent geweest 8 uur slaap krijgt {if(randomNumber1==2, \" (deze heb jij toegewezen gekregen)\", \"\")}	Wil je meer invullen? Dan kun je dat hieronder aangeven.	Houd er wel rekening mee dat elke deel extra tijd kost (ongeveer 20 minuten per deel)."
data[, 109] <- factor(data[, 109], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[109] <- "subsurveyChoice_2"
# LimeSurvey Field type: A
data[, 110] <- as.character(data[, 110])
attributes(data)$variable.labels[110] <- "{if((informedConsent == \"yes\") && (1 || ((negativeExperience.NAOK == 0) || (referralAndConfirmat.NAOK == 1))), 1, 0)}"
names(data)[110] <- "accessToSurvey2"
# LimeSurvey Field type: A
data[, 111] <- as.character(data[, 111])
attributes(data)$variable.labels[111] <- "Fantastisch dat je alle vragen in deze studie wil beantwoorden! Dat helpt ons echt enorm.	Houd er wel rekening mee dat de vragenlijst natuurlijk steeds langer wordt. Als je één deel invult ben je ongeveer een half uur bezig, en met alle drie de delen ongeveer een uur.	Als je daar geen tijd voor hebt, kun je altijd onderaan aangeven dat je later verder wil gaan. Of, als je dat toch te lang vindt, dan kun je hierboven weer een of twee onderdelen uit zetten."
names(data)[111] <- "fullSubsurveys"
# LimeSurvey Field type: F
data[, 112] <- as.numeric(data[, 112])
attributes(data)$variable.labels[112] <- "[Als ik niet kan slapen, dan is toch in bed blijven liggen ...Slecht voor me | Goed voor me] 	We starten met wat algemene vragen over slaap."
data[, 112] <- factor(data[, 112], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[112] <- "generalBeliefs_stay"
# LimeSurvey Field type: F
data[, 113] <- as.numeric(data[, 113])
attributes(data)$variable.labels[113] <- "[In bed liggen en niet in slaap kunnen komen is voor mij ...Rustgevend | Heel erg frustrerend] 	We starten met wat algemene vragen over slaap."
data[, 113] <- factor(data[, 113], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[113] <- "generalBeliefs_frust"
# LimeSurvey Field type: F
data[, 114] <- as.numeric(data[, 114])
attributes(data)$variable.labels[114] <- "[Als ik voordat ik uit ga zorg dat ik voldoende slaap krijg, dan ...Maakt dat niet uit | Vangt dat slaapgebrek op] 	We starten met wat algemene vragen over slaap."
data[, 114] <- factor(data[, 114], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[114] <- "generalBeliefs_bffr"
# LimeSurvey Field type: F
data[, 115] <- as.numeric(data[, 115])
attributes(data)$variable.labels[115] <- "[Als ik voordat ik uit ga zorg dat ik voldoende slaap krijg, dan ...Geniet ik minder van het uitgaan | Kan ik meer genieten van het uitgaan] 	We starten met wat algemene vragen over slaap."
data[, 115] <- factor(data[, 115], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[115] <- "generalBeliefs_njoy"
# LimeSurvey Field type: A
data[, 116] <- as.character(data[, 116])
attributes(data)$variable.labels[116] <- "{if((randomNumber1==1) || (subsurveyChoice_1.NAOK==\"Y\"), 1, 0)}"
names(data)[116] <- "preQuestions"
# LimeSurvey Field type: A
data[, 117] <- as.character(data[, 117])
attributes(data)$variable.labels[117] <- "{if((randomNumber1==2) || (subsurveyChoice_2.NAOK==\"Y\"), 1, 0)}"
names(data)[117] <- "postQuestions"
# LimeSurvey Field type: F
data[, 118] <- as.numeric(data[, 118])
attributes(data)$variable.labels[118] <- "[Ik ben van plan om te zorgen dat ik de drie nachten voordat ik uit ga genoeg slaap krijg. Absoluut niet | Absoluut wel] 	Deze vragen gaan over hoe je denkt over zorgen dat je de drie nachten voordat je uitgaat genoeg slaap krijgt."
data[, 118] <- factor(data[, 118], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[118] <- "preCIBERlite_intention"
# LimeSurvey Field type: F
data[, 119] <- as.numeric(data[, 119])
attributes(data)$variable.labels[119] <- "[Zorgen dat ik de drie nachten voordat ik uit ga genoeg slaap krijg is voor mij...Slecht | Goed] 	Deze vragen gaan over hoe je denkt over zorgen dat je de drie nachten voordat je uitgaat genoeg slaap krijgt."
data[, 119] <- factor(data[, 119], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[119] <- "preCIBERlite_attInstrumental"
# LimeSurvey Field type: F
data[, 120] <- as.numeric(data[, 120])
attributes(data)$variable.labels[120] <- "[Zorgen dat ik de drie nachten voordat ik uit ga genoeg slaap krijg is voor mij... Onprettig | Prettig] 	Deze vragen gaan over hoe je denkt over zorgen dat je de drie nachten voordat je uitgaat genoeg slaap krijgt."
data[, 120] <- factor(data[, 120], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[120] <- "preCIBERlite_attExperiential"
# LimeSurvey Field type: F
data[, 121] <- as.numeric(data[, 121])
attributes(data)$variable.labels[121] <- "[Als ik zorg dat ik de drie nachten voordat ik uit ga genoeg slaap krijg, dan keuren de meeste mensen die belangrijk voor mij zijn dat...Af | Goed] 	Deze vragen gaan over hoe je denkt over zorgen dat je de drie nachten voordat je uitgaat genoeg slaap krijgt."
data[, 121] <- factor(data[, 121], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[121] <- "preCIBERlite_pnInjunctive"
# LimeSurvey Field type: F
data[, 122] <- as.numeric(data[, 122])
attributes(data)$variable.labels[122] <- "[Hoeveel mensen zoals jij zorgen dat ze de drie nachten voordat ze uit gaan genoeg slaap krijgen?Niemand | Iedereen] 	Deze vragen gaan over hoe je denkt over zorgen dat je de drie nachten voordat je uitgaat genoeg slaap krijgt."
data[, 122] <- factor(data[, 122], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[122] <- "preCIBERlite_pnDescriptive"
# LimeSurvey Field type: F
data[, 123] <- as.numeric(data[, 123])
attributes(data)$variable.labels[123] <- "[Ik heb er vertrouwen in dat ik, als ik dat wil, kan zorgen dat ik de drie nachten voordat ik uit ga genoeg slaap krijg.Helemaal geen vertrouwen | Heel veel vertrouwen] 	Deze vragen gaan over hoe je denkt over zorgen dat je de drie nachten voordat je uitgaat genoeg slaap krijgt."
data[, 123] <- factor(data[, 123], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[123] <- "preCIBERlite_pbcCapacity"
# LimeSurvey Field type: F
data[, 124] <- as.numeric(data[, 124])
attributes(data)$variable.labels[124] <- "[Of ik de drie nachten voordat ik uit ga genoeg slaap krijg bepaal ik...Helemaal niet zelf | Helemaal zelf] 	Deze vragen gaan over hoe je denkt over zorgen dat je de drie nachten voordat je uitgaat genoeg slaap krijgt."
data[, 124] <- factor(data[, 124], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[124] <- "preCIBERlite_pbcControl"
# LimeSurvey Field type: F
data[, 125] <- as.numeric(data[, 125])
attributes(data)$variable.labels[125] <- "[Ik ben van plan om te zorgen dat ik de drie nachten nadat ik uit bent geweest genoeg slaap krijg. Absoluut niet | Absoluut wel] 	Deze vragen gaan over hoe je denkt over zorgen dat je de drie nachten nadat je uit bent geweest genoeg slaap krijgt."
data[, 125] <- factor(data[, 125], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[125] <- "postCIBERlite_intention"
# LimeSurvey Field type: F
data[, 126] <- as.numeric(data[, 126])
attributes(data)$variable.labels[126] <- "[Zorgen dat ik de drie nachten nadat ik uit ben geweest genoeg slaap krijg is voor mij...Slecht | Goed] 	Deze vragen gaan over hoe je denkt over zorgen dat je de drie nachten nadat je uit bent geweest genoeg slaap krijgt."
data[, 126] <- factor(data[, 126], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[126] <- "postCIBERlite_attInstrumental"
# LimeSurvey Field type: F
data[, 127] <- as.numeric(data[, 127])
attributes(data)$variable.labels[127] <- "[Zorgen dat ik de drie nachten nadat ik uit bent geweest genoeg slaap krijg is voor mij... Onprettig | Prettig] 	Deze vragen gaan over hoe je denkt over zorgen dat je de drie nachten nadat je uit bent geweest genoeg slaap krijgt."
data[, 127] <- factor(data[, 127], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[127] <- "postCIBERlite_attExperiential"
# LimeSurvey Field type: F
data[, 128] <- as.numeric(data[, 128])
attributes(data)$variable.labels[128] <- "[Als ik zorg dat ik de drie nachten nadat ik uit ben geweest genoeg slaap krijg, dan keuren de meeste mensen die belangrijk voor mij zijn dat...Af | Goed] 	Deze vragen gaan over hoe je denkt over zorgen dat je de drie nachten nadat je uit bent geweest genoeg slaap krijgt."
data[, 128] <- factor(data[, 128], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[128] <- "postCIBERlite_pnInjunctive"
# LimeSurvey Field type: F
data[, 129] <- as.numeric(data[, 129])
attributes(data)$variable.labels[129] <- "[Hoeveel mensen zoals jij zorgen dat ze de drie nachten nadat ze uit zijn geweest genoeg slaap krijgen?Niemand | Iedereen] 	Deze vragen gaan over hoe je denkt over zorgen dat je de drie nachten nadat je uit bent geweest genoeg slaap krijgt."
data[, 129] <- factor(data[, 129], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[129] <- "postCIBERlite_pnDescriptive"
# LimeSurvey Field type: F
data[, 130] <- as.numeric(data[, 130])
attributes(data)$variable.labels[130] <- "[Ik heb er vertrouwen in dat ik, als ik dat wil, kan zorgen dat ik de drie nachten nadat ik uit ben geweest genoeg slaap krijg.Helemaal geen vertrouwen | Heel veel vertrouwen] 	Deze vragen gaan over hoe je denkt over zorgen dat je de drie nachten nadat je uit bent geweest genoeg slaap krijgt."
data[, 130] <- factor(data[, 130], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[130] <- "postCIBERlite_pbcCapacity"
# LimeSurvey Field type: F
data[, 131] <- as.numeric(data[, 131])
attributes(data)$variable.labels[131] <- "[Of ik de drie nachten nadat ik uit ben geweest genoeg slaap krijg bepaal ik...Helemaal niet zelf | Helemaal zelf] 	Deze vragen gaan over hoe je denkt over zorgen dat je de drie nachten nadat je uit bent geweest genoeg slaap krijgt."
data[, 131] <- factor(data[, 131], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[131] <- "postCIBERlite_pbcControl"
# LimeSurvey Field type: F
data[, 132] <- as.numeric(data[, 132])
attributes(data)$variable.labels[132] <- "[Als ik te weinig slaap, dan kan ik mij ...Veel slechter concentreren | Veel beter concentreren] 	Dit gaat weer over een situatie (in de komende zes maanden) waarin je uitgaat en daardoor een korte nacht maakt."
data[, 132] <- factor(data[, 132], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[132] <- "attExpect_conc"
# LimeSurvey Field type: F
data[, 133] <- as.numeric(data[, 133])
attributes(data)$variable.labels[133] <- "[Als ik te weinig slaap, dan onthoud ik dingen ...Veel slechter | Veel beter] 	Dit gaat weer over een situatie (in de komende zes maanden) waarin je uitgaat en daardoor een korte nacht maakt."
data[, 133] <- factor(data[, 133], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[133] <- "attExpect_mem"
# LimeSurvey Field type: F
data[, 134] <- as.numeric(data[, 134])
attributes(data)$variable.labels[134] <- "[Als ik te weinig slaap, dan voel ik mij ...Veel slechter | Veel beter] 	Dit gaat weer over een situatie (in de komende zes maanden) waarin je uitgaat en daardoor een korte nacht maakt."
data[, 134] <- factor(data[, 134], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[134] <- "attExpect_feel"
# LimeSurvey Field type: F
data[, 135] <- as.numeric(data[, 135])
attributes(data)$variable.labels[135] <- "[Als ik steeds zorg dat ik voldoende slaap krijg, dan ...Mis ik niets | Mis ik veel dingen] 	Dit gaat weer over een situatie (in de komende zes maanden) waarin je uitgaat en daardoor een korte nacht maakt."
data[, 135] <- factor(data[, 135], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[135] <- "attExpect_miss"
# LimeSurvey Field type: F
data[, 136] <- as.numeric(data[, 136])
attributes(data)$variable.labels[136] <- "[... dan neemt diegene mij ...Helemaal niet serieus | Heel serieus] 	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.	Als ik dat dan tegen die vriend(in) zeg..."
data[, 136] <- factor(data[, 136], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[136] <- "postAttExpect_takenSeriously"
# LimeSurvey Field type: F
data[, 137] <- as.numeric(data[, 137])
attributes(data)$variable.labels[137] <- "[... dan is de kans dat diegene daarvan schrikt ...Heel klein | Heel groot] 	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.	Als ik dat dan tegen die vriend(in) zeg..."
data[, 137] <- factor(data[, 137], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[137] <- "postAttExpect_rattlesPerson"
# LimeSurvey Field type: F
data[, 138] <- as.numeric(data[, 138])
attributes(data)$variable.labels[138] <- "[... dan is de kans dat diegene daar boos van wordt ...Heel klein | Heel groot] 	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.	Als ik dat dan tegen die vriend(in) zeg..."
data[, 138] <- factor(data[, 138], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[138] <- "postAttExpect_angryReaction"
# LimeSurvey Field type: F
data[, 139] <- as.numeric(data[, 139])
attributes(data)$variable.labels[139] <- "[... dan bemoei ik me met andermans zaken.Absoluut niet | Absoluut wel] 	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.	Als ik dat dan tegen die vriend(in) zeg..."
data[, 139] <- factor(data[, 139], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[139] <- "postAttExpect_nosy"
# LimeSurvey Field type: F
data[, 140] <- as.numeric(data[, 140])
attributes(data)$variable.labels[140] <- "[... dan maak ik de sfeer daarmee ...Veel slechter | Veel beter] 	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.	Als ik dat dan tegen die vriend(in) zeg..."
data[, 140] <- factor(data[, 140], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[140] <- "postAttExpect_atmosphere"
# LimeSurvey Field type: F
data[, 141] <- as.numeric(data[, 141])
attributes(data)$variable.labels[141] <- "[... dan verpest ik daarmee een grappige situatie.Absoluut niet | Absoluut wel] 	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.	Als ik dat dan tegen die vriend(in) zeg..."
data[, 141] <- factor(data[, 141], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[141] <- "postAttExpect_ruinFunnySituation"
# LimeSurvey Field type: F
data[, 142] <- as.numeric(data[, 142])
attributes(data)$variable.labels[142] <- "[... dan denken anderen dat ik preuts ben.Absoluut niet | Absoluut wel] 	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.	Als ik dat dan tegen die vriend(in) zeg..."
data[, 142] <- factor(data[, 142], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[142] <- "postAttExpect_prude"
# LimeSurvey Field type: F
data[, 143] <- as.numeric(data[, 143])
attributes(data)$variable.labels[143] <- "[... dan laat ik mijn vriend/vriendin ... Niet in hun waarde | Wel in hun waarde] 	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.	Als ik dat dan tegen die vriend(in) zeg..."
data[, 143] <- factor(data[, 143], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[143] <- "postAttExpect_respectFriend"
# LimeSurvey Field type: F
data[, 144] <- as.numeric(data[, 144])
attributes(data)$variable.labels[144] <- "[... dan laat ik degene met wie mijn vriend/vriendin flirt ... Niet in hun waarde | Wel in hun waarde] 	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.	Als ik dat dan tegen die vriend(in) zeg..."
data[, 144] <- factor(data[, 144], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[144] <- "postAttExpect_respectOther"
# LimeSurvey Field type: F
data[, 145] <- as.numeric(data[, 145])
attributes(data)$variable.labels[145] <- "[... dan is de kans dat hij/zij er mee ophoudt ...Heel klein | Heel groot] 	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.	Als ik dat dan tegen die vriend(in) zeg..."
data[, 145] <- factor(data[, 145], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[145] <- "postAttExpect_responseEfficacy"
# LimeSurvey Field type: F
data[, 146] <- as.numeric(data[, 146])
attributes(data)$variable.labels[146] <- "[... dan is de kans hij/zij positief reageert...Heel klein | Heel groot] 	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.	Als ik dat dan tegen die vriend(in) zeg..."
data[, 146] <- factor(data[, 146], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[146] <- "postAttExpect_positiveReaction"
# LimeSurvey Field type: F
data[, 147] <- as.numeric(data[, 147])
attributes(data)$variable.labels[147] <- "[... dan is de kans dat hij/zij zich voortaan anders zal gedragen ...Heel klein | Heel groot] 	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.	Als ik dat dan tegen die vriend(in) zeg..."
data[, 147] <- factor(data[, 147], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[147] <- "postAttExpect_lastingChange"
# LimeSurvey Field type: F
data[, 148] <- as.numeric(data[, 148])
attributes(data)$variable.labels[148] <- "[Als ik mij slechter kan concentreren, dan vind ik dat ...Heel erg onprettig | Heel erg prettig] 	Hoe erg of juist prettig vind jij deze dingen?"
data[, 148] <- factor(data[, 148], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[148] <- "attValue_conc"
# LimeSurvey Field type: F
data[, 149] <- as.numeric(data[, 149])
attributes(data)$variable.labels[149] <- "[Als ik dingen minder goed onthoud, dan vind ik dat ...Heel erg onprettig | Heel erg prettig] 	Hoe erg of juist prettig vind jij deze dingen?"
data[, 149] <- factor(data[, 149], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[149] <- "attValue_mem"
# LimeSurvey Field type: F
data[, 150] <- as.numeric(data[, 150])
attributes(data)$variable.labels[150] <- "[Als ik me slechter voel door slaapgebrek, dan vind ik dat ...Heel erg onprettig | Heel erg prettig] 	Hoe erg of juist prettig vind jij deze dingen?"
data[, 150] <- factor(data[, 150], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[150] <- "attValue_feel"
# LimeSurvey Field type: F
data[, 151] <- as.numeric(data[, 151])
attributes(data)$variable.labels[151] <- "[Als ik dingen mis doordat ik op tijd ga slapen, dan vind ik dat ...Heel erg onprettig | Heel erg prettig] 	Hoe erg of juist prettig vind jij deze dingen?"
data[, 151] <- factor(data[, 151], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[151] <- "attValue_miss"
# LimeSurvey Field type: F
data[, 152] <- as.numeric(data[, 152])
attributes(data)$variable.labels[152] <- "[... hij/zij neemt mij niet serieus, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.Als ik mijn vriend(in) daar dan op aanspreek, en ..."
data[, 152] <- factor(data[, 152], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[152] <- "postAttValue_takenSeriously"
# LimeSurvey Field type: F
data[, 153] <- as.numeric(data[, 153])
attributes(data)$variable.labels[153] <- "[... hij/zij schrikt daarvan, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.Als ik mijn vriend(in) daar dan op aanspreek, en ..."
data[, 153] <- factor(data[, 153], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[153] <- "postAttValue_rattlesPerson"
# LimeSurvey Field type: F
data[, 154] <- as.numeric(data[, 154])
attributes(data)$variable.labels[154] <- "[... hij/zij wordt boos, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.Als ik mijn vriend(in) daar dan op aanspreek, en ..."
data[, 154] <- factor(data[, 154], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[154] <- "postAttValue_angryReaction"
# LimeSurvey Field type: F
data[, 155] <- as.numeric(data[, 155])
attributes(data)$variable.labels[155] <- "[... ik me daardoor met andermans zaken bemoei, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.Als ik mijn vriend(in) daar dan op aanspreek, en ..."
data[, 155] <- factor(data[, 155], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[155] <- "postAttValue_nosy"
# LimeSurvey Field type: F
data[, 156] <- as.numeric(data[, 156])
attributes(data)$variable.labels[156] <- "[... ik daarmee de sfeer verpest, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.Als ik mijn vriend(in) daar dan op aanspreek, en ..."
data[, 156] <- factor(data[, 156], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[156] <- "postAttValue_atmosphere"
# LimeSurvey Field type: F
data[, 157] <- as.numeric(data[, 157])
attributes(data)$variable.labels[157] <- "[... ik daarmee een grappige situatie verpest, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.Als ik mijn vriend(in) daar dan op aanspreek, en ..."
data[, 157] <- factor(data[, 157], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[157] <- "postAttValue_ruinFunnySituation"
# LimeSurvey Field type: F
data[, 158] <- as.numeric(data[, 158])
attributes(data)$variable.labels[158] <- "[... anderen daardoor denken dat ik preuts ben, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.Als ik mijn vriend(in) daar dan op aanspreek, en ..."
data[, 158] <- factor(data[, 158], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[158] <- "postAttValue_prude"
# LimeSurvey Field type: F
data[, 159] <- as.numeric(data[, 159])
attributes(data)$variable.labels[159] <- "[... ik daardoor mijn vriend(in) niet in zijn/haar waarde laat, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.Als ik mijn vriend(in) daar dan op aanspreek, en ..."
data[, 159] <- factor(data[, 159], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[159] <- "postAttValue_respectFriend"
# LimeSurvey Field type: F
data[, 160] <- as.numeric(data[, 160])
attributes(data)$variable.labels[160] <- "[... ik daardoor die ander niet in zijn/haar waarde laat, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.Als ik mijn vriend(in) daar dan op aanspreek, en ..."
data[, 160] <- factor(data[, 160], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[160] <- "postAttValue_respectOther"
# LimeSurvey Field type: F
data[, 161] <- as.numeric(data[, 161])
attributes(data)$variable.labels[161] <- "[... hij/zij houdt er daardoor mee op, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.Als ik mijn vriend(in) daar dan op aanspreek, en ..."
data[, 161] <- factor(data[, 161], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[161] <- "postAttValue_responseEfficacy"
# LimeSurvey Field type: F
data[, 162] <- as.numeric(data[, 162])
attributes(data)$variable.labels[162] <- "[... hij/zij reageert positief, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.Als ik mijn vriend(in) daar dan op aanspreek, en ..."
data[, 162] <- factor(data[, 162], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[162] <- "postAttValue_positiveReaction"
# LimeSurvey Field type: F
data[, 163] <- as.numeric(data[, 163])
attributes(data)$variable.labels[163] <- "[... hij/zij gedraagt zich dan voortaan anders, dan vind ik dat ...Heel erg | Heel fijn] 	Hoe erg of juist prettig vind jij deze dingen?	Stel je voor: in het komende halfjaar is een vriend of vriendin van jou tijdens het uitgaan met iemand aan het flirten. Je hebt de indruk dat hij/zij hierbij over de grenzen van de ander gaat.Als ik mijn vriend(in) daar dan op aanspreek, en ..."
data[, 163] <- factor(data[, 163], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[163] <- "postAttValue_lastingChange"
# LimeSurvey Field type: F
data[, 164] <- as.numeric(data[, 164])
attributes(data)$variable.labels[164] <- "[Mijn partner (vriend of vriendin)Heel afkeurend|Heel goedkeurend] 	Dit gaat weer over een situatie (in de komende zes maanden) waarin je uitgaat en daardoor een korte nacht maakt.	Wat denk je dat deze mensen er van vinden als jij dan zorgt dat je de drie nachten ervoor steeds ongeveer acht uur slaapt?"
data[, 164] <- factor(data[, 164], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[164] <- "preNrmInjunct_partner"
# LimeSurvey Field type: F
data[, 165] <- as.numeric(data[, 165])
attributes(data)$variable.labels[165] <- "[Mijn beste vrienden/vriendinnenHeel afkeurend|Heel goedkeurend] 	Dit gaat weer over een situatie (in de komende zes maanden) waarin je uitgaat en daardoor een korte nacht maakt.	Wat denk je dat deze mensen er van vinden als jij dan zorgt dat je de drie nachten ervoor steeds ongeveer acht uur slaapt?"
data[, 165] <- factor(data[, 165], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[165] <- "preNrmInjunct_bestFriends"
# LimeSurvey Field type: F
data[, 166] <- as.numeric(data[, 166])
attributes(data)$variable.labels[166] <- "[Mijn andere vriendenHeel afkeurend|Heel goedkeurend] 	Dit gaat weer over een situatie (in de komende zes maanden) waarin je uitgaat en daardoor een korte nacht maakt.	Wat denk je dat deze mensen er van vinden als jij dan zorgt dat je de drie nachten ervoor steeds ongeveer acht uur slaapt?"
data[, 166] <- factor(data[, 166], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[166] <- "preNrmInjunct_otherFriends"
# LimeSurvey Field type: F
data[, 167] <- as.numeric(data[, 167])
attributes(data)$variable.labels[167] <- "[De meeste mensen op een feestHeel afkeurend|Heel goedkeurend] 	Dit gaat weer over een situatie (in de komende zes maanden) waarin je uitgaat en daardoor een korte nacht maakt.	Wat denk je dat deze mensen er van vinden als jij dan zorgt dat je de drie nachten ervoor steeds ongeveer acht uur slaapt?"
data[, 167] <- factor(data[, 167], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[167] <- "preNrmInjunct_partyPeople"
# LimeSurvey Field type: F
data[, 168] <- as.numeric(data[, 168])
attributes(data)$variable.labels[168] <- "[Mijn ouders/verzorgersHeel afkeurend|Heel goedkeurend] 	Dit gaat weer over een situatie (in de komende zes maanden) waarin je uitgaat en daardoor een korte nacht maakt.	Wat denk je dat deze mensen er van vinden als jij dan zorgt dat je de drie nachten ervoor steeds ongeveer acht uur slaapt?"
data[, 168] <- factor(data[, 168], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[168] <- "preNrmInjunct_parents"
# LimeSurvey Field type: F
data[, 169] <- as.numeric(data[, 169])
attributes(data)$variable.labels[169] <- "[Mijn broers/zussenHeel afkeurend|Heel goedkeurend] 	Dit gaat weer over een situatie (in de komende zes maanden) waarin je uitgaat en daardoor een korte nacht maakt.	Wat denk je dat deze mensen er van vinden als jij dan zorgt dat je de drie nachten ervoor steeds ongeveer acht uur slaapt?"
data[, 169] <- factor(data[, 169], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[169] <- "preNrmInjunct_siblings"
# LimeSurvey Field type: F
data[, 170] <- as.numeric(data[, 170])
attributes(data)$variable.labels[170] <- "[Mijn partner (vriend of vriendin)Heel afkeurend|Heel goedkeurend] 	Dit gaat weer over een situatie (in de komende zes maanden) waarin je uitgaat en daardoor een korte nacht maakt.	Wat denk je dat deze mensen er van vinden als jij dan zorgt dat je de drie nachten erna steeds ongeveer acht uur slaapt?"
data[, 170] <- factor(data[, 170], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[170] <- "postNrmInjunct_partner"
# LimeSurvey Field type: F
data[, 171] <- as.numeric(data[, 171])
attributes(data)$variable.labels[171] <- "[Mijn beste vrienden/vriendinnenHeel afkeurend|Heel goedkeurend] 	Dit gaat weer over een situatie (in de komende zes maanden) waarin je uitgaat en daardoor een korte nacht maakt.	Wat denk je dat deze mensen er van vinden als jij dan zorgt dat je de drie nachten erna steeds ongeveer acht uur slaapt?"
data[, 171] <- factor(data[, 171], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[171] <- "postNrmInjunct_bestFriends"
# LimeSurvey Field type: F
data[, 172] <- as.numeric(data[, 172])
attributes(data)$variable.labels[172] <- "[Mijn andere vriendenHeel afkeurend|Heel goedkeurend] 	Dit gaat weer over een situatie (in de komende zes maanden) waarin je uitgaat en daardoor een korte nacht maakt.	Wat denk je dat deze mensen er van vinden als jij dan zorgt dat je de drie nachten erna steeds ongeveer acht uur slaapt?"
data[, 172] <- factor(data[, 172], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[172] <- "postNrmInjunct_otherFriends"
# LimeSurvey Field type: F
data[, 173] <- as.numeric(data[, 173])
attributes(data)$variable.labels[173] <- "[De meeste mensen op een feestHeel afkeurend|Heel goedkeurend] 	Dit gaat weer over een situatie (in de komende zes maanden) waarin je uitgaat en daardoor een korte nacht maakt.	Wat denk je dat deze mensen er van vinden als jij dan zorgt dat je de drie nachten erna steeds ongeveer acht uur slaapt?"
data[, 173] <- factor(data[, 173], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[173] <- "postNrmInjunct_partyPeople"
# LimeSurvey Field type: F
data[, 174] <- as.numeric(data[, 174])
attributes(data)$variable.labels[174] <- "[Mijn ouders/verzorgersHeel afkeurend|Heel goedkeurend] 	Dit gaat weer over een situatie (in de komende zes maanden) waarin je uitgaat en daardoor een korte nacht maakt.	Wat denk je dat deze mensen er van vinden als jij dan zorgt dat je de drie nachten erna steeds ongeveer acht uur slaapt?"
data[, 174] <- factor(data[, 174], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[174] <- "postNrmInjunct_parents"
# LimeSurvey Field type: F
data[, 175] <- as.numeric(data[, 175])
attributes(data)$variable.labels[175] <- "[Mijn broers/zussenHeel afkeurend|Heel goedkeurend] 	Dit gaat weer over een situatie (in de komende zes maanden) waarin je uitgaat en daardoor een korte nacht maakt.	Wat denk je dat deze mensen er van vinden als jij dan zorgt dat je de drie nachten erna steeds ongeveer acht uur slaapt?"
data[, 175] <- factor(data[, 175], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[175] <- "postNrmInjunct_siblings"
# LimeSurvey Field type: F
data[, 176] <- as.numeric(data[, 176])
attributes(data)$variable.labels[176] <- "[Mijn partner (vriendin of vriendin)Heel onbelangrijk|Heel belangrijk] En hoe belangrijk is hun mening voor jou, met betrekking tot hoe laat je gaat slapen en hoe laat je opstaat?"
data[, 176] <- factor(data[, 176], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[176] <- "preNrmMTC_partner"
# LimeSurvey Field type: F
data[, 177] <- as.numeric(data[, 177])
attributes(data)$variable.labels[177] <- "[Mijn beste vrienden/vriendinnenHeel onbelangrijk|Heel belangrijk] En hoe belangrijk is hun mening voor jou, met betrekking tot hoe laat je gaat slapen en hoe laat je opstaat?"
data[, 177] <- factor(data[, 177], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[177] <- "preNrmMTC_bestFriends"
# LimeSurvey Field type: F
data[, 178] <- as.numeric(data[, 178])
attributes(data)$variable.labels[178] <- "[Mijn andere vriendenHeel onbelangrijk|Heel belangrijk] En hoe belangrijk is hun mening voor jou, met betrekking tot hoe laat je gaat slapen en hoe laat je opstaat?"
data[, 178] <- factor(data[, 178], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[178] <- "preNrmMTC_otherFriends"
# LimeSurvey Field type: F
data[, 179] <- as.numeric(data[, 179])
attributes(data)$variable.labels[179] <- "[De meeste mensen op een feestHeel onbelangrijk|Heel belangrijk] En hoe belangrijk is hun mening voor jou, met betrekking tot hoe laat je gaat slapen en hoe laat je opstaat?"
data[, 179] <- factor(data[, 179], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[179] <- "preNrmMTC_partyPeople"
# LimeSurvey Field type: F
data[, 180] <- as.numeric(data[, 180])
attributes(data)$variable.labels[180] <- "[Mijn ouders/verzorgersHeel onbelangrijk|Heel belangrijk] En hoe belangrijk is hun mening voor jou, met betrekking tot hoe laat je gaat slapen en hoe laat je opstaat?"
data[, 180] <- factor(data[, 180], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[180] <- "preNrmMTC_parents"
# LimeSurvey Field type: F
data[, 181] <- as.numeric(data[, 181])
attributes(data)$variable.labels[181] <- "[Mijn broertjes/zusjesHeel onbelangrijk|Heel belangrijk] En hoe belangrijk is hun mening voor jou, met betrekking tot hoe laat je gaat slapen en hoe laat je opstaat?"
data[, 181] <- factor(data[, 181], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[181] <- "preNrmMTC_siblings"
# LimeSurvey Field type: F
data[, 182] <- as.numeric(data[, 182])
attributes(data)$variable.labels[182] <- "[In de drie nachten voor het uitgaan zorgt mijn partner (vriendin of vriendin) ...Nooit voor voldoende slaap|Altijd voor voldoende slaap] 	Wat doen deze mensen zelf als voorbereiding op uitgaan, denk je?"
data[, 182] <- factor(data[, 182], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[182] <- "preNrmDescr_partner"
# LimeSurvey Field type: F
data[, 183] <- as.numeric(data[, 183])
attributes(data)$variable.labels[183] <- "[In de drie nachten voor het uitgaan zorgen mijn beste vrienden/vriendinnen ...Nooit voor voldoende slaap|Altijd voor voldoende slaap] 	Wat doen deze mensen zelf als voorbereiding op uitgaan, denk je?"
data[, 183] <- factor(data[, 183], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[183] <- "preNrmDescr_bestFriends"
# LimeSurvey Field type: F
data[, 184] <- as.numeric(data[, 184])
attributes(data)$variable.labels[184] <- "[In de drie nachten voor het uitgaan zorgen mijn andere vrienden/vriendinnen ...Nooit voor voldoende slaap|Altijd voor voldoende slaap] 	Wat doen deze mensen zelf als voorbereiding op uitgaan, denk je?"
data[, 184] <- factor(data[, 184], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[184] <- "preNrmDescr_otherFriends"
# LimeSurvey Field type: F
data[, 185] <- as.numeric(data[, 185])
attributes(data)$variable.labels[185] <- "[In de drie nachten voor het uitgaan zorgen de meeste mensen op een feest ...Nooit voor voldoende slaap|Altijd voor voldoende slaap] 	Wat doen deze mensen zelf als voorbereiding op uitgaan, denk je?"
data[, 185] <- factor(data[, 185], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[185] <- "preNrmDescr_partyPeople"
# LimeSurvey Field type: F
data[, 186] <- as.numeric(data[, 186])
attributes(data)$variable.labels[186] <- "[In de drie nachten voor het uitgaan zorgen mijn ouders/verzorgers ...Nooit voor voldoende slaap|Altijd voor voldoende slaap] 	Wat doen deze mensen zelf als voorbereiding op uitgaan, denk je?"
data[, 186] <- factor(data[, 186], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[186] <- "preNrmDescr_parents"
# LimeSurvey Field type: F
data[, 187] <- as.numeric(data[, 187])
attributes(data)$variable.labels[187] <- "[In de drie nachten voor het uitgaan zorgen mijn broers/zussen ...Nooit voor voldoende slaap|Altijd voor voldoende slaap] 	Wat doen deze mensen zelf als voorbereiding op uitgaan, denk je?"
data[, 187] <- factor(data[, 187], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[187] <- "preNrmDescr_siblings"
# LimeSurvey Field type: F
data[, 188] <- as.numeric(data[, 188])
attributes(data)$variable.labels[188] <- "[In de drie nachten na het uitgaan zorgt mijn partner (vriendin of vriendin) ...Nooit voor voldoende slaap|Altijd voor voldoende slaap] 	Wat doen deze mensen zelf in de nachten nadat ze uit zijn geweest, denk je?"
data[, 188] <- factor(data[, 188], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[188] <- "postNrmDescr_partner"
# LimeSurvey Field type: F
data[, 189] <- as.numeric(data[, 189])
attributes(data)$variable.labels[189] <- "[In de drie nachten na het uitgaan zorgen mijn beste vrienden/vriendinnen ...Nooit voor voldoende slaap|Altijd voor voldoende slaap] 	Wat doen deze mensen zelf in de nachten nadat ze uit zijn geweest, denk je?"
data[, 189] <- factor(data[, 189], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[189] <- "postNrmDescr_bestFriends"
# LimeSurvey Field type: F
data[, 190] <- as.numeric(data[, 190])
attributes(data)$variable.labels[190] <- "[In de drie nachten na het uitgaan zorgen mijn andere vrienden/vriendinnen ...Nooit voor voldoende slaap|Altijd voor voldoende slaap] 	Wat doen deze mensen zelf in de nachten nadat ze uit zijn geweest, denk je?"
data[, 190] <- factor(data[, 190], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[190] <- "postNrmDescr_otherFriends"
# LimeSurvey Field type: F
data[, 191] <- as.numeric(data[, 191])
attributes(data)$variable.labels[191] <- "[In de drie nachten na het uitgaan zorgen de meeste mensen op een feest ...Nooit voor voldoende slaap|Altijd voor voldoende slaap] 	Wat doen deze mensen zelf in de nachten nadat ze uit zijn geweest, denk je?"
data[, 191] <- factor(data[, 191], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[191] <- "postNrmDescr_partyPeople"
# LimeSurvey Field type: F
data[, 192] <- as.numeric(data[, 192])
attributes(data)$variable.labels[192] <- "[In de drie nachten na het uitgaan zorgen mijn ouders/verzorgers ...Nooit voor voldoende slaap|Altijd voor voldoende slaap] 	Wat doen deze mensen zelf in de nachten nadat ze uit zijn geweest, denk je?"
data[, 192] <- factor(data[, 192], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[192] <- "postNrmDescr_parents"
# LimeSurvey Field type: F
data[, 193] <- as.numeric(data[, 193])
attributes(data)$variable.labels[193] <- "[In de drie nachten na het uitgaan zorgen mijn broers/zussen ...Nooit voor voldoende slaap|Altijd voor voldoende slaap] 	Wat doen deze mensen zelf in de nachten nadat ze uit zijn geweest, denk je?"
data[, 193] <- factor(data[, 193], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[193] <- "postNrmDescr_siblings"
# LimeSurvey Field type: F
data[, 194] <- as.numeric(data[, 194])
attributes(data)$variable.labels[194] <- "[Over het algemeen val ik ...heel moeilijk in slaap | heel makkelijk in slaap] Dit gaat weer over een situatie (in de komende zes maanden) waarin je uitgaat en daardoor een korte nacht maakt."
data[, 194] <- factor(data[, 194], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[194] <- "PBCbeliefs_ezSleep"
# LimeSurvey Field type: F
data[, 195] <- as.numeric(data[, 195])
attributes(data)$variable.labels[195] <- "[De nachten voordat ik uitga kan ik meestal ...moeilijker in slaap vallen | makkelijker in slaap vallen] Dit gaat weer over een situatie (in de komende zes maanden) waarin je uitgaat en daardoor een korte nacht maakt."
data[, 195] <- factor(data[, 195], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[195] <- "PBCbeliefs_pre"
# LimeSurvey Field type: F
data[, 196] <- as.numeric(data[, 196])
attributes(data)$variable.labels[196] <- "[De nachten nadat ik uit ben geweest kan ik meestal ...moeilijker in slaap vallen | makkelijker in slaap vallen] Dit gaat weer over een situatie (in de komende zes maanden) waarin je uitgaat en daardoor een korte nacht maakt."
data[, 196] <- factor(data[, 196], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[196] <- "PBCbeliefs_post"
# LimeSurvey Field type: F
data[, 197] <- as.numeric(data[, 197])
attributes(data)$variable.labels[197] <- "[Als ik moe ben, is zorgen dat ik genoeg slaap krijg ...veel moeilijker | veel makkelijker] Dit gaat weer over een situatie (in de komende zes maanden) waarin je uitgaat en daardoor een korte nacht maakt."
data[, 197] <- factor(data[, 197], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[197] <- "PBCbeliefs_tired"
# LimeSurvey Field type: F
data[, 198] <- as.numeric(data[, 198])
attributes(data)$variable.labels[198] <- "[Als ik alcohol drink kom ik daarna ...veel moeilijker in slaap | veel makkelijker in slaap]"
data[, 198] <- factor(data[, 198], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[198] <- "alcSleepBeliefs_pbc"
# LimeSurvey Field type: F
data[, 199] <- as.numeric(data[, 199])
attributes(data)$variable.labels[199] <- "[Als ik alcohol drink slaap ik daarna uiteindelijk ...veel slechter | veel beter]"
data[, 199] <- factor(data[, 199], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[199] <- "alcSleepBeliefs_att"
# LimeSurvey Field type: F
data[, 200] <- as.numeric(data[, 200])
attributes(data)$variable.labels[200] <- "[Als ik cannabis gebruik kom ik daarna ...veel moeilijker in slaap | veel makkelijker in slaap]"
data[, 200] <- factor(data[, 200], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[200] <- "cnbSleepBeliefs_pbc"
# LimeSurvey Field type: F
data[, 201] <- as.numeric(data[, 201])
attributes(data)$variable.labels[201] <- "[Als ik cannabis gebruik slaap ik daarna uiteindelijk ...veel slechter | veel beter]"
data[, 201] <- factor(data[, 201], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[201] <- "cnbSleepBeliefs_att"
# LimeSurvey Field type: F
data[, 202] <- as.numeric(data[, 202])
attributes(data)$variable.labels[202] <- "[Als ik XTC gebruik kom ik daarna ...veel moeilijker in slaap | veel makkelijker in slaap]"
data[, 202] <- factor(data[, 202], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[202] <- "xtcSleepBeliefs_pbc"
# LimeSurvey Field type: F
data[, 203] <- as.numeric(data[, 203])
attributes(data)$variable.labels[203] <- "[Als ik XTC gebruik slaap ik daarna uiteindelijk ...veel slechter | veel beter]"
data[, 203] <- factor(data[, 203], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[203] <- "xtcSleepBeliefs_att"
# LimeSurvey Field type: F
data[, 204] <- as.numeric(data[, 204])
attributes(data)$variable.labels[204] <- "[Als ik MDMA poeder gebruik kom ik daarna ...veel moeilijker in slaap | veel makkelijker in slaap]"
data[, 204] <- factor(data[, 204], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[204] <- "mdmaSleepBeliefs_pbc"
# LimeSurvey Field type: F
data[, 205] <- as.numeric(data[, 205])
attributes(data)$variable.labels[205] <- "[Als ik MDMA poeder gebruik slaap ik daarna uiteindelijk ...veel slechter | veel beter]"
data[, 205] <- factor(data[, 205], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[205] <- "mdmaSleepBeliefs_att"
# LimeSurvey Field type: F
data[, 206] <- as.numeric(data[, 206])
attributes(data)$variable.labels[206] <- "[Als ik 4-FA gebruik kom ik daarna ...veel moeilijker in slaap | veel makkelijker in slaap]"
data[, 206] <- factor(data[, 206], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[206] <- "fourfaSleepBeliefs_pbc"
# LimeSurvey Field type: F
data[, 207] <- as.numeric(data[, 207])
attributes(data)$variable.labels[207] <- "[Als ik 4-FA gebruik slaap ik daarna uiteindelijk ...veel slechter | veel beter]"
data[, 207] <- factor(data[, 207], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[207] <- "fourfaSleepBeliefs_att"
# LimeSurvey Field type: F
data[, 208] <- as.numeric(data[, 208])
attributes(data)$variable.labels[208] <- "[Als ik cocaine gebruik kom ik daarna ...veel moeilijker in slaap | veel makkelijker in slaap]"
data[, 208] <- factor(data[, 208], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[208] <- "cokeSleepBeliefs_pbc"
# LimeSurvey Field type: F
data[, 209] <- as.numeric(data[, 209])
attributes(data)$variable.labels[209] <- "[Als ik cocaine gebruik slaap ik daarna uiteindelijk ...veel slechter | veel beter]"
data[, 209] <- factor(data[, 209], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[209] <- "cokeSleepBeliefs_att"
# LimeSurvey Field type: F
data[, 210] <- as.numeric(data[, 210])
attributes(data)$variable.labels[210] <- "[Als ik speed gebruik kom ik daarna ...veel moeilijker in slaap | veel makkelijker in slaap]"
data[, 210] <- factor(data[, 210], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[210] <- "spdSleepBeliefs_pbc"
# LimeSurvey Field type: F
data[, 211] <- as.numeric(data[, 211])
attributes(data)$variable.labels[211] <- "[Als ik speed gebruik slaap ik daarna uiteindelijk ...veel slechter | veel beter]"
data[, 211] <- factor(data[, 211], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[211] <- "spdSleepBeliefs_att"
# LimeSurvey Field type: F
data[, 212] <- as.numeric(data[, 212])
attributes(data)$variable.labels[212] <- "[Als ik lachgas gebruik kom ik daarna ...veel moeilijker in slaap | veel makkelijker in slaap]"
data[, 212] <- factor(data[, 212], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[212] <- "gasSleepBeliefs_pbc"
# LimeSurvey Field type: F
data[, 213] <- as.numeric(data[, 213])
attributes(data)$variable.labels[213] <- "[Als ik lachgas gebruik slaap ik daarna uiteindelijk ...veel slechter | veel beter]"
data[, 213] <- factor(data[, 213], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[213] <- "gasSleepBeliefs_att"
# LimeSurvey Field type: F
data[, 214] <- as.numeric(data[, 214])
attributes(data)$variable.labels[214] <- "[Als ik GHB gebruik kom ik daarna ...veel moeilijker in slaap | veel makkelijker in slaap]"
data[, 214] <- factor(data[, 214], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[214] <- "ghbSleepBeliefs_pbc"
# LimeSurvey Field type: F
data[, 215] <- as.numeric(data[, 215])
attributes(data)$variable.labels[215] <- "[Als ik GHB gebruik slaap ik daarna uiteindelijk ...veel slechter | veel beter]"
data[, 215] <- factor(data[, 215], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[215] <- "ghbSleepBeliefs_att"
# LimeSurvey Field type: F
data[, 216] <- as.numeric(data[, 216])
attributes(data)$variable.labels[216] <- "[Als ik 2-CB gebruik kom ik daarna ...veel moeilijker in slaap | veel makkelijker in slaap]"
data[, 216] <- factor(data[, 216], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[216] <- "twocbSleepBeliefs_pbc"
# LimeSurvey Field type: F
data[, 217] <- as.numeric(data[, 217])
attributes(data)$variable.labels[217] <- "[Als ik 2-CB gebruik slaap ik daarna uiteindelijk ...veel slechter | veel beter]"
data[, 217] <- factor(data[, 217], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[217] <- "twocbSleepBeliefs_att"
# LimeSurvey Field type: F
data[, 218] <- as.numeric(data[, 218])
attributes(data)$variable.labels[218] <- "[Als ik ketamine gebruik kom ik daarna ...veel moeilijker in slaap | veel makkelijker in slaap]"
data[, 218] <- factor(data[, 218], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[218] <- "ketSleepBeliefs_pbc"
# LimeSurvey Field type: F
data[, 219] <- as.numeric(data[, 219])
attributes(data)$variable.labels[219] <- "[Als ik ketamine gebruik slaap ik daarna uiteindelijk ...veel slechter | veel beter]"
data[, 219] <- factor(data[, 219], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[219] <- "ketSleepBeliefs_att"
# LimeSurvey Field type: F
data[, 220] <- as.numeric(data[, 220])
attributes(data)$variable.labels[220] <- "[Als ik dan niets tegen die vriend/vriendin zou zeggen, dan zou ik mij achteraf ...Helemaal niet schuldig voelen | Heel erg schuldig voelen] Deze vraag gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin een vriend of vriendin van jou met iemand flirt, en je de indruk hebt dat hij/zij over de grenzen van de ander gaat."
data[, 220] <- factor(data[, 220], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[220] <- "moralNorm_guilt"
# LimeSurvey Field type: F
data[, 221] <- as.numeric(data[, 221])
attributes(data)$variable.labels[221] <- "[Het is mijn verantwoordelijkheid om iets tegen die vriend/vriendin te zeggen.Helemaal niet | Heel sterk] Deze vraag gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin een vriend of vriendin van jou met iemand flirt, en je de indruk hebt dat hij/zij over de grenzen van de ander gaat."
data[, 221] <- factor(data[, 221], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[221] <- "moralNorm_responsibility"
# LimeSurvey Field type: F
data[, 222] <- as.numeric(data[, 222])
attributes(data)$variable.labels[222] <- "[Ik vind het mijn morele plicht om dan iets tegen mijn vriend/vriendin te zeggen.Helemaal niet | Heel sterk] Deze vraag gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin een vriend of vriendin van jou met iemand flirt, en je de indruk hebt dat hij/zij over de grenzen van de ander gaat."
data[, 222] <- factor(data[, 222], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[222] <- "moralNorm_moralDuty"
# LimeSurvey Field type: F
data[, 223] <- as.numeric(data[, 223])
attributes(data)$variable.labels[223] <- "[In zo\'n situatie moet ik mijn vriend/vriendin tegen zichzelf beschermen.Helemaal niet | Heel sterk] Deze vraag gaat weer over een situatie (in de komende zes maanden tijdens het uitgaan) waarin een vriend of vriendin van jou met iemand flirt, en je de indruk hebt dat hij/zij over de grenzen van de ander gaat."
data[, 223] <- factor(data[, 223], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[223] <- "moralNorm_protectFromSelf"
# LimeSurvey Field type: F
data[, 224] <- as.numeric(data[, 224])
attributes(data)$variable.labels[224] <- "[... iets dat ik automatisch doe] 	Deze vraag gaat over hoeveel je nadenkt over hoe laat je door-de-weeks naar bed gaat.	Door-de-weeks vroeg genoeg naar bed gaan zodat ik 8 uur slaap krijg is ..."
data[, 224] <- factor(data[, 224], levels=c(1,3,4,5,7),labels=c("Dat klopt zeker niet", "Dat klopt eigenlijk niet", "Soms wel maar soms ook niet", "Dat klopt een beetje", "Dat klopt zeker"))
names(data)[224] <- "habit_automatic"
# LimeSurvey Field type: F
data[, 225] <- as.numeric(data[, 225])
attributes(data)$variable.labels[225] <- "[... iets dat ik doe zonder er bij na te denken] 	Deze vraag gaat over hoeveel je nadenkt over hoe laat je door-de-weeks naar bed gaat.	Door-de-weeks vroeg genoeg naar bed gaan zodat ik 8 uur slaap krijg is ..."
data[, 225] <- factor(data[, 225], levels=c(1,3,4,5,7),labels=c("Dat klopt zeker niet", "Dat klopt eigenlijk niet", "Soms wel maar soms ook niet", "Dat klopt een beetje", "Dat klopt zeker"))
names(data)[225] <- "habit_withoutThinking"
# LimeSurvey Field type: F
data[, 226] <- as.numeric(data[, 226])
attributes(data)$variable.labels[226] <- "[... iets dat ik doe voordat ik er erg in heb] 	Deze vraag gaat over hoeveel je nadenkt over hoe laat je door-de-weeks naar bed gaat.	Door-de-weeks vroeg genoeg naar bed gaan zodat ik 8 uur slaap krijg is ..."
data[, 226] <- factor(data[, 226], levels=c(1,3,4,5,7),labels=c("Dat klopt zeker niet", "Dat klopt eigenlijk niet", "Soms wel maar soms ook niet", "Dat klopt een beetje", "Dat klopt zeker"))
names(data)[226] <- "habit_beforeRealising"
# LimeSurvey Field type: F
data[, 227] <- as.numeric(data[, 227])
attributes(data)$variable.labels[227] <- "[... iets dat ik doe zonder dat ik het me bewust moet herinneren] 	Deze vraag gaat over hoeveel je nadenkt over hoe laat je door-de-weeks naar bed gaat.	Door-de-weeks vroeg genoeg naar bed gaan zodat ik 8 uur slaap krijg is ..."
data[, 227] <- factor(data[, 227], levels=c(1,3,4,5,7),labels=c("Dat klopt zeker niet", "Dat klopt eigenlijk niet", "Soms wel maar soms ook niet", "Dat klopt een beetje", "Dat klopt zeker"))
names(data)[227] <- "habit_withoutRemembering"
# LimeSurvey Field type: F
data[, 228] <- as.numeric(data[, 228])
attributes(data)$variable.labels[228] <- "Als laatste willen we je graag vragen om wat meer informatie over jezelf te geven. Je kunt een of meerdere van deze vragen ook overslaan als je je bijvoorbeeld zorgen maakt over je privacy. We zouden het natuurlijk erg waarderen als je wel alle vragen beantwoordt: deze informatie is voor ons heel bruikbaar om een indruk te krijgen van wie je bent. Bovendien hebben we niet voor niets gezorgd dat deze vragenlijst volledig anoniem is 	Als je geen van deze vragen in wilt vullen, of als je ze vorige keer hebt ingevuld en een Party Panel Code hebt ingevoerd, dan kun je dat hier aangeven, en dan sla je al deze vragen over."
data[, 228] <- factor(data[, 228], levels=c(0,1,2),labels=c("Ik wil wel één of meer vragen beantwoorden", "Ik wil geen enkele vraag beantwoorden", "Ik heb een Party Panel Code van een vorige Party Panel"))
names(data)[228] <- "noDemographics"
# LimeSurvey Field type: F
data[, 229] <- as.numeric(data[, 229])
attributes(data)$variable.labels[229] <- "Hoe oud ben je?"
names(data)[229] <- "age"
# LimeSurvey Field type: A
data[, 230] <- as.character(data[, 230])
attributes(data)$variable.labels[230] <- "Wat is je geslacht (gender)?"
data[, 230] <- factor(data[, 230], levels=c("noAns","male","femal","queer"),labels=c("Dit wil ik niet zeggen", "Man", "Vrouw", "Genderqueer"))
names(data)[230] <- "gender"
# LimeSurvey Field type: A
data[, 231] <- as.character(data[, 231])
attributes(data)$variable.labels[231] <- "[Andere] Wat is je geslacht (gender)?"
names(data)[231] <- "gender_other"
# LimeSurvey Field type: F
data[, 232] <- as.numeric(data[, 232])
attributes(data)$variable.labels[232] <- "Heb je een baan?"
data[, 232] <- factor(data[, 232], levels=c(1,2,3),labels=c("Ik wil deze vraag niet beantwoorden", "Ja, ik heb een baan, bijbaan, of eigen bedrijf", "Nee, ik heb geen baan, bijbaan, of eigen bedrijf"))
names(data)[232] <- "hasJob"
# LimeSurvey Field type: F
data[, 233] <- as.numeric(data[, 233])
attributes(data)$variable.labels[233] <- "Hoeveel uur per week besteed je aan je baan, bijbaan, of eigen bedrijf?"
names(data)[233] <- "jobHours"
# LimeSurvey Field type: F
data[, 234] <- as.numeric(data[, 234])
attributes(data)$variable.labels[234] <- "Volg je op dit moment een studie, en zoja, waar?"
data[, 234] <- factor(data[, 234], levels=c(1,2,3,4,5,6,7,8),labels=c("Ik wil deze vraag niet beantwoorden", "Nee, ik volg op dit moment geen studie", "Ja, ik doe VMBO (vroeger MAVO)", "Ja, ik doe HAVO", "Ja, ik doe VWO", "Ja, ik doe MBO (ROC)", "Ja, ik doe HBO (hogeschool)", "Ja, ik doe WO (universiteit)"))
names(data)[234] <- "currentEducation"
# LimeSurvey Field type: F
data[, 235] <- as.numeric(data[, 235])
attributes(data)$variable.labels[235] <- "Wat is de hoogste opleiding die je hebt voltooid?"
data[, 235] <- factor(data[, 235], levels=c(1,2,3,4,5,6,7,8),labels=c("Ik wil deze vraag niet beantwoorden", "Basisschool", "VMBO (vroeger MAVO)", "HAVO", "VWO", "MBO (ROC)", "HBO (hogeschool)", "WO (universiteit)"))
names(data)[235] <- "prevEducation"
# LimeSurvey Field type: A
data[, 236] <- as.character(data[, 236])
attributes(data)$variable.labels[236] <- "In welk land woon je?"
data[, 236] <- factor(data[, 236], levels=c("NONE","NL","BE"),labels=c("Wil ik niet zeggen", "Nederland", "Belgie"))
names(data)[236] <- "country"
# LimeSurvey Field type: A
data[, 237] <- as.character(data[, 237])
attributes(data)$variable.labels[237] <- "[Andere] In welk land woon je?"
names(data)[237] <- "country_other"
# LimeSurvey Field type: F
data[, 238] <- as.numeric(data[, 238])
attributes(data)$variable.labels[238] <- "Om een grove indruk te krijgen van waar de Party Panel deelnemers wonen, is het handig als we de eerste twee codes van je postcode hebben. Wat zijn de eerste twee cijfers van jouw postcode?"
names(data)[238] <- "postcode"
# LimeSurvey Field type: F
data[, 239] <- as.numeric(data[, 239])
attributes(data)$variable.labels[239] <- "[Dit wil ik niet zeggen] 	Als je een culturele achtergrond zou moeten kiezen, welke achtergrond(en) zou je dan kiezen?"
data[, 239] <- factor(data[, 239], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[239] <- "culturalIdentity_1"
# LimeSurvey Field type: F
data[, 240] <- as.numeric(data[, 240])
attributes(data)$variable.labels[240] <- "[Ik identificeer niet met een culturele achtergrond] 	Als je een culturele achtergrond zou moeten kiezen, welke achtergrond(en) zou je dan kiezen?"
data[, 240] <- factor(data[, 240], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[240] <- "culturalIdentity_2"
# LimeSurvey Field type: F
data[, 241] <- as.numeric(data[, 241])
attributes(data)$variable.labels[241] <- "[Antilliaans] 	Als je een culturele achtergrond zou moeten kiezen, welke achtergrond(en) zou je dan kiezen?"
data[, 241] <- factor(data[, 241], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[241] <- "culturalIdentity_3"
# LimeSurvey Field type: F
data[, 242] <- as.numeric(data[, 242])
attributes(data)$variable.labels[242] <- "[Afrikaans (behalve Marokkaans, zie onder)] 	Als je een culturele achtergrond zou moeten kiezen, welke achtergrond(en) zou je dan kiezen?"
data[, 242] <- factor(data[, 242], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[242] <- "culturalIdentity_4"
# LimeSurvey Field type: F
data[, 243] <- as.numeric(data[, 243])
attributes(data)$variable.labels[243] <- "[Aziatisch] 	Als je een culturele achtergrond zou moeten kiezen, welke achtergrond(en) zou je dan kiezen?"
data[, 243] <- factor(data[, 243], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[243] <- "culturalIdentity_5"
# LimeSurvey Field type: F
data[, 244] <- as.numeric(data[, 244])
attributes(data)$variable.labels[244] <- "[Belgisch] 	Als je een culturele achtergrond zou moeten kiezen, welke achtergrond(en) zou je dan kiezen?"
data[, 244] <- factor(data[, 244], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[244] <- "culturalIdentity_6"
# LimeSurvey Field type: F
data[, 245] <- as.numeric(data[, 245])
attributes(data)$variable.labels[245] <- "[Indisch] 	Als je een culturele achtergrond zou moeten kiezen, welke achtergrond(en) zou je dan kiezen?"
data[, 245] <- factor(data[, 245], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[245] <- "culturalIdentity_7"
# LimeSurvey Field type: F
data[, 246] <- as.numeric(data[, 246])
attributes(data)$variable.labels[246] <- "[Latino] 	Als je een culturele achtergrond zou moeten kiezen, welke achtergrond(en) zou je dan kiezen?"
data[, 246] <- factor(data[, 246], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[246] <- "culturalIdentity_8"
# LimeSurvey Field type: F
data[, 247] <- as.numeric(data[, 247])
attributes(data)$variable.labels[247] <- "[Marrokaans] 	Als je een culturele achtergrond zou moeten kiezen, welke achtergrond(en) zou je dan kiezen?"
data[, 247] <- factor(data[, 247], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[247] <- "culturalIdentity_9"
# LimeSurvey Field type: F
data[, 248] <- as.numeric(data[, 248])
attributes(data)$variable.labels[248] <- "[Nederlands] 	Als je een culturele achtergrond zou moeten kiezen, welke achtergrond(en) zou je dan kiezen?"
data[, 248] <- factor(data[, 248], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[248] <- "culturalIdentity_10"
# LimeSurvey Field type: F
data[, 249] <- as.numeric(data[, 249])
attributes(data)$variable.labels[249] <- "[Surinaams] 	Als je een culturele achtergrond zou moeten kiezen, welke achtergrond(en) zou je dan kiezen?"
data[, 249] <- factor(data[, 249], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[249] <- "culturalIdentity_11"
# LimeSurvey Field type: F
data[, 250] <- as.numeric(data[, 250])
attributes(data)$variable.labels[250] <- "[Turks] 	Als je een culturele achtergrond zou moeten kiezen, welke achtergrond(en) zou je dan kiezen?"
data[, 250] <- factor(data[, 250], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[250] <- "culturalIdentity_12"
# LimeSurvey Field type: A
data[, 251] <- as.character(data[, 251])
attributes(data)$variable.labels[251] <- "[Andere] 	Als je een culturele achtergrond zou moeten kiezen, welke achtergrond(en) zou je dan kiezen?"
names(data)[251] <- "culturalIdentity_other"
# LimeSurvey Field type: A
data[, 252] <- as.character(data[, 252])
attributes(data)$variable.labels[252] <- "Wat is je seksuele voorkeur?"
data[, 252] <- factor(data[, 252], levels=c("noAns","1","2","3","4"),labels=c("Dit wil ik niet zeggen", "Heterosexueel", "Bisexueel", "Homosexueel", "Asexueel"))
names(data)[252] <- "sexualPreference"
# LimeSurvey Field type: F
data[, 253] <- as.numeric(data[, 253])
attributes(data)$variable.labels[253] <- "[Andere] Wat is je seksuele voorkeur?"
names(data)[253] <- "sexualPreference_other"
# LimeSurvey Field type: A
data[, 254] <- as.character(data[, 254])
attributes(data)$variable.labels[254] <- "Je Party Panel Code	Party Panel is een panelstudie: dat betekent dat we periodiek een nieuwe vragenlijst online plaatsen (zie https://partypanel.nl?info voor meer informatie). We proberen dan informatie van dezelfde mensen aan elkaar te koppelen. De enige manier waarop dat kan en we tegelijkertijd absoluut zeker weten dat je anoniem blijft, is met een persoonlijke code.	Je kunt je persoonlijke code (opnieuw) genereren op https://partypanel.nl?code, en die dan hier invullen.	Met deze code van 6 tekens (2 letters, 2 cijfers, 2 letters) blijf je anoniem, zonder dat je zelf iets hoeft te onthouden."
names(data)[254] <- "partyPanelCode"
# LimeSurvey Field type: A
data[, 255] <- as.character(data[, 255])
attributes(data)$variable.labels[255] <- "Heb je nog ideeen voor de volgende Party Panel? Of heb je nog andere tips of ideeen die je ons wil meegeven?	Die kun je hieronder opgeven. Deze worden bij je data opgeslagen, en dus anoniem - we kunnen geen contact met je opnemen. Als je een suggestie hebt en graag een reactie wil of als je een vraag hebt kun je het formulier gebruiken op https://partypanel.nl/?contact."
names(data)[255] <- "suggestions"
# LimeSurvey Field type: F
data[, 256] <- as.numeric(data[, 256])
attributes(data)$variable.labels[256] <- "[Ik heb de vragenlijst ingevuld om hem te testen, of gewoon om eens te kijken naar het soort vragen, en mijn antwoorden zijn dus niet serieus.] Heb je deze vragenlijst niet serieus ingevuld, bijvoorbeeld als test of gewoon om eens te kijken wat voor vragen werden gesteld? Dan kun je dat hier aangeven. Je data worden dan niet gebruikt in de analyses."
data[, 256] <- factor(data[, 256], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[256] <- "testEntry_test"
# LimeSurvey Field type: A
data[, 257] <- as.character(data[, 257])
attributes(data)$variable.labels[257] <- "Als je op \'Insturen\' klikt, wordt je doorgestuurd naar https://partypanel.nl/?reg waar je je email adres kunt achterlaten.	We mailen je dan bovendien als de resultaten binnen zijn en vertellen je dan wat we er mee gaan doen. Bovendien mailen we je als de volgende Party Panel ronde klaar staat.Heb je vrienden die ook uitgaan? Deel Party Panel op Facebook!	Ook als je je niet in wil schrijven voor Party Panel zijn we je heel erg dankbaar! Door deze vragenlijst in te vullen heb je nu al geholpen het Nederlandse uitgaansleven te verbeteren!"
names(data)[257] <- "endingFinal"
# LimeSurvey Field type: 
data[, 258] <- as.character(data[, 258])
attributes(data)$variable.labels[258] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 259] <- as.character(data[, 259])
attributes(data)$variable.labels[259] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 260] <- as.character(data[, 260])
attributes(data)$variable.labels[260] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 261] <- as.character(data[, 261])
attributes(data)$variable.labels[261] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 262] <- as.character(data[, 262])
attributes(data)$variable.labels[262] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 263] <- as.character(data[, 263])
attributes(data)$variable.labels[263] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 264] <- as.character(data[, 264])
attributes(data)$variable.labels[264] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 265] <- as.character(data[, 265])
attributes(data)$variable.labels[265] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 266] <- as.character(data[, 266])
attributes(data)$variable.labels[266] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 267] <- as.character(data[, 267])
attributes(data)$variable.labels[267] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 268] <- as.character(data[, 268])
attributes(data)$variable.labels[268] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 269] <- as.character(data[, 269])
attributes(data)$variable.labels[269] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 270] <- as.character(data[, 270])
attributes(data)$variable.labels[270] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 271] <- as.character(data[, 271])
attributes(data)$variable.labels[271] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 272] <- as.character(data[, 272])
attributes(data)$variable.labels[272] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 273] <- as.character(data[, 273])
attributes(data)$variable.labels[273] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 274] <- as.character(data[, 274])
attributes(data)$variable.labels[274] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 275] <- as.character(data[, 275])
attributes(data)$variable.labels[275] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 276] <- as.character(data[, 276])
attributes(data)$variable.labels[276] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 277] <- as.character(data[, 277])
attributes(data)$variable.labels[277] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 278] <- as.character(data[, 278])
attributes(data)$variable.labels[278] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 279] <- as.character(data[, 279])
attributes(data)$variable.labels[279] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 280] <- as.character(data[, 280])
attributes(data)$variable.labels[280] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 281] <- as.character(data[, 281])
attributes(data)$variable.labels[281] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 282] <- as.character(data[, 282])
attributes(data)$variable.labels[282] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 283] <- as.character(data[, 283])
attributes(data)$variable.labels[283] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 284] <- as.character(data[, 284])
attributes(data)$variable.labels[284] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 285] <- as.character(data[, 285])
attributes(data)$variable.labels[285] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 286] <- as.character(data[, 286])
attributes(data)$variable.labels[286] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 287] <- as.character(data[, 287])
attributes(data)$variable.labels[287] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 288] <- as.character(data[, 288])
attributes(data)$variable.labels[288] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 289] <- as.character(data[, 289])
attributes(data)$variable.labels[289] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 290] <- as.character(data[, 290])
attributes(data)$variable.labels[290] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 291] <- as.character(data[, 291])
attributes(data)$variable.labels[291] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 292] <- as.character(data[, 292])
attributes(data)$variable.labels[292] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 293] <- as.character(data[, 293])
attributes(data)$variable.labels[293] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 294] <- as.character(data[, 294])
attributes(data)$variable.labels[294] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 295] <- as.character(data[, 295])
attributes(data)$variable.labels[295] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 296] <- as.character(data[, 296])
attributes(data)$variable.labels[296] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 297] <- as.character(data[, 297])
attributes(data)$variable.labels[297] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 298] <- as.character(data[, 298])
attributes(data)$variable.labels[298] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 299] <- as.character(data[, 299])
attributes(data)$variable.labels[299] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 300] <- as.character(data[, 300])
attributes(data)$variable.labels[300] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 301] <- as.character(data[, 301])
attributes(data)$variable.labels[301] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 302] <- as.character(data[, 302])
attributes(data)$variable.labels[302] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 303] <- as.character(data[, 303])
attributes(data)$variable.labels[303] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 304] <- as.character(data[, 304])
attributes(data)$variable.labels[304] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 305] <- as.character(data[, 305])
attributes(data)$variable.labels[305] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 306] <- as.character(data[, 306])
attributes(data)$variable.labels[306] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 307] <- as.character(data[, 307])
attributes(data)$variable.labels[307] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 308] <- as.character(data[, 308])
attributes(data)$variable.labels[308] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 309] <- as.character(data[, 309])
attributes(data)$variable.labels[309] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 310] <- as.character(data[, 310])
attributes(data)$variable.labels[310] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 311] <- as.character(data[, 311])
attributes(data)$variable.labels[311] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 312] <- as.character(data[, 312])
attributes(data)$variable.labels[312] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 313] <- as.character(data[, 313])
attributes(data)$variable.labels[313] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 314] <- as.character(data[, 314])
attributes(data)$variable.labels[314] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 315] <- as.character(data[, 315])
attributes(data)$variable.labels[315] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 316] <- as.character(data[, 316])
attributes(data)$variable.labels[316] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 317] <- as.character(data[, 317])
attributes(data)$variable.labels[317] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 318] <- as.character(data[, 318])
attributes(data)$variable.labels[318] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 319] <- as.character(data[, 319])
attributes(data)$variable.labels[319] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 320] <- as.character(data[, 320])
attributes(data)$variable.labels[320] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 321] <- as.character(data[, 321])
attributes(data)$variable.labels[321] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 322] <- as.character(data[, 322])
attributes(data)$variable.labels[322] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 323] <- as.character(data[, 323])
attributes(data)$variable.labels[323] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 324] <- as.character(data[, 324])
attributes(data)$variable.labels[324] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 325] <- as.character(data[, 325])
attributes(data)$variable.labels[325] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 326] <- as.character(data[, 326])
attributes(data)$variable.labels[326] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 327] <- as.character(data[, 327])
attributes(data)$variable.labels[327] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 328] <- as.character(data[, 328])
attributes(data)$variable.labels[328] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 329] <- as.character(data[, 329])
attributes(data)$variable.labels[329] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 330] <- as.character(data[, 330])
attributes(data)$variable.labels[330] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 331] <- as.character(data[, 331])
attributes(data)$variable.labels[331] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 332] <- as.character(data[, 332])
attributes(data)$variable.labels[332] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 333] <- as.character(data[, 333])
attributes(data)$variable.labels[333] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 334] <- as.character(data[, 334])
attributes(data)$variable.labels[334] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 335] <- as.character(data[, 335])
attributes(data)$variable.labels[335] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 336] <- as.character(data[, 336])
attributes(data)$variable.labels[336] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 337] <- as.character(data[, 337])
attributes(data)$variable.labels[337] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 338] <- as.character(data[, 338])
attributes(data)$variable.labels[338] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 339] <- as.character(data[, 339])
attributes(data)$variable.labels[339] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 340] <- as.character(data[, 340])
attributes(data)$variable.labels[340] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 341] <- as.character(data[, 341])
attributes(data)$variable.labels[341] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 342] <- as.character(data[, 342])
attributes(data)$variable.labels[342] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 343] <- as.character(data[, 343])
attributes(data)$variable.labels[343] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 344] <- as.character(data[, 344])
attributes(data)$variable.labels[344] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 345] <- as.character(data[, 345])
attributes(data)$variable.labels[345] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 346] <- as.character(data[, 346])
attributes(data)$variable.labels[346] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 347] <- as.character(data[, 347])
attributes(data)$variable.labels[347] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 348] <- as.character(data[, 348])
attributes(data)$variable.labels[348] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 349] <- as.character(data[, 349])
attributes(data)$variable.labels[349] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 350] <- as.character(data[, 350])
attributes(data)$variable.labels[350] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 351] <- as.character(data[, 351])
attributes(data)$variable.labels[351] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 352] <- as.character(data[, 352])
attributes(data)$variable.labels[352] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 353] <- as.character(data[, 353])
attributes(data)$variable.labels[353] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 354] <- as.character(data[, 354])
attributes(data)$variable.labels[354] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 355] <- as.character(data[, 355])
attributes(data)$variable.labels[355] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 356] <- as.character(data[, 356])
attributes(data)$variable.labels[356] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 357] <- as.character(data[, 357])
attributes(data)$variable.labels[357] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 358] <- as.character(data[, 358])
attributes(data)$variable.labels[358] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 359] <- as.character(data[, 359])
attributes(data)$variable.labels[359] <- ""
#sql_name not set
