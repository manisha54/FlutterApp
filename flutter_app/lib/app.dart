import 'package:flutter/material.dart';
import 'package:flutter_app/view/area_circle.dart';
import 'package:flutter_app/view/arithmetic_view.dart';
import 'package:flutter_app/view/card_list.dart';
import 'package:flutter_app/view/class_exercise.dart';
import 'package:flutter_app/view/column_view.dart';
import 'package:flutter_app/view/container_screen.dart';
import 'package:flutter_app/view/dashboard.dart';
import 'package:flutter_app/view/display_name_view.dart';
import 'package:flutter_app/view/edit_student_detail.dart';
import 'package:flutter_app/view/load_image.dart';
import 'package:flutter_app/view/media_query_view.dart';
import 'package:flutter_app/view/output_view.dart';
import 'package:flutter_app/view/rich_text_view.dart';
import 'package:flutter_app/view/simple_interest.dart';
import 'package:flutter_app/view/student_detail.dart';
import 'package:flutter_app/view/student_view.dart';

//import 'view/simple_interest.dart';




class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context) => const DashboardView(),
        '/arithmeticRoute' : (context) => const ArithmeticView(),
        '/SimpleInterest' : (context) => const SimpleInterest(),
        '/AreaOfCircle' : (context) => const CircleView(),
        '/displayname' : (context) => const DisplayName(),
        '/richtext' : (context) => const RichTextView(),
        '/columnview' : (context) => const ColumnView(),
        '/outputview' : (context) => const OutputView(),
        '/containerview' : (context) => const ContainerView(),
        '/loadimageview' : (context) => const LoadImageView(),
        '/studentdetailview' : (context) => const StudentDetailView(),
        '/editstudentdetailview' : (context) => const EditStudentDetailview(),
        '/studentdetail' : (context) => const StudentsInfo(),
        '/mediaquery' : (context) => const MediaQueryView(),
        '/classexercise' : (context) => const ClassExercise(),
        '/cardlist' : (context) => const CardList(),
        
        
      },
      
    );  
  }
}