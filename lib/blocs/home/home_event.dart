part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class FetchUsersFromDatabase extends HomeEvent{
BuildContext context;

FetchUsersFromDatabase(this.context);
}

class FetchUsersFromApi extends HomeEvent{
  int page;
  int results;
  BuildContext context;

  FetchUsersFromApi(this.page,this.context,{this.results=10});
}
