import 'package:flutter/material.dart';
import 'package:online_taxi/routes/routes.dart';
import 'package:lottie/lottie.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  Future gotToLogin() async {
    Future.delayed(const Duration(seconds: 5), () {
      //for remove previews routes
      Navigator.pushNamedAndRemoveUntil(
          context, MyRoutes.myhome, (context) => false);
    });
  }

  @override
  void initState() {
    super.initState();
    gotToLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 32, 32),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Lottie.asset('assets/lotties/car_arrived.json',
                width: 350, height: 350),
            Text(
              "Welcome",
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
