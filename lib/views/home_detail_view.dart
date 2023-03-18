import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:list_detail_demo/blocs/home_details/home_details_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/svg.dart';
import 'package:list_detail_demo/static/standard_styling/standard_color.dart';

import '../static/content/standard_asset_image.dart';
import '../utils/common.dart';

class HomeDetailView extends StatelessWidget {
  static const String routeName = "HomeDetailView";
  late Size _screenSize;

  HomeDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _screenSize = MediaQuery.of(context).size;
    return BlocConsumer<HomeDetailsBloc, HomeDetailsState>(
        builder: (context, state) {
          HomeDetailsBloc homeDetailsBloc = context.read<HomeDetailsBloc>();
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.grey.shade300,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back,
                color: Colors.black,),
                onPressed: () => Navigator.of(context).pop(),
              ),
              elevation: 0,
              title: Text(
                state is HomeDetailsInitial
                    ? state.userData.name?.first ?? ""
                    : "",
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontSize: 20,
                    ),
              ),
              centerTitle: true,
            ),
            body: LayoutBuilder(builder: (context, constraint) {
              return state is HomeDetailsInitial
                  ? Padding(
                      padding: const EdgeInsets.all(
                        16.0,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: _screenSize.height * 0.05,
                          ),
                          CachedNetworkImage(
                            imageUrl: "${state.userData.picture?.large}",
                            fit: BoxFit.cover,
                            width: _screenSize.width * 0.5,
                            height: _screenSize.height * 0.3,
                            placeholder: (context, url) => SvgPicture.asset(
                              StandardAssetImage.placeholder,
                            ),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration:
                                const BoxDecoration(color: StandardColor.black),
                            width: double.infinity,
                            height: 5,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          buildTextRow(
                            context,
                            "Email",
                            "${state.userData.email}",
                          ),
                          buildTextRow(
                            context,
                            "Date Joined",
                            Common.convertDateToRequiredFormat(
                                from: DateFormat("yy-M-d"),
                                to: DateFormat("dd-MMMM-yy"),
                                date: "${state.userData.registered?.date}"),
                          ),
                          buildTextRow(
                            context,
                            "DOB",
                            Common.convertDateToRequiredFormat(
                                from: DateFormat("yy-M-d"),
                                to: DateFormat("dd-MMMM-yyyy"),
                                date: "${state.userData.dob?.date}"),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            "LOCATION:",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(fontSize: 20),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10.0,
                            ),
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: StandardColor.black),
                              width: double.infinity,
                              height: 5,
                            ),
                          ),
                          buildTextRow(
                            context,
                            "City",
                            "${state.userData.location?.city}",
                          ),
                          buildTextRow(
                            context,
                            "State",
                            "${state.userData.location?.state}",
                          ),
                          buildTextRow(
                            context,
                            "Country",
                            "${state.userData.location?.country}",
                          ),
                          buildTextRow(
                            context,
                            "Postcode",
                            "${state.userData.location?.postcode}",
                          ),
                        ],
                      ),
                    )
                  : Container();
            }),
          );
        },
        listener: (context, state) {});
  }

  Widget buildTextRow(
    BuildContext context,
    String caption,
    String val,
  ) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "$caption: ",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Expanded(
                child: Text(
              "$val",
              style: Theme.of(context).textTheme.bodyMedium,
            )),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
