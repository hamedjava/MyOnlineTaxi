import 'package:flutter/material.dart';
import 'package:online_taxi/home_screen.dart';
import 'package:online_taxi/view/screens_pages/auth/login.dart';
import 'package:online_taxi/view/screens_pages/auth/signup.dart';

class MyRoutes {
  static const String login = '/login';
  static const String signup = '/signup';
  static const String myhome = '/home';

  static Map<String, Widget Function(BuildContext)> routes = {
    login: (context) => const Login(),
    myhome: (context) => const MyHomePage(),
    signup: (context) => const Signup(),
  };
}


/*class MyRoutes {
  
  static String login = '/login';
  static String home = '/myhomepage';
  static String signup = '/signup';

  static Map<String, Widget Function(BuildContext)> routes =
      <String, Widget Function(BuildContext)>{
    login: (context) => const Login(),
    signup: (context) => const Signup(),
    home: (context) => const MyHomePage(title: 'Welcome To Home Page'),
  };
}*/
