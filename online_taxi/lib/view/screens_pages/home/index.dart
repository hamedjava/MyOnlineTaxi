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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1000,
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
      ),
      bottomSheet: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.white,
            width: double.infinity,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextField(
                      title: "جستجو",
                      controller: search,
                      validator: (_) {
                        if (_formKey.currentState!.validate()) {
                          return "";
                        } else {
                          return "Error";
                        }
                      }),
                  CustomButton(title: "انتخاب مبدأ", onPressed: () {}),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<LatLong> parseLatLngFromStringList(List<String> strings) {
    List<LatLong> latLngs = [];
    for (String s in strings) {
      List<String> parts = s.split(',');
      double lat = double.parse(parts[0]);
      double lng = double.parse(parts[1]);
      latLngs.add(LatLong(lat, lng));
    }
    return latLngs;
  }

  // moveToSearchedLocationUser(String location) {
  //   parseLatLngFromStringList();
  // }
}
