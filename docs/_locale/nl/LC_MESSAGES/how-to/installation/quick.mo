��          �            h  H   i  L   �  
   �     
  C     	   Z  ^   d     �  #   �  k   �  �   g       "   +  c   N  �  �  E   i  P   �             B     
   [  m   f     �  '   �  l     �   {     f	  &   w	  Z   �	                                               	                 
                :doc:`Finished? Go to setting up the application</tutorial/setting-up>`. Contains just a list of commands needed for the installation of DSMR-reader. Continue:: DSMR-reader Does PostgreSQL not start/create the cluster due to locales? E.g.:: Execute:: If you need to restore a database backup with your existing data, this is the moment to do so. Installation: Quick Optional: Restore a database backup Restoring a database backup? :doc:`See here for instructions </how-to/database/postgresql-restore-backup>`. Still no luck? Try editing ``/etc/environment``, add ``LC_ALL="en_US.utf-8"`` and reboot. Then try ``pg_createcluster 9.4 main --start`` again (or whatever version you are using). System packages Try: ``dpkg-reconfigure locales``. Use this to host both the datalogger and application on the same machine by installing it manually. Project-Id-Version: DSMR Reader
Report-Msgid-Bugs-To: Dennis Siemensma <github@dennissiemensma.nl>
Last-Translator: Dennis Siemensma <github@dennissiemensma.nl>
Language: nl
Language-Team: Dennis Siemensma <github@dennissiemensma.nl>
Plural-Forms: nplurals=2; plural=(n != 1);
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.0
PO-Revision-Date: 
X-Generator: Poedit 2.0.6
 :doc:`Klaar? Ga dan naar applicatie instellen</tutorial/setting-up>`. Bevat alleen een lijst met commando's nodig voor de installatie van DSMR-reader. Ga verder:: DSMR-reader Start PostgreSQL niet wegens een fout in 'locales'? Bijvoorbeeld:: Voer uit:: Indien je een back-up van de database wilt terugzetten met je oude gegevens, nu is het moment om dat te doen. Installatie: Snel Optioneel: Database back-up terugzetten Database back-up terugzetten? :doc:`Zie hier voor instructies </how-to/database/postgresql-restore-backup>`. Werkt het nog steeds niet? Open dan dit bestand ``/etc/environment``, voeg onderaan de regel ``LC_ALL="en_US.utf-8"`` toe en herstart het systeem. Probeer daarna ``pg_createcluster 9.4 main --start`` (of welke versie je ook gebruikt). Systeem packages Probeer: ``dpkg-reconfigure locales``. Gebruik dit om zowel de datalogger als de applicatie op hetzelfde apparaat te installeren. 