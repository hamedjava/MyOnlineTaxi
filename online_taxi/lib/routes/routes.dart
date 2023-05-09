import 'package:flutter/material.dart';
import 'package:online_taxi/view/screens_pages/auth/login.dart';

class MyRoutes {
  static const String login = '/login';
  static const String signup = '/signup';
  static const String myhome = '/home';
  static const String question = '/my_question_page';

  static Map<String, Widget Function(BuildContext)> routes = {
    login: (context) => const Login(),
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
