import 'package:course_app/models/module.dart';
import 'package:course_app/screens/home/widget/course_module.dart';
import 'package:flutter/material.dart';

class CourseProgress extends StatelessWidget {
  final modulesList = Module.generateModules();
  CourseProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('The Process',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Row(children: [
                Image.asset('assets/icons/grid.png',
                width: 25,),
                SizedBox(width: 15,),
                Image.asset('assets/icons/list.png',
                width: 25,)
              ],)
            ],
          ),
          SizedBox(height: 15,),
          // CourseModule(module: modulesList[0],),
          ...modulesList.map((e) => CourseModule(module: e)).toList(),
        ],
      ),
    );
  }
}