import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sp_mobile_app/screens/auth/login.dart';
import 'package:sp_mobile_app/screens/home.dart';
import 'package:sp_mobile_app/screens/main/addCustomer.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/ooo',
      builder: (BuildContext context, GoRouterState state) {
        return const Login();
      },
    ),
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Home();
      },
    ),
    GoRoute(
      path: '/add_customer',
      builder: (BuildContext context, GoRouterState state) {
        return const AddCustomer();
      },
    ),
  ],
);
