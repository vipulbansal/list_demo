import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:list_detail_demo/models/user.dart';
import 'package:list_detail_demo/models/user_model.dart';
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
          UserData userData = UserData(
            gender: result.gender,
            name: Namef(
              title: result.name?.title,
              first: result.name?.first,
              last: result.name?.last,
            ),
            location: Locationf(
              street: Streetf(
                number: result.location?.street?.number,
                name: result.location?.street?.name,
              ),
              city: result.location?.city,
              state: result.location?.state,
              country: result.location?.country,
              postcode: result.location?.postcode.toString(),
              coordinates: Coordinatesf(
                latitude: result.location?.coordinates?.latitude,
                longitude: result.location?.coordinates?.longitude,
              ),
              timezone: Timezonef(
                offset: result.location?.timezone?.offset,
                description: result.location?.timezone?.description,
              ),
            ),
            email: result.email,
            login: Loginf(
              uuid: result.login?.uuid,
              username: result.login?.username,
              password: result.login?.password,
              salt: result.login?.salt,
              md5: result.login?.md5,
              sha1: result.login?.sha1,
              sha256: result.login?.sha256,
            ),
            dob: Dobf(
              date: result.dob?.date,
              age: result.dob?.age,
            ),
            registered: Dobf(
              date: result.registered?.date,
              age: result.registered?.age,
            ),
            phone: result.phone,
            cell: result.cell,
            id: Idf(name: result.id?.name, value: result.id?.value),
            picture: Picturef(
              large: result.picture?.large,
              medium: result.picture?.medium,
              thumbnail: result.picture?.thumbnail,
            ),
            nat: result.nat,
          );
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
