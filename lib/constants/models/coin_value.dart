import 'package:crypto_monitor/constants/enums/fiat.dart';

class CoinValue {

  Map<Fiat, dynamic> values;

  CoinValue.fromJson(dynamic json) {

    values = new Map();

    Fiat.values.forEach((fiat) {
      String fiatSymbol = fiat.symbol;
      if(json[fiatSymbol] != null)
        values[fiat] = json[fiatSymbol];
    });
  }

  Map<Fiat, dynamic> toJson() {
    return values;
  }

}
