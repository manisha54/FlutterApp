import 'package:flutter/material.dart';
import 'package:flutter_app/model/simple_interest.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});

  @override
  State<SimpleInterest> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
  final principalController =  TextEditingController();
  final timeController =  TextEditingController();
  final rateController =  TextEditingController();

  double result =0;


  @override
  void initState() {
    principalController.text = '7';
    timeController.text ='5';
    rateController.text ='9';
    super.initState();
    
  }

  @override
  void dispose() {
    principalController.dispose();
    timeController.dispose();
    rateController.dispose();
    super.dispose();
  }


  late SI object;

  void simpleinterest(){
    object = SI();
        setState(() {
          result= object.simpleinterest(
              double.parse(principalController.text),
              double.parse(timeController.text),
              double.parse(rateController.text)
          );
        });
  }
  

  final mykey = GlobalKey<FormState>();
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
            child: Form(
              key : mykey,
              child: Column(       // column- multiple widget in vertical & row for horizontal 
                children: [
                  const SizedBox(height: 8),
                   TextFormField(
                    controller: principalController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Enter Principle',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value){
                      if (value!.isEmpty){
                        return ' please enter principal';
                      }
                      return null;

  
                    },
                  ), 
                   const SizedBox(height: 8),
                   TextFormField(
                    controller: timeController,
                    keyboardType: TextInputType.number,
                    
                    decoration: InputDecoration(
                      labelText: 'Enter time',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value){
                      if (value!.isEmpty){
                        return ' please enter time';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 8),
                   TextFormField(
                    controller: rateController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Enter rate',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value){
                      if (value!.isEmpty){
                        return ' please enter rate';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (mykey.currentState!.validate()){
                          simpleinterest();
                        }
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
        ),
      );
  }
}