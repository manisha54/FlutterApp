import 'package:flutter/material.dart';

class CardList extends StatefulWidget {
  const CardList({super.key});

  @override
  State<CardList> createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Card list"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.red,

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children:  [
              const SizedBox(height: 10),
              Container (
        
               height: 400,
               decoration: BoxDecoration(
               border: Border.all(
                  color: const Color(0xFFF1F7C4),
                  width: 5,
                  style: BorderStyle.solid
                ),  borderRadius: BorderRadius.circular(20),
                 color: const Color(0xFFF1F7C4),              
               ),   
               child: Column(
                 children: [
                  Align(
                 //   alignment: const Alignment(-0.5, -0.5),
                    child: Image.asset("assets/images/sparrow.jpg", height: 300, width: 500),
                  ),
                  const SizedBox(height: 10,),
                  const Text('Sparrow',
                  style: TextStyle(
                   fontSize: 65,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                ],
               ),
              ),
        
              //next image
              const SizedBox(height: 8),
              Container (
               height: 400,
               decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xFFF1F7C4),
                  width: 5,
                  style: BorderStyle.solid
                ),  borderRadius: BorderRadius.circular(20),
                 color: const Color(0xFFF1F7C4),              
                ),   
              child: Column(
                children: [
                  Align(
                    alignment: const Alignment(0, -0.5),
                    child: Image.asset("assets/images/lion.jpg", height: 300, width: 500),
                  ),
                  const SizedBox(height: 10,),
                  const Text('Lion',
                  style: TextStyle(
                    fontSize: 65,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              ),


              //next image
              const SizedBox(height: 8),
              Container (
               height: 400,
               decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xFFF1F7C4),
                  width: 5,
                  style: BorderStyle.solid
                ),  borderRadius: BorderRadius.circular(20),
                 color: const Color(0xFFF1F7C4),              
                ),   
              child: Column(
                children: [
                  Align(
                    alignment: const Alignment(0, -0.5),
                    child: Image.asset("assets/images/elephant.jpg", height: 300, width: 500),
                  ),
                  const SizedBox(height: 10,),
                  const Text('Elephant',
                  style: TextStyle(
                    fontSize: 65,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              ),
            ],
          
          ),
        ),
      ),
      
    );
  }
}