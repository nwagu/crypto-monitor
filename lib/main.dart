import 'package:flutter/material.dart';
import 'navigator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Monitor',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
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
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  var coinIcon;
  var coinName;
  var coinValue;

  CustomListTile(this.coinName, this.coinIcon, this.coinValue);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 60.0,
        child: InkWell(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          highlightColor: Colors.red,
          splashColor: Colors.green,
          onTap: () {
            _showSnackBar(context);
          },
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Icon(coinIcon),
                ),
                Center(
                  child: Text(
                    coinName,
                    textAlign: TextAlign.center,
                  ),
                ),
                Center(
                  child: Text(
                    coinValue,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void _showSnackBar(BuildContext context) {
  final scaffold = Scaffold.of(context);
  scaffold.showSnackBar(SnackBar(
      content: const Text('Added to favorite'),
      action: SnackBarAction(
          label: 'UNDO',
          onPressed: () {
            scaffold.hideCurrentSnackBar();
          })));
}
