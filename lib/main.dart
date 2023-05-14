import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    Widget sectionNumber = Container(
      width: 70,
      height: 70,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(0, 0, 0, 0.85),
        shape: BoxShape.circle,
      ),
      child: const Center(
        child: Text(
          '#0.',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );

    Widget buttonSection =  Container(
      width: 180,
      height: 70,
      alignment: Alignment.center,
      color: Colors.white.withOpacity(0.8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(
              Colors.blue,
              Icons.call,
              'CALL'
          ),
          _buildButtonColumn(
              Colors.green,
              Icons.near_me,
              'ROUTE'
          ),
          _buildButtonColumn(
              Colors.black,
              Icons.share,
              'SHARE'
          ),
        ],
      ),
    );

    Widget titleSection = Container(
      height: 115,
      width: 398,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.85),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text(
            '41',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );

    return MaterialApp(
      title: 'Programming basics 2',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Programming basics 2'),
        ),
        body: ListView(
          children: List.generate(3, (index) {
            return Stack(
              children: [
                Image.asset(
                  'images/lake.jpg',
                  width: double.infinity,
                  height: 270,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 16,
                  left: 16,
                  child: sectionNumber,
                ),
                Positioned(
                  top: 16,
                  right: 16,
                  child: buttonSection,
                ),
                Positioned(
                  bottom: 0,
                  child: titleSection,
                ),
              ],
            );
          }
          ),
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}