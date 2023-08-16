class theard {
  String? name;
  String? posted;
  String? description;
  String? image;
  String? profileimage;
  String? replies;
  String? likes;
  String? replier;
  String? replier1;
  String? replier2;
  theard(
    this.description,
    this.image,
    this.likes,
    this.name,
    this.posted,
    this.profileimage,
    this.replier,
    this.replies,
    this.replier1,
    this.replier2,
  );
  factory theard.formJson(Map<String, String> jsonObject) {
    return theard(
jsonObject['description'],
jsonObject['image'],
jsonObject['likes'],
jsonObject['name'],
jsonObject['posted'],
jsonObject['profileimage'],
jsonObject['replier'],
jsonObject['replies'],
jsonObject['replier1'],
jsonObject['replier2'],

    );
  }
}
