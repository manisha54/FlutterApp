import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  List<String> batches = [
    "30-A",
    "30-B",
    "30-C",
    "31-A",
    "31-B",
  ];
  String? selectedBatch;


  List<String> selectedCourse = [];

  List<MultiSelectItem<int>> items = [
    MultiSelectItem(1, 'Flutter'),
    MultiSelectItem(2, 'React Js'),
    MultiSelectItem(3, 'Computing'),
    MultiSelectItem(4, 'Ethical'),
  ];

  List<int> selectedItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(7),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  hintText: 'Enter  Fist Name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  hintText: 'Enter  Last Name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  hintText: 'Enter  Phone Number',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              DropdownButtonFormField(
                // validator: (value) {
                //   if (value == null) {
                //     return 'Please select batch';
                //   }
                //   return null;
                // },
                decoration: const InputDecoration(
                  labelText: 'Batch',
                  border: OutlineInputBorder(),
                ),
                items: batches
                    .map(
                      (batch) => DropdownMenuItem(
                        value: batch,
                        child: Text(batch),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedBatch = value;
                  });
                },
              ),
              const SizedBox(
                height: 10,
              ),
      
             MultiSelectDialogField<int>(
                items: items,
                initialValue: selectedItems,
                title: const Text('Select Items'),
                buttonText: const Text('Select courses',),
                onConfirm: (List<int> results) {
                  setState(() {
                    selectedItems = results;
                  });
                },
              ),
              const SizedBox(height: 16),
              // Text('Selected Items: ${selectedItems.join(", ")}'),
      
      
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  hintText: 'Enter  username',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  hintText: 'Enter password',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 30,
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
                        Navigator.pushNamed(context, '/register');
                      },
                      child: const Text("Register"))),
      
                Column(
                  children:  [
                    TextButton(
                      onPressed:() {
                        Navigator.pushNamed(context, '/login');
                        
                      },
                       child: const Text("Dont have an account ?  login here",
                       style: TextStyle(
                        fontSize: 17
                       ),)),

                       
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
