import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register/src/controller/formmodel.dart';
import 'package:register/src/page/home.dart';
import 'insert_image_picker_in_page.dart';
class RegisterPage extends StatefulWidget {
  int index;
  FormModel formModel;

  RegisterPage({this.index, this.formModel});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}
class _RegisterPageState extends State<RegisterPage> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController majorController = TextEditingController();
  TextEditingController modellphoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  File image;
  bool isboolan = false;
  final _formKey = GlobalKey<FormState>();
  Color borderColor = Colors.white;
  @override
  void initState() {
    if (widget.index != null) {
      image = mylist[widget.index].imageURL;
      firstNameController.text = mylist[widget.index].firstName;
      lastNameController.text = mylist[widget.index].lastName;
      genderController.text = mylist[widget.index].gender;
      majorController.text = mylist[widget.index].major;
      modellphoneController.text = mylist[widget.index].modellphone;
      addressController.text = mylist[widget.index].adress;
      dateController.text = mylist[widget.index].dateofbirle;
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Register page'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                child: TextFormField(
                  controller: firstNameController,
                  validator: (firstNameController) {
                    if (firstNameController.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  decoration: new InputDecoration(
                    labelText: "First Name",
                    //fillColor: Colors.red,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(15.0),
                    ),
                  ),
                  onChanged: (value) {
                    if (value.isEmpty!= false)
                      setState((){
                        isboolan =true;
                      });
                  },
                  autovalidate: isboolan,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                child: TextFormField(
                  controller: lastNameController,
                  validator: (lastNameController) {
                    if (lastNameController.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  decoration: new InputDecoration(
                    labelText: "Last Name",
                    //fillColor: Colors.red,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(15.0),
                    ),
                  ),
                  onChanged: (value) {
                    if (value.isEmpty!= false)
                      setState(() {
                        isboolan = true;
                      });
                    else {
                      isboolan = true;
                    }
                  },
                  autovalidate: isboolan,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                child: TextFormField(
                  controller: genderController,
                  validator: (genderController) {
                    if (genderController.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  decoration: new InputDecoration(
                    labelText: "Gender",
                    //fillColor: Colors.red,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(15.0),
                    ),

                    //fillColor: Colors.green
                  ),
                  onChanged: (value) {
                    if (value.isEmpty!= false)
                      setState(() {
                        isboolan =true;
                      });
                  },
                  autovalidate: isboolan,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15, left: 25, right: 25),
                child: TextFormField(
                  controller: dateController,
                  validator: (dateController) {
                    if (dateController.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  decoration: new InputDecoration(
                    labelText: "date of birle",
                    fillColor: Colors.red,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(15.0),
                    ), //fillColor: Colors.green
                  ),
                  onChanged: (value) {
                    if (value.isEmpty != false)
                      setState(() {
                        isboolan = true;
                      });
                  },
                  autovalidate: isboolan,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                child: TextFormField(
                  controller: majorController,
                  validator: (majorController) {
                    if (majorController.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  decoration: new InputDecoration(
                    labelText: "Major",
                    fillColor: Colors.red,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(15.0),
                    ),
                    //fillColor: Colors.green
                  ),
                  onChanged: (value) {
                    if (value.isEmpty!= false)
                      setState(() {
                        isboolan =true;
                      });
                  },
                  autovalidate: isboolan,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                child: TextFormField(
                  controller: modellphoneController,
                  validator: (modellphoneController) {
                    if (modellphoneController.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  decoration: new InputDecoration(
                    labelText: "Mobile phone",
                    fillColor: Colors.red,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(15.0),
                    ),

                    //fillColor: Colors.green
                  ),
                  onChanged: (value) {
                    if (value.isEmpty!= false)
                      setState(() {
                        isboolan =true;
                      });
                  },
                  autovalidate: isboolan,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                child: TextFormField(
                  controller: addressController,
                  validator: (String addressController) {
                    if (addressController.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  decoration: new InputDecoration(
                    labelText: "Address",
                    fillColor: Colors.red,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(15.0),
                    ), //fillColor: Colors.green
                  ),
                  onChanged: (value) {
                    if (value.isEmpty != false)
                      setState(() {
                        isboolan = true;
                      });
                  },
                  autovalidate: isboolan,
                ),
              ),
            InsertImage(
                borderColor:borderColor,
                image: image,
                onchange: (File images) {
                  setState(() {
                    borderColor = Colors.white;
                    image=images;
                  });
                  // images=mylist[widget.index].imageURL;
                },
              ),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 50.0,
                      margin: EdgeInsets.only(left: 20.0, top: 20.0),
                      child: FlatButton(
                        color: Colors.blueAccent,
                        child: Text(
                          "Cancel",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 48.0,
                      margin: EdgeInsets.only(top: 15, right: 15),
                      child: FlatButton(
                        color: Colors.blueAccent,
                        child: widget.index == null
                            ? Text(
                                'Insert',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              )
                            : Text('Update',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16)),
                        onPressed: () {
                          setState(() {
                            if (widget.index != null) {
                                 if (_formKey.currentState.validate()) {
                                mylist[widget.index].imageURL = image;
                                mylist[widget.index].firstName =
                                    firstNameController.text;
                                mylist[widget.index].lastName =
                                    lastNameController.text;
                                mylist[widget.index].gender =
                                    genderController.text;
                                mylist[widget.index].major =
                                    majorController.text;
                                mylist[widget.index].modellphone =
                                    modellphoneController.text;
                                mylist[widget.index].adress =
                                    addressController.text;
                                mylist[widget.index].dateofbirle =
                                    dateController.text;
                                   autovalidate: false;
                                showModalBottomSheet(context: context,
                                    builder: (BuildContext context) {
                                      return Container(
                                        padding:
                                            EdgeInsets.only(left: 15, top: 10),
                                        height: 40,
                                        child: Text(
                                          "Yes Success",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        color: Colors.black,
                                      );
                                    });
                                Timer(Duration(seconds: 2), () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Home()));
                                });
                                         }

                                  }
                            else {

                              if (_formKey.currentState.validate()) {
                               if(image!=null){
                                 borderColor = Colors.white;
                                mylist.add(FormModel(
                                  imageURL:image,
                                  firstName: firstNameController.text,
                                  lastName: lastNameController.text,
                                  gender: genderController.text,
                                  dateofbirle: dateController.text,
                                  major: majorController.text,
                                  modellphone: majorController.text,
                                  adress: addressController.text,
                                ));

                                showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Container(
                                        padding:
                                            EdgeInsets.only(left: 15, top: 10),
                                        height: 40,
                                        child: Text(
                                          "Success",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        color: Colors.black,
                                      );
                                    });
                                Timer(Duration(seconds:2), () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Home()));
                                });
                              }
                                else {
                                 // borderColor=Colors.red;
                                  showModalBottomSheet(
                                      context: context,
                                      builder: (BuildContext context) {
                                      return Container(
                                        padding:
                                            EdgeInsets.only(left: 15, top: 10),
                                        height: 40,
                                        child: Text(
                                          "No Success",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        color: Colors.black,
                                      );
                                    });
                                Timer(Duration(seconds:1), () {
                                  setState(() {
                                    borderColor=Colors.red;
                                    //Navigator.pop(context);
                                  });
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()));
                                });
                              }}
                            }
                          });
                        },
                      ),
                    ),
                  ),
                  //Container(width:double.infinity,height:50,),
                ],
              ),
              Container(
                width: double.infinity,
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
