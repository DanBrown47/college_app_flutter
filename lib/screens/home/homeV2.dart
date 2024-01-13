//code for home with grid view
// import 'package:flutter/material.dart';
// import 'package:tc_college_app/screens/home/library/libraryHome.dart';
// import 'package:tc_college_app/screens/home/studentProfile.dart';
// import 'package:tc_college_app/screens/shared/constants.dart';

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Size screenSize = MediaQuery.of(context).size;
//     debugPrint(screenSize.width.toString());
//     debugPrint(screenSize.height.toString());
//     final List<Map<String, dynamic>> gridItems = [
//       {'item': 'Library', 'icon': Icons.book},
//       {'item': 'Student Profile', 'icon': Icons.person},
//       // {'item': 'Library', 'icon': Icons.book},
//       // {'item': 'Student Profile', 'icon': Icons.person},
//     ];

//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: PreferredSize(
//           preferredSize: Size.fromHeight(screenSize.height * 0.09),
//           child: Column(
//             children: <Widget>[
//               Expanded(
//                 child: Container(
//                   padding: EdgeInsets.symmetric(
//                       horizontal: screenSize.width * 0.05,
//                       vertical: screenSize.height * 0.015),
//                   color: themeColor,
//                   child: SafeArea(
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: <Widget>[
//                         CircleAvatar(
//                           backgroundColor: Colors.white,
//                           backgroundImage:
//                               AssetImage('assets/logo/TC_college_logo1.png'),
//                         ),
//                         Expanded(
//                           child: Align(
//                             alignment: Alignment.bottomRight,
//                             child: GestureDetector(
//                               onTap: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) =>
//                                             StudentProfile()));
//                               },
//                               child: CircleAvatar(
//                                 backgroundImage: AssetImage(
//                                     'assets/images/irene-strong-v2aKnjMbP_k-unsplash.jpg'),
//                               ),
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           )),
//       body: Container(
//         padding: EdgeInsets.symmetric(
//             vertical: screenSize.height * 0.05,
//             horizontal: screenSize.width * 0.06),
//         child: Column(
//           children: <Widget>[
//             Container(
//                 decoration: BoxDecoration(
//                     color: Color.fromARGB(255, 243, 242, 242),
//                     borderRadius: BorderRadius.circular(10),
//                     boxShadow: [
//                       BoxShadow(
//                         blurRadius: 1.0,
//                       )
//                     ]),
//                 padding: EdgeInsets.symmetric(
//                     vertical: screenSize.height * 0.025,
//                     horizontal: screenSize.width * 0.05),
//                 child: Image.asset('assets/logo/TC_college_logo.png')),
//             SizedBox(
//               height: screenSize.height * 0.05,
//             ),
//             Divider(
//               color: Colors.grey[400],
//               thickness: 3.0,
//             ),
//             SizedBox(
//               height: screenSize.height * 0.05,
//             ),
//             Expanded(
//               child: Container(
//                 child: GridView.builder(
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 2,
//                       mainAxisSpacing: screenSize.height * 0.02,
//                       crossAxisSpacing: screenSize.width * 0.04,
//                       childAspectRatio: 1.4),
//                   itemCount: gridItems.length,
//                   itemBuilder: (context, index) {
//                     return Container(
//                       decoration: BoxDecoration(
//                           // gradient: LinearGradient(
//                           //   begin: Alignment.topLeft,
//                           //   end: Alignment.bottomRight,
//                           //   colors: [
//                           //     Colors.grey[100]!,
//                           //     Colors.grey[200]!,
//                           //     Colors.grey[300]!,
//                           //     Colors.grey[400]!,
//                           //   ],
//                           // ),
//                           boxShadow: [
//                             BoxShadow(
//                               blurRadius: 1.0,
//                             )
//                           ],
//                           borderRadius: BorderRadius.circular(10.0),
//                           color: Color.fromARGB(255, 244, 226, 226),
//                           border: Border.all(
//                             color: themeColor,
//                             width: 2.5,
//                           )),
//                       child: ListTile(
//                         contentPadding: EdgeInsets.all(10.0),
//                         onTap: () {
//                           Navigator.push(context,
//                               MaterialPageRoute(builder: (context) {
//                             switch (index) {
//                               case 0:
//                                 {
//                                   return LibraryHome();
//                                 }
//                               case 1:
//                                 {
//                                   return StudentProfile();
//                                 }
//                               default:
//                                 return Home();
//                             }
//                           }));
//                         },
//                         leading: Icon(
//                           gridItems[index]['icon'],
//                           // color: Colors.white,
//                           color: themeColor,
//                           size: 30.0,
//                         ),
//                         title: Text(
//                           gridItems[index]['item'],
//                           style: TextStyle(
//                             fontSize: 16.0,
//                             // color: Colors.white,
//                             color: themeColor,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }




