import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:list_detail_demo/models/user.dart';
import 'package:list_detail_demo/models/user_model.dart';
import 'package:list_detail_demo/services/realm_db_service.dart';
import 'package:meta/meta.dart';
import 'package:realm/realm.dart';

import '../../network/api_repository.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  var config = Configuration.local([
    UserData.schema,
    Namef.schema,
    Locationf.schema,
    Loginf.schema,
    Dobf.schema,
    Idf.schema,
    Picturef.schema,
    Streetf.schema,
    Timezonef.schema,
    Coordinatesf.schema,
  ]);
  ApiRepository apiRepository;
  List<UserData> users = [];
  bool isLoading = false;

  HomeBloc(this.apiRepository) : super(HomeInitial()) {
    on<FetchUsersFromDatabase>((event, emit) {
      var realm = Realm(config);
      var u = realm.all<UserData>();
      if (u.isNotEmpty) {
        users.addAll(u.map((e) {
          print("hello");
          return e;
        }));
        emit(UsersFoundSuccess());
      } else {
        add(FetchUsersFromApi(
          1,
          event.context,
        ));
      }
    });

    on<FetchUsersFromApi>((event, emit) async {
      emit(LoadingState());
      var realm = Realm(config);
      var response = await apiRepository.getUsers(
        event.context,
        event.page,
        results: event.results,
      );
      if (response is UserModel) {
        for (Result result in response.results ?? []) {
          UserData userData = convertAPIResultToUser(result);
          realm.write(() {
            realm.add(userData);
          });
        }
        users.clear();
        var u = realm.all<UserData>();
        if (u.isNotEmpty) {
          users.addAll(u.map((e) {
            return e;
          }));
          emit(UsersFoundSuccess());
        }
      } else {
        emit(
          UsersFetchError(errorMessage: response != null ? response : "Error"),
        );
      }
      isLoading = false;
    });
  }
}
