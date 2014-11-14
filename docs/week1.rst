Week 1: werken met Processing
=============================

Vergeet niet om steeds je programma op te slaan. Kies daarvoor een
makkelijke naam. Bijvoorbeeld: ``week1-opgave1``.

1. Experimenteer met de functies om rechthoeken, cirkels, lijnen, enz. te
   tekenen. Schrijf een programma dat verschillende vormen op het scherm
   tekent.

2. Experimenteer met de functies die kleur kiezen, vlakken kunnen opvullen
   en de dikte van lijnen bepalen.  Geef je vormen in het vorige programma
   verschillende kleuren en vul ze op.  Pas van sommige vormen de dikte
   van de lijnen aan.

3. Maak een nieuw programmaatje, met een venstergrootte van 400 bij 400
   pixels. Teken een gele cirkel in de linkerbovenhoek, een groene cirkel
   in de rechterbovenhoek, een rode cirkel in de linkeronderhoek en een
   blauwe cirkel in de rechteronderhoek.

Je kunt in plaats van alleen getallen, ook *variabelen* gebruiken als je
de positie van je vormen kiest.  De variabele ``width`` is gelijk aan de
breedte van je scherm. De variabele ``height`` is gelijk aan de hoogte van
je scherm.

4. Breid je vorige programmaatje uit met een paarse cirkel precies in het
   midden van het scherm.

5. Schrijf een nieuw programma dat een venstergrootte heeft van 600 bij
   400 pixels. Teken een horizon, en een huis.  Het huis moet een deur
   hebben, een raam, een schuin dak en een schoorsteen.  Teken een
   zonnetje en een rookwolkje uit de schoorsteen.

6. Begin een nieuw programma, met een ``setup()`` en ``draw()`` functie.
   Zet in  ``setup()`` een aanroep naar ``size()``, en in de ``draw()``
   teken je een cirkel.

We gaan nu werken met zelf-gekozen variabelen.  Noem de variabele ``x``.
We gaan werken met gehele getallen, dus het type wordt ``int``.

7. Definieer bovenaan je programma de variabele ``x`` als ``int`` en geef
   deze de waarde 0.

8. Pas je programma aan zodat de cirkel getekend wordt met als x-positie
   de waarde ``x``.

9. Zet onderaan je programma, maar *in* de ``draw()`` functie de regel::

      x = x + 1;

   Wat gebeurt er als je je programma draait?

We gaan nu terug naar ons huis.

10. Zet je hele programma in een ``draw()`` functie.  Doet hij het nog
    goed?

11. Maak bovenaan je programma een ``setup()`` functie.  Zet dáárin je
    ``size()`` aanroep.  Doet je het programma het nu weer goed?

12. Zorg er nu voor, met gebruik van variabelen, dat het zonnetje van
    links naar rechts over het scherm beweegt.


Extra
-----

De volgende opgaven kun je gaan maken als je klaar bent. Ze kunnen lastig zijn!

1. Zorg er voor dat het zonnetje in de vorige opgave mooi met een boogje
   opkomt.  Eerst komt hij langzaam boven de horizon, beweegt met een boog
   door de lucht, en gaat weer netjes onder.  Je kunt gebruik maken van
   ``sin()`` en ``cos()`` functies.

2. Kun je er ook voor zorgen dat de zon bij het opkomen en ondergaan roder
   is?

3. Teken een weg voor je huis langs, met een auto. De auto gaat rijden,
   maar de camera beweegt met de auto mee. Dus de auto lijkt stil te
   staan, maar het huis beweegt. Als het huis uit beeld is, verschijnt er
   weer een nieuw huis. Wat moet je doen met de zon? De weg is natuurlijk
   niet perfect glad, dus af en toe hobbelt de auto wat.
