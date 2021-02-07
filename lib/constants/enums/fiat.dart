enum Fiat {
  NGN,USD,CNY,JPY
}

extension FiatExtension on Fiat {

  String get name {
    switch (this) {
      case Fiat.NGN:
        return "Naira";
      case Fiat.USD:
        return "US Dollars";
      case Fiat.CNY:
        return "Chinese Yuan";
      case Fiat.JPY:
        return "Japanese Yen";
      default:
        return "Unknown";
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