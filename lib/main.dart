import 'package:basketball_counter_app/cubit/points_cubit.dart';
import 'package:basketball_counter_app/cubit/points_state.dart';
import 'package:basketball_counter_app/points_counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
