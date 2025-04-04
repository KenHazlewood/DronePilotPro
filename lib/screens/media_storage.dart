import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class MediaStorage extends StatefulWidget {
  @override
  _MediaStorageState createState() => _MediaStorageState();
}

class _MediaStorageState extends State<MediaStorage> {
  final ImagePicker _picker = ImagePicker();
  File? _image;

  Future<void> _uploadImage() async {
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile == null) return;

    File file = File(pickedFile.path);
    setState(() => _image = file);
    
    FirebaseStorage.instance.ref('uploads/${DateTime.now()}.jpg').putFile(file);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Media Storage')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _uploadImage,
              child: Text("Upload Image"),
            ),
          ],
        ),
      ),
    );
  }
}
