import 'package:flutter/material.dart';

class CustomOption extends StatefulWidget {
  CustomOption({super.key, required this.answer});
  String answer;
  @override
  State<CustomOption> createState() => _CustomOptionState();
}

class _CustomOptionState extends State<CustomOption> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width / 1.5,
        height: MediaQuery.of(context).size.height / 8,
        color: const Color.fromARGB(255, 30, 139, 227),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.answer,
                style:
                    const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
/*
* */