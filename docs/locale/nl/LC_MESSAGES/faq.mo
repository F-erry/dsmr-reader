��    �      $  �   ,
      �  �   �  �   �  9   8  6   r  =   �  �   �     �  	   C  2   M     �  l   �     �  m        �  B   �      �  �   �  p   u     �     �  o     �   �  �   �       !   
  �   ,  |   �     O     T  
   ]  !   h  H   �  {   �     O  R   c  _   �       �   4  d   /  @   �  �   �  y   o  J   �  %   4  %   Z     �  	   �      �  h   �  F   0  �   w     F     [     p  ,   �  -   �  &   �  '   	  7   1  4   i  1   �  5   �  !      *   (   %   S   5   y      �      �   G   �      2!     D!     T!     f!     v!     �!  f   �!  �   
"  K   �"  O   �"  �   6#  Z   �#  [   $  W   z$  �   �$     U%  �   s%  �   �%     �&  7   �&  	   %'     /'  S   >'  �   �'  .   #(     R(  Y   f(     �(  '   �(  `   �(  E   W)  4   �)  +   �)  '   �)    &*     )+  ]   0+     �+  I   �+  �   �+    u,    �-  9   �.  1   �.  1   
/  
   </     G/  �   O/  �   �/  �   g0  p   1  =   r1  \   �1  �   2  �   �2  Z   <3  [   �3  T   �3  �   H4  �   55  b   �5  (   :6  ,   c6  �   �6  H   !7  /   j7  3   �7  >   �7     8  4   8     R8  d   h8     �8  �   �8  �   m9  �   �9  5   �:  �   �:  X   j;  *   �;  \   �;  �   K<  e   �<  (   L=  +   u=  -   �=     �=     �=     �=  :   
>     E>  �  b>  �   .@  �    A  =   �A  @   
B  L   KB  
  �B  �   �C     =D  G   DD     �D  �   �D     E  j   .E     �E  9   �E  #   �E  �   �E  r   �F  '   G     ,G  p   FG    �G  �   �H     _I  $   mI  �   �I  �   /J     �J     �J  
   �J  '   �J  U   
K  �   `K     �K  Y   L  k   ^L     �L    �L  q   N  K   sN  �   �N  }   rO  X   �O  (   IP  &   rP  $   �P  
   �P     �P  g   �P  K   KQ  &  �Q  %   �R     �R     �R  *   S  .   BS  #   qS  1   �S  8   �S  D    T  +   ET  5   qT  $   �T  9   �T      U  8   'U     `U  -   ~U  C   �U     �U     V     V     )V     9V     WV  q   kV  �   �V  O   }W  g   �W  �   5X  W   �X  _   IY  h   �Y  �   Z     �Z  �   �Z  �   f[     d\  @   �\     �\     �\  Y   �\  �   8]  C   �]     %^  k   <^  
   �^  &   �^  ]   �^  \   8_  ,   �_  0   �_  (   �_    `     $a  T   ,a  	   �a  Q   �a  �   �a  #  �b  L  �c  <   e  1   @e  1   re  
   �e     �e  �   �e  �   _f  �   g  �   �g  @   'h  G   hh  �   �h  �   ci  z   j  �   �j  U    k    vk  �   �l  d   Gm  #   �m  -   �m  �   �m  E   �n  G   �n  J   +o  W   vo     �o  D   �o     &p  {   ?p     �p  �   �p  �   �q  �   1r  O   �r  z   Os  d   �s  /   /t  l   _t  �   �t  t   `u  (   �u  +   �u  -   *v     Xv     iv     }v  9   �v  )   �v         T   �   m   �   3       H   �   s   {       >          }   |   �   C      \          
   "      k   l   8   �       @   D              #       y   !   �   �   _   b              K       e   �   M       (   p            �   Z   q   )   �      o                  I   �   x      P   u      1   G   t                  5       r   J              �      &       -                   Q   Y       F              �   a       j   ^           ;      i      w   	             c       B   �       z   V   2       <       �       $       �   0       [   ]   X   :   A           ?       ~       �   �   �   �   +      W       O   h      6       /       �      E   `   R   �      9       �               N   7       f   �   g       v           �   L   �   '      U   �   =   n   *   �       S   �   d              �   %   �   �   �             ,       �       4   .        **Be advised**: Do **not** enable this option to fix any **small timestamp offset** your smart meter has (let's say, up to a few minutes). As it's only meant as a last resort for the situation described above and may cause side effects. *Please note that "9.5" in the example below is just the version number of the database, and it may differ from your installation. The same steps however apply.* :doc:`More information can be found here <installation>`. Added the ``dsmr_debuginfo`` command for command line. Added the ``dsmr_debuginfo`` feature to About & Support page. After a few hours or days (depending on your hardware) the data should been reduced. Depending on the amount of data deleted, you might want to execute a one-time ``vacuumdb`` afterwards. See below for more information. After editing the file, all processes need to be restarted to reflect the change. Go back to the **root user or sudoer** with:: All done! Always start by checking the log files for errors. And restart:: Any processes listed, should have the status ``RUNNING``. Stale or crashed processes can be restarted with:: Application management Assuming you are using the default database, PostgreSQL, you may want to try a one-time vacuum by executing:: Backend By default DSMR-reader reads and preserves all telegram data read. Change it to your new location:: Changing the database data location may cause data corruption. Only execute the step below if you understand exactly what you are doing! Check whether the database is running again, you should see multiple processes: ``sudo ps faux | grep postgres`` Common error resolution Compressed (default) Configure ``DSMRREADER_ADMIN_USER`` and ``DSMRREADER_ADMIN_PASSWORD`` of the :doc:`Env Settings<env_settings>`. Configure a data retention policy :doc:`in the configuration<../configuration>`. This will eventually delete up to 99 percent of the telegrams, always preserving a few historically. Also, day and hour totals are **never** deleted by retention policies. Confirm that the database has stopped, you should see no more ``postgresql`` processes running: ``sudo ps faux | grep postgres`` Contents Creating or updating credentials: DSMR-reader has DEBUG-logging, which makes the system log very verbosely about what it's trying to do. This applies **specifically** to the ``dsmr_backend`` process. DSMR-reader technically consists of these processes (some may or may not be used by you) and they are watched by Supervisor: Data Database Datalogger Debug info dump for GitHub issues Did it error with ``Error: That username is already taken.``? Then try:: Do **not** restore your database if you've either **started the application** and/or ran ``manage.py migrate`` in some way. Docker installation Does the database not start? Check its logs in ``/var/log/postgresql/`` for hints. Doing so WILL cause trouble with duplicate data/ID's and break your installation at some point. Each has its own log file(s): Each release `has it's database migrations locked <https://github.com/dsmrreader/dsmr-reader/tree/v4/dsmrreader/provisioning/downgrade/>`_. You should execute the script of the version you wish to downgrade to. And the switch the code to the release. Edit database configuration ``sudo vi /etc/postgresql/9.5/main/postgresql.conf`` and find the line:: Ensure the new location exists: ``sudo mkdir /data/postgresql/`` Errors are likely to be logged at all times, no matter the DEBUG-logging level used. Debugging is only helpful to watch DSMR-reader's detailed behaviour. Every once in a while there may be updates. You can also easily check for updates by using the application's Status page. Everything should work as usual now, storing the data on the new location. Execute on your new system/database:: Execute on your old system/database:: Execute the commands below: Execute:: FAQ (Frequently Asked Questions) First increase the datalogger sleep in the configuration panel. Make sure it's at least 5 or 10 seconds. First, **please make sure you have a recent backup of your database**! First, you will need to report this to the supplier responsible for (placing) your smart meter. They might be able to fix it remotely or on site. Or even replace you meter completely (up to them to decide). For a hard restart:: For a soft restart:: For example ``v4.0``:: How can I configure a data retention policy? How can I increase the datalogger sleep time? How do I change the database location? How do I enable MySQL timezone support? How do I fix ``DETAIL: Key (id)=(123) already exists``? How do I fix my smart meter reporting invalid dates? How do I fix stats after smart meter replacement? How do I fix: ``Error: Already running on PID 1234``? How do I only use the datalogger? How do I recalculate prices retroactively? How do I reclaim database disk space? How do I resolve the warning regarding database size? How do I restore a backup? How do I set admin credentials? How do I transfer day and hour statistics from a previous installation? How to downgrade? How to restart? How to uninstall? How to upgrade? I still need help! I'm missing gas readings? I've adjusted my energy prices but there are no changes! How can I regenerate them with my new prices? If anything happens to fail or malfunction, please follow the steps below first to provide some background information when reporting an issue. If for some reason you need to downgrade the application, you will need to: If it does not resolve your issue, ask for support on GitHub (see end of page). If the processes do run, but you cannot find an error, (e.g.: things seem to hang or tend to be slow), there might be another issue at hand. If there is any collision with dates or hours in your new database, you will see an error. If there was any disk space to reclaim, the effect should be visible on the filesystem now. If you can't find the answer in the documentation, do not hesitate in looking for help. If you do encounter errors while restoring the backup in an **empty** database, create an issue at GitHub and **do not continue**. If you're seeing this error:: In the example below we will move the data from ``/var/lib/postgresql/`` to ``/data/postgresql/`` (which could be an external mount). Increase the datalogger sleep time :doc:`in the configuration<../configuration>` to 5 seconds or higher. This will save a lot of disk storage, especially when using a Raspberry Pi SD card, usually having a size of 16 GB max. It should now be:: Just delete the PID file and restart the webinterface:: Log files Logging levels Make sure the OS has direct access the new location and **create a back-up first**! Make sure the ``postgres`` user has access to the new location (and any parent folders in it's path): ``sudo chown -R postgres:postgres /data/`` Make sure you are ``dsmr`` user by executing:: Manual installation Move the database data folder: ``sudo mv /var/lib/postgresql/9.5/ /data/postgresql/9.5/`` Now execute:: Now remove the ``###`` from this line:: On recent versions it should be as simple as executing the following command as root/sudo user:: Only follow these step if you want to restore a backup in PostgreSQL. Open the ``.env`` file and look for the code below:: Optionally, you can remove these packages:: Or to restart them all simultaneously:: Please make sure that your meter supports reading gas consumption and that you've waited for a few hours for any graphs to render. The gas meter positions are only be updated once per hour (for DSMR v4). The Status page will give you insight in this as well. Prices Restoring a backup will replace any existing data stored in the database and is irreversible! Result Save the file and start the database: ``sudo systemctl start postgresql`` Secondly, enable data retention policy in the configuration as well. A recommended setting is having DSMR-reader clean up data after a week or month. Since the SD-card is quite vulnerable to wearing and corruption, you can run the database on a different disk or USB-stick. To do this, you will have to stop the application and database, change the database configuration, move the data and restart all processes again. Sometimes, when relocating or due to replacement of your meter, the meter positions read by DSMR-reader will cause invalid data (e.g.: big gaps or inverted consumption). Any consecutive days should not be affected by this issue, so you will only have to adjust the data for one day. Start DSMR-reader again: ``sudo supervisorctl start all`` Stop DSMR-reader: ``sudo supervisorctl stop all`` Stop database: ``sudo systemctl stop postgresql`` Supervisor Support The DEBUG-logging is disabled by default, to reduce writes on the filesystem. You can enable the logging by following these steps: The ``DSMRREADER_ADMIN_USER`` and ``DSMRREADER_ADMIN_PASSWORD`` :doc:`as defined in Env Settings<../env_settings>` will be used for the credentials. The day after, you should be able to manually adjust any invalid Day or Hour Statistics :doc:`in the admin interface<configuration>` for the invalid day. The logfiles may be stale due to rotation. To see all logs for a process, try tailing a wildcard pattern, e.g.:: The user should be created (or its password should be reset). The user should now either be created or the existing user should have its password updated. There are some rare cases of smart meters sending telegrams with a timestamp in the past or future. This varies from several days to even months. There is no default user or password. You will need to set it yourself with the steps below, depending on whether you've installed manually or using Docker. Therefor two measures can be taken: Increasing datalogger sleep and data retention policy. This assumes you've **not yet** reinstalled DSMR-reader and created an **empty** database:: This depends on the situation, but you can always try the following yourself first:: This is caused by the high data throughput of DSMR version 5, which produces a new telegram every second. Both DSMR-reader and most of its users do not need this high frequency of telegrams to store, calculate and plot consumption data. This will only make a difference if you've enabled data cleanup retroactively, resulting in roughly more than a 25 percent data deletion of your entire database. This will only work if you have access to both the previous database and the one you're using now. To be clear, we'll repeat it once again: To delete your data (the database) as well:: To do so you can either execute ``./manage.py dsmr_debuginfo`` on the command line or (since v4.6) click the button on the About & Support page. To remove DSMR-reader from your system, execute the following commands:: To restore a compressed backup (``.gz``), run:: To restore an uncompressed backup (``.sql``), run:: Transfer the files created above to your new system/database:: Troubleshooting Unapplying the database migrations may take a while. Uncompressed (legacy) Until then, you can enable the "Override telegram timestamp" option in the datalogger configuration. Webinterface When using a Raspberry Pi (or similar) combined with a DSMR version 5 smart meter (the default nowadays), you may experience issues after a while. You can supply additional debug info by executing the ``dsmr_debuginfo`` command and copying its output into your issue on GitHub. You can update your application to the latest version by executing ``deploy.sh``, located in the root of the project. Make sure to execute it while logged in as the ``dsmr`` user:: You can view the status of all processes by running:: You might want or need to restart DSMR-reader manually at some time. E.g.: Due to altered settings that need to be reapplied to the processes. You should **not** see any errors regarding duplicate data or existing ID's or whatever. You should now be on the targeted release. You will need to reduce the amount of incoming data and also enable a data retention policy. `Check these docs <https://dev.mysql.com/doc/refman/5.7/en/mysql-tzinfo-to-sql.html>`_ for more information about how to enable timezone support on MySQL. `View existing GitHub issues or create a new one <https://github.com/dsmrreader/dsmr-reader/issues>`_ ``/var/log/supervisor/dsmr_backend.log`` ``/var/log/supervisor/dsmr_datalogger.log`` ``/var/log/supervisor/dsmr_webinterface.log`` ``dsmr_backend`` ``dsmr_datalogger`` ``dsmr_webinterface`` switch the application code version to a previous release. unapply database migrations. Project-Id-Version: DSMR Reader
Report-Msgid-Bugs-To: Dennis Siemensma <github@dennissiemensma.nl>
PO-Revision-Date: 2021-03-07 11:13+0100
Last-Translator: Dennis Siemensma <github@dennissiemensma.nl>
Language: nl
Language-Team: Dennis Siemensma <github@dennissiemensma.nl>
Plural-Forms: nplurals=2; plural=(n != 1);
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.0
X-Generator: Poedit 2.0.6
 **Let op**: Schakel deze optie **niet in** om een klein verschil in tijd te repareren (als in tot enkele minuten). Deze optie is alleen bedoeld als laatste mogelijkheid voor bovenstaande situatie en kan zorgen voor (ongewenste) bijwerkingen. *N.B.: "9.5" in onderstaand voorbeeld is slechts het versienummer van de database en kan afwijken van je eigen situatie. Je kunt echter gewoon dezelfde stappen uitvoeren.* :doc:`Meer informatie kun je hier terugvinden<installation>`. Het ``dsmr_debuginfo`` commando toegevoegd voor de command line. De ``dsmr_debuginfo`` feature toegevoegd aan de Over & Ondersteuning-pagina. Na verloop van tijd (enkele uren tot dagen, afhankelijk van je hardware) zou de data opgeschoond moeten zijn. Afhankelijk van de hoeveelheid verwijderde metingen, kun je overwegen om daarna eenmalig een ``vacuumdb`` uit te voeren. Zie hieronder voor meer informatie. Na het bewerken van het bestand zul je alle processen moeten herstarten om de wijziging door te voeren. Ga terug naar de **root of sudo-gebruiker** met:: Klaar! Je startpunt is altijd het bekijken van de logfiles voor foutmeldingen. En herstart:: Elk proces dat getoond wordt zou de status ``RUNNING`` moeten hebben. Hangende of gecrashde processen kunnen herstart worden met:: Applicatiebeheer Er vanuitgaande dat je de standaarddatabase gebruikt, PostgreSQL, kun je het volgende eenmalig uitvoeren:: Backend Standaard bewaart DSMR-reader alle ingelezen telegrammen. Wijzig het naar de nieuwe locatie:: Het wijzigen van de dataopslag breng het gevaar van datacorruptie met zich mee. Voer onderstaande stappen alleen uit als je begrijpt wat je doet! Controleer of de database weer draait, je zou nu meerdere processen moeten zien:  ``sudo ps faux | grep postgres`` Oplossingen voor veelvoorkomende fouten Gecomprimeerd (standaard) Stel ``DSMRREADER_ADMIN_USER`` en ``DSMRREADER_ADMIN_PASSWORD`` in via de :doc:`Env-instellingen<env_settings>`.  Stel een gegevensretentiebeleid in :doc:`binnen de configuratie<../configuration>`. Dit schoont uiteindelijk tot 99 procent van de telegrammen op, waarbij een aantal altijd achterblijven i.v.m. historie. Daarnaast worden uur- en dagtotalen **nooit** opgeschoond door het retentiebeleid. Controleer dat de database gestopt is, je zou geen processen meer moeten zien van ``postgresql`` met:  ``sudo ps faux | grep postgres`` Inhoudsopgave Inloggegevens aanmaken of bijwerken: DSMR-reader heeft DEBUG-logging, waarmee het systeem heel letterlijk logt wat het aan het doen is. Dit geldt **specifiek** voor het ``dsmr_backend`` proces. DSMR-reader bestaat technisch uit deze processen (sommigen zullen wel of niet in je eigen situatie gebruikt worden) en ze worden beheerd door Supervisor: Data Database Datalogger Debug-informatiedump voor GitHub-issues Kwam er een foutmelding met ``Error: That username is already taken.``? Probeer dan:: Zet **niet** je database terug wanneer je ofwel **de applicatie (weer) gestart hebt** ofwel wanneer je al ``manage.py migrate`` hebt uitgevoerd. Docker-installatie Wil de database niet starten? Bekijk dan de logs in  ``/var/log/postgresql/`` voor hints. Doorgaan zorgt er gegarandeerd voor dat er problemen komen met dubbele gegevens/ID's op een bepaald moment. Elk heeft eigen logbestand(en): Elke release `heeft z'n eigen databasemigraties vastgelegd <https://github.com/dsmrreader/dsmr-reader/tree/v4/dsmrreader/provisioning/downgrade>`_. Je zult het script moeten uitvoer voor de release waar je naar toe wilt. En vervolgens de codebase wisselen naar dezelfde release. Open de databaseconfiguratie met ``sudo vi /etc/postgresql/9.5/main/postgresql.conf`` en vind de volgende regel:: Zorg ervoor dat de nieuwe locatie bestaat: ``sudo mkdir /data/postgresql/`` Fouten worden doorgaans altijd gelogd, ongeacht het logging niveau van DEBUG-level of niet. Debugging is alleen nuttig om het gedrag van DSMR-reader in meer detail te observeren. Met enige regelmaat zijn er updates beschikbaar. Je kunt dit ook eenvoudig controleren op de Status-pagina van de applicatie. Alles zou weer moeten werken zoals voorheen, met de data voortaan op een andere locatie. Voer uit op je nieuwe systeem/database:: Voer uit op je oude systeem/database:: Voer de onderstaande commando's uit: Voer uit:: FAQ (veelgestelde vragen) Verhoog allereest de datalogger-sleep in het configuratiepaneel. Zet deze op tenminste 5 a 10 seconden. Allereerst, **zorg ervoor dat je een recente backup hebt van je database**! Allereerst kun je dit melden bij de partij die verantwoordelijk is voor je slimme meter (doorgaans de netbeheerder). Deze kan je probleem mogelijk op afstand op lossen of moet ter plekke komen. In het ergste geval vervangen ze de meter, maar dat is helemaal aan hen om te beslissen wat te doen. Voor een harde/geforceerde herstart:: Voor een zachte herstart:: Bijvoorbeeld ``v4.0``:: Hoe stel ik een gegevensretentiebeleid in? Hoe verhoog ik de slaaptijd van de datalogger? Hoe verplaats ik de databaseopslag? Hoe zet ik tijdzone-ondersteuning aan voor MySQL? Hoe los ik ``DETAIL: Key (id)=(123) already exists`` op? Wat moet ik doen als mijn slimme meter verkeerde datums rapporteert? Hoe herstel ik gegevens na een meterwissel? Hoe los ik ``Error: Already running on PID 1234`` op? Hoe gebruik ik alleen de datalogger? Hoe kan ik prijzen met terugwerkende kracht herberekenen? Hoe krijg ik schijfruimte terug? Hoe los ik de waarschuwing op m.b.t. de databasegrootte? Hoe zet ik een back-up terug? Hoe stel ik de inloggegevens van de admin in? Hoe zet ik dag- en uurstatistieken over van een vorige installatie? Hoe downgrade ik? Hoe herstart ik? Hoe deïnstalleer ik? Hoe upgrade ik? Ik heb nog steeds hulp nodig! Ik mis gasverbruik? Ik heb zojuist mijn energieprijzen aangepast, maar ik zie geen verschil! Hoe kan ik de nieuwe prijzen doorvoeren? Wanneer er iets lijkt mis te gaan, volg de onderstaande stappen eerst, voordat je een issue aanmaakt. Hiermee kun je wat meer achtergrondinformatie aanleveren. Wanneer je om wat voor reden dan ook de applicatie moet downgraden, dan zul je: Wanneer dat het probleem niet oplost, vraag dan om ondersteuning via Guthub (zie onderaan deze pagina). Wanneer de processen lijken te draaien, maar je kunt geen fout vinden (bijvoorbeeld als telegrammen hangen of de verwerking traag lijkt), dan is er waarschijnlijk iets anders aan de hand. Mochten er in je nieuwe database datums of uren botsen, dan krijg je daar een fout van. Mocht er schijfruimte vrij te maken zijn, dan zou je dat nu moeten zien op het bestandssysteem. Wanneer je de oplossing niet kan vinden in de documentatie, aarzel dan vooral niet om om hulp te vragen. Mocht je bij het terugzetten van de back-up in een **lege** database toch fouten tegenkomen, maak dan een issue aan op GitHub en **ga niet verder**. Als je deze fout ziet:: In onderstaand voorbeeld verplaatsen we de dataopslag van  ``/var/lib/postgresql/`` naar ``/data/postgresql/`` (wat bijvoorbeeld op een externe disk zou kunnen zijn). Verhoog de slaaptijd van de datalogger :doc:`binnen de configuratie<../configuration>` naar minimaal 5 seconden. Dit bespaart een hoop schijfruimte, met name wanneer je een standaard Raspberry Pi SD-kaart gebruikt, die meestal maximaal 16 GB groot zijn. Het zou nu dit moeten zijn:: Verwijder het genoemde PID-bestand en herstart de webinterface:: Logbestanden Logging levels Zorg ervoor dat het OS toegang heeft tot de nieuwe locatie en **maak eerst een back-up**! Zorg ervoor dat de ``postgres`` gebruiker toegang heeft tot de nieuwe locatie (en eventuele bovenliggende mappen in het pad): ``sudo chown -R postgres:postgres /data/`` Zorg ervoor dat je ``dsmr`` gebruiker bent door dit uit te voeren:: Handmatige installatie Verplaats nu de gehele data-map van de database: ``sudo mv /var/lib/postgresql/9.5/ /data/postgresql/9.5/`` Voer uit:: Verwijder nu de ``###`` uit de regel:: Op recente versies kun je simpelweg het volgende commando als root/sudo-gebruiker uitvoeren:: Voer deze stappen alleen uit wanneer je een database back-up in PostgreSQL wilt terugzetten. Open ``.env`` en zoek de onderstaande code:: Eventueel kun je deze packages ook verwijderen:: Of herstart ze allemaal tegelijkertijd:: Wees er allereerst zeker van dat je slimme meter uberhaupt gasverbruik registreert, en dat je een paar uur hebt gewacht. De gasmeterstanden worden sowieso slechts een keer per uur bijgewerkt (voor DSMR v4). De Status-pagina geeft je hier overigens ook inzicht in. Prijzen Het terugzetten van een back-up overschrijft alle bestaande data en is onomkeerbaar! Resultaat Sla het bestand op en start de database weer: ``sudo systemctl start postgresql`` Daarnaast zul je een dataretentiebeleid moeten instellen in het configuratiepaneel. Een aanbevolen instelling is om DSMR-reader na een week of maand de gegevens te laten opschonen. Gezien de SD-kaart gevoelig is voor slijtage en corruptie, kun je ervoor kiezen om de database op een andere disk of USB-stick te draaien. Om dit te realiseren zul je de applicatie en database moeten stoppen, de databaseconfiguratie aanpassen, dataopslag verplaatsen en alles weer opstarten. Het komt soms voor dat, door verhuizing of technische vervanging van je meter, deze meterstanden in DSMR-reader voor afwijkingen en onjuiste gegevens zorgen (bijv.: grote gaten of negatief verbruik). Dit komt alleen voor bij de dag zelf en niet bij de dagen erna. Daarom zul je de gegevens van de foutieve dag zelf moeten aanpassen. Start DSMR-reader weer met: ``sudo supervisorctl start all`` Stop DSMR-reader: ``sudo supervisorctl stop all`` Stop database: ``sudo systemctl stop postgresql`` Supervisor Ondersteuning De DEBUG-logging is standaard uitgeschakeld, om het aantal schrijfacties op het bestandssysteem te beperken. Je kunt het inschakelen door deze stappen te volgen: De ``DSMRREADER_ADMIN_USER`` en ``DSMRREADER_ADMIN_PASSWORD`` :doc:`zoals gespecificeerd in Env-instellingen<../env_settings>` worden gebruikt als inloggegevens. De dag erna kun je dit zelf weer rechtzetten via de Dag- of Uurtotalen, :doc:`in de admin-configuratie<configuration>`, voor de betreffende dag. De logbestanden kunnen blijven hangen wegens rotatie. Probeer te tailen op een wildcard-patroon om alles logs van een proces te zien. Bijvoorbeeld:: De gebruiker is nu aangemaakt (of het wachtwoord is bijgewerkt). De gebruiker is nu ofwel aangemaakt ofwel het wachtwoord is bijgewerkt. Er zijn zeldzame gevallen bekend waarbij slimme meters telegrammen versturen met een tijdstip ver in de toekomst of het verleden. Dit varieert van elkele dagen tot zelfs maanden. Er zijn geen standaard inloggegevens. Je zult deze zelf moeten instellen met de stappen hieronder, afhankelijk van of je een handmatige installatie gedaan hebt of via Docker. HIervoor kunnen twee maatregelen genomen worden: Verhogen van de datalogger-sleep en het instellen van een retentiebeleid. Dit gaat er van uit dat je DSMR-reader **nog niet** helemaal geinstalleerd/draaiend hebt en daarbij alleen een **lege** database hebt aangemaakt:: Het hangt af van de situatie, maar je kunt het volgende sowieso zelf eerst proberen:: Dit wordt veroorzaak door de hoge gegevensdoorvoer van DSMR versie 5, wat elke seconde voor een nieuw telegram zorgt. Zowel DSMR-reader als het meerendeel van de gebruikers hebben deze hoge frequentie echter niet nodig voor de opslag, analyze en tonen van verbruiksgegevens. Dit gaat alleen een verschil maken wanneer je dataopschoning met terugwerkende kracht hebt ingeschakeld, waardoor grofweg meer dan 25 procent van de gegevens in je database zijn verwijderd. Dit werkt alleen wanneer je toegang hebt tot zowel de oude als nieuwe database (die je nu gebruikt). On glashelder te zijn, herhalen we: Om ook je data (de database) te verwijderen:: Om dit te doen kun je ofwel ``./manage.py dsmr_debuginfo`` op de command line uitvoeren, of (sinds v4.6) op de knop klikken in de Over & Ondersteuning-pagina. Om DSMR-reader van je systeem te verwijderen, voer het volgende uit:: Om een gecomprimeerde back-up (``.gz``) terug te zetten, voer dit uit:: Om een ongecomprimeerde back-up (``.sql``) terug te zetten, voer dit uit:: Zet de bestanden, die je hierboven hebt gemaakt, over naar je nieuwe systeem/database:: Hulp bij problemen Het terugdraaien van databasemigraties kan wat tijd in beslag nemen. Ongecomprimeerd (legacy) Tot die tijd kun je het probleem omzeilen met de "Overschrijf tijdstip van telegrammen" optie in de dataloggerconfiguratie. Webinterface Wanneer je een Raspberry Pi (of soortgelijk appartaat) gebruikt, samen met een DSMR versie 5 slimme meter (wordt vandaag de dag standaard geleverd), dan kun je na verloop van tijd problemen ervaren. Je kunt extra debug-informatie aanleveren door het ``dsmr_debuginfo``-commando uit te voeren en vervolgens de output daarvan te kopieren naar je issue op GitHub. Je kun je applicatie bijwerken door het script ``deploy.sh`` uit te voeren, die in zich in de hoofdmap van het project bevindt. Zorg er wel voor dat je ingelogd bent als ``dsmr`` gebruiker op de terminal:: Je kunt de status van alle processen bekijken door het volgende uit te voeren:: Kan het voorkomen dat je DSMR-reader wilt of moet herstarten. Bijvoorbeeld vanwege instellingen die een herstart vereisen. Je zou **geen** fouten moeten zien m.b.t dubbele gegevens en/of bestaande ID's of iets soortgelijks. Je zou nu op de gewenste release moeten zitten. Je zult de hoeveelheid inkomende gegevens moeten beperken en tevens een dataretentiebeleid moeten instellen. `Zie deze documentatie <https://dev.mysql.com/doc/refman/5.7/en/mysql-tzinfo-to-sql.html>`_ over hoe je tijdzone-ondersteuning inschakelt op MySQL. `Bekijk bestaande issues op GitHub of maak een nieuwe aan <https://github.com/dennissiemensma/dsmr-reader/issues>`_. ``/var/log/supervisor/dsmr_backend.log`` ``/var/log/supervisor/dsmr_datalogger.log`` ``/var/log/supervisor/dsmr_webinterface.log`` ``dsmr_backend`` ``dsmr_datalogger`` ``dsmr_webinterface`` de applicatiecode moeten wisselen naar een vorige versie. de databasemigraties moeten terugdraaien. 