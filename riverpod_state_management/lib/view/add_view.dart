import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logic/arithmetic.dart';


class AddView extends ConsumerStatefulWidget {
  const AddView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddViewState();
}

class _AddViewState extends ConsumerState<AddView> {
  final firstNoController = TextEditingController();
  final secondNoController = TextEditingController();

  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          TextField(
            controller: firstNoController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), labelText: "firstnumber"),
          ),
          TextField(
            controller: secondNoController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), labelText: "second number"),
          ),
          ElevatedButton(
            onPressed: () {
              int first = int.parse(firstNoController.text);
              int second = int.parse(secondNoController.text);
              var arithmetic = ref.read(arithmeticProvider);
              setState(() {
                result = arithmetic.add(first, second);
              });
            },
            child: const Text("add"),
          ),
          const SizedBox(height: 8),
          Text('Result is: $result'),
        ],
      ),
    );
  }
}
