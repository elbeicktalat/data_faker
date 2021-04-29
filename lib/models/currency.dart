class Currency {
  Currency(
    this.name, [
    this.symbol,
    this.isoCode,
    this.fractUnit,
  ]);

  ///[name] define the currency name: Euro, Dollars.
  String name;

  ///[symbol] define the currency symbol: €, $.
  String? symbol;

  ///[isoCode] is like short name example: EUR, USD.
  String? isoCode;

  ///[fractUnit] define the name of the fractUnit example:
  /// 1.20 is readed as: One **Euro** and twenty **cent**.
  String? fractUnit;
}
