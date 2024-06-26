// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:path/path.dart' show basename;
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  File? imgPath;

  uploadImage2Screen() async {
    final pickedImg =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    try {
      if (pickedImg != null) {
        setState(() {
          imgPath = File(pickedImg.path);
        });

        String imgName = basename(pickedImg.path);
        int random = Random().nextInt(9999999);
        imgName = "$random$imgName";

        print("==============================");
        print(imgName);

        print(imgPath);
        print(imgName);
      } else {
        print("NO img selected");
      }
    } catch (e) {
      print("Error => $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          await uploadImage2Screen();
        },

      ),
      
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
      ),
      body: Center(
          child: (imgPath == null)
              ? Text("No img selected")
              : Image.file(imgPath!)),
    );
  }
}