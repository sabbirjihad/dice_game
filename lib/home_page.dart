import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter basic'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: textSection(),
        ),
      ),
    );
  }

  Column textSection() {
    return Column(
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(
              size: 100,
            ),
            Image.network(
              'https://encrypted-tbn0.gstatic.com/'
              'images?'
              'q=tbn:ANd9GcQglujiI8orUgrkQQlLHeSUWVwB1SnHrUoqJw&usqp=CAU',
              height: 300,
            ),
            Column(
              children: [
                Text('Hello World',
                    style: TextStyle(fontSize: 30),
                    textDirection: TextDirection.ltr),
                Text('Flutter Developer',
                    style: TextStyle(fontSize: 30),
                    textDirection: TextDirection.ltr),
                Text('Hello Dart',
                    style: TextStyle(fontSize: 30),
                    textDirection: TextDirection.ltr),
                Text('Android Developer',
                    style: TextStyle(fontSize: 30),
                    textDirection: TextDirection.ltr),
                Text('Hello Dart',
                    style: TextStyle(fontSize: 30),
                    textDirection: TextDirection.ltr),
                Text('Android Developer',
                    style: TextStyle(fontSize: 30),
                    textDirection: TextDirection.ltr),
              ],
            ),
        buttonSection(),
          ],
        );
  }

  Row buttonSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.my_location),
        ElevatedButton(
          onPressed: () {
            print('Click me');
          },
          child: Text('Click Button'),
        ),
        ElevatedButton(
          onPressed: () {
            print('Dont Click');
          },
          child: Text('Button'),
        ),
      ],
    );
  }
}