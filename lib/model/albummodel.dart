class AlbumModel {
  int userId;
  int id;
  String title;

  AlbumModel({this.userId, this.id, this.title});
  factory AlbumModel.fromJson(Map<String, dynamic> jsonelement) {
    return AlbumModel(
        userId: jsonelement["userId"],
        id: jsonelement["id"],
        title: jsonelement["title"]);
  }
}
