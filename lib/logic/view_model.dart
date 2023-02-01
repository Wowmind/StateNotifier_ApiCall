/*

import 'package:connectionn/Data/model.dart';
import 'package:connectionn/Data/modelss.dart';
import 'package:connectionn/Data/res.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class UserState{
  const UserState();
}

class UserInitial extends UserState{
  const UserInitial();
}

class UserLoading extends UserState{
  const UserLoading();
}

class UserLoaded extends UserState{
  final Users users;
  const UserLoaded(this.users);
}
class UserError extends UserState{
 final String error;
  const UserError(this.error);
}

class UserNotifier extends StateNotifier<UserState>{
  final Ref ref;
  UserNotifier(this.ref) : super(UserInitial());

  Future<void> getUser() async {
    state = const UserLoading();
    try{
      final results = await ref.read(UserRiverProvider).getData();
      state = UserLoaded(results);
    }catch(error){
      print(error);
      state = UserError(error.toString());
    }


  }
}

*/