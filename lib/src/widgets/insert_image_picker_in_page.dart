import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:register/src/controller/formmodel.dart';

class InsertImage extends StatefulWidget {
  Function onchange;
  Color borderColor;
  @override
  FormModel formmodel;
  File image;
  InsertImage({
        this.formmodel,
        this.onchange,
         this.image,
    this.borderColor,
         });
  _InsertImageState createState() => _InsertImageState();
    }
 class _InsertImageState extends State<InsertImage> {
  // File _image;
  _imgFromCamera() async {
    File image = await ImagePicker.pickImage(
        source: ImageSource.camera, imageQuality: 50);
    if(image!=null)
    setState(() {
      widget.onchange(image);
    });
  }
  _imgFromGallery() async {
    File image = await  ImagePicker.pickImage(
        source: ImageSource.gallery,imageQuality:50
    );
    if(image!=null)
    setState(() {
      widget.image = image;
      widget.onchange(image);
      print(image);
    });
  }
  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library,color: Colors.black),
                      title: new Text('Photo Library',style: TextStyle(color: Colors.black)),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera,color: Colors.black,),
                    title: new Text('Camera',style: TextStyle(color: Colors.black),),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),

                ],
              ),
            ),
          );
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child:widget.image==null?
      Container(
        margin:EdgeInsets.all(10),
        width:340,height:170,
        decoration: BoxDecoration(
          border: Border.all(
            width:2,
            color: widget.borderColor,
          ),
        ),
        child: Stack(
          children: [
            Container(
               width: double.infinity,
               height:170,
              child:Container(
              child: Image(
              image: NetworkImage('https://media.thetab.com/blogs.dir/48/files/2014/02/fb-profile.gif'),fit: BoxFit.fill,),
                ),
            ),
            Positioned(
              right:10,
              bottom:5,
              child:GestureDetector(onTap: (){
                    setState(() {
                      _showPicker(context);
                      Image.file(widget.image,fit: BoxFit.fill,);
                    });
              },child: Icon(Icons.camera_alt,color: Colors.white,size: 40,)),
            ),
          ],
        ) ,
      ):
          Stack(
            children: [
              Container(
                margin: EdgeInsets.all(20.0),
                width: double.infinity,
                height: 170,
                color: Colors.red,
                child: Image.file(widget.image,fit: BoxFit.fill,),
              ),
              Positioned(
                right: 35,
                bottom: 25,
                child: GestureDetector(onTap: (){
              setState(() {
                _showPicker(context);
                Image.file(widget.image,fit: BoxFit.fill,);
              });
                },child: Icon(Icons.camera_alt,color: Colors.white,size: 40,)),
              ),
            ],
          ),

    );
  }
}
