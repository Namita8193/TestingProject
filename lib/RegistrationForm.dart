
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'RegistrationPage.dart';



class RegistrationForm extends StatefulWidget {


  RegistrationForm({Key? key, }) : super(key: key);

  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {

  TextEditingController userInput=TextEditingController();
  TextEditingController userInput1=TextEditingController();
  TextEditingController userInput2=TextEditingController();
  TextEditingController userInput3=TextEditingController();
  TextEditingController userPassword=TextEditingController();


  get sizedBOX => null;
  bool isChecked = true;


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

      body: Container(
        color: Colors.cyan,
        child: Center(
          child:SingleChildScrollView(
          child: Column(
              children: [
                SizedBox(height:100),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text(".",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                     SizedBox(width:20),

                    Text('Registration Form',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.indigo,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width:20),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text(".",
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                          ),
                        ),
                    ),

                    SizedBox(width:20),
                  ],
                ),

                SizedBox(height:50),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text(".",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10,),

                      Expanded(
                        child: Container(
                          child: TextFormField(
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            controller: userInput,

                            decoration: InputDecoration(
                                hintText: "Name",
                                counterText: "",
                                hintStyle: TextStyle(
                                  fontSize: 15,
                                  color:Colors.white,
                                )
                              // AppData.fieldFocusChange(context, fnode1, null);

                            ),

                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text(".",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10,),

                      Expanded(
                        child: Container(
                          child: TextFormField(
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            controller: userInput1,
                            decoration: InputDecoration(

                                hintText: " Email address",
                                counterText: "",
                                hintStyle: TextStyle(
                                  fontSize: 15,
                                  color:Colors.white,
                                )
                              // AppData.fieldFocusChange(context, fnode1, null);

                            ),

                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text(".",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10,),

                      Expanded(
                        child: Container(
                          child: TextFormField(
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            controller: userInput2,

                            decoration: InputDecoration(

                                hintText: " Country",
                                counterText: "",
                                hintStyle: TextStyle(
                                  fontSize: 15,
                                  color:Colors.white,
                                )
                              // AppData.fieldFocusChange(context, fnode1, null);

                            ),


                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text(".",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10,),

                      Expanded(
                        child: Container(
                          child: TextFormField(
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            controller: userInput3,

                            decoration: InputDecoration(

                                hintText: " Phone",
                                counterText: "",
                                hintStyle: TextStyle(
                                  fontSize: 15,
                                  color:Colors.white,
                                )
                              // AppData.fieldFocusChange(context, fnode1, null);

                            ),

                          ),
                        ),
                      ),
                    ],
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text(".",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10,),

                      Expanded(
                        child: Container(
                          child: TextFormField(
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
                            controller: userPassword,

                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.remove_red_eye,color: Colors.blue,),
                                hintText: " Password",
                                counterText: "",
                                hintStyle: TextStyle(
                                  fontSize: 15,
                                  color:Colors.white,
                                )
                              // AppData.fieldFocusChange(context, fnode1, null);
                            ),
                          ),


                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50,),
          Row(
            children: [
              Checkbox(
                  value: isChecked,
                  onChanged: (bool? newValue) {
                    setState(() {
                      isChecked = newValue!;
                    });
                  },
              ),
                  Expanded(

                    child: Text(
                      "Agree with terms and conditions Agree with terms and cnditions Agree with terms and conditions Agree with terms and conditionsAgree with terms and conditions",
                      style: TextStyle(
                          fontSize: 10,
                      color:Colors.white),
                    ),
                  ),
            ],
          ),


                Container(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>
                                  RegistrationPage()));
                        },
                      child: Text("Create Account",
                        style: TextStyle(fontSize: 20),),

                    )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                        onPressed: () {},
                        child:Text("Sign in",
                          style: TextStyle(
                            fontSize: 15,
                        color:Colors.blue),
                        ),
                    )
                  ],
                )



              ]),
        ),
      ),

      )
    );
  }

  }