// code for home with list view
// import 'package:flutter/material.dart';
// import 'package:tc_college_app/screens/home/library/libraryHome.dart';
// import 'package:tc_college_app/screens/home/studentProfile.dart';
// import 'package:tc_college_app/screens/shared/constants.dart';

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Size screenSize = MediaQuery.of(context).size;
//     debugPrint(screenSize.width.toString());
//     debugPrint(screenSize.height.toString());

//     final List<Map<String, dynamic>> listItems = [
//       {'item': 'Library', 'icon': Icons.book},
//       {'item': 'Student Profile', 'icon': Icons.person},
//     ];

//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(screenSize.height * 0.09),
//         child: Column(
//           children: <Widget>[
//             Expanded(
//               child: Container(
//                 padding: EdgeInsets.symmetric(
//                   horizontal: screenSize.width * 0.05,
//                   vertical: screenSize.height * 0.015,
//                 ),
//                 color: themeColor,
//                 child: SafeArea(
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: <Widget>[
//                       CircleAvatar(
//                         backgroundColor: Colors.white,
//                         backgroundImage:
//                             AssetImage('assets/logo/TC_college_logo1.png'),
//                       ),
//                       Expanded(
//                         child: Align(
//                           alignment: Alignment.bottomRight,
//                           child: GestureDetector(
//                             onTap: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => StudentProfile(),
//                                 ),
//                               );
//                             },
//                             child: CircleAvatar(
//                               backgroundImage: AssetImage(
//                                 'assets/images/irene-strong-v2aKnjMbP_k-unsplash.jpg',
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       body: Container(
//         padding: EdgeInsets.symmetric(
//           vertical: screenSize.height * 0.05,
//           horizontal: screenSize.width * 0.06,
//         ),
//         decoration: BoxDecoration(
//           color: Color.fromARGB(255, 236, 225, 225)
//         ),
//         child: Column(
//           children: <Widget>[
//             Container(
//               decoration: BoxDecoration(
//                 color: Color.fromARGB(255, 243, 242, 242),
//                 borderRadius: BorderRadius.circular(10),
//                 boxShadow: [
//                   BoxShadow(
//                     blurRadius: 1.0,
//                   )
//                 ],
//               ),
//               padding: EdgeInsets.symmetric(
//                 vertical: screenSize.height * 0.025,
//                 horizontal: screenSize.width * 0.05,
//               ),
//               child: Image.asset('assets/logo/TC_college_logo.png'),
//             ),
//             SizedBox(
//               height: screenSize.height * 0.05,
//             ),
//             Divider(
//               color: Colors.grey[400],
//               thickness: 3.0,
//             ),
//             SizedBox(
//               height: screenSize.height * 0.05,
//             ),
//             Expanded(
//               child: ListView.builder(
//                 physics: NeverScrollableScrollPhysics(),
//                 itemCount: listItems.length,
//                 itemBuilder: (context, index) {
//                   return 
//                   Container(
//                     margin: EdgeInsets.only(bottom: screenSize.height * 0.03, right: 2.0, top: 2.0),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.only(
//                         topRight: Radius.circular(20.0),
//                         bottomRight: Radius.circular(20.0)
//                       ),
//                       boxShadow: [
//                         BoxShadow(
//                           blurRadius: 1.0,
//                         ),
//                       ],
//                       color: Color.fromARGB(255, 243, 242, 242),
//                     ),
//                     child: CustomListTile(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) {
//                               switch (index) {
//                                 case 0:
//                                   return LibraryHome();
//                                 case 1:
//                                   return StudentProfile();
//                                 default:
//                                   return Home();
//                               }
//                             },
//                           ),
//                         );
//                       },
//                       icon: listItems[index]['icon'],
//                       title: listItems[index]['item'],
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



//code for CustomListTile for home with List view
// class CustomListTile extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   final VoidCallback onTap;

//   CustomListTile(
//       {required this.icon, required this.title, required this.onTap});

//   @override
//   Widget build(BuildContext context) {
//     Size screenSize = MediaQuery.of(context).size;
//     return InkWell(
//       onTap: onTap,
//       child: Container(
//         padding: EdgeInsets.all(0.0),
//         height: screenSize.height * 0.12,
//         width: screenSize.width,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.only(
//               topRight: Radius.circular(20.0),
//               bottomRight: Radius.circular(20.0)),
//           border: Border(
//             bottom: BorderSide(
//               color: Colors.grey[300]!,
//               width: 1.0,
//             ),
//           ),
//         ),
//         child: Row(
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                 color: themeColor,
//               ),
//               width: screenSize.width * 0.2,
//               height: screenSize.height * 0.13,
//               child: Center(
//                 child: Icon(
//                   icon,
//                   size: sqrt(pow(screenSize.height, 2) +
//                           pow(screenSize.width, 2)) *
//                       0.05,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//             SizedBox(width: 10.0),
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: 18.0,
//                 fontWeight: FontWeight.w500,
//                 color: Colors.black,
//                 letterSpacing: 1.0,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
