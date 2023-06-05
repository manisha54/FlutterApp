import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logic/si_calculate.dart';

class SICalculateView extends ConsumerStatefulWidget {
  const SICalculateView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SICalculateViewState();
}

final outputProvider = StateProvider<double>((ref) => 0.0);


class _SICalculateViewState extends ConsumerState<SICalculateView> {
   final principalController = TextEditingController();
   final timeController = TextEditingController();
   final rateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("si"),
      ),
      body:  Column(
        children: [
          const SizedBox(
            height: 30,
          ),
           TextField(
            controller: principalController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), 
                labelText: "principal"),
          ),

          const SizedBox(
            height: 10,
          ),
           TextField(
            controller: timeController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), 
                labelText: "Time"),
          ),
          const SizedBox(
            height: 10,
          ),
           TextField(
            controller: rateController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), 
                labelText: "Rate"),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed:() {
              int principal = int.parse(principalController.text);
              int time = int.parse(timeController.text);
              int rate = int.parse(rateController.text);
              var si = ref.read(sIProvider);
               
              ref.read(outputProvider.notifier).state = si.simpleinterest(principal, time, rate);
            }, 
            child: const Text("Result")),
          const SizedBox(height: 8),
          Text('Result is: ${ref.watch(outputProvider)}'),

        ],
      ),
    );
  }
}
