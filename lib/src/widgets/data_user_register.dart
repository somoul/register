import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register/src/controller/formmodel.dart';
class DataRegister extends StatefulWidget {
  FormModel model;
  DataRegister({this.model});
  _DataRegisterState createState() => _DataRegisterState();
}
class _DataRegisterState extends State<DataRegister> {
  @override
  Widget  build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Color(0xffb2ebf2),
      appBar:AppBar(
        backgroundColor: Colors.blueAccent,
        leading:IconButton(icon:Icon(Icons.arrow_back,size:30,color:Colors.white,)
          ,onPressed:(){ Navigator.pop(context);},),
        title: Text('Data User Register',style:TextStyle(fontSize:20),),
      ),
      body:SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                  Container(
                    width: double.maxFinite,
                    height: 200,
                   child:widget. model.imageURL!=null?
                   Image.file(widget. model.imageURL,fit: BoxFit.fill,):
                   Center(child: Text('No Picture',style:TextStyle(fontSize: 26),),)
                    // decoration: BoxDecoration(
                    //     color: Colors.white70,
                    //     //shape: BoxShape.circle,
                    //     image: new DecorationImage(
                    //       image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTi6SpfShOHjbpGqOUbCrcm-R-VSc2sMp1WgA&usqp=CAU'),
                    //       fit: BoxFit.cover,
                    //     ),
                    // ),
                  ),
                  Container(
                    color: Colors.white12,
                    height:50,
                    //color: Colors.white.withOpacity(0.5),
                    
                    child: Center(
                      child: Text(
                        'Personal Infomation',style: TextStyle(fontSize:15)),
                    ),
                    ),
                  Container(
                    child: Data(
                      icon:Icons.person,
                      namedata:'First Name:  ${widget.model.firstName}',
                    ),
                  ),
                  Container(
                  child: Data(
                    icon: Icons.group,
                    namedata:'Last Name:  ${widget.model.lastName}',
                  ),
                ),
                  Container(
                  child: Data(
                    icon: Icons.wc,
                    namedata:'Gender:  ${widget.model.gender}',
                  ),
                ),
                  Container(
                  child: Data(
                    icon: Icons.work,
                    namedata:'Major:  ${widget.model.major}',
                  ),
                ),
                  Container(
                  child: Data(
                    icon: Icons.phone_iphone,
                    namedata:'Mobile of phone:  ${widget.model.modellphone}',
                  ),
                ),
                  Container(
                  child: Data(
                    icon: Icons.account_balance,
                    namedata:'Address:  ${widget.model.adress}',
                  ),
                ),
                  Container(
                    child: Data(
                    icon: Icons.date_range,
                    namedata:'Date of birth: ${widget.model.dateofbirle}',
                  ),
                ),


                ],
              ),
      ),
    );
  }
}
class Data extends StatelessWidget {
  @override
  String namedata;
  IconData icon;
  Data({this.namedata,this.icon});
  Widget build(BuildContext context) {
    return Container(
      width:410,
      height:60,
      child:Row(
        children: [
          SizedBox(width:15,),
          Icon(icon,color: Colors.black54,),
          SizedBox(width:15,),
          Text(namedata,style:TextStyle(fontSize:16,color: Colors.black),),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(blurRadius:0.3),
        ]
      )
    );
  }
}



