import 'package:course_app/constants/colors.dart';
import 'package:course_app/models/course.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Course course;
  CustomAppBar(this.course);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40)
                ),
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(course.imageUrl,
                  fit: BoxFit.fitHeight
                  ),
                ),
              ),
              Container(
                // color: Colors.red,
                // height: 20,
              ),
              Container(
                height: 20,
              )
            ],
          ),
          Positioned(
            bottom: 0,
            right: 40,
            child: Container(
              height: 50,
              width: 110,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kAccent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
                ),
                onPressed: (){},
                child: Text('Start class'),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top,
            left: 25,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(25),
              ),
              child: IconButton(
                icon: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Colors.white,
                  ),
                iconSize: 20,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),),
            Positioned(
              top: MediaQuery.of(context).padding.top,
              right: 25,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: IconButton(
                icon: Icon(
                    Icons.bookmark_add_outlined,
                    color: Colors.white,
                  ),
                iconSize: 20,
                onPressed: () {
                  
                },
              ),
              ))
        ],
      ),);
  }
}