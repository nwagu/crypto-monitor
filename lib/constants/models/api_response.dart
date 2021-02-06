import 'package:crypto_monitor/constants/models/coin_value.dart';

class ApiResponse {
  CoinValue btc;
  CoinValue eth;
  CoinValue ltc;
  CoinValue ada;
  CoinValue xrp;
  CoinValue doge;

  ApiResponse({
    CoinValue btc,
    CoinValue eth,
    CoinValue ltc,
    CoinValue ada,
    CoinValue xrp,
    CoinValue doge}){
    btc = btc;
    eth = eth;
    ltc = ltc;
    ada = ada;
    xrp = xrp;
    doge = doge;
}

  ApiResponse.fromJson(dynamic json) {
    btc = json["BTC"] != null ? CoinValue.fromJson(json["BTC"]) : null;
    eth = json["ETH"] != null ? CoinValue.fromJson(json["ETH"]) : null;
    ltc = json["LTC"] != null ? CoinValue.fromJson(json["LTC"]) : null;
    ada = json["ADA"] != null ? CoinValue.fromJson(json["ADA"]) : null;
    xrp = json["XRP"] != null ? CoinValue.fromJson(json["XRP"]) : null;
    doge = json["DOGE"] != null ? CoinValue.fromJson(json["DOGE"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (btc != null) {
      map["BTC"] = btc.toJson();
    }
    if (eth != null) {
      map["ETH"] = eth.toJson();
    }
    if (ltc != null) {
      map["LTC"] = ltc.toJson();
    }
    if (ada != null) {
      map["ADA"] = ada.toJson();
    }
    if (xrp != null) {
      map["XRP"] = xrp.toJson();
    }
    if (doge != null) {
      map["DOGE"] = doge.toJson();
    }
    return map;
  }

}