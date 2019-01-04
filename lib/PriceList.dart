import 'package:flutter/material.dart';
import 'package:shanghai/common/RoundBackground.dart';

class PriceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Price List"),
          backgroundColor: Colors.green,
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              Container(
                  child: Text("clothes",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  color: Colors.green),
              PriceItem(
                  itemName: "chaussure",
                  imageUri: "ic_casualshoes.png",
                  price: "20",
                  outsideColor: Colors.green),
              PriceItem(
                  itemName: "dvd",
                  imageUri: "ic_film.png",
                  price: "40",
                  outsideColor: Colors.green),
              PriceItem(
                  itemName: "coat",
                  imageUri: "ic_coat.png",
                  price: "60",
                  outsideColor: Colors.green),
              PriceItem(
                  itemName: "flashlight",
                  imageUri: "ic_flashlight.png",
                  price: "90",
                  outsideColor: Colors.green),
              PriceItem(
                  itemName: "crocs",
                  imageUri: "ic_crocs.png",
                  price: "8000",
                  outsideColor: Colors.green),
              PriceItem(
                  itemName: "crocs",
                  imageUri: "ic_crocs.png",
                  price: "8000",
                  outsideColor: Colors.green),
              PriceItem(
                  itemName: "crocs",
                  imageUri: "ic_crocs.png",
                  price: "8000",
                  outsideColor: Colors.green),
              PriceItem(
                  itemName: "crocs",
                  imageUri: "ic_crocs.png",
                  price: "8000",
                  outsideColor: Colors.green),
              PriceItem(
                  itemName: "crocs",
                  imageUri: "ic_crocs.png",
                  price: "8000",
                  outsideColor: Colors.green),
              PriceItem(
                  itemName: "hoodies",
                  imageUri: "ic_hoodies.png",
                  price: "4",
                  outsideColor: Colors.green),
              Container(
                  child: Text("Electronics",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  color: Colors.red),
              PriceItem(
                  itemName: "crocs",
                  imageUri: "ic_crocs.png",
                  price: "8000",
                  outsideColor: Colors.red),
              PriceItem(
                  itemName: "crocs",
                  imageUri: "ic_crocs.png",
                  price: "8000",
                  outsideColor: Colors.red),
              PriceItem(
                  itemName: "crocs",
                  imageUri: "ic_crocs.png",
                  price: "8000",
                  outsideColor: Colors.red),
              PriceItem(
                  itemName: "crocs",
                  imageUri: "ic_crocs.png",
                  price: "8000",
                  outsideColor: Colors.red),
              PriceItem(
                  itemName: "crocs",
                  imageUri: "ic_crocs.png",
                  price: "8000",
                  outsideColor: Colors.red),
              PriceItem(
                  itemName: "crocs",
                  imageUri: "ic_crocs.png",
                  price: "8000",
                  outsideColor: Colors.red),
              PriceItem(
                  itemName: "crocs",
                  imageUri: "ic_crocs.png",
                  price: "8000",
                  outsideColor: Colors.red),
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
    );
  }
}
