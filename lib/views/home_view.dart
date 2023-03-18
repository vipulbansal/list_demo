import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_detail_demo/views/home_detail_view.dart';
import 'package:list_detail_demo/widgets/home_list_item_widget.dart';

import '../blocs/home/home_bloc.dart';

import '../utils/common.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  late Size _screenSize;

  @override
  Widget build(BuildContext context) {
    _screenSize = MediaQuery.of(context).size;
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state is UsersFetchError) {
          Common.showSnackbar(state.errorMessage);
        }
      },
      builder: (context, state) {
        HomeBloc homeBloc = context.read<HomeBloc>();
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey.shade300,
            elevation: 0,
            title: Text(
              "Users List",
              style: Theme.of(context).textTheme.displaySmall,
            ),
            centerTitle: true,
          ),
          body: LayoutBuilder(
            builder: (context, constraint) {
              return SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: homeBloc.users.isEmpty && state is LoadingState
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : NotificationListener<ScrollNotification>(
                          onNotification: (ScrollNotification scrollInfo) {
                            if (scrollInfo.metrics.pixels ==
                                scrollInfo.metrics.maxScrollExtent) {
                              if (!homeBloc.isLoading &&
                                  homeBloc.users.length < 100 &&
                                  state is! LoadingState) {
                                homeBloc.isLoading = true;
                                homeBloc.add(
                                  FetchUsersFromApi(
                                      (homeBloc.users.length ~/ 10) + 1, context),
                                );
                              }
                            }
                            return false;
                          },
                          child: Column(
                            children: [
                              Expanded(
                                child: ListView.separated(
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () =>
                                          Navigator.of(context).pushNamed(
                                        HomeDetailView.routeName,
                                        arguments: homeBloc.users[index],
                                      ),
                                      child: HomeListItemWidget(
                                          userData: homeBloc.users[index],
                                          screenSize: _screenSize),
                                    );
                                  },
                                  separatorBuilder: (context, index) =>
                                      const Divider(),
                                  itemCount: homeBloc.users.length,
                                ),
                              ),
                              if (homeBloc.users.isNotEmpty &&
                                  state is LoadingState)
                                const SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: CircularProgressIndicator())
                            ],
                          ),
                        ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
