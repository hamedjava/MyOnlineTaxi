import 'package:flutter/material.dart';
import 'package:online_taxi/view/components/form/custom_button.dart';

class Waiting extends StatefulWidget {
  const Waiting({super.key});

  @override
  State<Waiting> createState() => _WaitingState();
}

class _WaitingState extends State<Waiting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircularProgressIndicator.adaptive(),
            ),
            Text("درحال پیدا کردن راننده..."),
          ],
        ),
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
              title: "لغو درخواست",
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    behavior: SnackBarBehavior.floating,
                    content: Text("برای لغو درخواست نگهدارید..",
                        textDirection: TextDirection.rtl),
                    margin: EdgeInsets.only(bottom: 80, left: 25, right: 25),
                    backgroundColor: Color.fromARGB(100, 36, 34, 34),
                  ),
                );
              },
              onLongPressed: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
