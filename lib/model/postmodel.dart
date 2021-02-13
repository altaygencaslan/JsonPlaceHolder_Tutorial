class PostModel {
  int userId;
  int id;
  String title;
  String body;

  PostModel({this.userId, this.id, this.title, this.body});

  factory PostModel.fromJson(Map<String, dynamic> jsonobject) {
    return PostModel(
        userId: jsonobject["userId"],
        id: jsonobject["id"],
        title: jsonobject["title"],
        body: jsonobject["body"]);
  }
}
