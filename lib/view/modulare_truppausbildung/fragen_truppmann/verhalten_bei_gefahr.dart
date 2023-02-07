class VerhaltenBeiGefahr {
  static const String themengebiet = "Verhalten bei Gefahr";

  static final fragenVerhaltenBeiGefahr = [
    {
      'questionText':
          'Welche Gefahr fehlt im folgenden Merkschema für die Gefahren der Einsatzstelle? Atemgifte, Angstreaktionen, Atomare Gefahren, Ausbreitung, Chemische Stoffe, Erkrankung, Explosion, Einsturz',
      'answers': [
        {'text': 'Elektrizität', 'score': 1},
        {'text': 'Ertrinken', 'score': 0},
        {'text': 'Absturz', 'score': 0}
      ]
    },
    {
      'questionText':
          'Wie lässt sich die Strahlenbelastung bei atomaren Gefahren verringern?',
      'answers': [
        {
          'text': 'Abstand halten, Einsatzzeit begrenzen, Abschirmung nutzen',
          'score': 1
        },
        {'text': 'An der Einsatzstelle trinken, essen und rauchen', 'score': 0},
        {'text': 'Mit Wasser-Sprühstrahl eine „Hydrowand” aufbauen', 'score': 0}
      ]
    },
    {
      'questionText':
          'Was hat der Truppführer beim Vorgehen des Trupps zu beachten?',
      'answers': [
        {'text': 'Ständig auf mögliche Gefahrensituationen achten', 'score': 1},
        {
          'text': 'Dass immer Sichtkontakt zu seinem Einheitsführer besteht',
          'score': 0
        },
        {'text': 'Keine weitere Verantwortung für den Trupp', 'score': 0}
      ]
    },
    {
      'questionText': 'Was ist der Trümmerschatten?',
      'answers': [
        {
          'text':
              'Ein durch Einsturz bedrohter Bereich, nur im Innern eines Gebäudes',
          'score': 0
        },
        {'text': 'Ein durch Trümmer schwer einsehbarer Bereich', 'score': 0},
        {'text': 'Ein durch Einsturz bedrohter Bereich', 'score': 1}
      ]
    },
    {
      'questionText':
          'Welche Schutzmaßnahmen beachten sie als Truppführer bei der Gefahr durch Elektrizität?',
      'answers': [
        {'text': 'Die Einhaltung erforderlicher Mindestabstände', 'score': 1},
        {
          'text':
              'Die Strahlrohreinstellung „Sprühstrahl”, durch die alle Risiken ausgeschlossen sind',
          'score': 0
        },
        {
          'text':
              'Durch die Erdung durch meine Schlauchleitung besteht keine Gefahr',
          'score': 0
        }
      ]
    },
    {
      'questionText':
          'Wie kann sich der Angriffstrupp vor der Gefahr durch Brandausbreitung schützen?',
      'answers': [
        {'text': 'Nur mit Wasser am Rohr vorgehen', 'score': 1},
        {
          'text':
              'Schnell und ohne Sicherung der Rückzugswege zum Brandherd vordringen, um die Ausbreitungszeit zu begrenzen',
          'score': 0
        },
        {'text': 'Nur unter umluftunabhängigem Atemschutz vorgehen', 'score': 0}
      ]
    },
    {
      'questionText': 'Worauf ist bei Einsturzgefahr besonders zu achten?',
      'answers': [
        {'text': 'Trümmerschatten beachten', 'score': 1},
        {'text': 'Ergänzende persönliche Schutzausrüstung tragen', 'score': 0},
        {'text': 'Windrichtung beachten', 'score': 0}
      ]
    },
    {
      'questionText':
          'Wie kann ich mich vor der Gefahr durch Erkrankung/Ansteckung schützen?',
      'answers': [
        {'text': 'Immer Atemschutz tragen', 'score': 0},
        {'text': 'Schnittschutzkleidung tragen', 'score': 0},
        {
          'text':
              'Beim Umgang mit Verletzten Infektionsschutzhandschuhe tragen',
          'score': 1
        }
      ]
    },
    {
      'questionText':
          'Welches Verhalten kann bei der Stressbewältigung hilfreich sein?',
      'answers': [
        {'text': 'Pausen einlegen, sich ablösen lassen', 'score': 1},
        {'text': 'Aufgaben möglichst alleine durchführen', 'score': 0},
        {'text': 'Schneller arbeiten, um sich abzulenken', 'score': 0}
      ]
    },
    {
      'questionText':
          'Welche der folgenden Symptome sind üblicherweise anzutreffende negative Stressreaktionen?',
      'answers': [
        {'text': 'Zittern, Schwitzen', 'score': 1},
        {'text': 'Konzentrationssteigerung', 'score': 0},
        {'text': 'Euphorie', 'score': 0}
      ]
    },
    {
      'questionText': 'Was ist Stress?',
      'answers': [
        {'text': 'Eine Reaktion des Körpers', 'score': 1},
        {'text': 'Eine Fastenspeise', 'score': 0},
        {'text': 'Ein gefährlicher Stoff', 'score': 0}
      ]
    },
    {
      'questionText':
          'Welcher Sicherheitsabstand muss mindestens zu spannungsführenden Anlagen mit einer Spannung von 380 kV eingehalten werden?',
      'answers': [
        {'text': '5m', 'score': 1},
        {'text': '1m', 'score': 0},
        {'text': '1,5m', 'score': 0}
      ]
    },
    {
      'questionText':
          'Welche Abstände sind von Spannung führenden Teilen beim Einsatz von CM-Strahlrohren zu halten?',
      'answers': [
        {
          'text':
              '1 m für Sprühstrahl bei Niederspannung und 10 m für Vollstrahl bei Hochspannung',
          'score': 1
        },
        {'text': 'Entsprechend der Wurfweite des Strahlrohres', 'score': 0},
        {
          'text':
              'Wasser darf im Bereich der elektrischen Anlagen nicht eingesetzt werden',
          'score': 0
        }
      ]
    },
  ];
}
