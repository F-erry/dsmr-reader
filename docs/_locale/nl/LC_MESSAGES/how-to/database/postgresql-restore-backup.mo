��          �            h     i  '   ~  {   �  _   "  �   �  E     ]   K     �  [   �  (     /   5  3   e     �  X   �  �       �  *   �  �     k   �  �     \   �  T   �  	   H	  �   R	  #   �	  G   	
  J   Q
     �
  d   �
            
                                            	                        Compressed (default) Database: Restore a backup (PostgreSQL) Do **not** restore your database if you've either **started the application** and/or ran ``manage.py migrate`` in some way. Doing so WILL cause trouble with duplicate data/ID's and break your installation at some point. If you do encounter errors while restoring the backup in an **empty** database, create an issue at GitHub and **do not continue**. Only follow these step if you want to restore a backup in PostgreSQL. Restoring a backup will replace any existing data stored in the database and is irreversible! Result This assumes you've **not yet** reinstalled DSMR-reader and created an **empty** database:: To be clear, we'll repeat it once again: To restore a compressed backup (``.gz``), run:: To restore an uncompressed backup (``.sql``), run:: Uncompressed (legacy) You should **not** see any errors regarding duplicate data or existing ID's or whatever. Project-Id-Version: DSMR Reader
Report-Msgid-Bugs-To: Dennis Siemensma <github@dennissiemensma.nl>
Last-Translator: Dennis Siemensma <github@dennissiemensma.nl>
Language: nl
Language-Team: Dennis Siemensma <github@dennissiemensma.nl>
Plural-Forms: nplurals=2; plural=(n != 1);
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.0
X-Generator: Poedit 2.0.6
PO-Revision-Date: 
 Gecomprimeerd (standaard) Database: Back-up terugzetten (PostgreSQL) Zet je database **niet terug** wanneer je ofwel **de applicatie (weer) gestart hebt** ofwel wanneer je al ``manage.py migrate`` hebt uitgevoerd. Doorgaan zorgt er gegarandeerd voor dat er problemen komen met dubbele gegevens/ID's op een bepaald moment. Mocht je bij het terugzetten van de back-up in een **lege** database toch fouten tegenkomen, maak dan een issue aan op GitHub en **ga niet verder**. Voer deze stappen alleen uit wanneer je een database back-up in PostgreSQL wilt terugzetten. Het terugzetten van een back-up overschrijft alle bestaande data en is onomkeerbaar! Resultaat Dit gaat er van uit dat je DSMR-reader **nog niet** helemaal geinstalleerd/draaiend hebt en daarbij alleen een **lege** database hebt aangemaakt:: On glashelder te zijn, herhalen we: Om een gecomprimeerde back-up (``.gz``) terug te zetten, voer dit uit:: Om een ongecomprimeerde back-up (``.sql``) terug te zetten, voer dit uit:: Ongecomprimeerd (legacy) Je zou **geen** fouten moeten zien m.b.t dubbele gegevens en/of bestaande ID's of iets soortgelijks. 