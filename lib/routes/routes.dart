import 'package:flutter/cupertino.dart';
import 'package:sajian_nusantara/views/Homepage.dart';
import 'package:sajian_nusantara/views/Profilepage.dart';
import 'package:sajian_nusantara/views/Splashscreen.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => const Splashscreen(),
  '/homepage': (context) => const Homepage(),
  '/profile': (context) => const Profilepage(),
};
