Week 3: eenvoudig spelletje: *hunt the circle*
==============================================

**Let op: de opdracht van deze week moet je inleveren en telt mee voor de
beoordeling aan het eind van het blok.**

Allereerst: vorige week hebben jullie het spelletje *Pong* geprogrammeerd.
Je kunt `mijn versie <pong/index.html>`_ spelen en de `broncode
<pong/pong.pde>`_ bestuderen. Na *game over* kun je de pagina herladen om
opnieuw te beginnen. Probeer het spelletje ook eens te spelen op je mobiel
of tablet. Dat gaat ook heel aardig!

1. Wat doet de functie `random()`?

2. Welke regels worden gebruikt om tekst op het scherm te krijgen? Wat doen
   de verschillende functies?

3. Welk if-statement controleert of het balletje op de bat terecht komt?
   Begrijp je hoe de conditie is opgebouwd?

4. Hoe werkt *game over* in het spelletje?

Deze week gaan we een ander klein spelletje programmeren: `Hunt the circle
<hunt_the_circle/index.html>`_. Klik op de link om het te spelen. Je ziet,
het spelletje is eenvoudig, maar dit is nog maar de derde week van de
cursus! Het spelletje is toch vrij lastig; probeer maar eens twintig
punten te halen! Dan moet je heel snel zijn. Op een touch screen gaat het
makkelijker. Verder kun je het spelletje natuurlijk uitbreiden en mooier
maken. Laat de cirkels van kleur veranderen terwijl ze krimpen, laat ze
ondertussen bewegen, enz.

Maar eerst het begin!

5. Begin een nieuwe sketch. Teken een witte cirkel op een willekeurige
   positie op het scherm. Geef de cirkel een *straal* tussen 30 en 100
   pixels.

6. Zorg er voor dat als je op de muisknop drukt, er een nieuwe cirkel
   verschijnt op een willekeurige positie, met willekeurige straal. De oude
   cirkel verdwijnt dan.

Er moet natuurlijk alleen een nieuwe cirkel verschijnen als je ook raak
klikt. Om te controleren of de muiscursor op de cirkel staat, kun je
gebruik maken van de functie `dist(x1, y1, x2, y2)`. Deze functie berekent
de afstand tussen de punten (x1, y1) en (x2, y2).

7. Hoe kun je deze functie gebruiken om te controleren of de muiscursor
   binnen de cirkel valt?

8. Pas je programma aan zodat er alléén een nieuwe cirkel verschijnt als
   je raak klikt. Klik je mis, dan gebeurt er niets.

9. Als je raak klikt, verdien je een punt! Print de score op het scherm.

10. Pas je programma aan zodat de cirkel steeds (een beetje!) kleiner
    wordt. Wat gebeurt er als de cirkel een straal krijgt die kleiner is
    dan nul?

11. Schrijf if-statements: zodra de straal van de cirkel kleiner of gelijk
    is aan nul, is het game over en stopt het spel.

12. Maak een game-over scherm. Zet ook de laatste score op het scherm.

13. Moeilijkheidje: zorg er voor dat als je raak klikt, de cirkels in het
    vervolg een klein beetje sneller krimpen.


Uitbreidingen
-------------

Maak het spelletje mooier. Of leuker. Verander de spelregels, verzin nog
wat extra moeilijkheden (bv:  laat de cirkels bewegen waardoor het
moeilijker is om raak te klikken). Geef een aantal levens: als je te laat
bent met raak klikken is het niet meteen game over, maar verlies je een
leven. Elke zoveel punten krijg je er een leven bij. Of teken op een
willekeurig moment een tweede, gekleurde cirkel. Als je die raak klikt,
krijg je een leven. Of wordt de krimpsnelheid weer gereset naar de
startwaarde, waardoor de cirkels niet meer zo snel zullen krimpen. Of...?
