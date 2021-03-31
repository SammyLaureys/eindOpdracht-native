import 'package:flutter/material.dart';

void main() {
  runApp(Restaurants());
}

class Restaurants extends StatelessWidget {
  Widget build(BuildContext buildContext) => MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      body: RestaurantTree(),
    ),
  );
}

class RestaurantTree extends StatefulWidget {
  RestaurantTreeState createState() => RestaurantTreeState();
}

class RestaurantTreeState extends State<RestaurantTree> {
  Map<String, String> RestoMap = { "Gordon Ramsay": 'Holding three Michelin stars, Gordon Ramsay’s flagship restaurant on Royal Hospital Road showcases elegant modern French cuisine, the finest seasonal ingredients, and both classic and innovative culinary techniques.', 'Petrus': 'Enjoy exceptional Michelin star dining at Pétrus by Gordon Ramsay in the heart of Belgravia, from seasonal tasting menus to unique Kitchen Table experiences, don’t forget to sample the extensive wine list from the cellar.'};
  Map<String, String> RestoPicMap = { "Gordon Ramsay": 'assets/images/resto.jpg', 'Petrus': 'assets/images/resto2.jpg'};
  String keuzeResto = 'Gordon Ramsay';

  Widget build(BuildContext context) {
    List<DropdownMenuItem<String>> opties = List<DropdownMenuItem<String>>();
    RestoMap.keys.forEach((element) {
      opties.add(DropdownMenuItem(child: Text(element), value: element));
    });

    return Column (children:<Widget>[
      Container(
          margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 25.0),
          child: Text("Star restaurants",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
      ),
      Container(
          margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 25.0),
          child: DropdownButton<String>(
            items: opties,
            value: keuzeResto,
            onChanged: (value) {
              setState(() {
                keuzeResto = value;
              });
            },
          )
      ),
      Container(
        child: Card(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 25.0),
          color: Colors.black38,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image(
                image: AssetImage(
                    RestoPicMap[keuzeResto]), // no matter how big it is, it won't overflow
              ),
              ListTile(
                title: Text(RestoMap[keuzeResto],
                style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}