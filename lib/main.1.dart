import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Widget titleSection = Container(
      child: Row(
        children: <Widget>[
          Column(
            children: [
              Container(
                child: Text('Oeschinen Lake Campground',)
              ),
              Text('Kandersteg, Switzerland',)
            ]
          ),
          Icon(Icons.star),
          Text('41'),
      ],)
    );


    Column buildButtonColumn(IconData icon, String label) {

      Color color = Theme.of(context).primaryColor;

      return Column(
        children: <Widget>[
          Icon(icon, color: color),
          Container(
            child: Text(label),
          ),
        ],
      );
    }

    Widget buttonSection = Container(
      child: Row(
        children: <Widget>[
          buildButtonColumn(Icons.call, 'CALL'),
          buildButtonColumn(Icons.near_me, 'ROUTE'),
          buildButtonColumn(Icons.share, 'SHARE')
        ],
      ),
    );

    Widget textSection = Container(
      child: Text(
        '''
        Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
      ),
    );

        
    return MaterialApp(
      title: 'Layout Exercise',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Layout Exercise'),
        ),
        body: ListView(
          children: <Widget>[
            Image.asset(
              'images/lake.jpg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
          titleSection,
          buttonSection,
          textSection,
          ],
        )
      ),
    );

  }

}