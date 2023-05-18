class SongData {
  String image;
  String name;
  String singer;
  String file;

  SongData(
      {required this.file,
      required this.image,
      required this.name,
      required this.singer});

  factory SongData.fromJson(Map<String, String> json) {
    return SongData(
        file: json['file']!,
        image: json['image']!,
        name: json['name']!,
        singer: json['singer']!);
  }
}
