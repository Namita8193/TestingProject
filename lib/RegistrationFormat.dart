//
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/services.dart';
//
// import 'FirstScreen.dart';
//
//
//
// class RegistrationFormat extends StatefulWidget {
//
//
//   RegistrationFormat({Key? key, }) : super(key: key);
//
//   @override
//   _RegistrationFormatState createState() => _RegistrationFormatState();
// }
//
// class _RegistrationFormatState extends State<RegistrationFormat> {
//
//   TextEditingController userInput=TextEditingController();
//
//
//   get sizedBOX => null;
//   bool isChecked = true;
//
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery
//         .of(context)
//         .size;
//     return Scaffold(
//
//         body: Container(
//           child: Center(
//               child: SingleChildScrollView(
//                   child: Padding(
//                     padding: const EdgeInsets.all(25),
//
//
//                     child: Column(
//                       children: [
//                         Text("REGISTER",
//                           style: TextStyle(
//                             fontSize: 25,
//                             color: Colors.blue,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(height:10 ,),
//                         TextField(
//                           decoration: InputDecoration(
//                             filled: true,
//                             fillColor: Colors.blue,
//                             hintText: "Full Name",
//                             counterText: "",
//                             hintStyle: TextStyle(
//                               fontSize: 18,
//                               color: Colors.white,
//                             ),
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                                 borderSide: BorderSide(
//                                   color: Colors.teal,
//                                 )
//
//                             ),
//                           ),
//                           textInputAction: TextInputAction.next,
//                           keyboardType: TextInputType.text,
//                           controller: userInput,
//
//                           //   },
//
//                         ),
//                         SizedBox(height:10 ,),
//
//                         TextField(
//                           decoration: InputDecoration(
//                             filled: true,
//                             fillColor: Colors.lightBlueAccent,
//                             hintText: "Email",
//                             counterText: "",
//                             hintStyle: TextStyle(
//                               fontSize: 18,
//                               color: Colors.white,
//                             ),
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                                 borderSide: BorderSide(
//                                   color: Colors.white,
//                                 )
//
//                             ),
//                           ),
//                           textInputAction: TextInputAction.next,
//                           keyboardType: TextInputType.text,
//                           controller: userInput,
//
//                           //  },
//
//                         ),
//                         SizedBox(height:10 ,),
//
//                         TextField(
//                           decoration: InputDecoration(
//                             filled: true,
//                             fillColor: Colors.lightBlueAccent,
//                             hintText: "Address",
//                             counterText: "",
//                             hintStyle: TextStyle(
//                               fontSize: 18,
//                               color: Colors.white,
//                             ),
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                                 borderSide: BorderSide(
//                                   color: Colors.white,
//                                 )
//
//                             ),
//                           ),
//                           textInputAction: TextInputAction.next,
//                           keyboardType: TextInputType.text,
//                           controller: userInput,
//
//                           //  },
//
//                         ),
//                         SizedBox(height:10 ,),
//
//                         TextField(
//                           decoration: InputDecoration(
//                             filled: true,
//                             fillColor: Colors.lightBlueAccent,
//                             hintText: "City/Town",
//                             counterText: "",
//                             hintStyle: TextStyle(
//                               fontSize: 18,
//                               color:Colors.white,
//                             ),
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                                 borderSide: BorderSide(
//                                   color: Colors.white,
//                                 )
//
//                             ),
//                           ),
//                           textInputAction: TextInputAction.next,
//                           keyboardType: TextInputType.text,
//                           controller: userInput,
//
//                           //  },
//
//                         ),
//                         SizedBox(height:10 ,),
//
//                         TextField(
//                           decoration: InputDecoration(
//                             filled: true,
//                             fillColor: Colors.lightBlueAccent,
//                             hintText: "Country",
//                             counterText: "",
//                             hintStyle: TextStyle(
//                               fontSize: 18,
//                               color:Colors.white,
//                             ),
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                                 borderSide: BorderSide(
//                                   color: Colors.white,
//                                 )
//
//                             ),
//                           ),
//                           textInputAction: TextInputAction.next,
//                           keyboardType: TextInputType.text,
//                           controller: userInput,
//
//                           //  },
//
//                         ),
//                         SizedBox(height:10 ,),
//
//                         Padding(
//                           padding: const EdgeInsets.only(right:150),
//                           child: Text("Lorem ipsum dolor sit amet",
//                               style: TextStyle(
//                                 fontSize: 15,
//                               )
//
//                           ),
//                         ),
//                         SizedBox(height:10 ,),
//
//                         TextField(
//                           decoration: InputDecoration(
//                             filled: true,
//                             fillColor: Colors.blue,
//                             hintText: "User Name",
//                             counterText: "",
//                             hintStyle: TextStyle(
//                               fontSize: 18,
//                               color:Colors.white,
//                             ),
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                                 borderSide: BorderSide(
//                                   color: Colors.white,
//                                 )
//
//                             ),
//                           ),
//                           textInputAction: TextInputAction.next,
//                           keyboardType: TextInputType.text,
//                           controller: userInput,
//
//                           //  },
//
//                         ),
//                         SizedBox(height:10 ,),
//
//                         TextField(
//                           decoration: InputDecoration(
//                             filled: true,
//                             fillColor: Colors.blue,
//                             hintText: "Password",
//                             counterText: "",
//                             hintStyle: TextStyle(
//                               fontSize: 18,
//                               color:Colors.white,
//                             ),
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                                 borderSide: BorderSide(
//                                   color: Colors.white,
//                                 )
//
//                             ),
//                           ),
//                           textInputAction: TextInputAction.next,
//                           keyboardType: TextInputType.text,
//                           controller: userInput,
//
//                           //  },
//
//                         ),
//                         SizedBox(height:10 ,),
//
//                         TextField(
//                           decoration: InputDecoration(
//                             filled: true,
//                             fillColor: Colors.blue,
//                             hintText: "Confirm Password",
//                             counterText: "",
//                             hintStyle: TextStyle(
//                               fontSize: 18,
//                               color:Colors.white,
//                             ),
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                                 borderSide: BorderSide(
//                                   color: Colors.white,
//                                 )
//
//                             ),
//                           ),
//                           textInputAction: TextInputAction.next,
//                           keyboardType: TextInputType.text,
//                           controller: userInput,
//
//                           //  },
//
//                         ),
//                         SizedBox(height:10 ,),
//
//
//
//
//                     Row(
//                       children: [
//                             Checkbox(
//                               value: isChecked,
//                               onChanged: (bool? newValue) {
//                                 setState(() {
//                                   isChecked = newValue!;
//                                 });
//                               },
//                             ),
//                             Expanded(
//
//                               child: Text("Lorem ipsum dolor sit amet",
//                                 style: TextStyle(
//                                     fontSize: 15,
//                                     // color:Colors.white,
//                                 ),
//                               ),
//                             ),
//                           ],
//
//                         ),
//
//                     Row(
//                          mainAxisAlignment: MainAxisAlignment.center,
//                         // crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//
//                           ElevatedButton(
//                             onPressed: (){
//                               Navigator.push(context,
//                                   MaterialPageRoute(
//                                       builder: (context) =>
//                                           FirstScreen()));
//                             },
//                             child: Text("Back",
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 color: Colors.white,
//                               ),
//                             ),
//                             style: ElevatedButton.styleFrom(
//                               primary: Colors.lightBlueAccent,
//                             ),
//
//
//                           ),
//                              SizedBox(width: 30,),
//
//                              ElevatedButton(
//                               onPressed: (){},
//                               child: Text("Submit",
//                                 style: TextStyle(
//                                   fontSize: 18,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                               style: ElevatedButton.styleFrom(
//                                 primary: Colors.blue,
//                               ),
//
//
//                             ),
//                 ]
//                           ),
//                 ]
//
//               ),
//
//               ),
//                     )
//     ),
//         )
//                   );
//   }
// }
