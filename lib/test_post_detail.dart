import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'test_post.dart';

class TestPostDetail extends StatelessWidget{
  final TestPost testPost;

  TestPostDetail({@required this.testPost});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(testPost.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ListTile(
                      title: Text("title"),
                      subtitle: Text(testPost.title),
                    ),
                    ListTile(
                      title: Text("ID"),
                      subtitle: Text("${testPost.id}"),
                    ),
                    ListTile(
                      title: Text("Body"),
                      subtitle: Text(testPost.body),
                    ),
                    ListTile(
                      title: Text("User ID"),
                      subtitle: Text("${testPost.userId}")
                    )
                  ],
                )
              )
            ],
            )
        )
      ),
    );
  }

}