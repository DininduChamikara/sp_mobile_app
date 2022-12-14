import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding:
              const EdgeInsets.only(top: 40, left: 24, right: 24, bottom: 24),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Let's sign you in.",
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Welcome Back"),
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                height: 60,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: const TextField(
                  decoration: InputDecoration(hintText: "Email Address"),
                ),
              ),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  height: 60,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: const [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(hintText: "Password"),
                        ),
                      ),
                    ],
                  )),
              Container(
                margin: const EdgeInsets.only(top: 60),
                child: Column(children: [
                  Row(
                    children: const [
                      Text("Don't have an account? "),
                      Text(
                        "Register",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        child: const Text("Login"),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          elevation: 0,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ]),
              )
            ],
          )),
    );
  }
}
