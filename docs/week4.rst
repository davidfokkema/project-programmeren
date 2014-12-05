Week 4: loops en transformaties
===============================

map()
-----

Lees het stukje over :doc:`handige_functies`. Neem de volgende code over::

    float x, y;

    void setup() {
      size(800, 600);
    }

    void draw() {
      background(0);

      stroke(255);
      noFill();
      rect(300, 200, 150, 100);
      x = map(mouseX, 0, width, 300, 450);
      y = map(mouseY, 0, height, 200, 300);
      fill(255);
      ellipse(x, y, 5, 5);
    }

Draai de code en probeer het te begrijpen.

1. Teken nog een rechthoek van 150 bij 100 pixels, op positie (300, 400).

2. Teken nog een cirkeltje (met een kleur, om het verschil goed te zien).
   Dit cirkeltje beweegt zich over het hele scherm, wanneer de muiscursor
   door het rechthoekje beweegt. Dus: als je muis in de linkerbovenhoek
   van het nieuwe rechthoekje zit, is het cirkeltje helemaal linksboven in
   je scherm. En zo verder. Precies het omgekeerde dus van wat er met het
   eerste rechthoekje gebeurt.


for-loops
---------

Maak een nieuwe sketch.

3. Maak een for-loop zodat je tien cirkels naast elkaar op het scherm zet.
   Gebruik ``map()`` om de cirkels te verdelen over de hele breedte van
   het scherm.

4. Maak een nieuwe for-loop op de goede plaats zodat je een vierkant van
   cirkels krijgt (10 bij 10). Verdeel de cirkels over het hele scherm.

5. In plaats van 10 bij 10, maak een vierkant van 50 bij 50 cirkels.

6. Gebruik ``dist()`` en ``map()`` om de grootte van de cirkels te kiezen.
   Vlak bij de muiscursor (afstand 0) moet de grootte 10 pixels zijn. Ver
   weg (wat is de maximale afstand?) moet de grootte 0 zijn. Beweeg je
   muiscursor over het scherm.


Recursie: fractals
------------------

Recursie is wanneer een functie zichzelf aanroept. Het lijkt op een loop, maar is iets anders. We gaan dit gebruiken om een *fractal* te maken, een zichzelf herhalend figuur.

Lees het stukje over :doc:`transformaties`. Neem de volgende code over::

    int N = 5;

    void setup() {
      size(800, 600);
      strokeWeight(2);
    }

    void draw() {
      background(255);

      // begin onderaan het scherm, in het midden
      translate(width/2, height);
      // teken een boom
      drawTree(175, -90, 1);
    }

    void drawTree(float len, float angle, int level) {
      // teken een tak van een boom

      if (level <= N) {
        // gebruik radians() om graden om te rekenen naar radialen,
        // want rotate() snapt alleen radialen.
        rotate(radians(angle));

        // teken de tak
        line(0, 0, len, 0);

        // verplaats naar het eind van de tak
        translate(len, 0);

        // teken een nieuwe tak, iets korter en met een hoek naar links
        drawTree(len*0.75, -30, level+1);
      }
    }

7. Speel eens met verschillende waardes van N (groter, kleiner).

8. Breid het programma uit door onder in het programma nóg een tak te
   tekenen, maar nu met een hoek van 40 graden naar rechts.

9. Waarom werkt het niet goed? Lees het *laatste* stukje over
   transformaties nog eens door.

10. Pas je programma aan zodat na het tekenen van de eerste tak de
    transformatiematrix weer hersteld wordt. Krijg je nu wel een boom?

11. In je ``draw()`` functie: gebruik ``map()`` om de positie van de
    muiscursor om te zetten naar een hoek (bijvoorbeeld tussen -60 en -10
    graden). Je moet dan een nieuwe variabele maken. In plaats van de
    vaste hoek van -30 graden in je aanroep boven, kun je dan die
    variabele gebruiken. Wat gebeurt er als je de muis beweegt?

12. Speel met je programma: laat de muiscursor de lengte van de takken of
    de andere hoek gebruiken (je hebt mouseX en mouseY als variabelen). Of
    pas de kleur aan, of ...
