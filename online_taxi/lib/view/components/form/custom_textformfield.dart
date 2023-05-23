import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  CustomTextField({
    super.key,
    required this.title,
    required this.controller,
    required this.validator,
    this.textColor,
    this.prefixIcon,
    this.postFixIcon,
    this.borderColor,
    this.hintColor,
    this.helperStyleColor,
    this.labelStyleColor,
    this.errorColor,
    this.textDirection,
  });
  final String title;
  final String? Function(String?) validator;
  TextEditingController controller = TextEditingController();
  Color? textColor,
      borderColor,
      hintColor,
      helperStyleColor,
      labelStyleColor,
      errorColor;
  TextDirection? textDirection;
  Icon? prefixIcon, postFixIcon;
  String? helperText;

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
              style: TextStyle(color: widget.textColor),
              controller: widget.controller,
              validator: widget.validator,
              textDirection: widget.textDirection,
              decoration: InputDecoration(
                labelText: widget.title,
                suffixIcon: widget.prefixIcon,
                hintTextDirection: widget.textDirection,
                floatingLabelAlignment: FloatingLabelAlignment.center,
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: widget.borderColor as Color)),
                errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: widget.errorColor as Color)),
                helperText: widget.helperText,
                helperStyle: TextStyle(color: widget.helperStyleColor),
                labelStyle: TextStyle(
                  color: widget.labelStyleColor,
                ),
                hintStyle: TextStyle(
                  color: widget.textColor,
                ),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(
                        width: 1,
                        style: BorderStyle.solid,
                        color: widget.borderColor as Color),
                    borderRadius: const BorderRadius.all(Radius.circular(8))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
