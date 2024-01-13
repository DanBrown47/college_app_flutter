import 'package:flutter/material.dart';
import 'package:tc_college_app/screens/home/library/units.dart';
import 'package:tc_college_app/screens/shared/constants.dart';

class SelectSubjects extends StatefulWidget {
  const SelectSubjects({super.key});

  @override
  State<SelectSubjects> createState() => _SelectSubjectsState();
}

class _SelectSubjectsState extends State<SelectSubjects> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    const subjectNames = [
      'Subject Name 1',
      'Subject Name 2',
      'Subject Name 3',
      'Subject Name 4',
      'Subject Name 5',
    ];
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: themeColor,
        title: Text(
          'Subjects',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(screenSize.width * 0.04),
        child: ListView.builder(
            itemCount: subjectNames.length,
            itemBuilder: (context, index) {
              return Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  margin:
                      EdgeInsets.only(bottom: screenSize.height * 0.01),
                  height: screenSize.height * 0.19,
                  width: double.infinity,
                  child: ListTile(
                    title: Text(
                      subjectNames[index],
                      style: TextStyle(
                        fontSize: (20.0),
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SelectUnits()));
                    },
                  ));
            }),
      ),
    );
  }
}
