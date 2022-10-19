import 'package:course_app/models/course.dart';
import 'package:course_app/screens/home/widget/category_title.dart';
import 'package:course_app/screens/home/widget/course_item.dart';
import 'package:flutter/material.dart';


class FeatureCourse extends StatelessWidget {
  final CourseList = Course.generateCourse();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          children: [
              CategoryTitle('Top of the week', 'view all'),
              Container(
                padding: EdgeInsets.all(25),
                height: 300,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: CourseList.length,
                  itemBuilder: ((context, index) => 
                    CourseItem(CourseList[index])
                  ), 
                  separatorBuilder: (context, int index) => 
                    SizedBox(width: 15)
                   ,  
                ),
              )
          ],
      ),
    );
  }
}