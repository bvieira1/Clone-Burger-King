import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:navigation_bar/pages/cardapio.dart';
import 'package:navigation_bar/pages/cupons.dart';
import 'package:navigation_bar/pages/home.dart';
import 'package:navigation_bar/pages/menu.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:navigation_bar/pages/restaurantes.dart';

void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int pageIndex = 0;

  final PageHome _listHome = PageHome();
  final PageCardapio _listCardapio = PageCardapio();
  final PageCupons _listCupons = PageCupons();
  final PageRestaurante _listRestaurante = PageRestaurante();
  final PageMenu _listMenu = PageMenu();

  Widget _showPage = new PageHome();

  Widget _pageChooser(int page){
    switch (page) {
      case 0:
      return _listHome;
      break;
       case 1:
      return _listCardapio;
      break;
       case 2:
      return _listCupons;
      break;
       case 3:
      return _listRestaurante;
      break;
       case 4:
      return _listMenu;
      break;
      default:
      return new Container(
        child: Center(
          child: new Text(
          "No page found",
          style: TextStyle(fontSize: 30),
        ),
        )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          index: pageIndex,
          items: <Widget>[
            Icon(Icons.store_mall_directory, size: 30),
            Icon(Icons.fastfood, size: 30),
            Icon(Icons.local_offer, size: 30),
            Icon(Icons.location_on, size: 30),
            Icon(Icons.menu, size: 30),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.orangeAccent,
          backgroundColor: Colors.blueAccent,
          animationCurve: Curves.linearToEaseOut,
          animationDuration: Duration(milliseconds: 550),
          onTap: (int tappedIndex) {
            setState(() {
              _showPage  = _pageChooser(tappedIndex);
            });
          },
        ),
        body: Container(
          color: Colors.blueAccent,
          child: Center(
           // child: Text(pageIndex .toString(), textScaleFactor: 10.0),
           child: _showPage,
          ),
        ));
  }
}
 


