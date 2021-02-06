import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register/src/controller/formmodel.dart';
import 'data_user_register.dart';
  class OutputModel extends StatefulWidget {
     FormModel formmodel;
    OutputModel({this.formmodel});
    @override
    _OutputModelState createState() => _OutputModelState();
  }

  class _OutputModelState extends State<OutputModel> {

    @override
    Widget build(BuildContext context) {
      return GestureDetector(
        onTap: (){
          setState(() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DataRegister(model:widget.formmodel,),
              ),
            );
          });
        },
          child: Container(
            width:440,
            height:100,
            margin: EdgeInsets.only(top: 5,left: 15,right: 15),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius:0.7,
                    color: Colors.black38
                )
              ],
              borderRadius: BorderRadius.circular(13),
            ),
            child: Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 0.5,
                            color: Colors.black38
                         )
                      ],
                      borderRadius: BorderRadius.circular(10),
                      image:DecorationImage(image:widget.formmodel.imageURL!=null?FileImage(widget.formmodel.imageURL):NetworkImage('https://www.searchpng.com/wp-content/uploads/2019/02/Men-Profile-Image-715x657.png'),fit:BoxFit.cover)),
                ),
                SizedBox(width: 20,),
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("First Name : "+widget.formmodel.firstName),
                        Text("Last Name : "+widget.formmodel.lastName),
                        Text("Gender : "+widget.formmodel.gender),
                      ],
                    )
                ),
              ],
            ),


          ),


      );
    }
  }
