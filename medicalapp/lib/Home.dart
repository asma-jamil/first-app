import 'package:flutter/material.dart';

import 'productdetail.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeSTF();
  }
}

class HomeSTF extends StatefulWidget {
  const HomeSTF({Key? key}) : super(key: key);

  @override
  State<HomeSTF> createState() => _HomeSTFState();
}

class _HomeSTFState extends State<HomeSTF> {
  late double width;
  late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Container(
      child: Column(
        children: [
          Container(
            color: Colors.cyan,
            child: Row(
              children: [
                Container(
                  height: height*0.1,
                  margin: EdgeInsets.only(top: height*0.08),
                ),
                Container(
                  width: width* 0.1,
                  height: height * 0.1,
                  color: Colors.black,
                ),
                Container(
                  padding: EdgeInsets.only(left: width*0.2),
                  color: Colors.amber,
                  width: width* 0.3,
                  height: height * 0.1,
                  child: Text(
                    'hello',
                  ),
                ),

                Container(
                  color: Colors.black,
                  width: width* 0.3,
                  height: height * 0.1,
                ),
              ],
            ),
          ),
          Container(
            width: width*0.55,
            height: height*.07,
            margin: EdgeInsets.only(top: height*0.04),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFE81514),
                elevation: 9.0,
                shadowColor: Color(0xFFE81514),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(width*0.3)
                ),
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetail()));
              },
              child: Text('Burger',
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 17,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}

