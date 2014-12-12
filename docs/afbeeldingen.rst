Afbeeldingen gebruiken
======================

Je kunt in Processing afbeeldingen inladen en gebruiken in je sketches.
Dit zijn vaak zogeheten *bitmaps*: afbeeldingen die bestaan uit losse
pixels, zoals bij een foto. Als je ver inzoomt, dan wordt de afbeelding
korrelig. Dit in tegenstelling tot *vector graphics*, waarbij het plaatje
feitelijk bestaat uit wiskundige formules. Je kunt net zo ver inzoomen als
je wilt, maar het is niet mogelijk om een foto te maken.

Je moet daarvoor wél een aantal dingen doen. Allereerst moet je het
bestand toevoegen aan je sketch. Doe dit door in de menubalk te klikken op
``Sketch -> Add File`` en dan het bestand te kiezen.


Bitmaps
-------

Voor bitmaps doe je het volgende in je code::

    PImage afbeelding;

    void setup() {
      afbeelding = loadImage("mijnbestand.jpg")
    }

    void draw() {
      image(afbeelding, x, y);
    }

Je kunt kiezen voor JPEGs, maar ook PNGs of GIFs zijn geen enkel probleem.

De x- en y-positie van de afbeelding zijn in principe de coordinaten van
de linkerbovenhoek. Je kúnt ook kiezen voor het midden van de afbeelding.
Of zelfs de linkerbovenhoek en de rechteronderhoek::

    imageMode(CORNER);
    // (x, y) van de linkerbovenhoek
    image(afbeelding, x, y);
    image(afbeelding, x, y, breedte, hoogte);

    imageMode(CORNERS);
    // (x1, y1) van de linkerbovenhoek
    // (x2, y2) van de rechteronderhoek
    image(afbeelding, x1, y1, x2, y2);

    imageMode(CENTER);
    // (x, y) van het centrum van de afbeelding
    image(afbeelding, x, y);
    image(afbeelding, x, y, breedte, hoogte);


Vector graphics
---------------

Een vector graphics inladen gaat bijna hetzelfde, maar de namen zijn iets
anders::

    PShape afbeelding;

    void setup() {
      afbeelding = loadShape("mijnbestand.svg")
    }

    void draw() {
      shape(afbeelding, x, y);
    }

Je kunt gebruik maken van SVGs en OBJs (wat dat laatste ook moge zijn).
Net als ``imageMode()`` is er ook een ``shapeMode()``, die op precies
dezelfde manier werkt.
