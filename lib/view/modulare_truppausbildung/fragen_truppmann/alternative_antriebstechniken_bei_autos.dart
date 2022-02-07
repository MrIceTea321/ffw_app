
class AlternativeAntriebstechnikenBeiAutos {
  static const String themengebiet = "Alternative Antriebstechniken\nbei Autos";

  static final List<Map<String, Object>>
      fragenalternativeAntriebstechnikenBeiAutos = [
    {
      'questionText':
          'Welche Erkennungsmöglichkeit von außen besteht bei einem Fahrzeug, das mit Flüssiggas betrieben wird?',
      'answers': [
        {'text': 'Von außen nicht erkennbar', 'score': 0},
        {
          'text':
              'Mögliche Fahrzeugbeschriftung, z. B. LPG, BiFuel, Flüssiggas, Autogas',
          'score': 1
        },
        {'text': 'Durch rechteckigen Tankdeckel am Einfüllstutzen', 'score': 0}
      ]
    },
    {
      'questionText':
          'Welche alternative Antriebe werden derzeit in der Fahrzeugtechnik verwendet?',
      'answers': [
        {'text': 'Diesel; Benzin; Biodiesel', 'score': 0},
        {'text': 'Erdgas (CNG); Flüssiggas (LPG); Hybridantrieb', 'score': 1},
        {'text': 'Photovoltaik; Biogas', 'score': 0}
      ]
    },
    {
      'questionText':
          'Wo kann man Erkennungshinweise auf alternative Antriebstechnik an einem PKW finden?',
      'answers': [
        {
          'text':
              'Es gibt keine Erkennungshinweise auf alternative Antriebstechnik an einem PKW',
          'score': 1
        },
        {
          'text':
              'Rettungskarte (Sonnenblende); Tankdeckelinnenseite; im Motorraum',
          'score': 0
        },
        {'text': 'Unter dem Fahrersitz', 'score': 0}
      ]
    },
    {
      'questionText':
          'Welche besonderen Maßnahmen sind an einem verunfallten gasbetriebenen PKW (LPG oder CNG) erforderlich?',
      'answers': [
        {'text': 'Es sind keine besonderen Maßnahmen erforderlich', 'score': 0},
        {
          'text':
              'Gefahrenbereich weiträumig sperren; Motor abstellen; Gasabsperrventil schließen',
          'score': 1
        },
        {
          'text':
              'PKW gegen Wegrollen sichern, Batterie abklemmen, Brandschutz mit Kübelspritze sicherstellen',
          'score': 0
        }
      ]
    },
  ];
}
