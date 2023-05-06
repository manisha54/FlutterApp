import 'package:flutter/material.dart';


//for radio button

enum Gendergroup{female,male}

class StudentDetailView extends StatefulWidget {
  const StudentDetailView({super.key});

  @override
  State<StudentDetailView> createState() => _StudentDetailViewState();
}

class _StudentDetailViewState extends State<StudentDetailView> {

//for radio buuton
Gendergroup _gender = Gendergroup.female ;



//for dropdown
String selectedCity = 'Kathmandu';
  final List<String> cities = [
    'Kathmandu',
    'Pokhara',
    'Bardiya',
    'Dhandagi',
    'Kailali',
    'Surkhet',
    'Butwal',
  ];

 


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Student Details"),
        centerTitle: true,
        elevation: 0,
        backgroundColor:  const Color(0xFFFF1493),
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 15),
              const TextField(
                decoration: InputDecoration(
                labelText: "First Name",
                contentPadding:
                EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                        Radius.circular(12),
                    ),
                ),
                enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                    ),
                  ),

                ),
                

              ),
              const SizedBox(height: 15),
              const TextField(
                decoration: InputDecoration(
                labelText: "Last Name",
                contentPadding:
                EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                ),
                enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                  ),

                ),

              ),
              const SizedBox(height: 15),
              const TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                labelText: "Age",
                contentPadding:
                EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                ),
                enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                    ),
                ),
                ),
              ),

              const SizedBox(height: 15),
                Container(
                  alignment: Alignment.topLeft,
                  child: const Text("Select Gender:"),
  
                ),
              
              RadioListTile(
                value: Gendergroup.female,
                title: const Text("Female"),
                groupValue: _gender,
                onChanged: (value){
                      setState(() {
                        _gender = value!;
                      });
                    },
              ),
                      
              RadioListTile<Gendergroup>(
                value: Gendergroup.male,
                title: const Text("Male"),
                groupValue: _gender,
                onChanged: (value){
                      setState(() {
                        _gender = value!;
                      });
                    },
              ),




              const SizedBox(height: 9),
              const TextField(
                keyboardType: TextInputType.text,
                maxLines: null,
                minLines: 2,
                decoration: InputDecoration(
                  labelText: "Address",

                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 0.5),
                    borderRadius: BorderRadius.all(
                        Radius.circular(12),
                    ),                 
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                    ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                      ),
                  ),
                contentPadding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 10.0)               
                ), 
              ),

//radio button
              const SizedBox(height: 9),
              DropdownButtonFormField<String>(
                value: selectedCity,
                onChanged: (String? value){
                  setState(() {
                    selectedCity = value!;
                  });
                },
                items: cities
                    .map((city) => DropdownMenuItem(
                       value: city,
                       child: Text(city),
                    ))
                    .toList(),
                decoration: const InputDecoration(
                  labelText: 'Select your city',
                  contentPadding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.lightGreen,
                    ),
                  ),
                ), 
              ),

              const SizedBox(height: 9),
               SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                   style: TextButton.styleFrom(
                    foregroundColor: Colors.black, 
                    backgroundColor:  const Color.fromARGB(255, 55, 211, 201),
                    minimumSize: const Size(double.infinity, 40),
                  ),
                  child: const Text("Save Student"),
                ),

              ),
              const SizedBox(height: 9),
               SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black, 
                    backgroundColor:  const Color.fromARGB(255, 55, 211, 201),
                    minimumSize: const Size(double.infinity, 40),
                  ),
                  child: const Text("Display Student"),
                
                  
                  
                ),

              ),


            ],

          ),

        ),
        
      ),

    );
  }
}