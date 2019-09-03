import 'package:flutter/material.dart';
import 'package:mulai/src/views/anPadding.dart';
import 'package:mulai/src/views/anSwitcher.dart';
import 'package:mulai/src/views/anhero.dart';
import 'package:mulai/src/views/dashboard.dart';
import 'package:mulai/src/views/dismis.dart';
import 'package:mulai/src/views/fizzbuzz.dart';

class Routes {
  static Route<dynamic> generateRoute(settings) {
    switch (settings.name) {
      case 'dashboard':
        return MaterialPageRoute(builder: (_) => Dashboard());
        break;
      case 'hero':
        return MaterialPageRoute(builder: (_) => AnHero());
        break;
      case 'padding':
        return MaterialPageRoute(builder: (_) => AnPadding());
        break;
      case 'switcher':
        return MaterialPageRoute(builder: (_) => AnSwitcher());
        break;
      case 'fizzbuzz':
        return MaterialPageRoute(builder: (_) => Fizzbuzz());
        break;
      case 'dismis':
        return MaterialPageRoute(builder: (_) => Dismis());
        break;
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                body: Center(
                    child: Text('No route defined for \"${settings.name}\"'))));
    }
  }
}
