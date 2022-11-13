import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sp_mobile_app/screens/main/stock.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const List<String> _titleOptions = <String>[
    "Stock",
    "Customers",
    "Bills"
  ];

  static const List<Widget> _contentOptions = <Widget>[
    Stock(),
    Stock(),
    Stock(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titleOptions.elementAt(_selectedIndex)),
      ),
      body: _contentOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.inventory), label: "Stock"),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.handshake), label: "Customers"),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.receipt), label: "Bills"),
        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
