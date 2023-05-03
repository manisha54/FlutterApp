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
            children:  [
              const SizedBox(height: 9),
              const TextField(
                decoration: InputDecoration(
                hintText: "First Name",
                border: OutlineInputBorder()

                ),

              ),
              const SizedBox(height: 9),
              const TextField(
                decoration: InputDecoration(
                hintText: "Last Name",
                border: OutlineInputBorder()

                ),

              ),
              const SizedBox(height: 9),
              const TextField(
                decoration: InputDecoration(
                hintText: "Age",
                border: OutlineInputBorder()
                ),
              ),
              const SizedBox(height: 9),
              const Text(
                  "Gender",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    
                    // fontStyle: FontStyle.italic,
                    // fontWeight: FontWeight.normal,
                  ),
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
                      
              RadioListTile(
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
                decoration: InputDecoration(
                hintText: "Address",
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(vertical: 50)
                

                ),

              ),

              const SizedBox(height: 9),
               SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                  //  add();
                  },
                  child: const Text("Save Student"),
                ),

              ),
              const SizedBox(height: 9),
               SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                  //  add();
                  },
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