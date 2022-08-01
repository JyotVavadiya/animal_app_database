class Hm {
  int? id;
  String? title;
  String? image;
  String? txt;


  Hm({this.id, required this.title, required this.image, required this.txt});

  factory Hm.fromMap(Map<String, dynamic> data) {
    return Hm(
      id: data['id'],
      title: data['title'],
      image: data['image'],
      txt: data['txt'],
    );
  }
}