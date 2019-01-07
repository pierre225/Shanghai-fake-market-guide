import 'package:flutter/material.dart';

class LocationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Locations"), backgroundColor: Colors.redAccent,),
      backgroundColor: Colors.deepOrangeAccent,
      body: ,
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
    return null;
  }
}