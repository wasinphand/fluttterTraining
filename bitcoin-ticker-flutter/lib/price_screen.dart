import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'coin_data.dart';
class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selected = 'BRL';
  Map<String, String> coinValues = {};
  bool isWaiting = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  void getData() async {
    isWaiting = true;
    try {
      var data = await CoinData().getCoinData(selected);
      isWaiting = false;
      setState(() {
        coinValues = data;
      });
    } catch (e) {
      print(e);
    }
  }

  Column makeCards() {
    List<CryptoCard> cryptoCards = [];
    for(String cryto in cryptoList){
      cryptoCards.add(
        CryptoCard(
          value: coinValues[cryto],
          selectedCurrency: selected,
          cryptoCurrency: cryto,
        ),
      );
    }
    return Column(
      children: cryptoCards,
    );
  }
  CupertinoPicker handleWithScroll(){
    List<Text> scr = [];
    for(String ls in currenciesList){
      scr.add(Text(ls));
    }


    return CupertinoPicker(
       children: scr,
       onSelectedItemChanged: (selectIndex){
         setState(() {
           selected = currenciesList[selectIndex];
           getData();
         });
       },
      itemExtent: 30.0,

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          makeCards(),


          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: handleWithScroll()
          ),
        ],
      ),
    );
  }
}


class CryptoCard extends StatelessWidget {
  CryptoCard({
    this.value,
    this.selectedCurrency,
    this.cryptoCurrency,
  });
  final String value;
  final String selectedCurrency;
  final String cryptoCurrency;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
      child: Card(
        color: Colors.lightBlueAccent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
          child: Text(
            '1 $cryptoCurrency = $value $selectedCurrency',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
