import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Rent A Space QR',
            ),
            IconButton(
              iconSize: 80,
              icon: const Icon(Icons.qr_code_scanner_rounded),
              onPressed: () {
                print("scan clicked");
              },
            ),
            const Text(
              'Tap to Scan',
            ),
          ],
        ),
      ),
    ));
  }
}
