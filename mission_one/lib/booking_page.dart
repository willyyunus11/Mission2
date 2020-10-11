//    import 'dart:html';

import 'package:flutter/material.dart';

class BookingController extends StatefulWidget {
  @override
  _BookingControllerState createState() => _BookingControllerState();
}

class _BookingControllerState extends State<BookingController> {
  final nameField = TextEditingController();
  final emailField = TextEditingController();
  final phoneField = TextEditingController();
  final cityField = TextEditingController();

  List<String> _locations = [
    'HRV S MT',
    'HRV S CVT',
    'HRV E CVT',
    'HRV SE CVT',
    'HRV 1.8 PRESTIGE'
  ]; // Option 2
  String _selectedType;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    nameField.dispose();
    emailField.dispose();
    phoneField.dispose();
    cityField.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Book Test Drive"),
          backgroundColor: Colors.red,
        ),
        body: Container(
          margin: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: nameField,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Full Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              TextField(
                controller: emailField,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              TextField(
                controller: phoneField,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    hintText: "Phone",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              TextField(
                controller: cityField,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.location_city),
                    hintText: "City",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              new DropdownButton<String>(
                hint: Text('Choose Car Type'), // Not necessary for Option 1
                value: _selectedType,
                onChanged: (newValue) {
                  setState(() {
                    _selectedType = newValue;
                  });
                },
                items: _locations.map((location) {
                  return DropdownMenuItem(
                    child: new Text(location),
                    value: location,
                  );
                }).toList(),
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
                color: Colors.red,
                onPressed: () {
                  return showDialog(
                    context: context,
                    builder: (context) {
                      if (nameField.text == "" ||
                          emailField.text == "" ||
                          phoneField.text == "" ||
                          cityField.text == "") {
                        return AlertDialog(
                          title: Text('Booking Failed'),
                          content: Text("Please fill all form field!"),
                          actions: <Widget>[
                            RaisedButton(
                              color: Colors.red,
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
                                Text("Name: " + nameField.text),
                                Text("Email: " + emailField.text),
                                Text("Phone: " + phoneField.text),
                                Text("City: " + cityField.text),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            RaisedButton(
                              color: Colors.red,
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
