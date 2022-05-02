import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fresh4delivery/Screens/Adress/addnewaddress.dart';

class PincodeModel {
  String? Pincode;

  PincodeModel({this.Pincode});
}

class BottomPinCode extends StatelessWidget {
  var pins = [
    PincodeModel(
      Pincode: "601395",
    ),
    PincodeModel(
      Pincode: "652255",
    ),
    PincodeModel(
      Pincode: "165162",
    ),
    PincodeModel(
      Pincode: "6412185",
    ),
    PincodeModel(
      Pincode: "5225555",
    ),
  ];
  BottomPinCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
        text: 'Delivery to :',
        style: TextStyle(color: Colors.black),
      ),
      TextSpan(
        text: '______',
        style: TextStyle(color: Colors.black),
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            // print('clicked');
            showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                context: context,
                builder: (context) => Container(
                      height: 160,
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Where do you want to deliver?",
                                ),
                              ),
                            ],
                          ),
                          ElevatedButton.icon(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                )),
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.grey.shade300)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddNew()),
                              );
                            },
                            icon: Icon(
                              Icons.location_on,
                              color: Colors.black.withOpacity(0.5),
                            ),
                            label: Text('Add Address',
                                style: TextStyle(color: Colors.black)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton.icon(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    )),
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.grey.shade300)),
                                onPressed: () {
                                  Navigator.pop(context);
                                  showModalBottomSheet(
                                      context: context,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(20)),
                                      ),
                                      builder: (context) => Container(
                                            child: SingleChildScrollView(
                                              child: Column(
                                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 10,
                                                                top: 10),
                                                        child: Text(
                                                            'Select Pincode',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black)),
                                                      ),
                                                    ],
                                                  ),

                                                  ListView.builder(
                                                      shrinkWrap: true,
                                                      itemCount: 5,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return Pin(
                                                          Pincode: pins[index]
                                                              .Pincode,
                                                        );
                                                      }),

                                                  // Pin(),
                                                  // Pin(),
                                                  // Pin(),
                                                  // Pin(),
                                                  // Pin(),
                                                  // Pin(),
                                                  // Pin(),
                                                  // Pin(),
                                                ],
                                              ),
                                            ),
                                          ));
                                },
                                icon: Icon(Icons.location_on,
                                    color: Colors.black.withOpacity(0.5)),
                                label: Text('Select Pincode',
                                    style: TextStyle(color: Colors.black)),
                              ),
                              ElevatedButton.icon(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    )),
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.grey.shade300)),
                                onPressed: () {},
                                icon: Icon(Icons.location_on,
                                    color: Colors.black.withOpacity(0.5)),
                                label: Text('Detect Location',
                                    style: TextStyle(color: Colors.black)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ));
          },
      ),
    ]));
  }
}

class Pin extends StatelessWidget {
  String? Pincode;
  Pin({Key? key, this.Pincode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        //  onTap: () {
        //   Navigator.of(context).pop();
        // },
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          child: Container(
              // margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              // width: 100,
              // width: MediaQuery.of(context).size.width,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Icon(Icons.location_on, color: Colors.grey.shade700),
                  Text(Pincode!, style: TextStyle(color: Colors.grey.shade700))
                ],
              )),
        ),
      ),
    );
  }
}
