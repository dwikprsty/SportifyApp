import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:sportify_app/dto/news.dart';
import 'package:sportify_app/endpoints/endpoints.dart';

class DataService {
  static Future<List<News>> fetchNews() async {
    final response = await http.get(Uri.parse(Endpoints.news));
    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = jsonDecode(response.body);
      return jsonResponse.map((item) => News.fromJson(item)).toList();
    } else {
      //Handle error
      throw Exception('Failed to load news');
    }
  }

  static Future<void> addNews(String title, String body, String photo) async {
    final response = await http.post(
      Uri.parse(Endpoints.news),
      body: jsonEncode({'title': title, 'body': body, 'photo': photo}),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode != 201) {
      throw Exception('Failed to add news');
    }
  }

  static Future<void> updateNews(String id, String title, String body, String photo) async {
    final response = await http.put(
      Uri.parse('${Endpoints.news}/$id'),
      body: jsonEncode({'title': title, 'body': body, 'photo': photo}),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode != 200) {
      throw Exception('Failed to update news');
    }
  }

  static Future<void> removeNews(String id) async {
    final response = await http.delete(
      Uri.parse('${Endpoints.news}/$id'),
    );
    if (response.statusCode != 200) {
      throw Exception('Failed to remove news');
    }
  }
}

