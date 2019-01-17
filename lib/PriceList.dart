import 'package:flutter/material.dart';
import 'package:shanghai/common/RoundBackground.dart';

class PriceList extends StatelessWidget {
  final Color clothesColor = Colors.green;
  final Color electronicColor = Colors.yellow;
  final Color otherColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Price List"),
          backgroundColor: Colors.green[700],
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              // Clothes
              Container(child: Text(
                      "Clothes",
                      textAlign: TextAlign.center, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)), color: clothesColor),
              PriceItem(
                  itemName: "T-shirt (basic)",
                  imageUri: "ic_teeshirtsimple.png",
                  price: "30 - 40",
                  outsideColor: clothesColor),
              PriceItem(
                  itemName: "T-shirt (good)",
                  imageUri: "ic_teeshirtgood.png",
                  price: "40 - 50",
                  outsideColor: clothesColor),
              PriceItem(
                  itemName: "Polo",
                  imageUri: "ic_polo.png",
                  price: "40 - 60",
                  outsideColor: clothesColor),
              PriceItem(
                  itemName: "Traditional dress",
                  imageUri: "ic_traditionaldress.png",
                  price: "120 - 140",
                  outsideColor: clothesColor),
              PriceItem(
                  itemName: "Hoodies",
                  imageUri: "ic_hoodies.png",
                  price: "90 - 110",
                  outsideColor: clothesColor),
              PriceItem(
                  itemName: "Trousers (jeans)",
                  imageUri: "ic_jeans.png",
                  price: "60 - 100",
                  outsideColor: clothesColor),
              PriceItem(
                  itemName: "Trousers (dressed)",
                  imageUri: "ic_dresspants.png",
                  price: "100 - 120",
                  outsideColor: clothesColor),
              PriceItem(
                  itemName: "Shoes (basic converses)",
                  imageUri: "ic_casualshoes.png",
                  price: "60 - 80",
                  outsideColor: clothesColor),
              PriceItem(
                  itemName: "Sport shoes",
                  imageUri: "ic_sportshoes.png",
                  price: "90 - 110",
                  outsideColor: clothesColor),
              PriceItem(
                  itemName: "Dress shoes",
                  imageUri: "ic_dressshoes.png",
                  price: "150 - 250",
                  outsideColor: clothesColor),
              PriceItem(
                  itemName: "Uggs",
                  imageUri: "ic_uggs.png",
                  price: "130 - 140",
                  outsideColor: clothesColor),
              PriceItem(
                  itemName: "Crocs",
                  imageUri: "ic_crocs.png",
                  price: "25 - 30",
                  outsideColor: clothesColor),
              PriceItem(
                  itemName: "Socks",
                  imageUri: "ic_socks.png",
                  price: "6 - 7",
                  outsideColor: clothesColor),
              PriceItem(
                  itemName: "Underweare",
                  imageUri: "ic_maleunderwear.png",
                  price: "8 - 10",
                  outsideColor: clothesColor),
              PriceItem(
                  itemName: "Belt",
                  imageUri: "ic_belt.png",
                  price: "30 - 40",
                  outsideColor: clothesColor),
              PriceItem(
                  itemName: "Cap",
                  imageUri: "ic_cap.png",
                  price: "30 - 40",
                  outsideColor: clothesColor),
              PriceItem(
                  itemName: "Sport shirts",
                  imageUri: "ic_sportshirt.png",
                  price: "70 - 100",
                  outsideColor: clothesColor),
              PriceItem(
                  itemName: "Scarf",
                  imageUri: "ic_scarf.png",
                  price: "20 - 40",
                  outsideColor: clothesColor),
              PriceItem(
                  itemName: "Bags",
                  imageUri: "ic_bag.png",
                  price: "60 - 70",
                  outsideColor: clothesColor),
              PriceItem(
                  itemName: "Backpack bags",
                  imageUri: "ic_backpack.png",
                  price: "80 - 100",
                  outsideColor: clothesColor),
              PriceItem(
                  itemName: "Suitcase (wheels)",
                  imageUri: "ic_suitcase.png",
                  price: "100 - 200",
                  outsideColor: clothesColor),
              PriceItem(
                  itemName: "Wallets",
                  imageUri: "ic_wallet.png",
                  price: "40 - 50",
                  outsideColor: clothesColor),
              PriceItem(
                  itemName: "Coat",
                  imageUri: "ic_coat.png",
                  price: "250 - 500",
                  outsideColor: clothesColor),
              PriceItem(
                  itemName: "Ties",
                  imageUri: "ic_tie.png",
                  price: "15 - 20",
                  outsideColor: clothesColor),
              PriceItem(
                  itemName: "Purse",
                  imageUri: "ic_purse.png",
                  price: "100 - 200",
                  outsideColor: clothesColor),

              Container(child: Text(
                  "Electronics",
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)), color: electronicColor),
              PriceItem(
                  itemName: "Dvd",
                  imageUri: "ic_film.png",
                  price: "8 - 10",
                  outsideColor: electronicColor),
              PriceItem(
                  itemName: "Software",
                  imageUri: "ic_softwaregames.png",
                  price: "12 - 17",
                  outsideColor: electronicColor),
              PriceItem(
                  itemName: "Games",
                  imageUri: "ic_softwaregames.png",
                  price: "10 - 15",
                  outsideColor: electronicColor),
              PriceItem(
                  itemName: "RC devices (small)",
                  imageUri: "ic_rcdevicesmall.png",
                  price: "80 - 100",
                  outsideColor: electronicColor),
              PriceItem(
                  itemName: "RC devices (big)",
                  imageUri: "ic_rcdevicebig.png",
                  price: "100 - 130",
                  outsideColor: electronicColor),
              PriceItem(
                  itemName: "Charger (iPhone / android)",
                  imageUri: "ic_carger.png",
                  price: "20 - 25",
                  outsideColor: electronicColor),
              PriceItem(
                  itemName: "Tablet cover",
                  imageUri: "ic_tabletcover.png",
                  price: "30 - 40",
                  outsideColor: electronicColor),
              PriceItem(
                  itemName: "Phone cover",
                  imageUri: "ic_phonecover.png",
                  price: "20 - 25",
                  outsideColor: electronicColor),
              PriceItem(
                  itemName: "headphone",
                  imageUri: "ic_headphone.png",
                  price: "100 - 120",
                  outsideColor: electronicColor),
              PriceItem(
                  itemName: "speakers",
                  imageUri: "ic_speakers.png",
                  price: "40 - 70",
                  outsideColor: electronicColor),
              PriceItem(
                  itemName: "flashlight",
                  imageUri: "ic_flashlight.png",
                  price: "15 - 20",
                  outsideColor: electronicColor),
              PriceItem(
                  itemName: "laser",
                  imageUri: "ic_laser.png",
                  price: "20 - 40",
                  outsideColor: electronicColor),
              PriceItem(
                  itemName: "lighter",
                  imageUri: "ic_lighter.png",
                  price: "5 - 10",
                  outsideColor: electronicColor),


              Container(child: Text(
                  "Others",
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)), color: otherColor),
              PriceItem(
                  itemName: "Binoculars",
                  imageUri: "ic_binoculars.png",
                  price: "60 - 100",
                  outsideColor: otherColor),
              PriceItem(
                  itemName: "Kites",
                  imageUri: "ic_kite.png",
                  price: "50 - 60",
                  outsideColor: otherColor),
              PriceItem(
                  itemName: "E cigarette",
                  imageUri: "ic_ecigarette.png",
                  price: "50 - 60",
                  outsideColor: otherColor),
              PriceItem(
                  itemName: "Cards",
                  imageUri: "ic_cards.png",
                  price: "7 - 9",
                  outsideColor: otherColor),
              PriceItem(
                  itemName: "Chinese knot",
                  imageUri: "ic_chineseknot.png",
                  price: "7 - 9",
                  outsideColor: otherColor),
              PriceItem(
                  itemName: "Shots",
                  imageUri: "ic_shot.png",
                  price: "10 - 15",
                  outsideColor: otherColor),
              PriceItem(
                  itemName: "Set of chopsticks",
                  imageUri: "ic_chopsticks.png",
                  price: "30 - 40",
                  outsideColor: otherColor),
              PriceItem(
                  itemName: "Tea-set",
                  imageUri: "ic_tea_set.png",
                  price: "50 - 80",
                  outsideColor: otherColor),
              PriceItem(
                  itemName: "Posters",
                  imageUri: "ic_poster.png",
                  price: "5 - 10",
                  outsideColor: otherColor),
              PriceItem(
                  itemName: "Chinese fan",
                  imageUri: "ic_chinesefan.png",
                  price: "10 - 20",
                  outsideColor: otherColor),
              PriceItem(
                  itemName: "Key chain",
                  imageUri: "ic_keychain.png",
                  price: "10 - 15",
                  outsideColor: otherColor),
              PriceItem(
                  itemName: "Notebook",
                  imageUri: "ic_notebook.png",
                  price: "35 - 40",
                  outsideColor: otherColor),
              PriceItem(
                  itemName: "Pen",
                  imageUri: "ic_pen.png",
                  price: "15 - 25",
                  outsideColor: otherColor),
              PriceItem(
                  itemName: "Watch (basic)",
                  imageUri: "ic_watchsimple.png",
                  price: "20 - 25",
                  outsideColor: otherColor),
              PriceItem(
                  itemName: "Watch (good)",
                  imageUri: "ic_watchgood.png",
                  price: "100 - 130",
                  outsideColor: otherColor),
            ],
          ),
        ));
  }
}

class PriceItem extends StatelessWidget {
  final String itemName;
  final String imageUri;
  final String price;
  final Color outsideColor;

  const PriceItem(
      {@required this.itemName,
      @required this.outsideColor,
      @required this.imageUri,
      @required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RoundBackground(
        radius: 25,
        insideColor: Colors.white,
        outsideColor: outsideColor,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      itemName,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(price + " RMB",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black87,
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.italic))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25, top: 5, bottom: 5),
                child: Image.asset("assets/items/" + imageUri,
                    width: 65, height: 65),
              )
            ],
          ),
        ),
      ),
    );
  }
}
