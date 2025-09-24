part of 'cc_icon_svg.dart';

@immutable
class CCFinanceIcon {
    final CCBankFinanceIcon bank;
    final CCChartFinanceIcon chart;
    final CCCoinFinanceIcon coin;
    final CCCreditCardFinanceIcon creditCard;
    final CCCurrencyFinanceIcon currency;
    final CCReceiptFinanceIcon receipt;
    final CCGiftFinanceIcon gift;
    final CCShoppingFinanceIcon shopping;
    final CCWalletFinanceIcon wallet;
    final CCTagFinanceIcon tag;
    final SvgGenImage safe;
    final SvgGenImage scales;
    final SvgGenImage qrCode;

    const CCFinanceIcon._({
        required this.bank,
        required this.chart,
        required this.coin,
        required this.creditCard,
        required this.currency,
        required this.receipt,
        required this.gift,
        required this.shopping,
        required this.wallet,
        required this.tag,
        required this.safe,
        required this.scales,
        required this.qrCode,   
    });

    factory CCFinanceIcon.asset() => CCFinanceIcon._(
        bank: CCBankFinanceIcon.asset(),
        chart: CCChartFinanceIcon.asset(),
        coin: CCCoinFinanceIcon.asset(),
        creditCard: CCCreditCardFinanceIcon.asset(),
        currency: CCCurrencyFinanceIcon.asset(),
        receipt: CCReceiptFinanceIcon.asset(),
        gift: CCGiftFinanceIcon.asset(),
        shopping: CCShoppingFinanceIcon.asset(),
        wallet: CCWalletFinanceIcon.asset(),
        tag: CCTagFinanceIcon.asset(),
        safe: Assets.svg.icons.finance.safe,
        scales: Assets.svg.icons.finance.scales,
        qrCode: Assets.svg.icons.finance.qrCode,
    );
}

@immutable
class CCBankFinanceIcon {
    final SvgGenImage main;
    final SvgGenImage bankNote;

    const CCBankFinanceIcon._({
        required this.main,
        required this.bankNote,
    });

    factory CCBankFinanceIcon.asset() => CCBankFinanceIcon._(
        main: Assets.svg.icons.finance.bank,
        bankNote: Assets.svg.icons.finance.bankNote,
    );
}

@immutable
class CCChartFinanceIcon {
    final SvgGenImage bar;
    final SvgGenImage barAlt;
    final SvgGenImage barLine;
    final SvgGenImage candlestick;
    final SvgGenImage breakoutCircle;
    final SvgGenImage horizontalBar;
    final SvgGenImage lineDown;
    final SvgGenImage lineUp;
    final SvgGenImage pie;

    const CCChartFinanceIcon._({
        required this.bar,
        required this.barAlt,
        required this.barLine,
        required this.candlestick,
        required this.breakoutCircle,
        required this.horizontalBar,
        required this.lineDown,
        required this.lineUp,   
        required this.pie,
    });

    factory CCChartFinanceIcon.asset() => CCChartFinanceIcon._(
        bar: Assets.svg.icons.finance.barChart,
        barAlt: Assets.svg.icons.finance.barChartAlt,
        barLine: Assets.svg.icons.finance.barLineChart,
        candlestick: Assets.svg.icons.finance.candlestickChart,
        breakoutCircle: Assets.svg.icons.finance.chartBreakoutCircle,
        horizontalBar: Assets.svg.icons.finance.horizontalBarChart,
        lineDown: Assets.svg.icons.finance.lineChartDown,
        lineUp: Assets.svg.icons.finance.lineChartUp,
        pie: Assets.svg.icons.finance.pieChart,
    );
}

@immutable
class CCCoinFinanceIcon {
    final SvgGenImage main;
    final SvgGenImage hand;
    final SvgGenImage minus;
    final SvgGenImage plus;
    final SvgGenImage stacked;
    final SvgGenImage stackedDouble;
    final SvgGenImage swap;

    const CCCoinFinanceIcon._({
        required this.main,
        required this.hand,
        required this.minus,
        required this.plus,
        required this.stacked,
        required this.stackedDouble,
        required this.swap,
    }); 

    factory CCCoinFinanceIcon.asset() => CCCoinFinanceIcon._(
        main: Assets.svg.icons.finance.coins,
        hand: Assets.svg.icons.finance.coinsHand,
        minus: Assets.svg.icons.finance.coinsMinus,
        plus: Assets.svg.icons.finance.coinsPlus,
        stacked: Assets.svg.icons.finance.coinsStacked,
        stackedDouble: Assets.svg.icons.finance.coinsStackedDouble,
        swap: Assets.svg.icons.finance.coinsSwap,
    );
}

@immutable
class CCCreditCardFinanceIcon {
    final SvgGenImage main;
    final SvgGenImage check;
    final SvgGenImage down;
    final SvgGenImage edit;
    final SvgGenImage lock;
    final SvgGenImage minus;
    final SvgGenImage plus;
    final SvgGenImage refresh;
    final SvgGenImage search;
    final SvgGenImage shield;
    final SvgGenImage up;
    final SvgGenImage x;

    const CCCreditCardFinanceIcon._({
        required this.main,
        required this.check,
        required this.down,
        required this.edit,
        required this.lock,
        required this.minus,
        required this.plus,
        required this.refresh,
        required this.search,
        required this.shield,
        required this.up,
        required this.x,
    });

