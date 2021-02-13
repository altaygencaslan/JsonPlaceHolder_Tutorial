class CompanyModel {
  String name;
  String catchPhrase;
  String bs;

  CompanyModel({this.name, this.catchPhrase, this.bs});
  factory CompanyModel.fromJson(Map<String, dynamic> jsonelement) {
    return CompanyModel(
        name: jsonelement["name"],
        catchPhrase: jsonelement["catchPhrase"],
        bs: jsonelement["bs"]);
  }
}
