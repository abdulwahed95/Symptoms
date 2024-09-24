import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'catalog/presentation/home/home_page.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomePage.baseRoute:
        return PageTransition(
          child: const HomePage(),
          type: PageTransitionType.leftToRight,
          settings: const RouteSettings(name: HomePage.routeName),
        );
      case HomePage.routeName:
        return PageTransition(
          child: const HomePage(),
          type: PageTransitionType.leftToRight,
          settings: const RouteSettings(name: HomePage.routeName),
        );
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                body: SafeArea(child: Center(child: Text('Route Error')))));
    }
  }
}
