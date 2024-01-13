import 'package:flutter/material.dart';
import 'package:tc_college_app/screens/shared/constants.dart';

class StudentProfile extends StatefulWidget {
  const StudentProfile({super.key});

  @override
  State<StudentProfile> createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenSize.height * 0.3),
        child: Container(
          decoration: BoxDecoration(
              color: themeColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
              )),
          height: screenSize.height * 0.35,
          width: screenSize.width,
          padding: EdgeInsets.symmetric(vertical: screenSize.height * 0.025),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SafeArea(
                child: CircleAvatar(
                  radius: 70.0,
                  backgroundImage: AssetImage(
                      'assets/images/irene-strong-v2aKnjMbP_k-unsplash.jpg'),
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.03,
              ),
              Text(
                'Abraham',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [Container(
          padding: EdgeInsets.symmetric(
              vertical: screenSize.height * 0.07,
              horizontal: screenSize.width * 0.08),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Name',
                style: TextStyle(color: Colors.grey[700], fontSize: 20.0),
              ),
              SizedBox(
                height: screenSize.height * 0.015,
              ),
              Text(
                'Abraham',
                style: TextStyle(color: Colors.black, fontSize: 20.0),
              ),
              SizedBox(
                height: screenSize.height * 0.025,
              ),
              Text(
                'Email',
                style: TextStyle(color: Colors.grey[700], fontSize: 20.0),
              ),
              SizedBox(
                height: screenSize.height * 0.015,
              ),
              Text(
                'abraham@gmail.com',
                style: TextStyle(color: Colors.black, fontSize: 20.0),
              ),
              SizedBox(
                height: screenSize.height * 0.025,
              ),
              Text(
                'Phone',
                style: TextStyle(color: Colors.grey[700], fontSize: 20.0),
              ),
              SizedBox(
                height: screenSize.height * 0.015,
              ),
              Text(
                '+91 9876543210',
                style: TextStyle(color: Colors.black, fontSize: 20.0),
              ),
              SizedBox(
                height: screenSize.height * 0.025,
              ),
              Text(
                'Location',
                style: TextStyle(color: Colors.grey[700], fontSize: 20.0),
              ),
              SizedBox(
                height: screenSize.height * 0.015,
              ),
              Text(
                'Kochi, Kerala',
                style: TextStyle(color: Colors.black, fontSize: 20.0),
              ),
              SizedBox(
                height: screenSize.height * 0.05,
              ),
              ElevatedButton(
                onPressed: () {
                  showLogoutDialog(context);
                },
                child: Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: BeveledRectangleBorder(),
                  primary: themeColor,
                  minimumSize: const Size.fromHeight(50),
                ),
              )
            ],
          ),
        ),]
      ),
    );
  }
}
