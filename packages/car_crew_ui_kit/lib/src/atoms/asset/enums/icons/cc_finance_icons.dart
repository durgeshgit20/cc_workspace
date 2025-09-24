part of 'cc_icons.dart';

enum CCFinanceIcons implements CCIcons {
  bank,
  bankNote,
  chartBar,
  chartBarAlt,
  chartBarLine,
  chartBreakoutCircle,
  chartCandlestick,
  chartHorizontalBar,
  chartLineDown,
  chartLineUp,
  chartPie,
  coin,
  coinHand,
  coinMinus,
  coinPlus,
  coinStacked,
  coinStackedDouble,
  coinSwap,
  creditCard,
  creditCardCheck,
  creditCardDown,
  creditCardEdit,
  creditCardLock,
  creditCardMinus,
  creditCardPlus,
  creditCardRefresh,
  creditCardSearch,
  creditCardShield,
  creditCardUp,
  creditCardX,
  cryptoCurrency,
  cryptoCurrencyAlt,
  cryptoCurrencyCircle,
  cryptoCurrencyCircleAlt,
  currencyBitcoin,
  currencyBitcoinCircle,
  currencyDollar,
  currencyDollarCircle,
  currencyEthereum,
  currencyEthereumCircle,
  currencyRupiah,
  currencyRupiahCircle,
  giftBox,
  giftDiamond,
  qrCode,
  receipt,
  receiptCheck,
  safe,
  scales,
  shoppingBag,
  shoppingBuy,
  shoppingCart,
  shoppingSale,
  shoppingSell,
  tag,
  tagAlt,
  wallet,
  walletCardholder,
  ;

