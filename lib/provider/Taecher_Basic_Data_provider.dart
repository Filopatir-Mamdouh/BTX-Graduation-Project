import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class BasicDataProvider with ChangeNotifier {
  int code = 213456757;
  String name = "Ahmed khaled";
  int phone_number = 0143253453445;
  String Emial = "Ahmed@gmail.com";
  String ID_Type = "بطاقة قومية";
  int ID_Number = 943958359843;
  String Address =
      "شارع حمو الطيخا متفرع 15 من المكسيكي شرق بني سويف - بني سويف";

  XFile? profileImage;

  Future<void> pickImageFromGallery() async {
    final ImagePicker imagePicker = ImagePicker();
    XFile? galleryImage =
        await imagePicker.pickImage(source: ImageSource.gallery);
    if (galleryImage != null) {
      profileImage = galleryImage;
    }
    notifyListeners();
  }
}
