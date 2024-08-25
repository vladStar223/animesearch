
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../entity/data.dart';
import '../entity/users.dart';
class ApiClient {
  Future<dynamic> fetchPost() async {
    try {
      final response = await http
          .get(Uri.parse('https://api.jikan.moe/v4/users').replace(
        queryParameters: {
          'q':'vvv',

        },
      ));
      print(response.statusCode);
      if (response.statusCode == 200) {
        // If the server did return a 200 OK response,
        // then parse the JSON.
        var x = Users.fromJson(jsonDecode(response.body));
        print(x.data.length);
      } else {
        // If the server did not return a 200 OK response,
        // then throw an exception.
        return "Данные не получены";
        print('545');
        throw Exception('Failed to load album');
      }
    } catch (e) {
      return "Данные не получены";
      print('3535');
    }
  }
}