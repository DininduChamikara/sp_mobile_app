// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sp_mobile_app/components/title.dart';

class AddCustomer extends StatelessWidget {
  const AddCustomer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, title: const Text("Add Customer")),
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MainTitle(title: "Add Customer"),
            const Align(
              child: Padding(
                padding: EdgeInsets.all(1),
              ),
            ),
            const Spacer(),
            const Align(
              alignment: Alignment.centerLeft,
              child: const TextField(
                decoration: InputDecoration(hintText: "Name"),
              ),
            ),
            const Spacer(),
            const Align(
              alignment: Alignment.centerLeft,
              child: const TextField(
                decoration: InputDecoration(hintText: "Email"),
              ),
            ),
            const Spacer(),
            const Align(
              alignment: Alignment.centerLeft,
              child: const TextField(
                decoration: InputDecoration(hintText: "Business Name"),
              ),
            ),
            const Spacer(),
            const Align(
              alignment: Alignment.centerLeft,
              child: const TextField(
                decoration: InputDecoration(hintText: "Address"),
              ),
            ),
            const Spacer(),
            const Align(
              alignment: Alignment.centerLeft,
              child: const TextField(
                decoration: InputDecoration(hintText: "Contact Number"),
              ),
            ),
            const Spacer(),
            const Align(
              alignment: Alignment.centerLeft,
              child: const TextField(
                decoration: InputDecoration(hintText: "Credit"),
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: ElevatedButton(
                    child: const Text("Cancel"),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      elevation: 0,
                    ),
                    onPressed: () {
                      return context.go('/');
                    },
                  ),
                )),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: ElevatedButton(
                    child: const Text("Send"),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      elevation: 0,
                    ),
                    onPressed: () {},
                  ),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
