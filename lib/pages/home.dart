import 'package:flutter/material.dart';

class PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "BURGER KING",
            style: TextStyle(
                fontFamily: 'FredokaOne-Regular',
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: SingleChildScrollView(
          child:  Column(
            children: <Widget>[
              Image.asset('assets/banner.png',
            fit: BoxFit.cover,
            ),
            SizedBox(
                height: 3.0, 
               ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                flex: 1,
                child:GestureDetector(
                  child:
                   Image.asset('assets/cupons.png', 
                fit: BoxFit.cover, height: 200.0),
                onTap: () {},
                ),
              ),
              SizedBox(
                height: 40.0, width: 4,
               ),
              Flexible(
                flex: 1,
                child: new Image.asset('assets/wifi.png',
                      height: 200.0,  fit: BoxFit.cover),
              ),
              
              
              // Container(
              //   alignment: Alignment.topLeft,
              //   margin: EdgeInsets.all(4),
              //   child: GestureDetector(
              //     child: new Image.asset('assets/cupons.png',
              //         height: 150, width: 200, fit: BoxFit.cover),
              //     onTap: () {},
              //   ),
              // ),
              // Container(
                
              //   padding: EdgeInsets.only(),
              //   child: new Image.asset('assets/wifi.png',
              //       height: 150, width: 200, fit: BoxFit.cover),
                    
              // ),
              
             
              // Container(
              //   child: Padding(
              //       padding: EdgeInsets.only(top: 336.0),
              //       child: Image.asset("assets/bk.jpg")),
              // ),
              // SizedBox(
              //   height: 40.0,
              // ),
              // Container(
              //   child: Padding(
              //       padding: EdgeInsets.only(top: 516.0),
              //       child: Image.asset("assets/sorvete.jpg")),
              // ),
            ],
          ),
          SizedBox(height: 5,),
          Container(
                child: Image.asset('assets/bk.jpg',
                fit: BoxFit.cover,
                ),
              ),
              Container(
                child: Image.asset('assets/sorvete.jpg',
                fit: BoxFit.cover,
                width: 500,
                height: 200,
                ),
              ),
           ],
            
          ),
        ));
  }
}
