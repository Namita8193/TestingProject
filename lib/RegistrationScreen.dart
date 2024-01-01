
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'RegistrationForm.dart';
import 'package:intl/intl.dart';


class RegistrationScreen extends StatefulWidget {


  RegistrationScreen({Key? key, }) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}
int _counter = 0;


class _RegistrationScreenState extends State<RegistrationScreen> {


  TextEditingController userName=TextEditingController();
  TextEditingController userPassword = TextEditingController();
  TextEditingController userPhone=TextEditingController();
  TextEditingController userEmail=TextEditingController();
  TextEditingController userAddress=TextEditingController();
  DateTime selectedDate = DateTime.now();
  final df1 = new DateFormat('dd-MM-yyyy');
  TextEditingController selectDateForm = new TextEditingController();



  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Registration screen',
        ),
        centerTitle: true,

      ),

      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.leftside,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: <Widget>[
                SizedBox(height: 50,),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.person,size: 25,color: Colors.blue,),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Container(
                           // padding: EdgeInsets.symmetric(horizontal: 10),
                           child: TextFormField(
                             textInputAction: TextInputAction.next,
                             keyboardType: TextInputType.text,
                             controller: userName,

                             decoration: InputDecoration(

                              // border: InputBorder.none,
                               hintText: " User Name",
                               counterText:"",
                             hintStyle:TextStyle(
                               fontSize:15,
                             )
                               // AppData.fieldFocusChange(context, fnode1, null);

                           ),



                           ),

          ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 15,),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.password,size: 25,color: Colors.blue,),
                      SizedBox(width: 10,),

                      Expanded(
                        child: Container(
                          // padding:EdgeInsets.symmetric(horizontal:10),
                          child:TextFormField(
                            textInputAction:TextInputAction.next,
                            keyboardType:TextInputType.number,
                              controller: userPassword,
                            decoration:InputDecoration(
                              //prefixIcon: Icon(Icons.password),
                              hintText:"Password",
                              counterText:"",
                                  hintStyle:TextStyle(
                                    fontSize:15,

                                  ),


                            ),

                          )
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.phone_android,size: 25,color: Colors.blue,),
                      SizedBox(width: 10,),

                      Expanded(
                        child: Container(
                          // padding:EdgeInsets.symmetric(horizontal:10),
                            child:TextFormField(
                              textInputAction:TextInputAction.next,
                              keyboardType:TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(10),
                              ],
                              controller: userPhone,
                              decoration:InputDecoration(

                                //prefixIcon: Icon(Icons.password),
                                hintText:"Phone number",
                                counterText:"",
                                hintStyle:TextStyle(
                                  fontSize:15,

                                ),


                              ),

                            )
                        ),
                      ),
                    ],
                  ),
                ),





                SizedBox(height: 15,),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.email,size: 25,color: Colors.blue,),
                      SizedBox(width: 10,),

                      Expanded(
                        child: Container(
                            // padding:EdgeInsets.symmetric(horizontal:10),
                            child:TextFormField(
                                textInputAction:TextInputAction.next,
                                keyboardType:TextInputType.text,
                                controller:userEmail,
                                decoration:InputDecoration(
                                    //prefixIcon: Icon(Icons.email_outlined),
                                    hintText:"Email",
                                    counterText:"",
                                    hintStyle:TextStyle(
                                      fontSize:15,

                                    )


                                ),

                            )
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 15,),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.date_range,size: 25,color: Colors.blue,),
                      SizedBox(width: 10,),


                      Expanded(

                      child: Container(
                          // padding:EdgeInsets.symmetric(horizontal:10),
                          child:TextFormField(
                              textInputAction:TextInputAction.next,
                              keyboardType:TextInputType.text,
                              controller:selectDateForm,
                              decoration:InputDecoration(
                                  // prefixIcon: Icon(Icons.date_range),
                                  hintText:"Birthdate",
                                  counterText:"",
                                  hintStyle:TextStyle(
                                    fontSize:15,
                                  )
                              ),
                          )
                      ),
                      ),
                  ],
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.home,size: 25,color: Colors.blue,),
                      SizedBox(width: 10,),

                      Expanded(
                        child: Container(
                            // padding:EdgeInsets.symmetric(horizontal:10),
                            child:TextFormField(
                                textInputAction:TextInputAction.next,
                                keyboardType:TextInputType.text,
                                controller:userAddress,
                                decoration:InputDecoration(
                                    // prefixIcon: Icon(Icons.home),
                                    hintText:"Adress",
                                    counterText:"",
                                    hintStyle:TextStyle(
                                      fontSize:15,

                                    )



                                ),

                            )
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15,),

                  Center(
                    child: Container(
                      width :200,
                      height:60,
                        decoration: BoxDecoration(
                          //color: Color(0xFF003466),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                              colors: <Color>[Color(0xFF673BB7), Color(0xFF770290)]),
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(25.0),
                        ),

                        child: ElevatedButton(
                           onPressed: () {

                             Navigator.push(context,
                                 MaterialPageRoute(
                                     builder: (context) =>
                                         RegistrationForm()));
                           }, child:  Text("Submit",style:TextStyle(fontSize:20)),




    )
    ),
              ),
    ]
    ),
        ),
      ),

    );
  }
  // Future<Null> selectDate(BuildContext context) async {
  //   final DateTime? picked = await showDatePicker(
  //       context: context,
  //       locale: Locale("en"),
  //       initialDate: DateTime.now(),
  //       firstDate: DateTime.now().subtract(Duration(days: 365)),
  //       lastDate: DateTime.now());
  //   if (picked != null)
  //     setState(() {
  //       selectedDate = picked;
  //       selectDateForm.value = TextEditingValue(text: df1.format(picked));
  //     });
  // }
}

