import 'package:flutter/material.dart';

class TeamWidget extends StatelessWidget {
  final String teamName;
  const TeamWidget({Key? key, required this.teamName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        children: [
          Text(
            teamName,
            style: const TextStyle(
              fontSize: 42,
            ),
          ),
          const Text(
            '0',
            style: TextStyle(
              fontSize: 200,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(8),
              backgroundColor: Colors.orange,
              minimumSize: const Size(150, 50),
            ),
            onPressed: () {},
            child: const Text(
              'Add 1 Point ',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              minimumSize: const Size(150, 50),
            ),
            onPressed: () {},
            child: const Text(
              'Add 2 Point',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              minimumSize: const Size(150, 50),
            ),
            onPressed: () {},
            child: const Text(
              'Add 3 Point ',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
