import 'package:flutter/material.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  final _numController = TextEditingController();

  int ? first, second;
  int result =0;
  String operator ='';

  _calculate(){
    switch (operator){
      case '+':
      setState(() {
        result = first! + second!;
      });
       break;
      case '-':
      setState(() {
        result = first! - second!;
      });
       break;
      case '*':
      setState(() {
        result = first! * second!;
      });
       break; 
    }
    _numController.text = result.toString();
  }


   final _textController = TextEditingController();
   List<String> lstButton = [
    "C","*","/","<-",
    "1", "2", "3", "+",
    "4", "5", "6", "-",
    "7", "8", "9", "*",
    "%", "0",".", "="
   ];
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Calculator App'),
        centerTitle: true,
      ),

      body: Column(
        children:  [
          TextFormField(
            controller: _textController,
            textAlign: TextAlign.end,
            decoration: const InputDecoration(
              hintText: '0',
            ),
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),                    
          ),
          Expanded(
            child: GridView.count(
              padding:  const EdgeInsets.all(8),
              crossAxisCount: 4,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              children:  [
                for (int i=0; i<lstButton.length; i++) ...{
                  ElevatedButton(
                    onPressed: () {
                       if (checkIsNumber()) {
                         _textController.text =
                            '${_textController.text}${lstButton[i]}';  
                       }
                       _calculate();

                      },
                     child:  Text(
                      lstButton[i],
                      style: const TextStyle(
                        fontSize:20,
                        fontWeight: FontWeight.bold
                      ),

                     ),
                    ),

                }
                
              ],
              )
          ),
          
        ],
      ),

    );
  }
}

bool checkIsNumber(){
    return true;
  }

