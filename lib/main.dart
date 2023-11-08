import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      home: Home(Colors.deepPurple, Colors.purpleAccent),
    ));

class Home extends StatefulWidget {
  Color color1;
  Color color2;

  Home(this.color1, this.color2);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var startingColor = Alignment.topLeft;
  var bottomColor = Alignment.bottomLeft;
  var randomNumber = 2;

  void diesNumber() {
    setState(() {
      randomNumber =Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var image = randomNumber;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 2.0,
        title: Center(child: Text("This is dices app")),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: startingColor,
          end: bottomColor,
          colors: [widget.color1, widget.color2],
        )),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset("assests/$image.png"),
              TextButton(
                child: Text("Click Here"),
                onPressed: diesNumber,
                style: TextButton.styleFrom(
                    foregroundColor: Colors.red,
                    elevation: 2,
                    backgroundColor: Colors.amber),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
