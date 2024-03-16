import 'package:flutter/material.dart';

class WellcomeView extends StatelessWidget {
  const WellcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Text('Wellcome Screen'),
    )));
  }
}
