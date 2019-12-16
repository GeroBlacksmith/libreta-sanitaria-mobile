import 'dart:convert';

import 'package:http/http.dart';
import 'package:libreta_sanitaria_mobile/pets_model.dart';

class HttpService {
  final String petsURL = "https://localhost:3000/pets";

  
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