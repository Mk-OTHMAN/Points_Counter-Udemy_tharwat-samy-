import 'package:basketball_counter_app/pages/teame_screen/cubit/points_cubit.dart';
import 'package:basketball_counter_app/pages/teame_screen/cubit/points_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TeamWidget extends StatelessWidget {
  final String teamName;
  final int teameNum;
  const TeamWidget({Key? key, required this.teamName, required this.teameNum})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PointsCubit, PointsState>(
      listener: (context, state) {
        PointsCubit pointsCubit = context.read<PointsCubit>();
        if (state is AddPointsState && teameNum == 1) {
          pointsCubit.awesomeDialog(context: context);
        } else if (state is AddPointsState && teameNum == 2) {
          pointsCubit.awesomeDialog(context: context);
        } else if (state is ResetPointsState) {
          pointsCubit.pointValue1 = pointsCubit.pointValue2 = 0;
        }
      },
      builder: (context, state) {
        final pointsCubit = BlocProvider.of<PointsCubit>(context);

        return Column(
          children: [
            Text(teamName, style: const TextStyle(fontSize: 42)),
            teameNum == 1
                ? Text(pointsCubit.pointValue1.toString(),
                    style: const TextStyle(fontSize: 100))
                : Text(pointsCubit.pointValue2.toString(),
                    style: const TextStyle(fontSize: 100)),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(8),
                backgroundColor: Colors.orange,
                minimumSize: const Size(150, 50),
              ),
              onPressed: () {
                pointsCubit.addPointsTeame(teameNum, 1);
              },
              child: const Text(
                'Add 1 Point ',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: const Size(150, 50),
              ),
              onPressed: () {
                pointsCubit.addPointsTeame(teameNum, 2);
              },
              child: const Text(
                'Add 2 Point',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: const Size(150, 50),
              ),
              onPressed: () {
                pointsCubit.addPointsTeame(teameNum, 3);
              },
              child: const Text(
                'Add 3 Point ',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ],
        );
      },
    );
  }
}
