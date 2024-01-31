import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/cart.dart';
import 'package:flutter_application_1/cart2.dart';
import 'package:flutter_application_1/payment.dart';
import 'package:flutter_paystack/flutter_paystack.dart';
import 'package:intl/intl.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: 
      cart2()
      //cart()
      
      //payment()
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(widget.title.toUpperCase(),
        style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black
      ),),
      )
      );

  }}  
