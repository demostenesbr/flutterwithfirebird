import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutterwitifirebird/config/models/model_api.dart';

Future<Post> fetchPost() async {
  final response =
      await http.get(Uri.parse('https://randomuser.me/api/?results=10'));

  if (response.statusCode == 200) {
    return Post.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Falha na leitura');
  }
}
