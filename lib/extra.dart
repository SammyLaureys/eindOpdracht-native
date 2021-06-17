import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(Extra());
}

class Extra extends StatelessWidget {
  Widget build(BuildContext buildContext) => MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      resizeToAvoidBottomInset: false,
      body: ExtraTree(),
    ),
  );
}

class ExtraTree extends StatefulWidget {
  ExtraTreeState createState() => ExtraTreeState();
}


class ExtraTreeState extends State<ExtraTree>{
  bool zichtbaar = false;
  String tekst = '';
  double breedte = 100;
  double hoogte = 100;
  Color kleur = Colors.green;
  dynamic border = BorderRadius.circular(5.0);


  Widget build(BuildContext context) {
    return new Container(
        child: SingleChildScrollView(
          child: new Column(
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: <Widget>[
            Row(children: <Widget>[
              Radio(
                value: false,
                groupValue: zichtbaar,
                onChanged: (bool value) {
                  setState(() {
                    zichtbaar = value;
                  });
                },
              ),
              Text('verberg Image'),
            ]),
            Row(children: <Widget>[
              Radio(
                value: true,
                groupValue: zichtbaar,
                onChanged: (bool value) {
                  setState(() {
                    zichtbaar = value;
                  });
                },
              ),
              Text('toon Image'),
            ])
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: <Widget>[
            Container(
              width: 300,
              margin: EdgeInsets.symmetric(vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: InputBorder.none,
                    hintText: 'Voer hier je naam in'
                ),
                onSubmitted: (tekstinvoer) {
                  tekst = tekstinvoer;
                  showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        title: Text('Hello there! ' + tekst),
                        content: Text('This is just to show that i can use inputfields'),
                      )
                  );
                },
              ),
            ),
          ]),
          Center(child:
          Visibility(
              child: Image(
                height: 100,
                image: AssetImage('assets/images/hk.jpg'),
                  ),
                  visible: zichtbaar)
          ),
          Center(
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (breedte==100) {
                        kleur = Colors.amber;
                        breedte = 200;
                        hoogte = 200;
                        border = BorderRadius.circular(100.0);
                      } else {
                        kleur = Colors.orange;
                        breedte = 100;
                        hoogte = 100;
                        border = BorderRadius.circular(5.0);
                      }
                    });
                  },
                  child: AnimatedContainer(
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 25.0),
                      duration: Duration(seconds: 4),
                      curve: Curves.bounceIn,
                      width: breedte,
                      height: hoogte,
                      decoration: BoxDecoration(
                        color: kleur,
                        borderRadius: border,
                      ),
                  )
              )
          )
        ]
          )
    )
    );
  }
}










