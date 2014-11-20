Als-dan beslissingen
====================

Soms wil je keuzes maken in je programma.  Als dit, dan dat.  Bijvoorbeeld:
als de muisknop wordt ingedrukt, dan maak ik het scherm zwart, en anders niet.
Dit doe je met een zogenaamd *if-statement*.  Een *statement* is een opdracht
in je programma, en *if* betekent hier gewoon *als*.  De algemene vorm van
een if-statement is::

    if (voorwaarde) {
      // dingen die we moeten doen als aan de voorwaarde voldaan is
    }

De *voorwaarde* is een vergelijking::

    x > 0                   // is x groter dan nul?
    x <= 0                  // is x kleiner of gelijk aan nul?
    x == 42                 // is x precies gelijk aan 42?
    x != 42                 // is x ongelijk aan 42?
    mousePressed == true    // is de muisknop ingedrukt?

Bijvoorbeeld::

    if (mouseX > 50) {
      fill(255, 0, 0);
    }

Als de x-positie van de muis groter is dan 50 pixels, dan worden alle
getekende vormen gevuld met de kleur rood.  Dit voorbeeld roept om een uitbreiding:
als de x-positie van de muis *niet* groter is dan 50 pixels, met welke kleur
moeten we dan vullen?  Misschien wel groen::

    if (mouseX > 50) {
      fill(255, 0, 0);  // rood
    } else {
      fill(0, 255, 0);  // groen
    }

Na ``else`` kun je dus aangeven wat er moet gebeuren als er *niet* aan de voorwaarde
wordt voldaan.  Je kunt binnen een if-statement nóg een if-statement zetten (net zoveel
als je wilt!)::

    fill(255);
    if (mouseX > 50) {
      if (mouseY > 50) {
        fill(255, 0, 0);
      }
    }

De vulkleur is standaard wit.  Maar als de muiscursor meer dan 50 pixels naar rechts is verplaatst
én meer dan 50 pixels naar beneden is verplaatst, dan wordt de vulkleur rood.  Je kunt dit ook korter
opschrijven met *en*::

    fill(255);
    if ((mouseX > 50) && (mouseY > 50)) {
      fill(255, 0, 0);
    }

Hier betekent ``&&`` *en*.  Er is ook een *of*: ``||``.  Denk er aan dat je met haakjes moet
aangegeven wat bij elkaar hoort::

    (voorwaarde 1) && (voorwaarde 2)

met de voorwaardes dus tussen haakjes.
