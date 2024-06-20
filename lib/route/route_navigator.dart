import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:video_challenge/page/home_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (BuildContext context, GoRouterState state) => const HomePage(),
    ),
  ],
);