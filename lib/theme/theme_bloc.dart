import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:list_detail_demo/theme/theme_events.dart';

import '../models/theme_model.dart';



class ThemeBloc extends Bloc<ThemeEvent, ThemeModel> {
  ThemeBloc() : super(ThemeModel(data: ThemeData.light())) {
    on<ThemeChanged>((event, emit) async {
      emit(ThemeModel(data: event.themeData));
    });
  }

  @override
  Stream<ThemeModel> mapEventToState(ThemeEvent event) async* {
    if (event is ThemeChanged) {
      yield ThemeModel(data: event.themeData);
    }
  }
}
