import 'package:crypto_monitor/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppNavigator {

  static void navigateToSettings(BuildContext context) {
    if (Navigator.of(context).canPop()) {
      Navigator.of(context).pop();
    }
    Navigator.of(context).push(MaterialPageRoute<Null>(
        builder: (BuildContext context) {
          return Container(
            color: Colors.red,
          );
        }));
  }

}