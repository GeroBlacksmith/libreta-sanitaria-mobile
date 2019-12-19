import 'dart:convert';

import 'package:http/http.dart';

import 'test_post.dart';

class HttpService {
  final String petsURL = "https://localhost:3000/pets";
  final String test = "https://jsonplaceholder.typicode.com/posts";
  
  Future<List<TestPost>> getTestPost() async{
    Response res = await get(test);
    if(res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<TestPost> testPosts = body.map(
        (dynamic item) => TestPost.fromJson(item),
      ).toList();
      return testPosts;
    } else {
      throw "No se pudieron obtener los test post.";
    }
  } 
  // Future<List<Pet>> getPets() async {
  //   Response res = await get(petsURL);

  //   if (res.statusCode == 200) {
  //     List<dynamic> body = jsonDecode(res.body);

  //     List<Pet> pets = body
  //         .map(
  //           (dynamic item) => Pet.fromJson(item),
  //         )
  //         .toList();

  //     return pets;
  //   } else {
  //     throw "Can't get petss.";
  //   }
  // }
}