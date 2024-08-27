
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../entity/User/users.dart';
class ApiClient {
  Future<dynamic> fetchUsers(String name) async {
    try {
      final response = await http
          .get(Uri.parse('https://api.jikan.moe/v4/users').replace(
        queryParameters: {
          'q':name,
          //new type maybe will be
        },
      ));
      if (kDebugMode) {
        print(response.statusCode);
      }
      if (response.statusCode == 200) {
        // If the server did return a 200 OK response,
        // then parse the JSON.
        var x = Users.fromJson(jsonDecode(response.body));
        print(x.data.length);
      } else {
        // If the server did not return a 200 OK response,
        // then throw an exception.
        return "Данные не получены";
        throw Exception('Failed to load album');
      }
    } catch (e) {
      return "Данные не получены";
    }
  }//запрос для поиска пользователй
  Future<dynamic> fetchAnime() async {
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
  }//запрос для поиска аниме по названию
  Future<dynamic> fetchManga() async {
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
  }//запрос для поиска манги по названию
}