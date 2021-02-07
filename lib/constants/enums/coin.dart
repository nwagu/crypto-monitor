enum Coin {
  BTC,ETH,LTC,ADA,XRP,DOGE,DOT,BCH,XLM,LNK,BNB,USDT,XMR,ZEC,BSV,ANON,
  AQUA,ANT,BAT,BSD,BTCP,BTDX,BTX,BURST,BUSD,CLOAK,DAI,BIZZ,DASH,DEX,DGB,
  // ECA,EFL,EURS,FLASH,FTO,GRS,HATCH,HBX,HT,ILC,KMD,JOB,LMY,LBTC,LEO,LINDA,
  // LSK,MAX,MEC,MKR,MUSD,NBT,NLG,NXT,PAC,POT,REP,SMART,SPICE,START,SUM,SYS,
  // THBX,TKN,TRTL,TRX,USDS,USDC,VIA,VOLTZ,WDC,XORI,TENT,XZC,BAY,NULS,MUE,
  // XPM,ZPAE,TBCH,TBTC,TETH,TLTC,TRMG,TXRP
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
        return "Cardano";
      case Coin.XRP:
        return "Ripple";
      case Coin.DOGE:
        return "Dogecoin";
      case Coin.DOT:
        return "Polkadot";
      case Coin.BCH:
        return "Bitcoin Cash";
      case Coin.XLM:
        return "Stellar Lumen";
      case Coin.LNK:
        return "Chainlink";
      case Coin.BNB:
        return "Binance Coin";
      case Coin.USDT:
        return "USD Tether";
      case Coin.XMR:
        return "Monero";
      case Coin.ZEC:
        return "Zcash";
      case Coin.BSV:
        return "Bitcoin Satoshi’s Vision";
      case Coin.ANON:
        return "Anon";
      default:
        return "";
    }
  }

  String get symbol {
    return this.toString().split('.').last;
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
      case Coin.DOT:
        return "https://raw.githubusercontent.com/nwagu/cryptocurrency-icons/master/32/color/dot.png";
      case Coin.BCH:
        return "https://raw.githubusercontent.com/nwagu/cryptocurrency-icons/master/32/color/bch.png";
      case Coin.XLM:
        return "https://raw.githubusercontent.com/nwagu/cryptocurrency-icons/master/32/color/xlm.png";
      case Coin.LNK:
        return "https://raw.githubusercontent.com/nwagu/cryptocurrency-icons/master/32/color/lnk.png";
      case Coin.BNB:
        return "https://raw.githubusercontent.com/nwagu/cryptocurrency-icons/master/32/color/bnb.png";
      case Coin.USDT:
        return "https://raw.githubusercontent.com/nwagu/cryptocurrency-icons/master/32/color/usdt.png";
      case Coin.XMR:
        return "https://raw.githubusercontent.com/nwagu/cryptocurrency-icons/master/32/color/xmr.png";
      case Coin.ZEC:
        return "https://raw.githubusercontent.com/nwagu/cryptocurrency-icons/master/32/color/zec.png";
      case Coin.BSV:
        return "https://raw.githubusercontent.com/nwagu/cryptocurrency-icons/master/32/color/bsv.png";
      case Coin.ANON:
        return "https://raw.githubusercontent.com/nwagu/cryptocurrency-icons/master/32/color/anon.png";
      default:
        return "https://raw.githubusercontent.com/nwagu/cryptocurrency-icons/master/32/color/generic.png";
    }
  }
}

String allCoinsCommaSeparated() {
  String result = "";
  Coin.values.forEach((v) => result = result + v.symbol + ",");
  return result;
}
