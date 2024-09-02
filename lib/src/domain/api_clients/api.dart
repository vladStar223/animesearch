
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../entity/Anime/anime.dart';
import '../entity/User/users.dart';
import '../exception/api_exception.dart';
class ApiClient {
  Future<dynamic> fetchUsers(String name) async {
      final response = await http
          .get(Uri.parse('https://api.jikan.moe/v4/users').replace(
        queryParameters: {
          'q':name,
          //new type maybe will be
        },
      ));
      print(response.body);
      print(response.statusCode);
      switch(response.statusCode) {
        case 200:{
          //print(response.statusCode);
          //print(response.body.contains('status'));
          return Users.fromJson(jsonDecode(response.body));
        }
        case 500:{
          throw EmptyRequestException();
        }
        case 429:{
          throw ManyRequestException();
        }
        case 404:{
          throw NotFoundException(name);
        }
        case 503:{
          throw ServerNotResponseException();
        }
      }
  }//запрос для поиска пользователй
  Future<dynamic> fetchAnime(String name) async {
    final response = await http
        .get(Uri.parse('https://api.jikan.moe/v4/anime').replace(
      queryParameters: {
        'q':name,
        //new type maybe will be
      },
    ));
    //print(response.body);
    switch(response.statusCode) {
      case 200:{
        //print(response.statusCode);
        //print(response.body.contains('status'));
        //print(response.body);
        return Anime.fromJson(jsonDecode(response.body));
      }
      case 500:{
        throw EmptyRequestException();
      }
      case 429:{
        throw ManyRequestException();
      }
      case 404:{
        throw NotFoundException(name);
      }
      case 503:{
        throw ServerNotResponseException();
      }
    }
  }//запрос для поиска аниме по названию
  Future<dynamic> fetchManga(String name) async {
    final response = await http
        .get(Uri.parse('https://api.jikan.moe/v4/users').replace(
      queryParameters: {
        'q':name,
        //new type maybe will be
      },
    ));
    //print(response.headers.keys);
    switch(response.statusCode) {
      case 200:{
        //print(response.statusCode);
        //print(response.body.contains('status'));
        return Users.fromJson(jsonDecode(response.body));
      }
      case 500:{
        throw EmptyRequestException();
      }
      case 429:{
        throw ManyRequestException();
      }
      case 404:{
        throw NotFoundException(name);
      }
      case 503:{
        throw ServerNotResponseException();
      }
    }
  }//запрос для поиска манги по названию
}