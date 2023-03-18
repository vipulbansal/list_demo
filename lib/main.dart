import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_detail_demo/blocs/home/home_bloc.dart';
import 'package:list_detail_demo/theme/theme_bloc.dart';
import 'package:list_detail_demo/theme/theme_provider.dart';
import 'package:list_detail_demo/theme/theme_repository.dart';
import 'package:list_detail_demo/views/home_view.dart';

import 'network/api_repository.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final themeBloc = ThemeBloc();
  final themeRepository = ThemeRepository();
  runApp(
    MultiBlocProvider(
      providers: [
        RepositoryProvider(
          lazy: false,
          create: (BuildContext context) => ApiRepository(),
        ),
      ],
      child: ThemeProvider(
        themeBloc: themeBloc,
        themeRepository: themeRepository,
        child: BlocProvider(
          lazy: false,
          create: (context) => HomeBloc(context.read<ApiRepository>())
            ..add(FetchUsersFromDatabase(context)),
          child: HomeView(),
        ),
      ),
    ),
  );
}
