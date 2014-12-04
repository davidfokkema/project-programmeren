Coördinatentransformaties
=========================

Als je ingewikkelder figuren wilt tekenen, moet je vaak een hoop rekenwerk
verrichten. Als je bijvoorbeeld een vierkant wilt tekenen, die net een
beetje naar rechts is verdraaid; hoe doe je dat? De ``rect()`` functie
tekent alleen een vierkant die rechtop staat. Als je vierkant tien graden
naar links moet gedraaid, dan moet je de coördinaten van de hoekpunten
gaan uitrekenen, met sinus en cosinus. Een hoop werk!

Je had het vast al geraden: dat kan dus makkelijker::

    rectMode(CENTER);

    // rechtop
    rect(100, 0, 50, 50);

    // verdraaid
    rotate(.3);
    rect(100, 0, 50, 50);

Als je de code draait zie je dat het vierkant wel geroteerd is, maar niet
om zijn centrum. Nee, de rotatie vindt plaats rondom het punt (0, 0). Dat
is vaak niet echt handig. Als je een vierkant wilt verdraaien om zijn
centrum, dan moet je het vierkant tekenen rondom het punt (0, 0), dan
roteren, en vervolgens verschuiven naar de plek waar je het wilt hebben.
Ook dat kan vrij eenvoudig met Processing::

    rectMode(CENTER);

    rect(100, 0, 50, 50);

    translate(100, 0);
    rotate(.3);
    rect(0, 0, 50, 50);

Zo, nu is het vierkant om zijn centrum gedraaid en toen verplaatst naar
(100, 0). Als je de code draait, zie je dat dat klopt. Maar wacht! In de
code staat het precies andersom: éérst verplaatsen (``translate()``) en
dán pas roteren! Dat komt omdat Processing (en de meeste programmeertalen
of game engines) werken met een zogenaamde *transformatiematrix*. Dit is
een wiskundige truc om de transformaties uit te rekenen. Als je daarvan
gebruik maakt, dan wordt de *laatste* bewerking het *eerst* uitgevoerd.
Alles gaat precies andersom!

De transformatiematrix werkt voor alle tekenfuncties die later worden
aangeroepen. Als je er weer vanaf wilt, moet je de transformatiematrix
herstellen naar de oorspronkelijke waarde. Dat doe je als volgt::

    rectMode(CENTER);

    rect(100, 0, 50, 50);

    pushMatrix();
    translate(100, 0);
    rotate(.3);
    rect(0, 0, 50, 50);
    popMatrix();

    rect(100, 100, 50, 50);

Probeer maar eens wat er gebeurt met het laatste vierkantje als je géén
gebruik maakt van ``pushMatrix()`` en ``popMatrix()``.
