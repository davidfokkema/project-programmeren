Werken met Processing
=====================

Java is één van de populairste programmeertalen.  Processing is feitelijk Java.
Er is alleen een aantal functies bijgeschreven (in Java) waarmee je eenvoudig
op het scherm kunt tekenen.  Ook wordt Processing geleverd met een
editor waarin je je programma kunt schrijven, en makkelijk kunt draaien.

In deze eerste les maak je kennis met de editor, en zet je de eerste stappen
in programmeren met Processing.


De editor
---------

Hieronder zie je het standaard venster van Processing. Met de knoppen *Run* en *Stop*
kun je straks je programma testen. Met *Nieuw*, *Open* en *Bewaar* kun je een nieuw
programma starten, een programma openen of je programma bewaren op schijf.

.. image:: images/gui-window.png


In het grote lege venster kun je je eigen programma in gaan typen.  Processing
kent twee soorten programma's: *statisch* en *dynamisch*.


Een statisch programma
----------------------

Een *statisch* programma is een programma dat niets méér doet dan één keer
iets op het scherm tekenen.  Er beweegt dus verder niets.  Zo'n soort
programma heeft geen structuur.  Je kunt meteen beginnen met programmeren.
Als je bijvoorbeeld een ellips wilt tekenen is het volgende programma
voldoende::

    ellipse(50, 50, 30, 30);

Dit programma tekent een ellips op positie (50, 50) en straal 30.


Een dynamisch programma
-----------------------

Een *dynamisch* programma is een programma waar dingen veranderen. Er
kunnen bijvoorbeeld dingen bewegen (een stuiterend balletje) of het
programma kan reageren op de gebruiker (de muis volgen, reageren op het
toesenbord).  Vrijwel alle programma's zullen dynamisch zijn.  Zo'n
programma heeft twee verplichte onderdelen: een ``setup()`` en een
``draw()`` functie.  In de ``setup()`` plaats je opdrachten die alléén aan
het begin van het programma hoeven worden uitgevoerd.  Deze worden ook
maar één keer aangeroepen.  Binnen ``draw()`` plaats je opdrachten die
steeds opnieuw herhaald moeten worden.  De opdracht om een venster van 600
bij 400 pixels te openen gaat in ``setup()``, maar de opdrachten om het
scherm leeg te maken en een cirkel te tekenen gaan in ``draw()``.  Een
functie heeft een beetje merkwaardige notatie, waar je vast aan moet
wennen.  Bijvoorbeeld::

    void setup() {
        size(600, 400);
        // andere opdrachten die maar *een* keer worden uitgevoerd.
    }

    void draw() {
        background(0);
        ellipse(50, 50, 30, 30);
        // andere oprachten die moeten worden herhaald.
    }


Tekenen met Processing
----------------------

Met Processing kun je vrij eenvoudig op het scherm tekenen.  Een lijst van
alle functies die beschikbaar zijn vind je in de `documentatie
<https://processing.org/reference/>`_.  Daar staat heel veel! In het begin
zullen we vooral bezig zijn met de functies onder het kopje *Shape: 2D Primitives*
en *Color: Setting*. Het is een beetje zoeken.  Hieronder kort een overzicht.

Met ``size(breedte, hoogte)`` kun je de grootte van je venster opgeven.  Dus bijvoorbeeld::

    size(600, 400);

voor een venster met breedte 600 pixels en hoogte 400 pixels.  **Let op dat je alles wat je
doet afsluit met een punt-komma!**

Een lijn teken je met::

    line(startX, startY, eindX, eindY);
    line(40, 50, 200, 210);

waarbij de variabelen allemaal getallen zijn die de positie op het scherm aangeven in pixels.  Let op:
(0, 0) is linksbovenaan, dus niet zoals je bij wiskunde gewend bent.

Een driehoek teken je met::

    triangle(x1, y1, x2, y2, x3, y3);

waarbij (x1, y1) de x- en y-posities zijn van het eerste hoekpunt.  En (x2, y2) van het tweede hoekpunt.  Enzovoort.

Een rechthoek teken je met::

    rect(x, y, breedte, hoogte);

waarbij (x, y) NIET het midden is! (x, y) is het eerste hoekpunt.

Een ellipse met::

    ellipse(x, y, width, height);

Hier is (x, y) WEL het midden! Als je ``width`` en ``height`` hetzelfde kiest, teken je een cirkel.


Werken met kleur
^^^^^^^^^^^^^^^^

De functies voor kleur werken als volgt: zodra je een functie aanroept en een kleur kiest, zullen
alle daarop volgende tekenopdrachten die instellingen gebruiken.  De lijnkleur kies je met ``stroke()``,
de vulkleur met ``fill()``.  Geef je één getal mee, dan kies je een grijswaarde tussen
0 en 255.  Zwart is dan 0, en wit is 255.  Geef je drie getallen mee, dan kies je de kleur
in de componenten rood, groen, blauw.  Speel daar eens mee om te kijken hoe je bijvoorbeeld groen maakt!
Een voorbeeld::

    stroke(127);            // grijs
    stroke(255, 0, 0);      // fel rood
    stroke(255);            // wit
    stroke(255, 255, 255);  // ook wit
    stroke(255, 255, 0);    // rood gemengd met groen, geeft ???

Het kan ook voorkomen dat je een vorm, zoals een cirkel, NIET wilt vullen.  Of juist wél vullen,
maar geen randje er om heen.  Dat kan met::

    noStroke(); // teken geen randje
    noFill();   // vul niet op
