import 'package:flutter/material.dart';
import 'package:sp_mobile_app/config/app_router.dart';
import 'package:sp_mobile_app/screens/auth/login.dart';
import 'package:sp_mobile_app/util/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: basicTheme(),
      routerConfig: router,
    );
  }
}
