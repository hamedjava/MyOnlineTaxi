import 'package:flutter/material.dart';
import 'package:online_taxi/view/components/form/custom_button.dart';
import 'package:online_taxi/view/components/form/custom_textformfield.dart';
import 'package:location_picker_flutter_map/location_picker_flutter_map.dart';
import 'package:online_taxi/view/screens_pages/order/waiting.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  TextEditingController search = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String textBtn = "انتخاب مبدا";

  String mabda = "";
  String destination = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                height: MediaQuery.of(context).size.height * 1,
                color: Colors.transparent,
                child: FlutterLocationPicker(
                    // initPosition: LatLong(23, 89),
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
                    selectLocationButtonText: textBtn,
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
                      if (textBtn == "انتخاب مبدا") {
                        setState(() {
                          mabda = pickedData.address;
                          textBtn = "انتخاب مقصد";
                        });
                        ScaffoldMessenger.of(context).showMaterialBanner(
                          MaterialBanner(
                            content: Text(mabda),
                            actions: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    textBtn = "انتخاب مبدا";
                                  });
                                  ScaffoldMessenger.of(context)
                                      .clearMaterialBanners();
                                },
                                icon: Icon(Icons.close),
                              ),
                            ],
                          ),
                        );
                      } else if (textBtn == "انتخاب مقصد") {
                        setState(() {
                          destination = pickedData.address;
                          textBtn = "ثبت سفارش";
                        });
                        ScaffoldMessenger.of(context).clearMaterialBanners();
                        ScaffoldMessenger.of(context).showMaterialBanner(
                          MaterialBanner(
                            content: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(mabda),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(destination),
                                ),
                              ],
                            ),
                            actions: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    textBtn = "انتخاب مقصد";
                                  });
                                  ScaffoldMessenger.of(context)
                                      .clearMaterialBanners();
                                },
                                icon: Icon(Icons.close),
                              ),
                            ],
                          ),
                        );
                      } else {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Waiting()));
                      }
                    }),
              )
            ],
          ),
        ),
      ),
      // bottomSheet: SingleChildScrollView(
      //   scrollDirection: Axis.vertical,
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Container(
      //       color: Colors.white,
      //       width: double.infinity,
      //       child: Form(
      //         key: _formKey,
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             CustomTextField(
      //                 title: "جستجو",
      //                 controller: search,
      //                 validator: (_) {
      //                   if (_formKey.currentState!.validate()) {
      //                     return "";
      //                   } else {
      //                     return "Error";
      //                   }
      //                 }),
      //             CustomButton(title: "انتخاب مبدأ", onPressed: () {}),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
