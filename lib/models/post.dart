import 'package:flutter/foundation.dart';

class Post {
  int id;
  List<String> categories;
  String title;
  String author;
  String date;
  String content;

  Post({
    this.id,
    this.categories,
    @required this.title,
    @required this.author,
    @required this.content,
    this.date,
  });
}