import 'package:flutter/material.dart';


class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  State<ArithmeticView> createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
  int first =0;
  int second=0;
  int result=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Arithmetic"),
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
                    first = int.parse(value);

                  },
                    decoration: const InputDecoration(
                    hintText: 'Enter first number',
                    border: OutlineInputBorder(),
                  ),
                ), 
                 const SizedBox(height: 8),
                 TextField(
                   onChanged: (value){
                    second = int.parse(value);

                  },
                  decoration: InputDecoration(
                    labelText: 'Enter second number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        result = first + second;
                      });
                    },
                    child: const Text('Add'),
                  ),
                ),
                const SizedBox(height: 8),
                 Text(
                  "Sum is : $result",
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