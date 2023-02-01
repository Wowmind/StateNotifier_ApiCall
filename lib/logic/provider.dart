import 'package:connectionn/Data/res.dart';
import 'package:connectionn/logic/notifier.dart';
import 'package:connectionn/logic/user_freeze.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//final UserNotifierProvider = StateNotifierProvider<UserNotifier, UserState>((ref) => UserNotifier(ref));
final UserNotifierProvider = StateNotifierProvider<UsersNotifier, MyState>((ref) => UsersNotifier(
    userModells: ref.watch(UserRiverProvider)));