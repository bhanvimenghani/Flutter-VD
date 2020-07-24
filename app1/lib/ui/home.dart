import 'package:flutter/material.dart';

myapp() {
  var mytext = Text(
    'Coffee Shop Cafe',
    textDirection: TextDirection.ltr,
  );

  mypress1() {
    print("pressing mail");
  }

  mypress2() {
    print("pressing call");
  }

  mypress3() {
    print("pressing Airplane");
  }

  var myEmailIcon = Icon(
    Icons.email,
    color: Colors.yellow,
  );

  var myCallIcon = Icon(
    Icons.call,
    color: Colors.amberAccent,
  );

  var myAirIcon = Icon(
    Icons.airline_seat_flat,
    color: Colors.blueGrey,
  );

  var myEmailButton = IconButton(icon: myEmailIcon, onPressed: mypress1);
  var myCallButton = IconButton(icon: myCallIcon, onPressed: mypress2);
  var myAirButton = IconButton(icon: myAirIcon, onPressed: mypress3);

  var url =
      'https://raw.githubusercontent.com/bhanvimenghani/Flutter-VD/master/resources/bhanvi_pic.jpeg';
  var myImage = Image.network(
    url,
    width: double.infinity,
    height: double.infinity,
  );

  var myappbar = AppBar(
    title: mytext,
    backgroundColor: Colors.deepPurple,
    leading: myImage,
    actions: <Widget>[
      myEmailButton,
      myAirButton,
      myCallButton,
    ],
  );

  var myhome = Scaffold(
    appBar: myappbar,
    body: myImage,
    backgroundColor: Colors.amberAccent,
  );

  var design = MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );

  return design;
}
