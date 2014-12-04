Code herhalen (loops)
=====================

Vaak wil je dat een stukje code niet één, maar meerdere keren draait; je
wilt dingen herhalen. Bijvoorbeeld: je wilt 5 lijnen naast elkaar
tekenen::

    int i;

    for (i = 1; i <= 5; i ++) {
      line(50*i, 100, 50*i, 500);
    }

Je gebruikt ``for`` om een herhaling te beginnen. Er wordt dan gebruik
gemaakt van een tellertje. Je mag zelf kiezen hoe je die noemt, maar het
is gebruikelijk om die ``i`` te noemen. Het tellertje begint met een
waarde van 1 (``i = 1``). Het tellertje loopt door zolang ``i`` kleiner of
gelijk is aan 5 (``i <= 5``). Elke keer dat hij herhaalt wordt het
tellertje met 1 opgehoogd (``i ++``). De teller krijgt dus uiteindelijk de
waarden 1, 2, 3, 4 en uiteindelijk 5. Dat betekent dat bovenstaande code
vertaald wordt naar::

    line(50, 100, 50, 500);
    line(100, 100, 100, 500);
    line(150, 100, 150, 500);
    line(200, 100, 200, 500);
    line(250, 100, 250, 500);

Dat scheelt een hoop werk! Je ziet dat iedere lijn 50 pixels verder
verschoven is. Je kunt de for-loop dus ook zó schrijven::

    for (i = 50; i <= 250; i += 50) {
      line(i, 100, i, 500);
    }

Het is ook mogelijk om meerdere for-loops in elkaar te schrijven.
Bijvoorbeeld::

    int i, j;

    for (i = 1; i <= 5; i ++) {
      for (j = 1; j <= 5; j ++) {
        rect(50*i, 50*j, 5, 5);
      }
    }

De tellertjes lopen als volgt: eerst i = 1, en j = 1, 2, 3, 4, 5. Dan i =
2, en j = 1, 2, 3, 4, 5. Dan i = 3, enz.
