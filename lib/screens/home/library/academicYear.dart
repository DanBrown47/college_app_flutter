import 'package:flutter/material.dart';
import 'package:tc_college_app/screens/home/library/subjects.dart';

class AcademicYearSelector {
  static void show(BuildContext context) {
    final List<String> itemList = [
      'Year 1 Semester 1',
      'Year 1 Semester 2',
      'Year 2 Semester 1',
      'Year 2 Semester 2',
      'Year 3 Semester 1',
      'Year 3 Semester 2',
    ];

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: _buildListItems(context, itemList),
            ),
          ),
        );
      },
    );
  }

  static List<Widget> _buildListItems(
      BuildContext context, List<String> itemList) {
    return itemList.map((itemName) {
      return _buildListItem(context, itemName);
    }).toList();
  }

  static Widget _buildListItem(BuildContext context, String itemName) {
    return ListTile(
      title: Text(itemName),
      onTap: () {
        print('Clicked on $itemName');
        Navigator.of(context).pop();
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SelectSubjects()));
      },
    );
  }
}
