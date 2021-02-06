import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils.dart';

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
            showSnackBar(context, coinName + " tapped");
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