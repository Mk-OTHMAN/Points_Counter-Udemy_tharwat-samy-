import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter/pages/teame_screen/cubit/points_cubit.dart';

class ResetButton extends StatelessWidget {
  const ResetButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(8),
          backgroundColor: Colors.orange,
          minimumSize: const Size(150, 50),
        ),
        onPressed: () {
          context.read<PointsCubit>().resetPoints();
        },
        child: const Text(
          'Reset',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}
