import 'package:flutter/material.dart';
import 'package:medicalapp/Home.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductDetailSTF(),
    );
  }
}

class ProductDetailSTF extends StatefulWidget {
  const ProductDetailSTF({Key? key}) : super(key: key);

  @override
  State<ProductDetailSTF> createState() => _ProductDetailSTFState();
}

class _ProductDetailSTFState extends State<ProductDetailSTF> {
  late double width;
  late double height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      child: Stack(
        children: [
          Container(
            width: width,
            height: height*0.2,
            color: Color(0xFFF7D49E),
          ),

          Container(
            width: width,
            height: height*0.98,
            margin: EdgeInsets.only(top: height*0.05),
            child: Container(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/burger.png',
                      width: width,
                      height: height*0.38,
                    ),
                  ),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.center,
                      ),
                      Container(
                        width: width*0.3,
                        height: height*.08,
                        margin: EdgeInsets.only(top: height*0.02, bottom: height*0.02),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFE81514),
                            elevation: 7.0,
                            shadowColor: Color(0xFFE81514),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(width*0.3),
                            ),
                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetail()));
                          },
                          child: Text('-  1  +',
                            style: TextStyle(
                                fontFamily: 'poppins',
                                fontSize: 20,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text(
                          'Beef Burger',
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          '6.59',
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: height*0.03),
                        child: Text(
                          'This beef burger Uses 100% quality beef with sliced',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 16,
                            fontFamily: 'poppins',
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          'sliced tomatoes, cucumbers vegetables and onions.',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 16,
                            fontFamily: 'poppins',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                          },
                          child: Text(
                            'Add to Cart',
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


