// avatar_widget.dart
import 'dart:io';
import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final double radius;
  final File? imageFile;
  final VoidCallback onTap;

  const AvatarWidget({
    Key? key,
    required this.onTap,
    this.imageFile,
    this.radius = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: radius,
        backgroundColor: Colors.grey.shade300,
        backgroundImage: imageFile != null ? FileImage(imageFile!) : null,
        child: imageFile == null
            ? Icon(Icons.camera_alt,
                size: radius * 0.8, color: Colors.grey[700])
            : null,
      ),
    );
  }
}
