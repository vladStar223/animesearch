
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
          'q':'xdd',
          'gender':'male',

        },
      ));
      print(response.statusCode);
      if (response.statusCode == 200) {
        // If the server did return a 200 OK response,
        // then parse the JSON.
        var x = Users.fromJson(jsonDecode(response.body));
        print(x.data.length);
        int i = 0;
        while (i< x.data.length){
          print(x.data[i].username);
          i = i+1;
        }
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