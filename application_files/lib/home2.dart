import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Home2 extends StatefulWidget{

  @override  
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _HomeState();

  
}

class _HomeState extends State<Home2>{
      File ? selectedImage;
      Widget build(BuildContext context) {
        return Scaffold(
          body:Center(
            child: SingleChildScrollView(
              child: Column(
              
              children: [
                MaterialButton(
                    color:Colors.red,
                    child: const Text('Open Garelly'),
                    onPressed: (){_pick_imageFromGallarey();},
                ),
             const Padding(padding: EdgeInsets.all(15)),
                MaterialButton(
                    color:Colors.red,
                    child: const Text('Open Camera'),
                    onPressed: (){_pick_imageFromCamera();}),
                    const SizedBox(height: 10,width: 10,
                    ),
               selectedImage != null ? Image.file(selectedImage!) :const Text('Plese select an IMAGE') 

              ],
            ),
            
          ),
          

          )
        );
      }
    Future _pick_imageFromGallarey()async{
     final returnImage = await ImagePicker().pickImage(source: ImageSource.gallery);
     if(returnImage == null)return;
     setState(() {
       selectedImage = File(returnImage!.path);
     });
    }
    Future _pick_imageFromCamera()async{
     final returnImage = await ImagePicker().pickImage(source: ImageSource.camera);
     if(returnImage == null)return;
     setState(() {
       selectedImage = File(returnImage!.path);
     });
    }
}