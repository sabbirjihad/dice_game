import 'package:flutter/material.dart';

class CounterExample extends StatefulWidget {
  const CounterExample({Key? key}) : super(key: key);

  @override
  _CounterExampleState createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {
  int _count=0;
  @override
  Widget build(BuildContext context) {
    print('Build method call');
    return Scaffold(
      appBar: AppBar(title: const Text('Counter Example'),
      ),
      body: Center(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$_count',style:TextStyle(fontSize: 100),
            ),
            ElevatedButton(
                onPressed: _incrementCounter,
                child: Text('Click!')
            )
          ],
        ),
      ),
    );
  }
  void _incrementCounter(){
    setState(() {
      _count++;
    });

  }
}
