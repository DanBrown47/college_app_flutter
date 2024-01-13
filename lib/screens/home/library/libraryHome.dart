import 'package:flutter/material.dart';
import 'package:tc_college_app/screens/home/library/academicYear.dart';
import 'package:tc_college_app/screens/shared/constants.dart';

class LibraryHome extends StatefulWidget {
  const LibraryHome({super.key});

  @override
  State<LibraryHome> createState() => _LibraryHomeState();
}

class _LibraryHomeState extends State<LibraryHome> {
  @override
  Widget build(BuildContext context) {
    const courseNames = [
      'Course Name 1',
      'Course Name 2',
      'Course Name 3',
      'Course Name 4',
      'Course Name 5',
      'Course Name 5',
      'Course Name 1',
      'Course Name 2',
      'Course Name 3',
      'Course Name 4',
      'Course Name 5',
      'Course Name 5',
      'Course Name 1',
      'Course Name 2',
      'Course Name 3',
      'Course Name 4',
      'Course Name 5',
      'Course Name 5',
      'Course Name 1',
      'Course Name 2',
      'Course Name 3',
      'Course Name 4',
      'Course Name 5',
      'Course Name 5',
      'Course Name 1',
      'Course Name 2',
      'Course Name 3',
      'Course Name 4',
      'Course Name 5',
      'Course Name 5',
      'Course Name 1',
      'Course Name 2',
      'Course Name 3',
      'Course Name 4',
      'Course Name 5',
      'Course Name 5',
    ];
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenSize.height * 0.3),
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: screenSize.width * 0.05,
              vertical: screenSize.height * 0.05),
          decoration: BoxDecoration(
              color: themeColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0))),
          height: screenSize.height * 0.3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                'Welcome!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.001,
              ),
              Text(
                "Library",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60.0,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(screenSize.width * 0.02),
        child: ListView.builder(
            itemCount: courseNames.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: screenSize.height * 0.01),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(20.0))
                ),
                height: 150.0,
                width: double.infinity,
                child: ListTile(
                  title: Text(
                    courseNames[index],
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  onTap: () {
                    AcademicYearSelector.show(context);
                    print('clicked on ${courseNames[index]}');
                  },
                ),
              );
            }),
      ),
    );
  }
}
