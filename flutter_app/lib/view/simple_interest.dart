import 'package:flutter/material.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});

  @override
  State<SimpleInterest> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
  double principle=0;
  double time=0;
  double rate=0;
  double result =0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Simple Interest"),
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
                    principle = double.parse(value);

                  },
                  decoration: const InputDecoration(
                    labelText: 'Enter Principle',
                    border: OutlineInputBorder(),
                  ),
                ), 
                 const SizedBox(height: 8),
                 TextField(
                  onChanged: (value){
                    time = double.parse(value);

                  },
                  decoration: InputDecoration(
                    labelText: 'Enter time',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                 TextField(
                  onChanged: (value){
                    rate = double.parse(value);

                  },
                  decoration: InputDecoration(
                    labelText: 'Enter rate',
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
                        result = principle * time *rate /100;
                      });
                    },
                    child: const Text('simple interest'),
                  ),
                ),
                const SizedBox(height: 8),
                 Text(
                  "Result is : $result",
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