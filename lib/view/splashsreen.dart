import 'dart:async';
import 'package:flutter/material.dart';
import 'register.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}):super(key: key);

  @override
  State<SplashScreen> createState()=> _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
    
    @override
    void initState(){
      super.initState();
       Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (content) => const RegisterScreen())));
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Center(child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceAround ,
          children:const[
          Text("HOMESTAY RAYA", 
          style: TextStyle(
            fontSize:24,
            fontWeight:FontWeight.w800)),
          CircularProgressIndicator(),
          Text("version 1.0")
        ],)),
      );
    }
}