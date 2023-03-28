class Lang{
  final int id;
  final String name;
  final String languageCode;

  Lang(this.id, this.name,this.languageCode);

  static List<Lang> languageList(){
    return <Lang>[
      Lang(1, "En", "en"),
      Lang(2, "Th", "th"),
      Lang(3, "Ja", "ja"),
      Lang(2, "Zh", "zh"),
    ];
  }
}