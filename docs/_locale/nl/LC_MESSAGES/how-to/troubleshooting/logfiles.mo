��          �      ,      �  l   �     �  W   �  
   V     a  '     p   �          3  5   @  (   v  +   �  -   �     �     
       �  4  �         �  V   �  
   �     �  (     �   6      �     �  O   �  (   I  +   r  -   �     �     �     �                         
      	                                               Any processes listed, should have the status ``RUNNING``. Stale or crashed processes can be restarted with:: Backend DSMR-reader technically consists of these processes and they are watched by Supervisor: Datalogger Each has its own log file(s): Or to restart them all simultaneously:: The logfiles may be stale due to rotation. To see all logs for a process, try tailing a wildcard pattern, e.g.:: Troubleshooting: Log files Webinterface You can view the status of all processes by running:: ``/var/log/supervisor/dsmr_backend.log`` ``/var/log/supervisor/dsmr_datalogger.log`` ``/var/log/supervisor/dsmr_webinterface.log`` ``dsmr_backend`` ``dsmr_datalogger`` ``dsmr_webinterface`` Project-Id-Version: DSMR Reader
Report-Msgid-Bugs-To: Dennis Siemensma <github@dennissiemensma.nl>
PO-Revision-Date: 2021-03-23 20:47+0100
Last-Translator: Dennis Siemensma <github@dennissiemensma.nl>
Language: nl
Language-Team: Dennis Siemensma <github@dennissiemensma.nl>
Plural-Forms: nplurals=2; plural=(n != 1);
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.0
X-Generator: Poedit 2.0.6
 Elk proces dat getoond wordt zou de status ``RUNNING`` moeten hebben. Hangende of gecrashde processen kunnen herstart worden met:: Backend DSMR-reader bestaat technisch uit deze processen en ze worden beheerd door Supervisor: Datalogger Elk heeft eigen logbestand(en): Of herstart ze allemaal tegelijkertijd:: De logbestanden kunnen blijven hangen wegens rotatie. Probeer te tailen op een wildcard-patroon om alles logs van een proces te zien. Bijvoorbeeld:: Hulp bij problemen: Logbestanden Webinterface Je kunt de status van alle processen bekijken door het volgende uit te voeren:: ``/var/log/supervisor/dsmr_backend.log`` ``/var/log/supervisor/dsmr_datalogger.log`` ``/var/log/supervisor/dsmr_webinterface.log`` ``dsmr_backend`` ``dsmr_datalogger`` ``dsmr_webinterface`` 