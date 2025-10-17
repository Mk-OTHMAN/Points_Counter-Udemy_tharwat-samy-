import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:points_counter/helper/image_helper.dart';
import 'package:points_counter/pages/teame_screen/cubit/points_state.dart';

class PointsCubit extends Cubit<PointsState> {
  PointsCubit() : super(PointsInitial());
  int pointValue1 = 0;
  int pointValue2 = 0;
  int resetPointsValue = 0;
  File? image;
  File? character1Image;
  File? character2Image;
  //----------- add points function ---------
  void addPointsTeame(int teameNum, int value) {
    if (teameNum == 1 && value == 1) {
      pointValue1 += 1;
    } else if (teameNum == 1 && value == 2) {
      pointValue1 += 2;
    } else if (teameNum == 1 && value == 3) {
      pointValue1 += 3;
    } else if (teameNum == 2 && value == 1) {
      pointValue2 += 1;
    } else if (teameNum == 2 && value == 2) {
      pointValue2 += 2;
    } else if (teameNum == 2 && value == 3) {
      pointValue2 += 3;
    }
    emit(AddPointsState());
  }

  //----------- reset points function ---------
  void resetPoints() {
    pointValue1 = pointValue2 = 0;
    emit(ResetPointsState());
  }

// -------- image picker function in case using only one image ---------
  Future<void> selectImage() async {
    final picked = await ImageHelper.pickImageFromGallery();
    if (picked != null) {
      image = picked;
    }
    emit(ImageSelectedState());
  }

// -------- image picker function in case using two images ---------
  Future<void> pickImageForCharacter(int characterIndex) async {
    final image = await ImageHelper.pickImageFromGallery();
    if (image != null) {
      if (characterIndex == 1) {
        character1Image = image;
      } else {
        character2Image = image;
      }
    }
    emit(ImageSelectedState());
  }
}
