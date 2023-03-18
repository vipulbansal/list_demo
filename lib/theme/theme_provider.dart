import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_detail_demo/blocs/home_details/home_details_bloc.dart';
import 'package:list_detail_demo/models/user.dart';
import 'package:list_detail_demo/theme/theme_bloc.dart';
import 'package:list_detail_demo/theme/theme_events.dart';
import 'package:list_detail_demo/theme/theme_repository.dart';
import 'package:list_detail_demo/views/home_detail_view.dart';

import '../models/theme_model.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
final messengerKey = GlobalKey<ScaffoldMessengerState>();

class ThemeProvider extends StatefulWidget {
  final Widget child;
  final ThemeBloc themeBloc;
  final ThemeRepository themeRepository;

  const ThemeProvider(
      {super.key,
      required this.child,
      required this.themeBloc,
      required this.themeRepository});

  @override
  _ThemeProviderState createState() => _ThemeProviderState();
}

class _ThemeProviderState extends State<ThemeProvider> {
  late ThemeBloc _themeBloc;
  late ThemeRepository _themeRepository;

  @override
  void initState() {
    _themeBloc = widget.themeBloc;
    _themeRepository = widget.themeRepository;
    final theme = _themeRepository.getTheme();
    _themeBloc.add(ThemeChanged(themeData: theme.data));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeModel>(
      bloc: _themeBloc,
      builder: (BuildContext context, ThemeModel themeModel) {
        return MaterialApp(
          navigatorKey: navigatorKey,
          scaffoldMessengerKey: messengerKey,
          debugShowCheckedModeBanner: false,
          theme: themeModel.data,
          home: widget.child,
          routes: {
            // LoginView.routeName: (ctx) =>  LoginView(),
            HomeDetailView.routeName: (ctx) => BlocProvider(
                  create: (context) {
                    UserData userdata =
                        ModalRoute.of(ctx)!.settings.arguments as UserData;
                    return HomeDetailsBloc(userdata);
                  },
                  child:  HomeDetailView(),
                ),
          },
        );
      },
    );
  }
}
