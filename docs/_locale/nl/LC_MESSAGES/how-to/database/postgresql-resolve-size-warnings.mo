��          T      �       �   �   �   .   �  	   �  h   �  �   7  \   �  �  *  
  �  F   �  
   3  g   >  �   �  l   [                                        After a few hours or days (depending on your hardware) the data should been reduced. Depending on the amount of data deleted, you might want to execute a one-time ``vacuumdb`` afterwards. See below for more information. Database: Resolving size warnings (PostgreSQL) Execute:: First increase the datalogger sleep in the configuration panel. Make sure it's at least 5 or 10 seconds. Secondly, enable data retention policy in the configuration as well. A recommended setting is having DSMR-reader clean up data after a week or month. You will need to reduce the amount of incoming data and also enable a data retention policy. Project-Id-Version: DSMR Reader
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
 Na verloop van tijd (enkele uren tot dagen, afhankelijk van je hardware) zou de data opgeschoond moeten zijn. Afhankelijk van de hoeveelheid verwijderde metingen, kun je overwegen om daarna eenmalig een ``vacuumdb`` uit te voeren. Zie hieronder voor meer informatie. Database: Waarschuwingen m.b.t. database grootte oplossen (PostgreSQL) Voer uit:: Verhoog allereest de datalogger-sleep in het configuratiepaneel. Zet deze op tenminste 5 a 10 seconden. Daarnaast zul je een dataretentiebeleid moeten instellen in het configuratiepaneel. Een aanbevolen instelling is om DSMR-reader na een week of maand de gegevens te laten opschonen. Je zult de hoeveelheid inkomende gegevens moeten beperken en tevens een dataretentiebeleid moeten instellen. 