import 'package:flutter/material.dart';

class ViewPage extends StatelessWidget {
  const ViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        children: [
          Row(
            children: const [
              Text("Add Data"),
              Icon(Icons.close),
            ],
          ),
          const FundContent()
        ],
      ),
    );
  }
}

class FundContent extends StatelessWidget {
  const FundContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text("Amount"),
        Text("Rs.100"),
        Text("Rs.100"),
      ],
    );
  }
}
