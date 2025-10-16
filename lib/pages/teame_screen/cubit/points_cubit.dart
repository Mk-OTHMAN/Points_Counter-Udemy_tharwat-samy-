import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:basketball_counter_app/pages/teame_screen/cubit/points_state.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class PointsCubit extends Cubit<PointsState> {
  PointsCubit() : super(PointsInitial());
  int pointValue1 = 0;
  int pointValue2 = 0;
  int resetPointsValue = 0;
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

  //----------- Awesome Dialog function ---------
  void awesomeDialog({required BuildContext context}) {
    AwesomeDialog(
      context: context,
      animType: AnimType.scale,
      dialogType: DialogType.info,
      body: const Center(
        child: Text(
          'Congratulations on scoring!',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
      ),
      title: 'Well Done',
      desc: 'Go ahead and add more points',
      btnOkOnPress: () {},
    );
    emit(AddPointsState());
  }
}
