Variabelen
==========

Variabelen worden gebruikt om waardes, bijvoorbeeld getallen, in je
programma te gebruiken en te onthouden.  Je kunt bijvoorbeeld een
variabele hebben die de x-positie van een bal onthoudt, of de kleur van
een cirkel, of te onthouden of er nu wél of níet op een muisknop is
gedrukt.


Soorten variabelen
------------------

In veel programmeertalen moet je je variabelen heel precies gebruiken.
Eérst moet je zeggen dat je een variabele wilt gaan gebruiken, en wat voor
soort variabele het is.  Er zijn verschillende soorten variabelen, waarvan
de belangrijkste: gehele getallen (``int``), kommagetallen
(``float``), waar/niet-waar variabelen (``boolean``) en tekst
(``String``).  Wanneer je rekent met gehele getallen, dan onthoud de
variabele dus *niets* achter de komma!  Een ``boolean`` is een
variabele die maar twee waardes kan hebben: waar (``true``) of
niet-waar (``false``).  Hieronder voorbeelden van de definitie van
variablen::

    int x = 50;
    float a = 14.5;
    boolean gameOver = false;
    String gewonnen = "Gefeliciteerd! U heeft gewonnen!"


Namen van variabelen
--------------------

In verschillende programmeertalen is het gebruikelijk om een afspraak te
maken over hoe variabelen hun naam krijgen.  In Java (en dus ook
Processing) is gekozen voor zogeheten camelCase.  Dat betekent dat een
naam kan bestaan uit meerdere woorden die aan elkaar geplakt zijn waarbij
ieder woord begint met een hoofdletter (behalve de eerste).  Bijvoorbeeld::

    int getal;
    int aantalHoekenInFiguur;

    int priemgetal;
    int priemgetallenLijst;

Voor de duidelijkheid is het handig om je hieraan te houden.  Let wel: dit
is een vrijwillige afspraak, dus niet verplicht.


Veranderen van variabelen
-------------------------

Het veranderen van getallen kan met optellen, aftrekken, vermenigvuldigen
etc.  Er zijn ook nog wat korte notaties mogelijk.  Bijvoorbeeld::

    int i = 4;

    i = i * 5 + 6;  // i wordt i keer 5 plus 6
    i *= 5 + 6;     // korte notatie voor hetzelfde

    i = i + 1;      // i wordt i plus 1
    i += 1;         // korte notatie voor hetzelfde
    i ++;           // nog kortere notatie


Waar je je variabelen definiëert
--------------------------------

Het is het makkelijkst om variabelen helemaal bovenaan het programma te
definiëren.  Ze zijn dan *globaal*, wat betekent dat je ze overal in
het programma kunt gebruiken.  Voor grotere programma's is dit vaak
*niet* handig, maar daar maken we ons
nu niet zo druk om.  Je kunt ze dan alvast een waarde meegeven, maar dat
hoeft niet.  Ook kun je meerdere variabelen tegelijk definiëren, door er
een komma tussen te zetten.  In het volgende voorbeeld definiëren we een
aantal *gehele getallen* (``int``)::

    int x;
    int y = 0;
    int i, j;

    void setup() {
    // ... rest van setup
    }

    void draw() {
    // ... reset van draw
    }

Soms wil je een startwaarde meegeven die *niet* bovenaan het
programma al bekend is.  Als je bijvoorbeeld een ellips wilt tekenen in
het midden van het scherm, zou je kunnen zeggen:
``int x = width / 2;`` maar helaas, de variabele ``width``
heeft pas de goede waarde als je éérst de grootte van het scherm hebt
gekozen!  Je kunt dan het volgende doen::

    int x, y;

    void setup() {
        size(600, 400);
        x = width / 2;
        y = height / 2;
    }

    void draw() {
        ellipse(x, y, 50, 50);
    }
