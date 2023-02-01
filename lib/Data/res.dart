import 'package:connectionn/Data/model.dart';
import 'package:connectionn/Data/modelss.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class UserModells {
  Future<Users> getData() async {
    String endPoint = 'https://reqres.in/api/users?page=2';
    var dio = Dio();
    try{
      final response =await dio.get(endPoint);
      final users = Users.fromJson(response.data);
      return  users;
    }catch(error){
      error.toString();
      throw error.toString();
    }
  }
}

final UserRiverProvider = Provider<UserModells>((ref) => UserModells());