import 'package:basketball_counter_app/cubit/points_state.dart';
import 'package:bloc/bloc.dart';

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
}
