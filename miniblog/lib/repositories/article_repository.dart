import 'package:miniblog/models/blog.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

class ArticleRepository {
  Future<List<Blog>> fetchAll() async {
    Uri url = Uri.parse("https://tobetoapi.halitkalayci.com/api/Articles");

    final response = await http.get(url);

    final List body = json.decode(response.body);

    return body.map((element) => Blog.fromJson(element)).toList();
  }
}