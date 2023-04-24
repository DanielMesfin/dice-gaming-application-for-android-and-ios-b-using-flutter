import 'dart:math';
import 'package:flutter/material.dart';
// the main function for the application
void main()=>runApp(MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.red,
    appBar: AppBar(
      title: const Text('Dice Game',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.red,
    ),
    body: MyDice(),
  ),
),
);
class MyDice extends StatefulWidget {
  const MyDice({Key? key}) : super(key: key);

  @override
  State<MyDice> createState() => _MyDiceState();
}

class _MyDiceState extends State<MyDice> {
  int numberOfLeftDice=1;
  int numberOfRightDice=1;
  void changeStateOfDice(){
    setState(() {
      numberOfLeftDice=Random().nextInt(5)+1;
      numberOfRightDice=Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Row(
        children:  [
          Expanded(
            child: TextButton(
              onPressed: (){
                changeStateOfDice();
              },
              child: Image(
                image: AssetImage('images/dice$numberOfLeftDice.png'),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeStateOfDice();
              },
              child: Image(
                image: AssetImage('images/dice$numberOfRightDice.png'),
              ),
            ),
          ),

        ],
      ),
    );
  }
}





