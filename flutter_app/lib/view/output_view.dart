import 'package:flutter/material.dart';

class OutputView extends StatefulWidget {
  const OutputView({super.key});

  @override
  State<OutputView> createState() => _OutputViewState();
}

class _OutputViewState extends State<OutputView> {
  int? result;
  @override
  void didChangeDependencies() {
   result = ModalRoute.of(context)!.settings.arguments as int?;
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
   
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Output"),
          centerTitle: true,
          elevation: 0,

      ),
      body: const Center(
        child: Text('null'),
        
      ),

    );
  }
}