import 'package:flutter/material.dart';
import 'package:online_taxi/routes/routes.dart';
import 'package:online_taxi/view/screens_pages/auth/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: MyRoutes.routes,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const Welcome(),
    );
  }
}
