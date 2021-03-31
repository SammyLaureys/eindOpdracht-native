import 'package:flutter/material.dart';
import 'data.dart' as lib;

void main() {
  runApp(Recipes());
}

class Recipes extends StatelessWidget {
  Widget build(BuildContext buildContext) => MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      body: RecipeTree(),
    ),
  );
}

int dishNumber;
class RecipeTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        child: RaisedButton(
          child: Icon(Icons.info),
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) => AlertDialog(
                title: Text('Hello there!'),
                content: Text('If you want some more info about the recipes, you can click them!'),
              )
          );},
        ),
      ),
      Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: GestureDetector(
                  onTap: () {
                    dishNumber = 0;
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailPage())
                    );
                  },
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
                          image: AssetImage('assets/images/RoastBeef.jpg'), // no matter how big it is, it won't overflow
                        ),
                        ListTile(
                          title: Text('ROAST BEEF WITH ONION',
                            style: TextStyle(color: Colors.white),),
                        ),
                      ],
                    ),
                  ),
                )
              ),
              Flexible(
                child: GestureDetector(
                  onTap: () {
                    dishNumber = 1;
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailPage())
                    );
                  },
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
                          image: AssetImage('assets/images/TortillaSoup.jpg'), // no matter how big it is, it won't overflow
                        ),
                        ListTile(
                          title: Text('TORTILLA SOUP WITH CHICKEN',
                            style: TextStyle(color: Colors.white),),
                        ),
                      ],
                    ),
                  ),
              ),
              ),
            ],
          ),
      ),
      Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: GestureDetector(
                  onTap: () {
                    dishNumber = 2;
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailPage())
                    );
                  },
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
                          image: AssetImage('assets/images/StuffedPork.jpg'), // no matter how big it is, it won't overflow
                        ),
                        ListTile(
                          title: Text('STUFFED PORK TENDERLOIN',
                            style: TextStyle(color: Colors.white),),
                        ),
                      ],
                    ),
                  ),
              ),
              ),
              Flexible(
                child: GestureDetector(
                  onTap: () {
                    dishNumber = 3;
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailPage())
                    );
                  },
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
                          image: AssetImage('assets/images/Beets.jpg'), // no matter how big it is, it won't overflow
                        ),
                        ListTile(
                          title: Text('MARINATED BEET AND CHICORY',
                            style: TextStyle(color: Colors.white),),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
      ),
    ]);
  }
}

class DetailPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("Detail page"),
          backgroundColor: Colors.blueAccent,
        ),
        body: new Container(
          child: new Column(
            children: [
              new Container(
                height: 250,
                width: 420,
                decoration: new BoxDecoration(
                  image: DecorationImage(
                      image: new AssetImage('assets/images/' + lib.dishes[dishNumber]['picture']),
                      fit: BoxFit.fill
                  ),
                ),
              ),
              new Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: new Text('ingredients:\n' + lib.dishes[dishNumber]['ingredient1'] + '\n' + lib.dishes[dishNumber]['ingredient2'] + '\n' + lib.dishes[dishNumber]['ingredient3'],
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Aleo',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0
                          ),
                        ),
                      ),
                      Flexible(
                        child: new Text('' + lib.dishes[dishNumber]['info'],
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Aleo',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0
                          ),
                        ),
                      ),
                    ],
                  )
                ),
            ],
          ),
        )
    );
  }
}








