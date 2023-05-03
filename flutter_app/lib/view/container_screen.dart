import 'package:flutter/material.dart';

class ContainerView extends StatefulWidget {
  const ContainerView({super.key});

  @override
  State<ContainerView> createState() => _ContainerViewState();
}

class _ContainerViewState extends State<ContainerView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          title: const Text("Container screen"),
          centerTitle: true,
          elevation: 0,
        ),

        body:  Center(
          child: Container(
            alignment: Alignment.center,     
            height: 200,
            width: 200,
            decoration:  BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
              border: Border.all(
                color: Colors.black26,
                width: 5,

              )

              
            ),
            child: const Text("hello world"),
           
            

          ),
          
        ),
  

    );
  }
}