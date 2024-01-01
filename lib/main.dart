import 'dart:convert';
import 'dart:developer';

import 'package:another_flushbar/flushbar.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import 'KeyvalueModel.dart';
import 'VechicleModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'login screen'),
    );
  }
}

class MyHomePage extends StatefulWidget {


  const MyHomePage({super.key,   required String title,});


  static KeyvalueModel? fueltypeModel = null;
  static KeyvalueModel? brandTypeModel = null;
  static KeyvalueModel? vechicleModell = null;
  // static KeyvalueModel? selectedKey;


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int _counter = 0;
  static KeyvalueModel? selectedKey;

  TextEditingController userInput = TextEditingController();
  TextEditingController userPassword = TextEditingController();
  List<String> list = [
    "BIKE",
    "CAR",
  ];
  TabController? tabController;
  int selected = 0;
  bool isProcessing = false;
  List<VechicleModel> bikeModel=[];
  List<VechicleModel> carmodel=[];
  List<TextEditingController> textEditingController = [
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    //selected = widget.selectpage??0;
    tabController=TabController(length: 2,vsync: this);
    tabController!.index =selected;
    super.initState();
  }
  List<KeyvalueModel> fuelType = [
    KeyvalueModel(name: "Petrol", key: "petrol"),
    KeyvalueModel(name: "Disel", key: "disel"),
  ];
  /*List<KeyvalueModel> brandType = [
    KeyvalueModel(name: "Petrol", key: "petrol"),
    KeyvalueModel(name: "Disel", key: "disel"),
  ];*/List<KeyvalueModel> vechicleType = [
    KeyvalueModel(name: "Bike", key: "petrol"),
    KeyvalueModel(name: "Car", key: "disel"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Vechicle Details",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
          ],
        ),
        backgroundColor: Colors.indigo,
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(height: 5),
          Container(
            height: 40,
            padding: EdgeInsets.only(bottom: 4),
            color: Colors.white,
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: list.length,
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
               // Body body = paymentModeModel.body[i];
                  return InkWell(
                    onTap: () {
                      setState(() {
                        selected = i;
                        tabController!.index = i;
                      });
                    },
                    child: Container(
                        height: 30,
                        margin: EdgeInsets.only(left: (i==0)?13:5,right: (i==1)?13:1),
                        width: (MediaQuery.of(context).size.width /
                            list.length) -
                            17,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.deepPurple),
                            color: (selected == i)
                                ? Colors.deepPurple
                                : Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(6))
                        ),
                        child: Center(
                            child: Text(
                              list[i],

                              style: TextStyle(
                                  color:(selected == i)
                                      ?  Colors.white:Colors.grey[500],
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12),
                              textAlign: TextAlign.center,
                            ))),
                  );
                }),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              physics: NeverScrollableScrollPhysics(),
              children: [
                rowValue() ,
                rowValue1()

              ],
            ),
          ),

        ],
      ),
      bottomNavigationBar: Card(
        elevation: 10,
        child: Container(
          height: 60,
          // color: AppData.kPrimaryColor,
          child: Padding(
            padding: EdgeInsets.only(top: 3, left: 10, right: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap:(){
                    popUpMemberDetails(context);

                  },
                  child: Container(
                      height: 35,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        // color:Colors.orange,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Center(
                            child: Row(
                              children: [
                                Text(
                                  '  Add vechicle',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 5,),
                                Icon(Icons.add_circle,size:20,color: Colors.white,),
                              ],
                            )),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }

  rowValue() {
    return  SingleChildScrollView(
      child: (bikeModel == null)
          ? Container(
        child: Center(
          child: Text(
            'No Vechicle Added!',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
      )
          : ((bikeModel?.length ?? 0) < 1)
          ? Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 200,),

              Text(
                'No Vechicle Added!',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ],
          ),
        ),
      )
          : Container(
        height: 300,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: SingleChildScrollView(
            child: ListView.separated(
              separatorBuilder: (c, i) {
                return Divider();
              },
              physics: NeverScrollableScrollPhysics(),
              // controller: _scrollController,
              shrinkWrap: true,
              itemBuilder: (c, i) {
                return Stack(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 7),
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(width: 5),
                                  Expanded(
                                      child: Text(
                                        "Vechicle Name :",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight:
                                            FontWeight.bold),
                                      )),
                                  Expanded(
                                    child: Text(
                                      bikeModel[i]
                                          .vechicleName ??
                                          "",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight:
                                          FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(width: 5),
                                  Expanded(
                                      child: Text(
                                        "Vechicle No :",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight:
                                            FontWeight.bold),
                                      )),
                                  Expanded(
                                    child: Text(
                                      bikeModel[i]
                                          .vechicleNo ??
                                          "",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight:
                                          FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),

                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(width: 5),
                                  Expanded(
                                      child: Text(
                                        "Vechicle Type :",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight:
                                            FontWeight.bold),
                                      )),
                                  Expanded(
                                    child: Text(
                                      bikeModel[i]
                                          .vechicleType ??
                                          "",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight:
                                          FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),

                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(width: 5),
                                  Expanded(
                                      child: Text(
                                        "Fuel type :",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight:
                                            FontWeight.bold),
                                      )),
                                  Expanded(
                                    child: Text(
                                      bikeModel[i]
                                          .fuelType ??
                                          "",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight:
                                          FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 15,
                      top: 2,
                      child: SizedBox(
                          height: 30,
                          width: 20,
                          child: InkWell(
                              onTap: (){
                                setState(() {
                                  bikeModel.removeAt(i);

                                });
                              },
                              child: Icon(Icons.delete,color:Colors.red,size:18))
                      ),
                    ),


                  ],
                );
              },
              //itemCount: advancelistModel?.body?.length??0,
              itemCount: bikeModel.length ?? 0,
            ),
          ),
        ),
      )


    );
  }

  rowValue1() {

    return  SingleChildScrollView(
      child:(bikeModel == null)
          ? Container(
        child: Center(
          child: Text(
            'No Vechicle Added!',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
      )
          : ((bikeModel?.length ?? 0) < 1)
          ? Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 200,),

              Text(
                'No Vechicle Added!',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ],
          ),
        ),
      )
          : Container(
        height: 300,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: SingleChildScrollView(
            child: ListView.separated(
              separatorBuilder: (c, i) {
                return Divider();
              },
              physics: NeverScrollableScrollPhysics(),
              // controller: _scrollController,
              shrinkWrap: true,
              itemBuilder: (c, i) {
                return Stack(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 7),
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(width: 5),
                                  Expanded(
                                      child: Text(
                                        "Vechicle Name :",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight:
                                            FontWeight.bold),
                                      )),
                                  Expanded(
                                    child: Text(
                                      carmodel[i]
                                          .vechicleName ??
                                          "",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight:
                                          FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(width: 5),
                                  Expanded(
                                      child: Text(
                                        "Vechicle Type :",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight:
                                            FontWeight.bold),
                                      )),
                                  Expanded(
                                    child: Text(
                                      carmodel[i]
                                          .vechicleType ??
                                          "",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight:
                                          FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(width: 5),
                                  Expanded(
                                      child: Text(
                                        "Vechicle No :",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight:
                                            FontWeight.bold),
                                      )),
                                  Expanded(
                                    child: Text(
                                      carmodel[i]
                                          .vechicleNo ??
                                          "",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight:
                                          FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(width: 5),
                                  Expanded(
                                      child: Text(
                                        "Fuel type :",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight:
                                            FontWeight.bold),
                                      )),
                                  Expanded(
                                    child: Text(
                                      carmodel[i]
                                          .fuelType ??
                                          "",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight:
                                          FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 15,
                      top: 2,
                      child: SizedBox(
                          height: 30,
                          width: 20,
                          child: InkWell(
                              onTap: (){
                                setState(() {
                                  carmodel.removeAt(i);

                                });
                              },
                              child: Icon(Icons.delete,color:Colors.red,size:18))
                      ),
                    ),


                  ],
                );
              },
              //itemCount: advancelistModel?.body?.length??0,
              itemCount: carmodel.length ?? 0,
            ),
          ),
        ),
      )

    );
  }

  void popUpMemberDetails(BuildContext context) {
    textEditingController[0].text="";
    textEditingController[1].text="";
    MyHomePage.fueltypeModel=null;
    MyHomePage.vechicleModell=null;

    showDialog(
        builder: (context) {
          return AlertDialog(
            contentPadding: EdgeInsets.only(left: 5, right: 5, top: 30),
            insetPadding: EdgeInsets.only(left: 5, right: 5, top: 30),
            content: StatefulBuilder(
              builder: (BuildContext context, StateSetter setState2) {
                return Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.86,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 0, right: 0),
                          child: Column(
                            children: [
                              Center(
                                child: Text(
                                  "Add Vechicle Details",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, top: 0, right: 10.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "Vechicle No ",
                                      // MyLocalizations.of(context).text("DOB1"),
                                      style: TextStyle(
                                        fontSize: 15,
                                        // color: Colors.black54,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 2),
                                  Expanded(
                                    child: referalCode(
                                        0, 'Vechicle No', true),
                                  ),

                                  // Expanded(child: formField1('Dealer Name')),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, top: 0, right: 10.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "Brand Name ",
                                      // MyLocalizations.of(context).text("DOB1"),
                                      style: TextStyle(
                                        fontSize: 15,
                                        // color: Colors.black54,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 2),
                                  Expanded(
                                    child: referalCode(
                                        1, 'Brand name', true),
                                  ),

                                  // Expanded(child: formField1('Dealer Name')),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),

                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, top: 0, right: 0.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "Vechicle Type",
                                      // MyLocalizations.of(context).text("DOB1"),
                                      style: TextStyle(
                                        fontSize: 15,
                                        // color: Colors.black54,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 2),

                                  Expanded(
                                    child: staticDropdowndiease(
                                        "Vechicle type",
                                        "vechicleType",
                                        vechicleType,
                                            (KeyvalueModel model) {
                                          setState(() {
                                            MyHomePage.vechicleModell = model;
                                          });
                                        }),
                                  ),
                                  // Expanded(child: formField1('Dealer Name')),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, top: 0, right: 0.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "Fuel Type",
                                      // MyLocalizations.of(context).text("DOB1"),
                                      style: TextStyle(
                                        fontSize: 15,
                                        // color: Colors.black54,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 2),

                                  Expanded(
                                    child: staticDropdowndiease(
                                        "Fuel type",
                                        "fuelType",
                                        fuelType,
                                            (KeyvalueModel model) {
                                          setState(() {
                                            MyHomePage.fueltypeModel = model;
                                          });
                                        }),
                                  ),
                                  // Expanded(child: formField1('Dealer Name')),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            actions: <Widget>[
              MaterialButton(
                //textColor: Colors.grey,
                child: Text("CANCEL", style: TextStyle(color: Colors.red)),
                onPressed: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
              ),
              MaterialButton(
                //textColor: Colors.grey,
                onPressed: () {
                  if (textEditingController[0].text == null ||
                      textEditingController[0].text == "") {
                    showInSnackBar(context, "Please enter vechicle no");
                  }else if (textEditingController[1].text == null ||
                      textEditingController[1].text == "") {
                    showInSnackBar(context, "Please enter brand name");
                  }else if (MyHomePage.vechicleModell == null ||
                      MyHomePage.vechicleModell == "") {
                    showInSnackBar(context, "Please select vechicle type");
                  }else if (MyHomePage.fueltypeModel == null ||
                      MyHomePage.fueltypeModel == "") {
                    showInSnackBar(context, "Please select fuel type");
                  }
                  else {
                    VechicleModel memmbersDetails = VechicleModel();
                    memmbersDetails.vechicleNo = textEditingController[0].text;
                    memmbersDetails.vechicleName = textEditingController[1].text;
                    memmbersDetails.fuelType = MyHomePage.fueltypeModel?.name;
                    memmbersDetails.vechicleType = MyHomePage.vechicleModell?.name;

                    setState(() {
                      if(MyHomePage.vechicleModell?.name =="Bike"){
                        bikeModel.add(memmbersDetails);
                        log(">>>>>>>>bikeModelList>>>>>" + jsonEncode(bikeModel));
                        Navigator.of(context).pop(true);
                      }
                      else{
                        carmodel.add(memmbersDetails);
                        log(">>>>>>>>carmodelList>>>>>" + jsonEncode(carmodel));
                        Navigator.of(context).pop(true);
                      }


                    });
                  }
                },
                child: Text(
                  "SAVE",
                  //style: TextStyle(color: Colors.grey),
                  style: TextStyle(color: Colors.indigo),
                ),
              ),
            ],
          );
        },
        context: context);
  }

  Widget referalCode(int index,
      String hint,
      bool enable,) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: Container(
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 11),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey, width: 0.3),
        ),

        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
            //suffix: Text(" (" + hint + ")"),
            /* prefixIcon:
            Icon(Icons.person_rounded),*/
            hintStyle: TextStyle(fontSize: 15, color: Colors.black),
          ),
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.text,
          // focusNode: currentfn,
          controller: textEditingController[index],
          textAlignVertical: TextAlignVertical.center,
          /* inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp("[ a-z A-Z 0-9.]")),
          ],*/
          enabled: enable,

          onFieldSubmitted: (value) {
            //callApi2(value,textEditingController[1].text??"");

            // AppData.fieldFocusChange(context, currentfn, nextFn);
          },
        ),
      ),
    );
  }

  static staticDropdowndiease(
      String label, String callFrom, List<KeyvalueModel> list, Function fun) {
    return newContainer2(DropdownSearch<KeyvalueModel>(
      mode: Mode.BOTTOM_SHEET,
      searchBoxDecoration: InputDecoration(
        hintText: "Search here",
        hintStyle: TextStyle(color: Colors.grey),
        // contentPadding: EdgeInsets.only(left: 8),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.green, width: 3.0),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(3.0),
              bottomRight: Radius.circular(3.0),
              topRight: Radius.circular(3.0),
              topLeft: Radius.circular(3.0)),
        ),
      ),
      dropdownSearchDecoration: InputDecoration(
        // filled: true,
        /* icon: Icon(
          iconData,
          size: iconSize,
        ),*/
        isDense: true,
        disabledBorder: InputBorder.none,
        // border: InputBorder.none,
        enabledBorder: const OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent, width: 0.0),
        ),
        border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent, width: 0.0),
            borderRadius: BorderRadius.circular(29)),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        contentPadding: EdgeInsets.all(0),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(width: 1, color: Colors.transparent),
        ),
      ),

      errorBuilder: (cg, value, v) {
        return Material(
            child: Container(
                alignment: Alignment.center,
                child: Text(
                  "No Data Found",
                  style: TextStyle(color: Colors.black),
                )));
      },
      emptyBuilder: (context, searchEntry) {
        return Material(
          child: Center(
            child: Text(
              "No Data Found",
              style: TextStyle(color: Colors.black),
            ),
          ),
        );
      },

      label: label ?? "",
      showSearchBox: true,
      items: list,
      //items: maritalStatus,
      // selectedItem: getData(callFrom),
      onChanged: (KeyvalueModel? data) {
        fun(data);
        switch (callFrom) {

          case "fuelType":
            selectedKey = data;
            break;
          case "vechicleType":
            selectedKey = data;
            break;
        }
        //selectbank = data;
      },
    ));
  }
  static Widget newContainer2(child) {
    return Padding(
      padding:
      const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0, bottom: 0.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.black, width: 0.3),
        ),
        child: child,
      ),
    );
  }

  static void showInSnackBar(BuildContext context, String value) {

    Flushbar(
      //  title:  "Hey SuperHero",
      message: value,
      backgroundColor: Colors.red,
      duration: Duration(seconds: 6),
    )..show(context);
  }}



