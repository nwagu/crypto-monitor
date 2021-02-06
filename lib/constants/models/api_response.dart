import 'package:crypto_monitor/constants/enums/coin.dart';
import 'package:crypto_monitor/constants/models/coin_value.dart';

class ApiResponse {

  Map<Coin, CoinValue> coins;

  ApiResponse.fromJson(dynamic json) {

    coins = new Map();

    Coin.values.forEach((coin) {
      String coinSymbol = coin.symbol;
      if(json[coinSymbol] != null)
        coins[coin] = CoinValue.fromJson(json[coinSymbol]);
    });
  }

  Map<Coin, dynamic> toJson() {
    return coins;
  }

}