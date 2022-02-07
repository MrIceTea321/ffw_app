

class RettungVonPersonen {

  static const String themengebiet="Rettung von Personen";

  static final fragenRettungVonPersonen = [
    {
      'questionText': 'Welche Lagerung für eine bewusstlose Person ist richtig?',
      'answers': [
        {'text': 'Kopf tief lagern', 'score': 0},
        {'text': 'Flach auf den Rücken legen', 'score': 0},
        {'text': 'Stabile Seitenlage', 'score': 1}
      ]
    }, {
      'questionText': 'Welche Aussage zu verletzten Personen, die noch im Fahrzeug sitzen, ist richtig?',
      'answers': [
        {'text': 'Verletzte müssen immer schnellstmöglich aus dem Fahrzeug geholt werden', 'score': 0},
        {'text': 'Eingeklemmte Personen müssen sofort befreit werden', 'score': 0},
        {'text': 'Sofern keine akute Gefahr durch Brand, Bewusstlosigkeit ä. besteht, sollen Verletzte im Fahrzeugverbleiben bis der Rettungsdienst die medizinischeLage beurteilt hat', 'score': 1}
      ]
    },{
      'questionText': 'Was gehört zur Überprüfung der lebenswichtigen Körperfunktionen?',
      'answers': [
        {'text': 'Ich sorge mit Rettungsdecke oder Krankenhausdecke für Wärmeerhalt', 'score': 0},
        {'text': 'Ich spreche ihn laut an. Ich schüttle an den Schultern,kontrolliere Mund und Rachenraum, stelle die Atmung fest', 'score': 1},
        {'text': 'Ich decke keimfrei die Brandwunden ab', 'score': 0}
      ]
    },{
      'questionText': 'Wie betreue ich als Ersthelfer (Feuerwehrdienstleistender) eine verletzte Person?',
      'answers': [
        {'text': 'Das ist nicht Aufgabe der Feuerwehr', 'score': 0},
        {'text': 'Ich leiste Erste Hilfe. Sage, dass ich für ihn da bin, dass der Rettungsdienst informiert ist. Ich spreche ihm gut zu und höre zu', 'score': 1},
        {'text': 'Ich warte bis der Rettungsdienst an der Einsatzstelle ist', 'score': 0}
      ]
    },{
      'questionText': 'Wie erkenne ich die sichtbaren Schockanzeichen?',
      'answers': [
        {'text': 'Schneller und gut tastbarer Puls', 'score': 0},
        {'text': 'Fahle Blässe, Frieren, kalter Schweiß auf der Stirn', 'score': 1},
        {'text': 'Ich messe den Blutdruck', 'score': 0}
      ]
    },{
      'questionText': 'Was unternehmen Sie bei einer starken Blutung (Schnittwunde)?',
      'answers': [
        {'text': 'Abbinden der Blutung, z. B. am Arm', 'score': 0},
        {'text': 'Druckverband anlegen', 'score': 1},
        {'text': 'Rettungsdienst nicht verständigen, wenn die Blutung gestoppt werden kann', 'score': 0}
      ]
    },{
      'questionText': 'Wie gehen Sie beim Vorfinden einer bewusstlosen Person vor?',
      'answers': [
        {'text': 'Den Verletzten in die stabile Seitenlage bringen', 'score': 0},
        {'text': 'Ich kontrolliere die Atmung und den Mundraum, dannbringe ich den Verletzten in die stabile Seitenlage und betreue ihn bis zum Eintreffen des Rettungsdienstes', 'score': 1},
        {'text': 'Die Polizei verständigen', 'score': 0}
      ]
    }
  ];

}