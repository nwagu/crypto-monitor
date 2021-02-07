import 'package:crypto_monitor/constants/models/api_response.dart';
import 'package:crypto_monitor/rest/requests.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'customwidgets/custom_list_tile.dart';
import 'navigator.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _HomeScreen();
  }

}

class _HomeScreen extends State<HomeScreen> {

  Future<ApiResponse> _apiResponse;

  @override
  void initState() {
    super.initState();
    _apiResponse = fetchData();
  }

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
                child: Text("Refresh"),
                value: 0,
              ),
              PopupMenuItem(
                height: 40.0,
                child: Text("Settings"),
                value: 1,
              ),
            ],
            onSelected: (value) {
              switch (value) {
                case 0: setState(() {_apiResponse = fetchData();}) ; break;
                case 1: AppNavigator.navigateToSettings(context); break;
                default: break;
              }
            },
          )
        ],
      ),
      body: FutureBuilder<ApiResponse>(
          future: _apiResponse,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView(
                children: <Widget>[
                  for (var itemCoin in snapshot.data.coins.keys)
                    CoinListTile(itemCoin, snapshot.data.coins[itemCoin])
                ],
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            // By default, show a loading spinner.
            return Center(child: CircularProgressIndicator());
          }),
    );
  }

}
