import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'RegisterForm.dart';
import 'package:intl/intl.dart';

class RegistrationPage extends StatefulWidget {


  RegistrationPage({Key? key, }) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  TextEditingController userInput = TextEditingController();
  TextEditingController userPassword = TextEditingController();
  TextEditingController userInput1 = TextEditingController();

  bool isChecked = true;
  bool isCheckedFemale = true;
  bool isCheckedMale = false;
  bool isChecked2 = true;
  bool isChecked3 = true;
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

      body: Container(
        color: Colors.blueGrey[100],

        child: Center(
          child:SingleChildScrollView(

            child: Column(

                children: [

                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Text("Register for free!",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),


                  Padding(
                    padding: const EdgeInsets.only(left: 45),

                    child: Text(
                      "Create an account to save your stations and access\n                        Pandora anywhere.",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),

                  Divider(
                    color: Colors.black,
                    thickness: 1,
                    indent: 25,
                    endIndent: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                        children: [
                          Text("Your email ",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                              width: 200,
                              height: 40,

                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: Colors.black, width: 1.2),
                              ),
                              child: TextFormField(

                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "",
                                  counterText: "",
                                ),
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.text,
                                controller: userInput,


                              )

                          ),
                        ]


                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                        children: [
                          Text("Password",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                          SizedBox(width: 30),
                          Container(
                              width: 200,
                              height: 40,

                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: Colors.black, width: 1.2),
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "",
                                  counterText: "",
                                ),
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.number,
                                controller: userPassword,


                              )

                          ),
                        ]


                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                        children: [
                          Text("Birth year ",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                          SizedBox(width: 30),
                          InkWell(
                            onTap: () {
                              selectDate(context);
                            },
                            child: AbsorbPointer(

                              child: Container(
                                  width: 200,
                                  height: 40,

                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Colors.black, width: 1.2),
                                  ),
                                  child: TextFormField(
                                    // controller: selectDateForm,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "",
                                      counterText: "",
                                    ),
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.text,
                                    controller: selectDateForm,


                                  )

                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text("Why?",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.lightBlue),
                            ),
                          )
                        ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                        children: [
                          Text("US zip code ",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                          SizedBox(width: 15),
                          Container(
                              width: 200,
                              height: 40,

                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: Colors.black, width: 1.2),
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "",
                                  counterText: "",
                                ),
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.number,
                                controller: userInput1,


                              )

                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextButton(
                                onPressed: () {},
                                child: Text("US residents only",
                                  style: TextStyle(
                                      fontSize: 10.5,
                                      color: Colors.lightBlue),
                                )
                            ),
                          )
                        ]

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                        children: [
                          Text("Gender",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                          SizedBox(width: 35,),

                          Checkbox(
                            value: isCheckedMale,
                            onChanged: (bool? newValue) {
                              setState(() {
                                isCheckedMale = newValue!;
                                isCheckedFemale = false;
                              });
                            },
                          ),
                          // SizedBox(width: 10,),
                          Text("Male",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.indigo,
                            ),
                          ),
                          Checkbox(
                            value: isCheckedFemale,
                            onChanged: (bool? newValue) {
                              setState(() {
                                isCheckedFemale = newValue!;
                                isCheckedMale = false;
                              });
                            },
                          ),
                          Text("Female",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.indigo,
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {},
                              child: Text("Why?",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.lightBlue),
                              ),
                            ),
                          ),
                        ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Row(

                        children: [
                          Checkbox(
                            value: isChecked2,
                            onChanged: (bool? newValue) {
                              setState(() {
                                isChecked2 = newValue!;
                              });
                            },
                          ),
                          Expanded(
                            child: Text(
                              "Send me personalized recommendations and tips.",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.indigo),
                            ),
                          ),
                        ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Row(

                        children: [
                          Checkbox(
                            value: isChecked3,
                            onChanged: (bool? newValue) {
                              setState(() {
                                isChecked3 = newValue!;
                              });
                            },
                          ),
                          Expanded(
                            child: Text(
                              "I have read,understood and agreed to the Terms of Use and the Privacy Policy.",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.indigo),
                            ),
                          ),
                        ]
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        OutlinedButton(onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>
                                  RegisterForm()));
                        },
                            child: Text("Register",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            )
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text("Go back",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black),
                          ),
                        ),
                      ]
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already registered?",
                        style: TextStyle(color: Colors.black),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("Sign in",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black),
                        ),
                      )
                    ],
                  )

                ]
            )


        ),
      ),
    )
    );
  }

  Future<Null> selectDate(BuildContext context) async {
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
}
