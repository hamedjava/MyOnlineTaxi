import 'package:flutter/material.dart';
import 'package:online_taxi/view/components/form/custom_button.dart';
import 'package:online_taxi/view/components/form/custom_textformfield.dart';
import 'package:location_picker_flutter_map/location_picker_flutter_map.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Logo"),
          ],
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 1.3,
              height: 500,
              color: Colors.transparent,
              child: FlutterLocationPicker(
                  initPosition: LatLong(23, 89),
                  selectLocationButtonStyle: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  selectLocationButtonText: 'Set Current Location',
                  initZoom: 11,
                  showSearchBar: true,
                  showCurrentLocationPointer: true,
                  minZoomLevel: 5,
                  maxZoomLevel: 16,
                  trackMyPosition: true,
                  onError: (e) => print(e),
                  onPicked: (pickedData) {
                    pickedData.latLong.latitude;
                    pickedData.latLong.longitude;
                    pickedData.address;
                    pickedData.addressData['country'];
                  }),
            )
          ],
        ),
      ),
      bottomSheet: Container(
        color: Colors.white,
        width: double.infinity,
        height: 180,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
                title: "جستجو", controller: search, validator: (_) {}),
            CustomButton(title: "انتخاب مبدأ", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
