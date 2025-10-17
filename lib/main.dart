import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter/pages/points_counter_screen.dart';
import 'package:points_counter/pages/teame_screen/cubit/points_cubit.dart';

void main() {
  runApp(const Home());
}

// right now the main file is clean and clear
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<PointsCubit>(
        create: (context) => PointsCubit(),
        child: const PointsCounter(),
      ),
    );
  }
}
