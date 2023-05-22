import 'package:flutter/material.dart';
import 'package:location_picker_flutter_map/location_picker_flutter_map.dart';

class FindDriver extends StatefulWidget {
  const FindDriver({super.key});

  @override
  State<FindDriver> createState() => _FindDriverState();
}

class _FindDriverState extends State<FindDriver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        color: Colors.black87,
        width: MediaQuery.of(context).size.width,
        height: 200,
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
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(2.0),
              child: Row(
                children: [],
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
