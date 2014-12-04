Enkele handige functies
=======================

map()
-----

De functie ``map()`` kun je gebruiken om getallen om te rekenen. Dat werkt als volgt: stel ik wil de muiscursor gebruiken om een balletje te sturen. Het balletje zit in een rechthoekje, en als de muiscursor helemaal links op het scherm staat (``mouseX == 0``), dan moet het balletje links in het rechthoekje zitten. Als de muiscursor helemaal rechts op het scherm staat, dan moet het balletje rechts in de rechthoek zitten::

    float x, y;

    noFill();
    rect(300, 200, 150, 100);

    // vertaal mouseX met waardes tussen 0 en width, naar een getal tussen
    // 300 en 450
    x = map(mouseX, 0, width, 300, 450);

    // vertaal mouseY met waardes tussen 0 en height, naar een getal
    // tussen 200 en 300
    y = map(mouseY, 0, height, 200, 300);

    fill(255);
    ellipse(x, y, 5, 5);

Je kunt ``map()`` ook gebruiken in een for-loop. Als je tellertje loopt
van 1 tot en met 5, en je wilt cirkels tekenen met x-posities tussen 50 en
450::

    x = map(i, 1, 5, 50, 450);


dist()
------

Met deze functie kun je de afstand tussen twee punten uitrekenen::

    dist(x0, y0, x1, y1);

geeft de afstand (in pixels) tussen het punt (x0, y0) en (x1, y1). Als je
bijvoorbeeld de afstand van de muiscursor tot het punt (50, 100) wilt
weten::

    dist(mouseX, mouseY, 50, 100);
