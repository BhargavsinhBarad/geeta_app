class jsonmodel {
  String verse;
  String san;
  String en;
  String hi;
  String guj;
  int ch;

  jsonmodel(
      {required this.ch,
      required this.en,
      required this.guj,
      required this.hi,
      required this.san,
      required this.verse});

  factory jsonmodel.json({required Map data}) {
    return jsonmodel(
        ch: data['ch'],
        en: data['en'],
        guj: data['guj'],
        hi: data['hi'],
        san: data['san'],
        verse: data['verse']);
  }
}
