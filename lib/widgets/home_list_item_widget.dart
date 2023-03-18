import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:list_detail_demo/models/user.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:list_detail_demo/static/content/standard_asset_image.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/common.dart';

class HomeListItemWidget extends StatelessWidget {
  UserData userData;
  Size screenSize;

  HomeListItemWidget(
      {required this.userData, required this.screenSize, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenSize.height * 0.10,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CachedNetworkImage(
            imageUrl: "${userData.picture?.medium}",
            fit: BoxFit.cover,
            width: screenSize.width * 0.3,
            height: double.infinity,
            placeholder: (context, url) => SvgPicture.asset(
              StandardAssetImage.placeholder,
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 5.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      "${userData.name?.first} ${userData.name?.last}",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      "${userData.email}",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      "${userData.location?.country}",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      Common.convertDateToRequiredFormat(
                          from: DateFormat("yy-M-d"),
                          to: DateFormat("dd-MMMM-yyyy"),
                          date: "${userData.registered?.date}"),
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
