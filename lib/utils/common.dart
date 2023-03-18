import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:list_detail_demo/static/standard_styling/standard_color.dart';

import '../theme/theme_provider.dart';

class Common {
  static void showSnackbar(
    String message, {
    Color backgroundColor = StandardColor.secondaryAirForceBlue,
    String labelMessage = "OK",
    Color textColor = Colors.white,
  }) {
    SnackBar snackBar = SnackBar(
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      content: Text(
        message,
        style: Theme.of(messengerKey.currentContext!).textTheme.bodySmall,
        textAlign: TextAlign.center,
      ),
      backgroundColor: backgroundColor,
      duration: const Duration(seconds: 10),
      action: SnackBarAction(
        label: labelMessage,
        textColor: textColor,
        onPressed: () {
          messengerKey.currentState!.removeCurrentSnackBar();
        },
      ),
    );
    messengerKey.currentState!
      ..clearSnackBars()
      ..showSnackBar(snackBar);
  }

  static String convertDateToRequiredFormat(
      {required DateFormat from,
        required DateFormat to,
        required String? date}) {
    if (date == null) {
      return "";
    }
    DateTime dateTime = from.parse(date);
    String jj = to.format(dateTime);
    return jj;
  }
}
