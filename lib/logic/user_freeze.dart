
import 'package:connectionn/Data/modelss.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:connectionn/Data/model.dart';

part 'user_freeze.freezed.dart';

extension MakeUser on MyState{
  bool get isLoading => this is _MyStateLoading;
}

@freezed
abstract class MyState with _$MyState {
  //initial
  const factory MyState.initial() = _MyStateInitial;

  //loading
  const factory MyState.loading() = _MyStateLoading;

  //loaded
  const factory MyState.loaded({required Users users}) = _MyStateLoaded;

  //error
  const factory MyState.error([String? error]) = _MyStateError;
}