import 'package:flutter/material.dart';

void main() {
  runApp(Info());
}

class Info extends StatelessWidget {
  Widget build(BuildContext buildContext) => MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      body: InfoTree(),
    ),
  );
}

class InfoTree extends StatefulWidget {
  InfoTreeState createState() => InfoTreeState();
}

class InfoTreeState extends State<InfoTree> {


  Widget build(BuildContext context) {
    return new Container(
      child: SingleChildScrollView(
        child: new Column(
          children: <Widget> [
            Row(
              children: [
                Center(child:Container(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: Text('TV-Shows',
                        style: TextStyle(fontSize: 22)))),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  Flexible(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: [
                            Image(
                              height: 100,
                              image: AssetImage('assets/images/F_WORD.jpg'),
                            ),
                            Image(
                              height: 100,
                              image: AssetImage('assets/images/hk.jpg'),
                            ),
                            Image(
                              height: 100,
                              image: AssetImage('assets/images/Hotel_Hell.png'),
                            ),
                            Image(
                              height: 100,
                              image: AssetImage('assets/images/kn.jpg'),
                            ),
                            Image(
                              height: 100,
                              image: AssetImage('assets/images/Masterchef-logo.png'),
                            ),
                          ]
                      ),
                    ),
                  ),
              ],
            ),
            Row(
              children: [
                Center(child:Container(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: Text('Family',
                        style: TextStyle(fontSize: 22)))),
              ],
            ),
            Row(
              children: [
                  Expanded(
                      flex: 5,
                    child: (
                        Card(
                          child: Container(
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/images/tilly.jpg"))),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 170.0),
                              child: Text('Mathilda', style: TextStyle(fontSize: 26, color: Colors.white)),
                            ),
                          ),
                          margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
                        )
                    )
                  ),
                Expanded(
                    flex: 5,
                    child: (
                        Card(
                          child: Container(
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/images/Jack.jpg"))),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 170.0),
                              child: Text('Jack', style: TextStyle(fontSize: 26, color: Colors.white)),
                            ),
                          ),
                          margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
                        )
                    )
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    flex: 5,
                    child: (
                        Card(
                          child: Container(
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/images/megan.jpg"),
                                )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 170.0),
                              child: Text('Megan', style: TextStyle(fontSize: 26, color: Colors.white)),
                            ),
                          ),
                          margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0, bottom: 30.0),
                        )
                    )
                ),
                Expanded(
                    flex: 5,
                    child: (
                        Card(
                          child: Container(
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/images/holly.jpg"))),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 170.0),
                              child: Text('Holly', style: TextStyle(fontSize: 26, color: Colors.white)),
                            ),
                          ),
                          margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0, bottom: 30.0),
                        )
                    )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}