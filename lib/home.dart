import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'customwidgets/custom_list_tile.dart';
import 'navigator.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Coins"),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                height: 40.0,
                child: Text("Settings"),
                value: 0,
              ),
            ],
            onSelected: (value) {
              if (value == 0) {
                AppNavigator.navigateToSettings(context);
              }
            },
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          CustomListTile("BTC", Icons.money, "\$300"),
          CustomListTile("ETH", Icons.money, "\$300"),
          CustomListTile("LTC", Icons.money, "\$300"),
        ],
      ),
    );
  }

}