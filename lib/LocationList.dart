import 'package:flutter/material.dart';

class LocationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Locations"), backgroundColor: Colors.redAccent,),
      backgroundColor: Colors.grey[200],
      body: ListView(
        children: <Widget>[
          _LocationItem(
            name: "AP Plaza",
            addressEn: "2000 Shiji DaDao, near Yingchun road",
            addressCn: "地铁2号线上海科技馆站内, 世纪大道2000号, 近迎春路",
            description: "The biggest fake market, inside the metro Science and Technology Museum station (line 2). Everything is fake there, you will need to bargain a lot and will probably have to walk away from a few stalls before getting the best price on what you are looking for. The market is huge, don’t get lost.",
            imageUrl: "ap_plaza_location",
            metroEn: "Metro: Shanghai Science and Technology Museum (line 2)",
          ),
          _LocationItem(
            name: "South Bund Fabric Market",
            addressEn: "399 jiabang Lu, near Nancang Jie",
            addressCn: "南外滩轻纺面料市场, 陆家浜路399号, 近南仓街 ",
            description: "A lot of tailors and seamstresses in the famous “Fabric Market”, the prime destination for clothing garments.",
            imageUrl: "south_bund_fabric_market_location",
            metroEn: "5 mins walk from Nanpu Bridge",
          ),
          _LocationItem(
            name: "Qipu Lu Clothing Market",
            addressEn: "168 Qipu Lu, near Henan Bei Lu",
            addressCn: "七浦路168号，近河南北路",
            description: "A street full of malls with really cheap clothes including fakes for good measure. The street is pretty crowded so early weekday mornings are recommended.",
            imageUrl: "qipu_lu",
            metroEn: "5 mins walk from Tiantong Rd",
          ),
          _LocationItem(
            name: "Yuyuan Garden",
            addressEn: "137 Anren Jie,near Fuyou Lu",
            addressCn: "豫园, 安仁街137号, 近福佑路",
            description: "Around Yuyuan garden you will find a lot of little shops selling everything from antiques, souvenirs, tea, clothes… Don’t forget to have a walk there, especially if you are visiting the garden. (Pretty crowded on weekends and golden week)",
            imageUrl: "yuyuan_garden_location",
            metroEn: "2 mins walk from Yu Garden ",
          )
        ],
      ),
    );
  }
}

class _LocationItem extends StatelessWidget {

  final String name;
  final String addressEn;
  final String addressCn;
  final String metroEn;
  final String description;
  final String imageUrl;

  const _LocationItem({
    @required this.name,
    @required this.addressEn,
    @required this.addressCn,
    @required this.metroEn,
    @required this.description,
    @required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 5, right: 5, bottom: 5),
          child: Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
        ),
        Image.asset("assets/locations/" + imageUrl + ".jpg"),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(description, style: TextStyle(fontStyle: FontStyle.italic),),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            Text("English address : ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
            Expanded(child: Text(addressEn, style: TextStyle(fontSize: 15),))
          ],),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            Text("Chinese address : ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
            Expanded(child: Text(addressCn, style: TextStyle(fontSize: 15),))
          ],),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            Text("Metro : ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
            Expanded(child: Text(metroEn, style: TextStyle(fontSize: 15),))
          ],),
        ),
      ],
    );
  }
}