    factory CCCreditCardFinanceIcon.asset() => CCCreditCardFinanceIcon._(
        main: Assets.svg.icons.finance.creditCard,
        check: Assets.svg.icons.finance.creditCardCheck,
        down: Assets.svg.icons.finance.creditCardDown,
        edit: Assets.svg.icons.finance.creditCardEdit,
        lock: Assets.svg.icons.finance.creditCardLock,
        minus: Assets.svg.icons.finance.creditCardMinus,
        plus: Assets.svg.icons.finance.creditCardPlus,
        refresh: Assets.svg.icons.finance.creditCardRefresh,
        search: Assets.svg.icons.finance.creditCardSearch,
        shield: Assets.svg.icons.finance.creditCardShield,
        up: Assets.svg.icons.finance.creditCardUp,
        x: Assets.svg.icons.finance.creditCardX,
    );
}   

@immutable
class CCCurrencyFinanceIcon {
    final SvgGenImage cryptoCurrency;
    final SvgGenImage cryptoCurrencyAlt;
    final SvgGenImage cryptoCurrencyCircle;
    final SvgGenImage cryptoCurrencyCircleAlt;
    final SvgGenImage bitcoin;
    final SvgGenImage bitcoinCircle;
    final SvgGenImage dollar;
    final SvgGenImage dollarCircle;
    final SvgGenImage ethereum;
    final SvgGenImage ethereumCircle;
    final SvgGenImage rupiah;
    final SvgGenImage rupiahCircle;

    const CCCurrencyFinanceIcon._({
        required this.cryptoCurrency,
        required this.cryptoCurrencyAlt,
        required this.cryptoCurrencyCircle,
        required this.cryptoCurrencyCircleAlt,
        required this.bitcoin,
        required this.bitcoinCircle,
        required this.dollar,   
        required this.dollarCircle,
        required this.ethereum,
        required this.ethereumCircle,
        required this.rupiah,
        required this.rupiahCircle,
    });

    factory CCCurrencyFinanceIcon.asset() => CCCurrencyFinanceIcon._(   
        cryptoCurrency: Assets.svg.icons.finance.cryptocurrency,
        cryptoCurrencyAlt: Assets.svg.icons.finance.cryptocurrencyAlt,
        cryptoCurrencyCircle: Assets.svg.icons.finance.cryptocurrencyCircle,
        cryptoCurrencyCircleAlt: Assets.svg.icons.finance.cryptocurrencyCircleAlt,
        bitcoin: Assets.svg.icons.finance.currencyBitcoin,
        bitcoinCircle: Assets.svg.icons.finance.currencyBitcoinCircle,
        dollar: Assets.svg.icons.finance.currencyDollar,
        dollarCircle: Assets.svg.icons.finance.currencyDollarCircle,    
        ethereum: Assets.svg.icons.finance.currencyEthereum,
        ethereumCircle: Assets.svg.icons.finance.currencyEthereumCircle,
        rupiah: Assets.svg.icons.finance.currencyRupiah,
        rupiahCircle: Assets.svg.icons.finance.currencyRupiahCircle,
    );
}   

@immutable
class CCReceiptFinanceIcon {
    final SvgGenImage main;
    final SvgGenImage check;

    const CCReceiptFinanceIcon._({
        required this.main,
        required this.check,
    });

    factory CCReceiptFinanceIcon.asset() => CCReceiptFinanceIcon._(
        main: Assets.svg.icons.finance.receipt,
        check: Assets.svg.icons.finance.receiptCheck,
    );  
}

@immutable
class CCGiftFinanceIcon {
    final SvgGenImage box;
    final SvgGenImage diamond;

    const CCGiftFinanceIcon._({
        required this.box,
        required this.diamond,
    });

    factory CCGiftFinanceIcon.asset() => CCGiftFinanceIcon._(
        box: Assets.svg.icons.finance.giftBox,
        diamond: Assets.svg.icons.finance.diamond,
    );
}

@immutable
class CCShoppingFinanceIcon {
    final SvgGenImage bag;
    final SvgGenImage buy;
    final SvgGenImage cart;
    final SvgGenImage sell;
    final SvgGenImage sale;

    const CCShoppingFinanceIcon._({
        required this.bag,
        required this.buy,
        required this.cart,
        required this.sell,
        required this.sale,
    }); 

    factory CCShoppingFinanceIcon.asset() => CCShoppingFinanceIcon._(
        bag: Assets.svg.icons.finance.shoppingBag,
        buy: Assets.svg.icons.finance.shoppingBuy,
        cart: Assets.svg.icons.finance.shoppingCart,
        sell: Assets.svg.icons.finance.shoppingSell,
        sale: Assets.svg.icons.finance.sale,
    );  
}

@immutable
class CCWalletFinanceIcon {
    final SvgGenImage cardholder;
    final SvgGenImage main;

    const CCWalletFinanceIcon._({
        required this.cardholder,
        required this.main,
    });

    factory CCWalletFinanceIcon.asset() => CCWalletFinanceIcon._(
        cardholder: Assets.svg.icons.finance.cardholderWallet,
        main: Assets.svg.icons.finance.wallet,  
    );
}    

@immutable
class CCTagFinanceIcon {
    final SvgGenImage main;
    final SvgGenImage alt;

    const CCTagFinanceIcon._({
        required this.main,
        required this.alt,
    });

    factory CCTagFinanceIcon.asset() => CCTagFinanceIcon._(
        main: Assets.svg.icons.finance.tag,
        alt: Assets.svg.icons.finance.tagAlt,
    );
}
