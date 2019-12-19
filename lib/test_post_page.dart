import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:libreta_sanitaria_mobile/http_service.dart';

import 'test_post.dart';
import 'test_post_detail.dart';

class TestPostPage extends StatelessWidget {
  final HttpService http = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Posts"),
      ),
      body: FutureBuilder(
        future: http.getTestPost(),
        builder: (BuildContext context, AsyncSnapshot<List<TestPost>> snapshot) {
          if(snapshot.hasData) {
            List<TestPost> posts = snapshot.data;
            return ListView(
              children: posts.map(
                (TestPost post) => ListTile(
                  title: Text(post.title),
                  subtitle: Text("${post.userId}"),
                  onTap: ()=>Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => TestPostDetail(
                        testPost: post,
                      )
                    )
                  )
                )
              )
              .toList(),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        }
      ),
    );
  }

}