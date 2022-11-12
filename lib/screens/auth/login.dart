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
              margin: const EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 59, 81, 118),
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(10)),
              height: 60,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Phone, email or username",
                    border: InputBorder.none),
              ),
            ),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 59, 81, 118),
                    border: Border.all(color: Colors.red),
                    borderRadius: BorderRadius.circular(10)),
                height: 60,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: const [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Password", border: InputBorder.none),
                      ),
                    ),
                    Icon(Icons.password)
                  ],
                )),
            Container(
              margin: const EdgeInsets.only(top: 60),
              alignment: Alignment.center,
              child: Column(children: [
                SizedBox(
                  width: 230,
                  child: Row(
                    children: const [
                      Text("Don't have an account? "),
                      Text(
                        "Register",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 59, 81, 118),
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.circular(10)),
                  width: 200,
                  child: TextButton(
                    child: const Text("Sign in"),
                    onPressed: (() {}),
                  ),
                )
              ]),
            )
          ],
        ));
  }
}
