import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'main.dart';
import 'package:flutter/material.dart';

class Testing extends StatelessWidget {
  Testing({Key? key}) : super(key: key);
  int index = 0;
  final items = <Widget>[
    Icon(Icons.home_filled, size: 30,),
    Icon(Icons.tablet, size: 30,),
    Icon(Icons.chat, size: 30,),
    Icon(Icons.data_exploration_outlined, size: 30,),
    Icon(Icons.person_outline, size: 30,),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Stefani Wong',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          Row(
            children: <Widget>[
              Card(
                color: Colors.white,
                child: Text('72 BPM'),
              ),
              Card(
                child: Text(Blood Pressure(bpm) \n last 4 hours \n 141/90 \n 7 min ago),
              ),
            ],
          ),
      Text(
        'Took medicine today',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      SizedBox(
        height: 30
      ),
      ListView(
        scrollDirection: Axis.horizontal,
        const Card(
          child: AssetImage('Medicine-PNG-HD-Image 1.png',),
        ),
        SizedBox(
          width: 10,
        ),
        const Card(
          child: AssetImage('Medicine-PNG-HD-Image 1.png',),
        ),
        SizedBox(
          width: 10,
        ),
        const Card(
          child: AssetImage('Medicine-PNG-HD-Image 1.png',),
        ),
        SizedBox(
          width: 10,
        ),
        const Card(
          child: AssetImage('Medicine-PNG-HD-Image 1.png',),
        ),
      ),
      Text(
        'Budget for the day',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        color: Colors.white,
        buttonBackgroundColor: Color(0x008AB6),
        height: 60,
        index: index,
        onTap: (index) => setState(() => this.index = index,
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0x2F98B9),
        foregroundColor: Colors.white,
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}