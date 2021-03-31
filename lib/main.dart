import 'package:flutter/material.dart';
import 'package:gordon_ramsay/restaurants.dart';

import 'gordon.dart';
import 'recipes.dart';
import 'restaurants.dart';
import 'extra.dart';

void main() {
  runApp(GordonApp());
}

class GordonApp extends StatelessWidget {
  Widget build(BuildContext buildContext) => MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      body: MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              title: Text("Gordon Ramsay"),
            ),
            bottomNavigationBar: TabBar(
                indicatorColor: Colors.blueAccent,
                labelColor: Colors.blueAccent,
                tabs: [
                  Tab(icon:Icon(Icons.home), text:"Home"),
                  Tab(icon:Icon(Icons.food_bank_sharp), text:"Restaurants"),
                  Tab(icon:Icon(Icons.fastfood_sharp), text:"Recipes"),
                  Tab(icon:Icon(Icons.access_alarm), text:"Extra"),
                ]
            ),
            body: TabBarView(
              children: [
                Gordon(),
                Restaurants(),
                Recipes(),
                Extra(),
              ],
            )
        )
    );
  }
}








