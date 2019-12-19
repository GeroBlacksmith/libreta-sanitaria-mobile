import 'package:flutter/foundation.dart';

class TestPost {
  final int userId;
  final int id;
  final String title;
  final String body;

  TestPost({
    @required this.userId,
    @required this.id,
    @required this.title,
    @required this.body
  });

  factory TestPost.fromJson(Map<String, dynamic> json) {
    return TestPost(
      body: json['body'] as String,
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String);
  }
}