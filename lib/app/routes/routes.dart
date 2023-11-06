import 'package:flutter/material.dart';
import 'package:new_app/first_screen/view/home_page_view.dart';

class AppRoutes {
  static const String homeScreen = '/';

  static final Map<String, Widget Function(BuildContext)> routes = {
    homeScreen: (context) => const HomePage(),
  };
}
