import 'package:fluttertutorial_mockapi_hivedb/model/addressmodel.dart';
import 'package:fluttertutorial_mockapi_hivedb/model/companymodel.dart';

class UserModel {
  int id;
  String name;
  String userName;
  String email;
  AddressModel address;
  String phone;
  String webSite;
  CompanyModel company;

  UserModel(
      {this.id,
      this.name,
      this.userName,
      this.email,
      this.address,
      this.phone,
      this.webSite,
      this.company});

  factory UserModel.fromJson(Map<String, dynamic> jsonelement) {
    return UserModel(
        id: jsonelement["id"],
        name: jsonelement["name"],
        userName: jsonelement["userName"],
        email: jsonelement["email"],
        address: jsonelement["address"],
        phone: jsonelement["phone"],
        webSite: jsonelement["webSite"],
        company: jsonelement["company"]);
  }
}
