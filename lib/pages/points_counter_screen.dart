import 'package:flutter/material.dart';
import 'package:points_counter/pages/teame_screen/team_screen.dart';
import 'package:points_counter/widgets/reset_button.dart';

class PointsCounter extends StatelessWidget {
  const PointsCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Center(child: Text('Points Counter')),
      ),
      body: const Column(
        children: [
          SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TeamWidget(
                teamName: 'Team A',
                teameNum: 1,
              ),
              SizedBox(
                height: 420,
                child: VerticalDivider(color: Colors.grey, thickness: 1),
              ),
              TeamWidget(
                teamName: 'Team B',
                teameNum: 2,
              ),
            ],
          ),
          SizedBox(height: 32),
          ResetButton(),
        ],
      ),
    );
  }
}
