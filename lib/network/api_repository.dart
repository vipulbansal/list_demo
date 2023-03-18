import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:list_detail_demo/models/user_model.dart';

import 'base_network.dart';

class ApiRepository {
  BaseNetwork? baseNetwork;

  getUsers(BuildContext context, int page, {int results = 10}) async {
    try {
      if (baseNetwork != null) {
        baseNetwork!.cancelCall();
      } else {
        baseNetwork = BaseNetwork(
          context,
        );
      }
      var responseBean = await baseNetwork!.retrofit.getUsers(page, results);

      print(responseBean.data);
      UserModel userModel = userModelFromJson(
        jsonEncode(responseBean.data),
      );
      return userModel;
    } catch (error) {
      return error.toString();
    }
  }
}
