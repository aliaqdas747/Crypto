class CryptoCurrency {
  ///In this class every instance will store the related
  ///data like id will stores the ids of coins
  String? id;
  String? symbol;
  String? name;
  String? image;
  double? currentPrice;
  double? marketCap;
  int? marketCapRank;
  double? high24hr;
  double? low24hr;
  double? priceChange24;
  double? priceChangePercentage24;
  double? circulatingSupply;
  double? ath;
  double? atl;

  //Initialization

  CryptoCurrency(
  {
    ///The class has a constructor that initializes all these properties.
    /// It requires values for all properties except for id, symbol, name,
    /// and image, which are marked as required parameters in the constructor.
  required this.id,required this.symbol,required this.name,
    required this.image,required this.currentPrice,required this.marketCap,
    required this.marketCapRank, required this.high24hr,required this.low24hr,
    required this.priceChange24,required this.priceChangePercentage24,
    required this.circulatingSupply,required this.ath,required this.atl,});





  ///The fromJSON factory method is used to create an instance
  /// of CryptoCurrency from a JSON map. It takes a Map<String,
  /// dynamic> as input and extracts values from it to populate
  ///the properties of the CryptoCurrency object.

  factory CryptoCurrency.fromJSON(Map<String,dynamic> map){
  return CryptoCurrency(
  id: map['id'],
  symbol: map['symbol'],
  name: map['name'],
  image: map['image'],
  currentPrice: map['current_price'].toDouble(),
  marketCap: map['market_cap'].toDouble(),
  marketCapRank: map['market_cap_rank'],
  high24hr: map['high_24h'].toDouble(),
  low24hr: map['low_24h'].toDouble(),
  priceChange24: map['price_change_24h'].toDouble(),
  priceChangePercentage24: map['price_change_percentage_24h'].toDouble(),
  circulatingSupply: map['circulating_supply'].toDouble(),
  ath: map['ath'].toDouble(),
  atl: map['atl'].toDouble(),
  );
  }

}



