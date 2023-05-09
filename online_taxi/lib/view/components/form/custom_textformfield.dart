import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  CustomTextField(
      {super.key,
      required this.title,
      required this.controller,
      required this.validator});
  final String title;
  final String? Function(String?) validator;
  TextEditingController controller = TextEditingController();

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.transparent,
      width: width / 2,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              controller: widget.controller,
              validator: widget.validator,
              decoration: InputDecoration(
                hintText: widget.title,
                labelText: widget.title,
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.red,
                ),
                enabledBorder: const UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                errorBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.redAccent)),
                helperText: 'example@gmail.com',
                helperStyle:
                    const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                labelStyle:
                    const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                hintStyle: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                border: const UnderlineInputBorder(
                    borderSide: BorderSide(
                        width: 1,
                        style: BorderStyle.solid,
                        color: Color.fromARGB(255, 0, 0, 0)),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
