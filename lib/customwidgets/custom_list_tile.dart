import 'package:crypto_monitor/constants/enums/coin.dart';
import 'package:crypto_monitor/constants/enums/fiat.dart';
import 'package:crypto_monitor/constants/models/coin_value.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils.dart';

class CoinListTile extends StatelessWidget {
  Coin coin;
  CoinValue coinValue;

  CoinListTile(this.coin, this.coinValue);

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
            showSnackBar(context, coin.name + " tapped");
          },
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Image.network(
                    coin.iconUrl,
                    width: 48.0,
                    height: 48.0,
                  ),
                ),
                Expanded(
                    child: Text(
                  coin.symbol + " (" + coin.name + ")",
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.black),
                )),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "\$" + coinValue.values[Fiat.USD].toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
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
