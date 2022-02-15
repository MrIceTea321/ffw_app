class GefahrenAnDerEinsatzstelle {
  static const String themengebiet = "Gefahren an der Einsatzstelle";

 static final fragenGefahrenAnDerEinsatzstelle = [
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
          'score': 1
        },
        {'text': 'Ein durch Trümmer schwer einsehbarer Bereich', 'score': 0},
        {'text': 'Ein durch Einsturz bedrohter Bereich', 'score': 0}
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
  ];
}
