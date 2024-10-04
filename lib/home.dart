import 'package:flutter/material.dart';
import 'package:hommy/component/nearhouse.dart';
import 'package:hommy/component/toppick.dart';
import 'package:hommy/data/houses.dart';
import 'package:hommy/data/near_houses.dart';

class Home extends StatelessWidget {
  List<Houses> housesList = Houses.houseList;
  List<Naerhouses> nearHouseList = Naerhouses.nearhouseList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          // Pastikan ini dibungkus Expanded jika ada ListView di dalam TopPick
          Toppick(houseList: housesList),

          Nearhouse(nearhouseList: nearHouseList)
        ],
      ),
    );
  }
}
