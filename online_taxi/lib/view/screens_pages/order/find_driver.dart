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
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.transparent,
              width: MediaQuery.of(context).size.width,
              height: 400,
              child: Column(
                children: [
                  FlutterLocationPicker(
                      selectLocationButtonStyle: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.indigoAccent),
                      ),
                      locationButtonsColor: Colors.indigoAccent,
                      zoomButtonsColor: Colors.white,
                      zoomButtonsBackgroundColor: Colors.indigoAccent,
                      locationButtonBackgroundColor: Colors.white,
                      searchBarBackgroundColor: Colors.white,
                      markerIcon: const Icon(Icons.pin_drop_rounded,
                          size: 42, color: Colors.indigoAccent, fill: 1.0),
                      initZoom: 11,
                      showSearchBar: true,
                      showCurrentLocationPointer: true,
                      minZoomLevel: 5,
                      maxZoomLevel: 16,
                      trackMyPosition: true,
                      onPicked: (pickedData) {
                        pickedData.latLong.latitude;
                        pickedData.latLong.longitude;
                        pickedData.address;
                        pickedData.addressData['country'];
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
