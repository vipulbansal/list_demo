part of 'home_bloc.dart';

@immutable
abstract class HomeState {}


class HomeInitial extends HomeState {

}

class UsersFoundSuccess extends HomeState{

}

class LoadingState extends HomeState{
}

class UsersFetchError extends HomeState{
  String errorMessage;

  UsersFetchError({required this.errorMessage});
}


