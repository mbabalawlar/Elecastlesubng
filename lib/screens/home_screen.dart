import 'package:datavilla/screens/setting.dart';
import 'package:flutter/material.dart';
import 'dashboard2.dart';
import '../airtimenetwork.dart';
import '../datanetwork.dart';
import 'package:connection_status_bar/connection_status_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> widgets = [Dashboard(), DataNet(), AirtimeNet(), Setting()];
  void changeIndex(int newIndex) => setState(() => currentIndex = newIndex);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Scaffold(
                body: widgets[currentIndex],
                bottomNavigationBar: bottomNavbar(
                    onTap: changeIndex, currentIndex: currentIndex)),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: ConnectionStatusBar(),
          ),
        ],
      ),
    );
  }
}

Widget bottomNavbar({@required onTap, @required currentIndex}) {
  return BottomNavigationBar(
    onTap: onTap,
    currentIndex: currentIndex,
    unselectedLabelStyle: TextStyle(fontFamily: 'product-sans'),
    selectedLabelStyle: TextStyle(fontFamily: 'product-sans'),
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.black38,
    type: BottomNavigationBarType.fixed,
    items: [
      BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          title: Text(
            'Home',
          )),
      BottomNavigationBarItem(
          icon: Icon(Icons.wifi, color: Colors.grey),
          title: Text(
            'Data',
          )),
      BottomNavigationBarItem(
          icon: Icon(Icons.phone_android, color: Colors.grey),
          title: Text(
            'Airtime',
          )),
      BottomNavigationBarItem(
          icon: Icon(Icons.settings, color: Colors.grey),
          title: Text(
            'Setting',
          ))
    ],
  );
}
