import 'package:flutter/material.dart';

class LoadImageView extends StatefulWidget {
  const LoadImageView({super.key});

  @override
  State<LoadImageView> createState() => _LoadImageViewState();
}

class _LoadImageViewState extends State<LoadImageView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          title: const Text("Load Image"),
          centerTitle: true,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children:  [
               const CircleAvatar(
                radius: 150,
                backgroundImage: AssetImage('assets/images/download.jpg'),

               ),
               Image.network(
                'https://1.bp.blogspot.com/-kK7Fxm7U9o0/YN0bSIwSLvI/AAAAAAAACFk/aF4EI7XU_ashruTzTIpifBfNzb4thUivACLcBGAsYHQ/s1280/222.jpg',
                fit:BoxFit.fitHeight,
                
               ),
        
             
              
            ],
            
        
          ),
        ),

    );
  }
}





// for (int i=0; i<100; i++) 
//                 const CircleAvatar(
//                 radius: 150,
//                 backgroundImage: AssetImage('assets/images/download.jpg'),
        
//               ),