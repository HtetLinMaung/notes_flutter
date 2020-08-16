import 'package:flutter/material.dart';

const kTitleTextStyle = TextStyle(
  fontSize: 35,
  fontWeight: FontWeight.w700,
);

class HomeScreen extends StatelessWidget {
  static const routeName = "HomeScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Text(
                  'Notes',
                  style: kTitleTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
