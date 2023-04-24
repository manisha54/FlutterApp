import 'package:flutter/material.dart';
import 'package:flutter_app/model/circle.dart';


class CircleView extends StatefulWidget {
  const CircleView({super.key});

  @override
  State<CircleView> createState() => _CircleViewState();
}

class _CircleViewState extends State<CircleView> {
  double radius=0;
  double result =0;

  late Circle obj; 

  void areaofcircle(){
    obj = Circle();
    setState(() {
      result = obj.areaOfCircle(radius: radius);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          title:  const Text("Area of circle"),
          centerTitle: true,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(       // column- multiple widget in vertical & row for horizontal 
              children: [
                const SizedBox(height: 8),
                 TextField(
                  onChanged: (value){
                    radius = double.parse(value);

                  },
                    decoration: const InputDecoration(
                    hintText: 'Enter radius ',
                    border: OutlineInputBorder(),
                  ),
                ), 
                 
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      areaofcircle();                     
                    },
                    child: const Text('result'),
                  ),
                ),
                const SizedBox(height: 8),
                 Text(
                  "area of circle is : $result",
                  style: const TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                  ),           
                 
                           
              ],
            ),
          ),
        ),
        

    );
  }
}