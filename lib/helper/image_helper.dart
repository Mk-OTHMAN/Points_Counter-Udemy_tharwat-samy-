import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ImageHelper {
  static final ImagePicker _picker = ImagePicker();

  // Pick image from gallery and return it to the caller
  static Future<File?> pickImageFromGallery() async {
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 85,
    );
    return pickedFile != null ? File(pickedFile.path) : null;
  }
}
