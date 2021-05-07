class Currency {
  const Currency(
    this.name, [
    this.symbol,
    this.isoCode,
    this.fractUnit,
  ]);

  ///[name] define the currency name: Euro, Dollars.
  final String name;

  ///[symbol] define the currency symbol: €, $.
  final String? symbol;

  ///[isoCode] is like short name example: EUR, USD.
  final String? isoCode;

  ///[fractUnit] define the name of the fractUnit example:
  /// 1.20 is readed as: One **Euro** and twenty **cent**.
  final String? fractUnit;
}
