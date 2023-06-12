import 'package:flutter/material.dart';

class BatchView extends StatefulWidget {
  const BatchView({super.key});

  @override
  State<BatchView> createState() => _BatchViewState();
}

class _BatchViewState extends State<BatchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Batch"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(9),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                hintText: 'Batch Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ConstrainedBox(
                constraints: const BoxConstraints.tightFor(
                    width: double.infinity, height: 40),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(90.0),
                        )),
                    onPressed: () {
                      Navigator.pushNamed(context, '/batch');
                    },
                    child: const Text("Add Batch"))),
          ],
        ),
      ),
    );
  }
}
