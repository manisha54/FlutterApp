
import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          title:   const Text("Column"),
          centerTitle: true,
          elevation: 0,
        ),
        body: Column(
       //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
            Row(
              children:  const [
              Icon(
              Icons.star,
              size:100,
              color: Colors.amber,
            ),
            Icon(
              Icons.star,
              size:100,
              color: Colors.red,
            
            ),
            Spacer(),
            Icon(
              Icons.star,
              size:100,
              color: Colors.purple,
            ),
          ],
              
          ),
          Row(
            children:  const [
              Icon(
              Icons.star,
              size:100,
              color: Colors.amber,
            ),
            Icon(
              Icons.star,
              size:100,
              color: Colors.red,
            
            ),
            Spacer(),
            Icon(
              Icons.star,
              size:100,
              color: Colors.purple,
            ),
          ],

          ),
          ],

        )

    );
  }
}