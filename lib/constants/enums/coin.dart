enum Coin {
  BTC,ETH,LTC,ADA,XRP,DOGE
}

extension CoinExtension on Coin {

  String get name {
    switch (this) {
      case Coin.BTC:
        return "Bitcoin";
      case Coin.ETH:
        return "Ethereum";
      case Coin.LTC:
        return "Litecoin";
      case Coin.ADA:
        return "Cordana";
      case Coin.XRP:
        return "Ripple";
      case Coin.DOGE:
        return "Dogecoin";
    }
  }

  String get iconUrl {
    switch (this) {
      case Coin.BTC:
        return "https://raw.githubusercontent.com/nwagu/cryptocurrency-icons/master/32/color/btc.png";
      case Coin.ETH:
        return "https://raw.githubusercontent.com/nwagu/cryptocurrency-icons/master/32/color/eth.png";
      case Coin.LTC:
        return "https://raw.githubusercontent.com/nwagu/cryptocurrency-icons/master/32/color/ltc.png";
      case Coin.ADA:
        return "https://raw.githubusercontent.com/nwagu/cryptocurrency-icons/master/32/color/ada.png";
      case Coin.XRP:
        return "https://raw.githubusercontent.com/nwagu/cryptocurrency-icons/master/32/color/xrp.png";
      case Coin.DOGE:
        return "https://raw.githubusercontent.com/nwagu/cryptocurrency-icons/master/32/color/doge.png";
      default:
        return "https://raw.githubusercontent.com/nwagu/cryptocurrency-icons/master/32/color/generic.png";
    }
  }

}

String allCoinsCommaSeparated() {
  String result = "";
  Coin.values.forEach((v) => result = result + v.toString() + ",");
  return result;
}