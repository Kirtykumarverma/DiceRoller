import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

  AssetImage diceimage;
  AssetImage dic2image;

  @override
  void initState(){
    super.initState();
    setState(() {
      diceimage = one;
      dic2image = six;
    });
  }

  void rollDice(){
    int random = (1 + Random().nextInt(6));
    AssetImage newImage;
    AssetImage new2Image;

    switch (random) {
      case 1:
        newImage = one;
        new2Image = six;
        break;
        case 2:
        newImage = two;
        new2Image = four;
        break;
        case 3: 
        newImage = three;
        new2Image = five;
        break;
        case 4:
        newImage = four;
        new2Image = two;
        break;
        case 5:
        newImage = five;
        new2Image = one;
        break;
        case 6:
        newImage = six;
        new2Image = three;
        break;
    }

    setState(() {
      diceimage = newImage;
      dic2image = new2Image;

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Dice Roller')
      ),
      body: Container(
        child:Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          
        
            children: <Widget>[
            
              Image(
                
                image:diceimage,
                width: 150.0,
                height: 150.0,
                 ),
              Image(
                image:dic2image,
                width: 150.0,
                height: 150.0,
                 ),
                 
                 Container(
                   margin: EdgeInsets.only(top: 100.0),
                   child: RaisedButton(
                     color : Colors.yellow,
                     padding: EdgeIbnsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(30.0)
                     ),
                     child: Text('Roll the Dice',
                     style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold)),
                     onPressed: rollDice,
                   ),
                 )
            ],
          )
        )
      ),
    );
  }
}