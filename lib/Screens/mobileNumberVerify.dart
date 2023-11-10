// import 'package:e_commerce/home.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

// import 'dart:ui_web' show debugEmulateFlutterTesterEnvironment;

void main() {
  // debugEmulateFlutterTesterEnvironment = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage1(title: '',),
    );
  }
}

class MyHomePage1 extends StatefulWidget {
  const MyHomePage1({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage1> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage1> {
  int _counter = 0;

  var syncContacts =false;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    bool forAndroid=false;
    return Scaffold(


        body: Center(
          child: Container(
            width: 353,
            height: 56,
            decoration: const ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4),
                  topRight: Radius.circular(4),
                ),
              ),
            ),

          ),
        )
    );
  }
}
class CustomBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        // border: Border.all(
        //   color: Colors.grey[200]!,
        //   width: 2.0,
        // ),
      ),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back_ios_sharp, // Use a custom arrow icon
          color: Colors.black, // Set the arrow color
        ),
      ),
    );
  }
}

