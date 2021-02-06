import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:register/src/controller/formmodel.dart';
import 'package:register/src/widgets/outputmodel.dart';
import 'package:register/src/widgets/register_page.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
class Home extends StatefulWidget {
  String fullname;
  String lastname;
  String gender;
  String major;
  String mobilephone;
  String address;
  String date;

  Home({
    this.fullname,
    this.gender,
    this.major,

  });
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white60,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Register Form'),
        actions: [
          IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.white,
                size: 25,
              ),
              onPressed: () async {
                await  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              }
          )
        ],
      ),
      body: Container(
        height: double.infinity,
        width:double.infinity,
        decoration: BoxDecoration(
            borderRadius:BorderRadius.only(
              topLeft:Radius.circular(5),
              topRight: Radius.circular(5),
              bottomRight: Radius.circular(5),
              bottomLeft: Radius.circular(5),
            )
        ),
        child: ListView.builder(
          itemCount: mylist.length,
          itemBuilder: (context, index){
            return Slidable(
              actionPane: SlidableDrawerActionPane(),
             actionExtentRatio: 0.2,
              child: OutputModel(
                formmodel:mylist[index],
              ),
              secondaryActions: <Widget>[
                IconSlideAction(
                  caption: 'Update',
                  color: Colors.green,
                  icon: Icons.update,
                  onTap: (){
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>RegisterPage(index:index),
                        ),
                      );
                    });
                  },
                ),
                IconSlideAction(
                    caption: 'Delete',
                    color: Colors.red,
                    icon: Icons.delete,
                    onTap: () {
                      setState(() {
                        mylist.removeAt(index);
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                padding: EdgeInsets.only(left: 15, top: 10),
                                height: 40,
                                child: Text(
                                  "Updated",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                color: Colors.black,
                              );
                            });
                        Timer(Duration(seconds: 2), () {
                          Navigator.of(context).pop();
                        });
                      });
                    }
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}