class CommentModel {
  int postId;
  int id;
  String name;
  String email;
  String body;

  CommentModel({this.postId, this.id, this.name, this.email, this.body});

  factory CommentModel.fromJson(Map<String, dynamic> jsonobject) {
    return CommentModel(
        postId: jsonobject["postId"],
        id: jsonobject["id"],
        name: jsonobject["name"],
        email: jsonobject["email"],
        body: jsonobject["body"]);
  }
}
