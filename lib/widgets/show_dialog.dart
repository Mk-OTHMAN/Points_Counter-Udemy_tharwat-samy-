import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

class JDialog {
  static void showAnimatedDialog(BuildContext context) => showDialog(
        context: context,
        builder: (BuildContext context) {
          return GiffyDialog.image(
            Image.asset(
              "assets/Rabit_Done.gif",
              height: 200,
              fit: BoxFit.cover,
            ),
            title: const Text(
              'Well Done!',
              textAlign: TextAlign.center,
            ),
            content: const Text(
              'Congratulations! for Points earned 🎉 🥳',
              textAlign: TextAlign.center,
            ),
            actions: [
              Center(
                child: TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('OK'),
                ),
              ),
            ],
          );
        },
      );
}
