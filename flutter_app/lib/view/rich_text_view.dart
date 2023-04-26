import 'package:flutter/material.dart';


class RichTextView extends StatefulWidget {
  const RichTextView({super.key});

  @override
  State<RichTextView> createState() => _RichTextState();
}

class _RichTextState extends State<RichTextView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          title:   const Text("Text class"),
          centerTitle: true,
          elevation: 0,
        ),
      body: RichText(
        text : const TextSpan(
          text:  'My name is',
          style: TextStyle(
            color: Colors.red,
            fontSize: 30,
          ),
          children: <TextSpan>[
            TextSpan(
              text: 'Manisha',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
            TextSpan(
              text: 'Tharu',
            )
          ]

        ),
        
          
      ),  
    );
  }
}

















// body: Container(
//         color: Colors.red,
//         width:300,
//         child: const Text(
//           'Hello World',
//           style: TextStyle(
//             fontSize: 30,
//             fontWeight: FontWeight.bold,
//             color: Colors.red,
//           ),
      
//         ),
//       ),  