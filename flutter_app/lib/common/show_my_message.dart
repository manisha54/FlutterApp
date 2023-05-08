import 'package:flutter/material.dart';


showMysnackBar(BuildContext context,String message,
  {Color color = Colors.green}){   //defult color green
     
     ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
          backgroundColor: Colors.green,
          content: Text("hello world"),
          duration: Duration(seconds: 3),
          behavior: SnackBarBehavior.floating,   
          ),
      );
  }



