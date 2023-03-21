import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class BasicDataProvider with ChangeNotifier {
  XFile? profileImage;

  // Future<void> pickImageFromGallery() async {
  //   final ImagePicker imagePicker = ImagePicker();
  //   XFile? galleryImage =
  //       await imagePicker.pickImage(source: ImageSource.gallery);
  //   if (galleryImage != null) {
  //     profileImage = galleryImage;
  //   }
  //   notifyListeners();
  // }
}
