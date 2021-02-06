import 'package:crypto_monitor/constants/models/api_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'customwidgets/custom_list_tile.dart';
import 'navigator.dart';

class HomeScreen extends StatelessWidget {

  var apiResponse;

  HomeScreen(this.apiResponse);

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
      body: FutureBuilder<ApiResponse>(
          future: apiResponse,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView(
                children: <Widget>[
                  CustomListTile("BTC", Icons.money, "\$" + snapshot.data.btc.usd.toString()),
                  CustomListTile("ETH", Icons.money, "\$" + snapshot.data.eth.usd.toString()),
                  CustomListTile("LTC", Icons.money, "\$" + snapshot.data.ltc.usd.toString()),
                  CustomListTile("ADA", Icons.money, "\$" + snapshot.data.ada.usd.toString()),
                  CustomListTile("XRP", Icons.money, "\$" + snapshot.data.xrp.usd.toString()),
                  CustomListTile("DOGE", Icons.money, "\$" + snapshot.data.doge.usd.toString()),
                ],
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            // By default, show a loading spinner.
            return CircularProgressIndicator();
          }
      ),
    );
  }

}