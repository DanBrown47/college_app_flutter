import 'package:flutter/material.dart';
import 'package:tc_college_app/screens/authentication/forgotPassword.dart';
import 'package:tc_college_app/screens/home/home.dart';
import 'package:tc_college_app/screens/shared/constants.dart';
import 'package:tc_college_app/screens/shared/customShapes.dart';
import 'package:flutter/gestures.dart';
import 'package:tc_college_app/services/deviceId.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: <Widget>[
          Container(
            color: themeColor,
          ),
          Container(
            child: Transform.translate(
              offset: Offset(-screenSize.width * 0.2, screenSize.height * 0.1),
              child: Transform.scale(
                scaleY: (screenSize.width / 4) * 0.015,
                child: CustomPaint(
                  painter: FaceOutlinePainter(),
                  child: Container(),
                ),
              ),
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        width: screenSize.width,
                        height: screenSize.height * 0.6,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40.0),
                              topRight: Radius.circular(40.0),
                            )),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              screenSize.width * 0.12,
                              screenSize.height * 0.06,
                              screenSize.width * 0.12,
                              screenSize.height * 0.08),
                          child: Form(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Login',
                                  style: TextStyle(
                                      color: themeColor,
                                      fontSize: 28.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: (screenSize.height / 2) * 0.06,
                                ),
                                Text(
                                  'User id',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: (screenSize.height / 2) * 0.01,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    )),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 2.0)),
                                    hintText: 'Enter your user id',
                                  ),
                                ),
                                SizedBox(
                                  height: (screenSize.height / 2) * 0.06,
                                ),
                                Text(
                                  'Password',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: (screenSize.height / 2) * 0.01,
                                ),
                                TextFormField(
                                  obscureText: !_isPasswordVisible,
                                  decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1.0,
                                      )),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2.0,
                                      )),
                                      hintText: 'Enter your password',
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            _isPasswordVisible =
                                                !_isPasswordVisible;
                                          });
                                        },
                                        icon: _isPasswordVisible
                                            ? Icon(Icons.visibility)
                                            : Icon(Icons.visibility_off),
                                        color: Colors.grey[500],
                                      )),
                                ),
                                SizedBox(
                                  height: (screenSize.height / 2) * 0.08,
                                ),
                                GestureDetector(
                                  behavior: HitTestBehavior.translucent,
                                  child: RichText(
                                      text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: "Forgot Password?",
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ForgotPassword()));
                                          })
                                  ])),
                                ),
                                SizedBox(
                                  height: (screenSize.height / 2) * 0.08,
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: ElevatedButton(
                                        onPressed: ()async{
                                          print(
                                              'device id : ${await DeviceIdGenerator().getDeviceId()}');
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Home()));
                                        },
                                        style: ElevatedButton.styleFrom(
                                          minimumSize:
                                              const Size.fromHeight(50),
                                          primary: themeColor,
                                          shape: BeveledRectangleBorder(),
                                        ),
                                        child: Text(
                                          'Login',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            letterSpacing: 1.5,
                                          ),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
