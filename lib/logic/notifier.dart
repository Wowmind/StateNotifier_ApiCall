

import 'package:connectionn/Data/res.dart';
import 'package:connectionn/logic/user_freeze.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UsersNotifier extends StateNotifier<MyState>{
  UsersNotifier({required this.userModells,
}): super(const MyState.initial());

  final UserModells userModells;

  Future<void> getData() async{
    state = const MyState.loading();
    try{
      final users = await userModells.getData();
      state = MyState.loaded(users: users);
    }catch(_){
      state = MyState.error('Error');
    }
  }
}