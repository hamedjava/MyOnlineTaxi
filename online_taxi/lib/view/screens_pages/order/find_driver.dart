import 'package:flutter/material.dart';
import 'package:location_picker_flutter_map/location_picker_flutter_map.dart';
import 'package:online_taxi/view/components/form/custom_textformfield.dart';

class FindDriver extends StatefulWidget {
  const FindDriver({super.key});

  @override
  State<FindDriver> createState() => _FindDriverState();
}

class _FindDriverState extends State<FindDriver> {
  TextEditingController driverMessage = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        color: Colors.black87,
        width: MediaQuery.of(context).size.width,
        height: 350,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "پراید سفید",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Image.asset(
                      'assets/images/pelak.jpg',
                      width: 130,
                      height: 60,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Text(
                      "حامد پویان فر",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(
                      Icons.account_circle_rounded,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 80.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.call,
                        color: Colors.red,
                      ),
                      iconSize: 30,
                    ),
                  ),
                  CustomTextField(
                    title: "ارسال پیام به راننده...",
                    hintColor: Colors.white,
                    controller: driverMessage,
                    textColor: Colors.white,
                    labelStyleColor: Colors.white,
                    helperStyleColor: Colors.white,
                    textDirection: TextDirection.rtl,
                    borderColor: Colors.white,
                    errorColor: Colors.red,
                    prefixIcon: const Icon(Icons.message),
                    validator: (p0) => "",
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Text(
                            "موجودی کافی",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Column(
                      children: [
                        Text(
                          "کیف پول",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "هزینه سفر : 20000تومان",
                          style: TextStyle(color: Colors.white),
                          textDirection: TextDirection.rtl,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.wallet,
                          color: Colors.blue,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.transparent,
              width: MediaQuery.of(context).size.width,
              height: 500,
              child: FlutterLocationPicker(
                  showSelectLocationButton: false,
                  locationButtonsColor: Colors.indigoAccent,
                  zoomButtonsColor: Colors.white,
                  zoomButtonsBackgroundColor: Colors.indigoAccent,
                  locationButtonBackgroundColor: Colors.white,
                  markerIcon: const Icon(Icons.pin_drop_rounded,
                      size: 32, color: Colors.indigoAccent, fill: 1.0),
                  initZoom: 11,
                  showSearchBar: false,
                  minZoomLevel: 5,
                  maxZoomLevel: 16,
                  onPicked: (pickedData) {
                    pickedData.latLong.latitude;
                    pickedData.latLong.longitude;
                    pickedData.address;
                    pickedData.addressData['country'];
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
