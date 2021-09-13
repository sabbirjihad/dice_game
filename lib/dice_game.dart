import 'dart:math';

import 'package:flutter/material.dart';

class DiceGame extends StatefulWidget {
  const DiceGame({Key? key}) : super(key: key);

  @override
  _DiceGameState createState() => _DiceGameState();
}
class _DiceGameState extends State<DiceGame> {

  int _score=0;
  int _sumOfDiceFace=0;
  int _highestScore=0;
  bool _isGameOver=false;
  bool _isButtonDisabled = false;
  int _index1=0;
  int _index2=0;
  final random=Random.secure();
  final _diceList=[
    'pictures/d1.png',
    'pictures/d2.png',
    'pictures/d3.png',
    'pictures/d4.png',
    'pictures/d5.png',
    'pictures/d6.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dice Game'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Score: $_score',style:TextStyle(fontSize: 50),),
            Text('Highest Score: $_highestScore',style:TextStyle(fontSize: 30,color: Colors.red),),
            Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              // for center widget
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(_diceList[_index1],width: 100,height: 100,),
                Image.asset(_diceList[_index2],width: 100,height: 100,),
              ],
            ),
            Text('Dice Sum: $_sumOfDiceFace',style: TextStyle(fontSize: 25),),
            if(_isGameOver)Text('Game Over',style: TextStyle(fontSize: 45),),
            ElevatedButton(
               onPressed:_isButtonDisabled?null:_rollTheDice,
               child: Text('Roll'),

            ),
            ElevatedButton(
                onPressed: _isButtonDisabled==false?null:_restartTheDice,
                child: Text('Restart'),
            ),
          ],
        ),
      ),
    );
  }

  void _rollTheDice() {
    setState(() {
      _index1=random.nextInt(6);
      _index2=random.nextInt(6);
      _sumOfDiceFace=_index1+_index2 +2;
      if(_sumOfDiceFace==7){
        _isGameOver=true;
        _isButtonDisabled=true;
        if(_score>_highestScore){
          _highestScore=_score;
        }
      }
      else {
        _score+=_sumOfDiceFace;
      }
    });
  }
  void _restartTheDice() {
    setState(() {
      _index1=0;
      _index2=0;
      _score=0;
      _sumOfDiceFace=0;

      if(_index1==0 && _index2==0){
        _isButtonDisabled=true;

      }
    });
  }
}
