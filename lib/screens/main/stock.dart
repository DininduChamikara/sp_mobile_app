import 'package:flutter/material.dart';

class Stock extends StatelessWidget {
  const Stock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Stack(
        children: <Widget>[
          const Text("Stock"),
          Row(
            children: const <Widget>[
              SizedBox(
                child: TextField(
                  decoration: InputDecoration(hintText: "Search..."),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
