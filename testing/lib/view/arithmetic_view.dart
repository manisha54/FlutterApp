import 'package:flutter/material.dart';

import '../model/arithemtic.dart';

class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  State<ArithmeticView> createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
  final firstController = TextEditingController();
  final secondController = TextEditingController();
  
  int result=0;

  // @override
  // void initState() {
  //   firstController.text = '4';
  //   secondController.text ='5';
  //   super.initState();
    
  // }


  // @override
  // void dispose() {
  //   firstController.dispose();
  //   secondController.dispose();
  //   super.dispose();
  // }

  late Arithmetic arithmetic;  

  void add(){
    arithmetic = Arithmetic();
    setState(() {
      result = arithmetic.add(
        int.parse(firstController.text), 
        int.parse(secondController.text),
      );
    });
    Navigator.pushNamed(
      context, 
      '/outputview',
      arguments: result,
      );
  }



 void sub(){
    arithmetic = Arithmetic();
    setState(() {
      result = arithmetic.sub(
        int.parse(firstController.text), 
        int.parse(secondController.text),
      );
    });
    Navigator.pushNamed(context,
     '/outputview',
     arguments: result);
  }

  final mykey = GlobalKey<FormState>();
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
            child: Form(
              key: mykey,
              child: Column(       // column- multiple widget in vertical & row for horizontal 
                children: [
                  const SizedBox(height: 8),
                    TextFormField(
                    controller: firstController,
                    keyboardType: TextInputType.number,    //number,email
                 
                      decoration: const InputDecoration(
                      hintText: 'Enter first number',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter first number';
                      }
                      return null;
                  
                    },
                  ), 
                  
                   const SizedBox(height: 8),
                   TextFormField(
                    controller: secondController,
                    keyboardType: TextInputType.number,
                       
                    decoration: InputDecoration(
                      labelText: 'Enter second number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                       ),
                    ),
                    validator: (value){
                      if (value!.isEmpty){
                        return 'Please enter second number';
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
                         add();
                      }
                                        
                      },
                      child: const Text('Add'),
                    ),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        sub();
                      //  showMysnackBar(context, '1.message', color: Colors.black);
                        
                      },
                      child: const Text('Sub'),
                    ),
                  ),
                  
                  const SizedBox(height: 8),
                  //  Text(
                  //   "Result is : $result",
                  //   style: const TextStyle(
                  //     fontSize: 20,
                  //     fontStyle: FontStyle.italic,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  //   ),           
                ],
              ),
            ),
          ),
        ),
      );
  }
}