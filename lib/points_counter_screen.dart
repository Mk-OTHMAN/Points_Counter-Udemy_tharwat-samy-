import 'package:basketball_counter_app/reset_button.dart';
import 'package:basketball_counter_app/team_widget.dart';
import 'package:flutter/material.dart';

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
              TeamWidget(teamName: 'Team A', teameNum: 1),
              SizedBox(
                height: 420,
                child: VerticalDivider(color: Colors.grey, thickness: 1),
              ),
              TeamWidget(teamName: 'Team B', teameNum: 2),
            ],
          ),
          SizedBox(height: 32),
          ResetButton(),
        ],
      ),
    );
  }
}
