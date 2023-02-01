/*
import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:connectionn/Data/model.dart';

class UserModel{
  String endPoint = 'https://jsonplaceholder.typicode.com/users';

  Future<List<User>> fetchData() async {
    Response response =await get(Uri.parse(endPoint));
    if(response.statusCode == 200){
      List result = jsonDecode(response.body);
      return result.map(((e) =>User.fromJson(e))).toList();
    }else {
      throw Exception(response.reasonPhrase);
    }
  }
}

final ApiProvider = Provider<UserModel>((ref)=> UserModel());

 */