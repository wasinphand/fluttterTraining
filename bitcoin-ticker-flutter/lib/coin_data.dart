import 'package:http/http.dart' as http;
import 'dart:convert';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];
const bitcoinAverageURL =
    'https://apiv2.bitcoinaverage.com/indices/global/ticker';

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  Future getCoinData(String selCur) async{
    Map<String,String> cryptoPrice = {};
    for (String crypto in cryptoList){
      String requestURL = '$bitcoinAverageURL/$crypto$selCur';
      http.Response response = await http.get(requestURL);
    // print(response.body);
      if(response.statusCode == 200){
        var decode = jsonDecode(response.body);
      //  print(decode);
        double lastPrice = decode['last'];
        //print(lastPrice.toStringAsFixed(0));
        cryptoPrice[crypto] = lastPrice.toString();
      }else{
        print(response.statusCode);
        print('error naja');

      }

    }
    return cryptoPrice;

  }
}
