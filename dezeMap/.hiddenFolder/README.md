# bpgepr
-------------------------------
##De database
**begin met een tabel**
Oke
`
CREATE TABLE eenValue (gen_id int NOT NULL,
EXON_START int NOT NULL,
PRIMARY KEY (Gen_ID, EXON_START));`

importeer de gegevens
`COPY eenValue FROM "/pad/naar/kaasjeStuff/deDataBs" DELIMITER ":"`
ofzo?
Je kan natuurlijk ook zelf gegevens verzinnen ofzo
antwoorden:
* A
de commando's staan voor de rest in __kaasjeStuff/pijnMetSQL__
O ja er zijn _2_ commando's
omdat je
de exonen on intronen hebt???
dat was dan A?
* B
Coming soon
=================

We doen het beter

	CREATE TABLE betterValue (gen_id int NOT NULL, EXON_START int NOT NULL, EXON_END int NOT NULL, PRIMARY KEY (Gen_ID, EXON_START, EXON_END));
Zo wordt de <font color=red >exon</font> tabel?
Nu volgt enkel nep data

	insert INTO bettervalue VALUES (1, 0, 20);
    insert INTO bettervalue VALUES (1, 34, 99);
    insert INTO bettervalue VALUES (1, 102, 120);
    insert INTO bettervalue VALUES (1, 143, 150);
    insert INTO bettervalue VALUES (1, 170, 590);
    insert INTO bettervalue VALUES (2, 0, 23);
    insert INTO bettervalue VALUES (2, 35, 120);
    insert INTO bettervalue VALUES (2, 600, 824);
    insert INTO bettervalue VALUES (2, 923, 987);
    insert INTO bettervalue VALUES (3, 0, 16);
    insert INTO bettervalue VALUES (3, 18, 19);
    insert INTO bettervalue VALUES (3, 54, 72);
Verzin anders zelf wat <u>kweenie</u>
De nieuwste release van pijnMetSQL is volledig compitabel met posgresql *(hoop ik)*, het werkt binnen tabellen die een **eind**, **begin** en **genID** hebben.

Als je andere applicaties werken met <font color=green>enkel exon/inton overgangs punten</font> raad ik je aan de <font color=yellow>legacy</font> versie pijnMetLegacy te nemen. Weet dat dit niet de niewste exonlengte technologie bevat. Ik raad **iedereen** dan ook aan andere applicaties om te zetten naar dit nieuwe fomat. De nieuwste builds staan zoals altijd op `kaasjeStuff/pijnMetSQL` (vergeet niet enkel de juiste code te <font color=blue>runnen</font>)

&COPY;partOfKaasje
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
![heu?](https://www.ketnet.be/sites/default/files/schrikken.jpg)