import 'package:flutter/material.dart';

class BookingController extends StatefulWidget {
  @override
  _BookingControllerState createState() => _BookingControllerState();
}

class _BookingControllerState extends State<BookingController> {
  final nameTFController = TextEditingController();
  final emailTFController = TextEditingController();
  final noTelpTFController = TextEditingController();
  final cityTFController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    nameTFController.dispose();
    emailTFController.dispose();
    noTelpTFController.dispose();
    cityTFController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Booking"),
        ),
        body: Container(
          // height: 350,
          margin: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: nameTFController,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Full Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              TextField(
                controller: emailTFController,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              TextField(
                controller: noTelpTFController,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    hintText: "No Telp",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              TextField(
                controller: cityTFController,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.location_city),
                    hintText: "City",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              RaisedButton(
                child: Container(
                  height: 50,
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.save), Text("Book Now")],
                  ),
                ),
                textColor: Colors.white,
                color: Colors.blue,
                onPressed: () {
                  return showDialog(
                    context: context,
                    builder: (context) {
                      if (nameTFController.text == "" ||
                          emailTFController.text == "" ||
                          noTelpTFController.text == "" ||
                          cityTFController.text == "") {
                        return AlertDialog(
                          title: Text('Booking Failed'),
                          content: Text("Please fill all form field!"),
                          actions: <Widget>[
                            RaisedButton(
                              color: Colors.blue,
                              child: Text("OK"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            )
                          ],
                        );
                      } else {
                        return AlertDialog(
                          title: Text('Booking Confirmation'),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: <Widget>[
                                Text("Name: " + nameTFController.text),
                                Text("Email: " + emailTFController.text),
                                Text("Phone: " + noTelpTFController.text),
                                Text("City: " + cityTFController.text),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            RaisedButton(
                              color: Colors.blue,
                              child: Text("OK"),
                              onPressed: () {
                                Navigator.of(context).pop();
                                Navigator.of(context).pop();
                              },
                            )
                          ],
                        );
                      }
                    },
                  );
                },
              )
            ],
          ),
        ));
  }
}
