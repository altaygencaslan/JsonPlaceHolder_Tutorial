import 'dart:convert';

import 'package:fluttertutorial_mockapi_hivedb/model/postmodel.dart';
import 'package:http/http.dart' as http;

class JsonPlaceHolder {
  /*
    Post - Comment(from unregistered users) - User
    Album - Photo - User
  */

  static String get baseAddress => "https://jsonplaceholder.typicode.com";
  static String get postAddress => "/posts";
  static String get commentAddress => "/comments";
  static String get photoAddress => "/photos";
  static String get userAddress => "/users";

  static Future<List<PostModel>> getPosts() async {
    String url = baseAddress + postAddress;

    var responseElement = List<PostModel>();

    var response = await http.get(url);
    if (response.statusCode == 200) {
      responseElement = List<PostModel>.from(
          jsonDecode(response.body).map((data) => PostModel.fromJson(data)));
    }

    return responseElement;
  }
}
