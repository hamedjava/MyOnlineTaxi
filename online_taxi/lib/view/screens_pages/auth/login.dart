import 'package:flutter/material.dart';
import 'package:online_taxi/view/components/form/custom_button.dart';
import 'package:online_taxi/view/components/form/custom_textformfield.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  final GlobalKey<FormState> _fromKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Form(
                key: _fromKey,
                child: Column(
                  children: [
                    CustomTextField(
                      title: "Username",
                      controller: username,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Something';
                        }

                        // using regular expression
                        if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                          return "Please enter a valid email address";
                        }

                        // the email is valid
                        return null;
                      },
                    ),
                    CustomTextField(
                        title: "Password",
                        controller: password,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Something';
                          }

                          // using regular expression
                          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                            return "Please enter a valid email address";
                          }

                          // the email is valid
                          return null;
                        }),
                    CustomButton(
                        title: "Submit",
                        onPressed: () {
                          if (_fromKey.currentState!.validate()) {
                            //Navigator.pushNamed(context, );
                          }
                        }),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
