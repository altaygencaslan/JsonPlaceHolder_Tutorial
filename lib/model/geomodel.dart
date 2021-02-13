class GeoModel {
  String lat;
  String lng;

  GeoModel({this.lat, this.lng});
  factory GeoModel.fromJson(Map<String, dynamic> jsonelement) {
    return GeoModel(lat: jsonelement["lat"], lng: jsonelement["lng"]);
  }
}
