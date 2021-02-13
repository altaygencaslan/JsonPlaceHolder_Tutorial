import 'package:fluttertutorial_mockapi_hivedb/model/geomodel.dart';

class AddressModel {
  String street;
  String suite;
  String city;
  String zipcode;

  GeoModel geo;

  AddressModel({this.street, this.suite, this.city, this.zipcode, this.geo});
  factory AddressModel.fromJson(Map<String, dynamic> jsonElement) {
    return AddressModel(
        street: jsonElement["street"],
        suite: jsonElement["suite"],
        city: jsonElement["city"],
        zipcode: jsonElement["zipcode"],
        geo: GeoModel.fromJson(jsonElement["geo"]));
  }
}
