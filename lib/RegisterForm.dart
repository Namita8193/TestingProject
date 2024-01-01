import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'RegistrationFormat.dart';

class RegisterForm extends StatefulWidget {


  RegisterForm({Key? key, }) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {

  TextEditingController userInput=TextEditingController();
  TextEditingController userInput1=TextEditingController();
  TextEditingController userInput2=TextEditingController();
  TextEditingController userPassword=TextEditingController();


  get sizedBOX => null;
  bool isChecked = true;
  bool isChecked1 = true;




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
          backgroundColor: Colors.indigoAccent,
          title: Text(
        'Registration Form',
              ),
            centerTitle: true,
          ),
      body: Container(
        color: Colors.indigo,
        child: Center(
          child: SingleChildScrollView(

            child: Padding(
              padding: const EdgeInsets.all(20),
             child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   TextField(
                     decoration: InputDecoration(
                       suffix: Text(" (" +"User name" + ")"),
                       filled: true,
                       fillColor: Colors.white,
                       hintText: "User name",
                       counterText: "",
                       hintStyle: TextStyle(
                           fontSize: 15,
                       ),

                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide: BorderSide(
                           color: Colors.white,
                         )

                       ),
                     ),
                     textInputAction: TextInputAction.next,
                     keyboardType: TextInputType.text,
                     controller: userInput,

                     //  },
                   ),
                   SizedBox(height:20),
                   TextField(
                     decoration: InputDecoration(
                       suffix: Text(" (" +"Last name" + ")"),

                       filled: true,
                       fillColor: Colors.white,
                       hintText: "Last name",
                       counterText: "",
                       hintStyle: TextStyle(
                         fontSize: 15,
                       ),

                       border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(10),
                           borderSide: BorderSide(
                             color: Colors.white,
                           )

                       ),
                     ),
                     textInputAction: TextInputAction.next,
                     keyboardType: TextInputType.text,
                     controller: userInput1,

                     //  },
                   ),
                   SizedBox(height:20),
                   TextField(
                     decoration: InputDecoration(
                       suffix: Text(" (" +"Email" + ")"),

                       filled: true,
                       fillColor: Colors.white,
                       hintText: "Email",
                       counterText: "",
                       hintStyle: TextStyle(
                         fontSize: 15,
                       ),

                       border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(10),
                           borderSide: BorderSide(
                             color: Colors.white,
                           )

                       ),
                     ),
                     textInputAction: TextInputAction.next,
                     keyboardType: TextInputType.text,
                     controller: userInput2,

                     //  },
                   ),
                   SizedBox(height:20),

                   TextField(
                     decoration: InputDecoration(
                       suffix: Text(" (" +"Password" + ")"),

                       filled: true,
                       fillColor: Colors.white,
                       hintText: "Password",
                       counterText: "",
                       hintStyle: TextStyle(
                         fontSize: 15,
                       ),

                       border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(10),
                           borderSide: BorderSide(
                             color: Colors.white,
                           )

                       ),
                     ),
                     textInputAction: TextInputAction.next,
                     keyboardType: TextInputType.text,
                     controller: userPassword,

                     //  },
                   ),
                   SizedBox(height: 30,),
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

                         child: Text("Lorem ipsum dolar sit amet,consectetuer adipiscing elitsed diam nonummy nibh euismod tinidunt ut laoreet.",
                           style: TextStyle(
                               fontSize: 15,
                               color:Colors.white),
                         ),
                       ),
                     ],
                   ),
                   SizedBox(height: 20,),
                   Row(
                     children: [
                       Checkbox(
                         value: isChecked1,
                         onChanged: (bool? newValue) {
                           setState(() {
                             isChecked1 = newValue!;
                           });
                         },
                       ),
                       Expanded(

                         child: Text("diam nonummy nibh euismod tinidunt ut laoreet dolore magna aliquam erat volutpat ut wisi enim.",
                           style: TextStyle(
                               fontSize: 15,
                               color:Colors.white),
                         ),
                       ),
                     ]
                   ),
              SizedBox(height:30),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                 crossAxisAlignment: CrossAxisAlignment.end,
                 children: [


                     ElevatedButton(
                         onPressed: ()

          {
          if(userInput.text==""||userInput.text==null) {
          showInSnackBar(context,"Please Enter UserName");
          }
          else if(userInput1.text==""||userInput1.text==null) {
          showInSnackBar(context,"Please Enter LastName");
          }
          else if (userInput2.text==""||userInput2.text==null) {
          showInSnackBar(context,"Please Enter Email");
          }
          else if (userPassword.text==""||userPassword.text==null){
          showInSnackBar(context,"Please Enter Password");
          }
         /* Navigator.push(context,
              MaterialPageRoute(builder: (context) =>
                  RegistrationFormat()));
*/
          },
                         child: Text("Register",
                           style: TextStyle(
                             fontSize: 18,
                             color: Colors.white,
                           ),
                         ),
                       style: ElevatedButton.styleFrom(
                     primary: Colors.lightGreen,
                     ),


                     ),
                   // ),

                 ]
             ),
             // ]
             ]
             ),
            ),
    ),
        ),
      ),
    ) ;


  }
  static  showInSnackBar(BuildContext context, String value) {

    Flushbar(
      //  title:  "Hey SuperHero",
      message: value,
      backgroundColor: Colors.red,
      duration: Duration(seconds: 6),
    )..show(context);
    // return Get.snackbar(value, "");
  }

}
