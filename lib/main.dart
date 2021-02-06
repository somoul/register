import 'package:flutter/material.dart';
import 'package:register/src/page/home.dart';
import 'package:register/src/widgets/insert_image_picker_in_page.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        //home: InsertImage(),
      home: Home(),
       );

  }
}

