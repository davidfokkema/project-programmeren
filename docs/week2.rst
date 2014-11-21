Week 2: het programma sturen
============================

Deze week gaan we dieper in op de programmeertaal Processing. We gaan het
programma sturen met de muis, en we gaan keuzes maken in het programma: als-dan.

Vanaf deze week zul je sommige opgaven moeten laten goedkeuren.

1. Teken een cirkel met een straal van 30 pixels in het midden van het scherm.
   Teken ook een horizontale lijn in het midden van het scherm, en een verticale lijn
   in het miden van het scherm. Als het goed is ligt het kruispunt van deze lijnen
   precies middenin de cirkel.

2. Pas het bovenstaande programma aan, zodat de cirkel en de lijnen niet in het midden
   van het scherm lopen, maar de muiscursor volgen.  Laat dit programma goedkeuren.

3. Teken een grijze gevulde cirkel (diameter 50 pixels) op de positie van
   de muiscursor.  Teken daar bovenop een kleinere witte cirkel (breedte 30 pixels)
   op de *vorige* positie van de muiscursor (gebruik variabele ``pmouseX``).  Wat
   gebeurt er als je de muis langzaam beweegt? En wat gebeurt er als je de muis sneller
   over het scherm beweegt?

4. Maak een nieuw programma.  Begin *aan het begin* met een zwarte achtergrond. Zorg
   er voor dat wat je verder op het scherm tekent blijft staan.  Teken een kleine cirkel op de
   positie van de muiscursor.  Wat gebeurt er als je de muis over het scherm beweegt?

Waarschijnlijk heb je in opdracht vier gezien dat je losse cirkels tekent, zeker als je
de muis wat sneller over het scherm beweegt.  Géén dikke lijnen dus!  Hier is wat aan
te doen!

5. Pas je programma aan: teken geen cirkels, maar een lijn.  De startpositie van de
   lijn is de *vorige* muispositie.  Het eindpunt van de lijn is bij de *huidige* muispositie.
   Welke speciale variabelen moet je dan gebruiken? Maak de lijn lekker dik!

6. Pas je programma aan zodat de lijn rood is als je in de linkerbovenhoek van het venster beweegt
   (neem een ruimte van 100 pixels).  In de rest van het venster teken je wit.

7. Pas je programma aan: als de muisknop wordt ingedrukt, teken je een zwarte achtergrond.
   Je maakt het scherm dus weer leeg.  Laat dit programma controleren.

We gaan nu een balletje laten bewegen. Daarvoor moeten we ook gaan rekenen.

8. Begin met een leeg programma.  Maak variabelen ``x`` en ``y`` en teken een
   cirkel op positie (x, y).  Neem als startwaarde bijvoorbeeld (50, 50).

9. Maak ook een variabele ``v`` (snelheid), en geef die de waarde 1.  In je ``draw()`` functie,
   voeg de regel toe::

      x = x + v;

   Wat gebeurt er nu met het balletje?

10. Nu wordt het tijd voor de if-statements.  Als het balletje aan de rechterkant van het scherm is,
    moet de snelheid *omkeren*, zodat hij weer naar links gaat.  Als hij aan de linkerkant is, moet hij
    weer naar rechts gaan.

11. In plaats van één snelheid, maak *twee* snelheden.  Eén voor de x-richting, één voor de y-richting.
    Pas ook de if-statements aan zodat het balletje stuitert aan alle grenzen van het scherm.
    Laat dit programma weer controleren.


Extra
-----

De volgende opgaven kun je gaan maken als je klaar bent. Ze kunnen lastig zijn!

1. Maak een 1-speler versie van het spelletje Pong.
