��          |      �             !  	   �     �  �   �  �   _     �  .     '   ;  4   c  �   �  %     �  A  �   �     �     �  �   �  �   D     �  C     &   X  ,     �   �  -   N	            
                                	               After editing the file, all processes need to be restarted to reflect the change. Go back to the **root user or sudoer** with:: All done! And restart:: DSMR-reader has DEBUG-logging, which makes the system log very verbosely about what it's trying to do. This applies **specifically** to the ``dsmr_backend`` process. Errors are likely to be logged at all times, no matter the DEBUG-logging level used. Debugging is only helpful to watch DSMR-reader's detailed behaviour. It should now be:: Make sure you are ``dsmr`` user by executing:: Now remove the ``###`` from this line:: Open the ``.env`` file and look for the code below:: The DEBUG-logging is disabled by default, to reduce writes on the filesystem. You can enable the logging by following these steps: Troubleshooting: Enable DEBUG logging Project-Id-Version: DSMR Reader
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
 Na het bewerken van het bestand zul je alle processen moeten herstarten om de wijziging door te voeren. Ga terug naar de **root of sudo-gebruiker** met:: Klaar! En herstart:: DSMR-reader heeft DEBUG-logging, waarmee het systeem heel letterlijk logt wat het aan het doen is. Dit geldt **specifiek** voor het ``dsmr_backend`` proces. Fouten worden doorgaans altijd gelogd, ongeacht het logging niveau van DEBUG-level of niet. Debugging is alleen nuttig om het gedrag van DSMR-reader in meer detail te observeren. Het zou nu dit moeten zijn:: Zorg ervoor dat je ``dsmr`` gebruiker bent door dit uit te voeren:: Verwijder nu de ``###`` uit de regel:: Open ``.env`` en zoek de onderstaande code:: De DEBUG-logging is standaard uitgeschakeld, om het aantal schrijfacties op het bestandssysteem te beperken. Je kunt het inschakelen door deze stappen te volgen: Hulp bij problemen: DEBUG-logging inschakelen 