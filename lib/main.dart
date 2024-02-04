import 'package:flutter/material.dart';
// ignore: unused_import
import 'dart:ui';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyContactBook(),
    );
  }
}

class MyContactBook extends StatefulWidget {
  const MyContactBook({super.key});

  _MyContactBookState createState() => _MyContactBookState();
}

class _MyContactBookState extends State<MyContactBook> {
  final _contactkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      key: _contactkey,
      appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Center(child: Text(
          "My Contact",
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      )
      )
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children:[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 15),
              child: TextFormField(
                validator: (value){
                  if(value==null || value.isEmpty){
                    return'Please put the first name';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText : "First Name",
                  hintText: "ABC",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.black, width: 10.0),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 15),
              child: TextFormField(
                validator: (value){
                  if(value==null || value.isEmpty){
                    return;
                  }
                },
                decoration: InputDecoration(
                  labelText : "Last Name",
                  hintText: "XYZ",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.black, width: 10.0),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 15),
              child: TextFormField(
                validator: ( value){
                  if(value==null || value.isEmpty || value.length < 10){
                    return 'please enter a valid number';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText : "Number",
                  hintText: "Phone Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.black, width: 10.0),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText : "Relation",
                  hintText: "Eg. Busniess",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.black, width: 10.0),
                  ),
                ),
              ),
            ),

            ElevatedButton(
                onPressed: null,
                child: Text("Save"),
            ),

          ],
        ),
      ),
    );
  }
}
