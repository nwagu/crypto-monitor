import 'package:crypto_monitor/constants/models/api_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants/enums/coin.dart';
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
                  CoinListTile(Coin.BTC, snapshot.data.btc),
                  CoinListTile(Coin.ETH, snapshot.data.eth),
                  CoinListTile(Coin.LTC, snapshot.data.ltc),
                  CoinListTile(Coin.ADA, snapshot.data.ada),
                  CoinListTile(Coin.XRP, snapshot.data.xrp),
                  CoinListTile(Coin.DOGE, snapshot.data.doge),
                ],
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            // By default, show a loading spinner.
            return Center(child: CircularProgressIndicator());
          }
      ),
    );
  }

}