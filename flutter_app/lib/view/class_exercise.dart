import 'package:flutter/material.dart';


class ClassExercise extends StatefulWidget {
  const ClassExercise({super.key});

  @override
  State<ClassExercise> createState() => _ClassExerciseState();
}

class _ClassExerciseState extends State<ClassExercise> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Rows and Column"),
        centerTitle: true,
        elevation: 0,
        backgroundColor:  const Color(0xFFFF1493),
      ),

      body: Column(
        children:  [
          Row(
            children:  [
            Flexible(
              child: Container(
                height: 100,
                color: Colors.blueAccent,         
              ),             
            ),
             Flexible(
              child: Container(
                height: 100,
                color: Colors.red,
          
              ),             
            ),Flexible(
              child: Container(
                height: 100,
                color: Colors.blue,
              
          
              ),             
            ),
            ],
          ),
          Flexible(
            fit: FlexFit.tight,
              child: Container(
                height: 200,
                color:  const Color(0xFF3906E3),
                
              
          
              ),             
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                height: 200,
                color: Colors.blue,
          
              ),             
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                height: 200,
                color:  const Color(0xFF3906E3),
          
              ),             
            ),
        ],

        
      )

    );
  }
}