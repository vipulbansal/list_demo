import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:list_detail_demo/models/user.dart';
import 'package:meta/meta.dart';

part 'home_details_event.dart';

part 'home_details_state.dart';

class HomeDetailsBloc extends Bloc<HomeDetailsEvent, HomeDetailsState> {
  HomeDetailsBloc(UserData userData) : super(HomeDetailsInitial(userData)) {
    on<HomeDetailsEvent>((event, emit) {});
  }
}
