class PhotoModel {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  PhotoModel({this.albumId, this.id, this.title, this.thumbnailUrl, this.url});
  factory PhotoModel.fromJson(Map<String, dynamic> jsonelement) {
    return PhotoModel(
        albumId: jsonelement["albumId"],
        id: jsonelement["id"],
        title: jsonelement["title"],
        url: jsonelement["url"],
        thumbnailUrl: jsonelement["thumbnailUrl"]);
  }
}
