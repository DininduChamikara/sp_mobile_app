import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sp_mobile_app/components/title.dart';
import 'package:sp_mobile_app/config/constants.dart';

class Stock extends StatelessWidget {
  const Stock({Key? key}) : super(key: key);

  void getAllInventories() async {
    try {
      var response = await Dio().get(Constants.BASE_URL);
      print(response);
    } catch (e) {
      print(e);
    }
  }

  static const List<String> _categories = <String>[
    "Category One",
    "Category Two",
    "Category Three",
    "Category Four",
    "Category Five",
  ];

  @override
  Widget build(BuildContext context) {
    getAllInventories();

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const MainTitle(title: "Stock"),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: SizedBox(
              height: 25,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _categories.length,
                itemBuilder: (context, index) => buildCategories(index),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemBuilder: (context, index) => const InventoryCard()),
          ),
        ],
      ),
    );
  }

  Widget buildCategories(int index) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Text(
          _categories.elementAt(index),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ));
  }
}

class InventoryCard extends StatelessWidget {
  const InventoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(color: Colors.black12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Text("Data One"),
          Text(
            "45",
            style: TextStyle(fontSize: 60),
          ),
        ],
      ),
    );
  }
}