  @override
  CCAssetData<SvgGenImage> get data => switch (this) {
        bank => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.bank.main,
            type: CCAssetType.svg,
          ),
        bankNote => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.bank.bankNote,
            type: CCAssetType.svg,
          ),
        chartBar => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.chart.bar,
            type: CCAssetType.svg,
          ),
        chartBarAlt => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.chart.barAlt,
            type: CCAssetType.svg,
          ),
        chartBarLine => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.chart.barLine,
            type: CCAssetType.svg,
          ),
        chartBreakoutCircle => CCAssetData<SvgGenImage>(
            file: (context) =>
                context.ccAsset.svg.icon.finance.chart.breakoutCircle,
            type: CCAssetType.svg,
          ),
        chartCandlestick => CCAssetData<SvgGenImage>(
            file: (context) =>
                context.ccAsset.svg.icon.finance.chart.candlestick,
            type: CCAssetType.svg,
          ),
        chartHorizontalBar => CCAssetData<SvgGenImage>(
            file: (context) =>
                context.ccAsset.svg.icon.finance.chart.horizontalBar,
            type: CCAssetType.svg,
          ),
        chartLineDown => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.chart.lineDown,
            type: CCAssetType.svg,
          ),
        chartLineUp => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.chart.lineUp,
            type: CCAssetType.svg,
          ),
        chartPie => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.chart.pie,
            type: CCAssetType.svg,
          ),
        coin => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.coin.main,
            type: CCAssetType.svg,
          ),
        coinHand => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.coin.hand,
            type: CCAssetType.svg,
          ),
        coinMinus => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.coin.minus,
            type: CCAssetType.svg,
          ),
        coinPlus => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.coin.plus,
            type: CCAssetType.svg,
          ),
        coinStacked => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.coin.stacked,
            type: CCAssetType.svg,
          ),
        coinStackedDouble => CCAssetData<SvgGenImage>(
            file: (context) =>
                context.ccAsset.svg.icon.finance.coin.stackedDouble,
            type: CCAssetType.svg,
          ),
        coinSwap => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.coin.swap,
            type: CCAssetType.svg,
          ),
        creditCard => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.creditCard.main,
            type: CCAssetType.svg,
          ),
        creditCardCheck => CCAssetData<SvgGenImage>(
            file: (context) =>
                context.ccAsset.svg.icon.finance.creditCard.check,
            type: CCAssetType.svg,
          ),
        creditCardDown => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.creditCard.down,
            type: CCAssetType.svg,
          ),
        creditCardEdit => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.creditCard.edit,
            type: CCAssetType.svg,
          ),
        creditCardLock => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.creditCard.lock,
            type: CCAssetType.svg,
          ),
        creditCardMinus => CCAssetData<SvgGenImage>(
            file: (context) =>
                context.ccAsset.svg.icon.finance.creditCard.minus,
            type: CCAssetType.svg,
          ),
        creditCardPlus => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.creditCard.plus,
            type: CCAssetType.svg,
          ),
        creditCardRefresh => CCAssetData<SvgGenImage>(
            file: (context) =>
                context.ccAsset.svg.icon.finance.creditCard.refresh,
            type: CCAssetType.svg,
          ),
        creditCardSearch => CCAssetData<SvgGenImage>(
            file: (context) =>
                context.ccAsset.svg.icon.finance.creditCard.search,
            type: CCAssetType.svg,
          ),
        creditCardShield => CCAssetData<SvgGenImage>(
            file: (context) =>
                context.ccAsset.svg.icon.finance.creditCard.shield,
            type: CCAssetType.svg,
          ),
        creditCardUp => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.creditCard.up,
            type: CCAssetType.svg,
          ),
        creditCardX => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.creditCard.x,
            type: CCAssetType.svg,
          ),
        cryptoCurrency => CCAssetData<SvgGenImage>(
            file: (context) =>
                context.ccAsset.svg.icon.finance.currency.cryptoCurrency,
            type: CCAssetType.svg,
          ),
        cryptoCurrencyAlt => CCAssetData<SvgGenImage>(
            file: (context) =>
                context.ccAsset.svg.icon.finance.currency.cryptoCurrencyAlt,
            type: CCAssetType.svg,
          ),
        cryptoCurrencyCircle => CCAssetData<SvgGenImage>(
            file: (context) =>
                context.ccAsset.svg.icon.finance.currency.cryptoCurrencyCircle,
            type: CCAssetType.svg,
          ),
        cryptoCurrencyCircleAlt => CCAssetData<SvgGenImage>(
            file: (context) => context
                .ccAsset.svg.icon.finance.currency.cryptoCurrencyCircleAlt,
            type: CCAssetType.svg,
          ),
        currencyBitcoin => CCAssetData<SvgGenImage>(
            file: (context) =>
                context.ccAsset.svg.icon.finance.currency.bitcoin,
            type: CCAssetType.svg,
          ),
        currencyBitcoinCircle => CCAssetData<SvgGenImage>(
            file: (context) =>
                context.ccAsset.svg.icon.finance.currency.bitcoinCircle,
            type: CCAssetType.svg,
          ),
        currencyDollar => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.currency.dollar,
            type: CCAssetType.svg,
          ),
        currencyDollarCircle => CCAssetData<SvgGenImage>(
            file: (context) =>
                context.ccAsset.svg.icon.finance.currency.dollarCircle,
            type: CCAssetType.svg,
          ),
        currencyEthereum => CCAssetData<SvgGenImage>(
            file: (context) =>
                context.ccAsset.svg.icon.finance.currency.ethereum,
            type: CCAssetType.svg,
          ),
        currencyEthereumCircle => CCAssetData<SvgGenImage>(
            file: (context) =>
                context.ccAsset.svg.icon.finance.currency.ethereumCircle,
            type: CCAssetType.svg,
          ),
        currencyRupiah => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.currency.rupiah,
            type: CCAssetType.svg,
          ),
        currencyRupiahCircle => CCAssetData<SvgGenImage>(
            file: (context) =>
                context.ccAsset.svg.icon.finance.currency.rupiahCircle,
            type: CCAssetType.svg,
          ),
        giftBox => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.gift.box,
            type: CCAssetType.svg,
          ),
        giftDiamond => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.gift.diamond,
            type: CCAssetType.svg,
          ),
        qrCode => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.qrCode,
            type: CCAssetType.svg,
          ),
        receipt => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.receipt.main,
            type: CCAssetType.svg,
          ),
        receiptCheck => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.receipt.check,
            type: CCAssetType.svg,
          ),
        safe => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.safe,
            type: CCAssetType.svg,
          ),
        scales => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.scales,
            type: CCAssetType.svg,
          ),
        shoppingBag => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.shopping.bag,
            type: CCAssetType.svg,
          ),
        shoppingBuy => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.shopping.buy,
            type: CCAssetType.svg,
          ),
        shoppingCart => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.shopping.cart,
            type: CCAssetType.svg,
          ),
        shoppingSale => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.shopping.sale,
            type: CCAssetType.svg,
          ),
        shoppingSell => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.shopping.sell,
            type: CCAssetType.svg,
          ),
        tag => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.tag.main,
            type: CCAssetType.svg,
          ),
        tagAlt => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.tag.alt,
            type: CCAssetType.svg,
          ),
        wallet => CCAssetData<SvgGenImage>(
            file: (context) => context.ccAsset.svg.icon.finance.wallet.main,
            type: CCAssetType.svg,
          ),
        walletCardholder => CCAssetData<SvgGenImage>(
            file: (context) =>
                context.ccAsset.svg.icon.finance.wallet.cardholder,
            type: CCAssetType.svg,
          ),
      };
}
