import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreenSTF(),
    );
  }
}

class HomeScreenSTF extends StatefulWidget {
  const HomeScreenSTF({Key? key}) : super(key: key);

  @override
  State<HomeScreenSTF> createState() => _HomeScreenSTFState();
}

class _HomeScreenSTFState extends State<HomeScreenSTF> {

  late double width;
  late double height;

  @override
  Widget build(BuildContext context) {

    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.black,
      width: width,
      height: height,

      child: Column(
        children: [
          Container(

            child: Text(
              'Best Furniture',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w800,
                color: Color(0xFF8B98B9),
                fontFamily: 'poppins',
              ),
            ),
          ),
          Container(
            child: Text(
              'Perfect Choice!',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: Color(0xFF8B98B9),
                fontFamily: 'poppins',
              ),
            ),
          ),
          Container(
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Search for something',
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.camera_alt)),
            ),
          ),
          ListView(
            // This next line does the trick.
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 10.0,
                color: Colors.red,
                child: Text(
                  'All',
                ),
              ),
              Container(
                width: 10.0,
                color: Colors.blue,
                child: Text(
                  'Chiar',
                ),
              ),
              Container(
                width: 10.0,
                color: Colors.green,
                child: Text(
                  'Table',
                ),
              ),
              Container(
                width: 10.0,
                color: Colors.yellow,
                child: Text(
                  'Lamp',
                ),
              ),
              Container(
                width: 10.0,
                color: Colors.orange,
                child: Text(
                  'Floor',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

