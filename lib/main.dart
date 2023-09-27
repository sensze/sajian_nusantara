import 'package:flutter/material.dart';
import 'package:sajian_nusantara/views/Splashscreen.dart';
import 'package:sajian_nusantara/routes/routes.dart';

import 'colors/AppColors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sajian Nusantara',
      routes: routes,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
    );
  }
}
