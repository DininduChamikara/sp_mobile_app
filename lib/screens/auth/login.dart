import 'package:flutter/material.dart';

// Material

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: (Text(
                "Let's sign you in.",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              )),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: (Text(
                "Welcome back.",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.red,
                ),
              )),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: (Text(
                "You've been missed!",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.red,
                ),
              )),
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 59, 81, 118),
                  borderRadius: BorderRadius.circular(10)),
              height: 60,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Phone, email or username",
                    border: InputBorder.none),
              ),
            )
          ],
        ));
  }
}
