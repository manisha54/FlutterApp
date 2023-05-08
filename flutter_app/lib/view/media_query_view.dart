import 'package:flutter/material.dart';

import '../common/show_my_message.dart';

class MediaQueryView extends StatefulWidget {
  const MediaQueryView({super.key});

  @override
  State<MediaQueryView> createState() => _MediaQueryViewState();
}

class _MediaQueryViewState extends State<MediaQueryView> {
  @override
  Widget build(BuildContext context) {
    // double height;
    // double width;
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Media query"),
        centerTitle: true,
        elevation: 0,
        backgroundColor:  const Color(0xFFFF1493),

      ),
      body: Column(
          children:  [
            Flexible(        
              child: Container(
                // height: 600,
                color: Colors.amber,
                width: double.infinity,

                child: ElevatedButton(
                  onPressed: () {
                    showMysnackBar(context, "Hello");
                                      
                  },   
                  child: const Text('click me'),        
                ),               
              ),
              

            ),Flexible(
              // fit: FlexFit.tight,               //fit with empty space
              child: Container(
                // height: 20,
                color: Colors.red,
                width: double.infinity
              ),
            )
            
            
          ],

        ),
        
    
    );
  }

  
}