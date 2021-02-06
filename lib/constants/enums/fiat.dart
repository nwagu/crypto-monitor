enum Fiat {
  NGN,USD
}

extension FiatExtension on Fiat {

  String get name {
    switch (this) {
      case Fiat.NGN:
        return "Naira";
      case Fiat.USD:
        return "US Dollars";
      default:
        return "Unknown currency";
    }
  }

  String get symbol {
    return this.toString().split('.').last;
  }

  String get iconUrl {
    switch (this) {
      case Fiat.NGN:
        return "";
      case Fiat.USD:
        return "";
      default:
        return "";
    }
  }

}

String allFiatCommaSeparated() {
  String result = "";
  Fiat.values.forEach((v) => result = result + v.symbol + ",");
  return result;
}