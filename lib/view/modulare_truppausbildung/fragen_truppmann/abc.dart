class AbcEinsatz {
  static const String themengebiet = "ABC Einsatz";

  static final fragenPhysische_AbcEinsatz = [
    {
      'questionText':
          'Eine Gefahrgutumschließung ist mit folgendem Symbol gekennzeichnet (schwarz auf rotem Hintergrund). Was enthält die Verpackung?',
      'answers': [
        {'text': 'Einen festen brennbaren Stoff', 'score': 0},
        {'text': 'Einen gasförmigen brennbaren Stoff', 'score': 0},
        {'text': 'Einen flüssigen brennbaren Stoff', 'score': 1}
      ]
    },
    {
      'questionText':
          'Wie verhalten Sie sich, wenn Sie im Gefahrguteinsatz einen verletzten Menschen im Gefahrenbereich entdecken?',
      'answers': [
        {
          'text': 'Ich retten den Menschen sofort aus dem Gefahrenbereich',
          'score': 0
        },
        {'text': 'Ich melde es dem Einheitsführer', 'score': 1},
        {
          'text':
              'Ich lasse mich zuerst dekontaminieren und rette dann den Menschen',
          'score': 0
        }
      ]
    },
    {
      'questionText': 'Welche Einsatzmaßnahmen beschreibt die GAMS-Regel?',
      'answers': [
        {'text': 'Gase Absorbieren, Mineralöle Separieren', 'score': 0},
        {
          'text':
              'Gefahr erkennen, Absperren, Menschenrettung durchführen, Spezialkräfte alarmieren',
          'score': 1
        },
        {
          'text':
              'Gefahr beseitigen, Ausleuchten, Menschenrettung durchführen, Spezialfirma beauftragen',
          'score': 0
        }
      ]
    },
    {
      'questionText':
          'Welche Gefahr besteht bei folgender Kennzeichnung (schwarz-weiß)?',
      'answers': [
        {'text': 'Gesundheitsgefahr', 'score': 0},
        {'text': 'Gefahr durch erwärmte Stoffe', 'score': 0},
        {'text': 'Verätzungsgefahr', 'score': 1}
      ]
    },
    {
      'questionText': 'Was bedeutet folgende Kennzeichnung(schwarz-weiß)?',
      'answers': [
        {'text': 'Tank enthält wassergefährdende Stoffe', 'score': 0},
        {'text': 'Karton enthält kein Gefahrgut', 'score': 0},
        {
          'text':
              'Verpackung enthält kleinere Behälter, die Gefahrgut inbegrenzten Mengen enthalten',
          'score': 1
        }
      ]
    },
    {
      'questionText':
          'Sie sehen auf einem Fass in einem Lager folgendes Schild (schwarz auf weiß-rotem Hintergrund). Welche Gefahr kann von diesem Stoff ausgehen?',
      'answers': [
        {'text': 'Vergiftungsgefahr', 'score': 0},
        {'text': 'Austritt von Gas', 'score': 0},
        {'text': 'Brandgefahr', 'score': 1}
      ]
    },
    {
      'questionText':
          'Welche Nummernsysteme befinden sich auf einer orangefarbenen Warntafel?',
      'answers': [
        {'text': 'Gefährdungsnummer und Einsatznummer', 'score': 0},
        {'text': 'Transportkennzahl und Gefahrencode', 'score': 0},
        {
          'text': 'Stoffnummer und Nummer zur Kennzeichnung der Gefahr',
          'score': 1
        }
      ]
    },
    {
      'questionText': 'Was wird mit orangefarbenen Warntafeln gekennzeichnet?',
      'answers': [
        {
          'text':
              'Straßen- und Schienenfahrzeuge, die gefährliche Stoffe ab bestimmten Mengen befördern',
          'score': 1
        },
        {
          'text':
              'Gebäude, in denen gefährliche Stoffe und Güter gelagert sind',
          'score': 0
        },
        {'text': 'Nur Versandstücke', 'score': 0}
      ]
    },
    {
      'questionText':
          'Sie sehen an der Tür eines Gebäudes folgendes Schild(schwarz auf gelbem Hintergrund). Womit müssen Sie rechnen?',
      'answers': [
        {'text': 'Verätzungsgefahr', 'score': 0},
        {
          'text':
              'Mit starkem Wind durch eine, sich hinter der Tür befindliche Lüftungsanlage',
          'score': 0
        },
        {'text': 'Explosionsgefahr', 'score': 1}
      ]
    },
    {
      'questionText':
          'Sie sehen auf einer Kiste der Ladung eines verunglückten LKW folgendes Schild. Was melden Sie Ihrem Gruppenführer?',
      'answers': [
        {'text': 'Brandgefahr', 'score': 0},
        {'text': 'Vergiftungsgefahr', 'score': 0},
        {'text': 'Ansteckungsgefahr', 'score': 1}
      ]
    },
  ];
}
