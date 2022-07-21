import 'package:flutter/material.dart';

class PlantHomeScreen extends StatelessWidget {
  const PlantHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PlantScreenSTF(),
    );
  }
}

class PlantScreenSTF extends StatefulWidget {
  const PlantScreenSTF({Key? key}) : super(key: key);

  @override
  State<PlantScreenSTF> createState() => _PlantScreenSTFState();
}

class _PlantScreenSTFState extends State<PlantScreenSTF> {
  late double width;
  late double height;

  @override
  Widget build(BuildContext context) {

    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            /// Row 1
            Row(
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                            'Find your',
                          style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        margin: EdgeInsets.only(left: width*0.03),
                      ),
                      Container(
                        child: Text(
                          'favorite plants',
                          style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        margin: EdgeInsets.only(left: width*0.03),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Icon(Icons.search_outlined),
                  margin: EdgeInsets.only(left: width* 0.6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            /// Card
            Row(
              children: [
                Stack(
                  children: [
                    Card(
                      color: Colors.red,
                      child: Text(
                          'Card'
                      ),
                    ),
                    Container(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      height: height* 0.2,
                      width: width * 0.2,
                      child: Image.asset('assets/images/plant1.png'),
                      padding: EdgeInsets.only(left: width* 0.15),
                    ),
                    Column(
                      children: [
                        Container(
                          child: Text(
                            '30% OFF',
                            style: TextStyle(
                              fontWeight: FontWeight.w200,
                              fontFamily: 'poppins',
                              fontSize: 17.5,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            '02 - 23 July',
                            style: TextStyle(
                              fontWeight: FontWeight.w200,
                              fontFamily: 'poppins',
                              fontSize: 17.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

