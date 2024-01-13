import 'package:flutter/material.dart';
import 'package:tc_college_app/screens/home/library/studyMaterials.dart';
import 'package:tc_college_app/screens/shared/constants.dart';

class SelectUnits extends StatefulWidget {
  const SelectUnits({super.key});

  @override
  State<SelectUnits> createState() => _SelectUnitsState();
}

class _SelectUnitsState extends State<SelectUnits> {
  @override
  Widget build(BuildContext context) {
    const units = [
      'Unit 1',
      'Unit 2',
      'Unit 3',
      'Unit 4',
      'Unit 5',
    ];
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
         iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: themeColor,
        title: Text(
          'Units',
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
          itemCount: units.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: screenSize.height * 0.005),
              child: ListTile(
                title: Text(
                  units[index],
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StudyMaterials()));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
