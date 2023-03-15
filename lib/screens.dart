import 'package:flutter/material.dart';
import 'package:inits_test/example_provider.dart';
import 'package:inits_test/first_screen.dart';
import 'package:provider/provider.dart';

import 'second_screen.dart';

class Screens extends StatelessWidget {
  const Screens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ExampleProvider>(builder: (context, ep, child) {
      switch (ep.navIndex) {
        case 0:
         return const FirstScreen();
        case 1:
          return const SecScreen();
        default:
          return const SizedBox();
      }
    });
  }
}

