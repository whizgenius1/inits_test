import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:inits_test/example_provider.dart';
import 'package:inits_test/screens.dart';
import 'package:provider/provider.dart';

import 'constants.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const Screens(),

            ///navigation
            Align(
              alignment: Alignment.bottomCenter,
              child: Consumer<ExampleProvider>(builder: (context, ep, child) {
                return BottomNavigationBar(
                  backgroundColor: Colors.transparent,

                  onTap: (v) => ep.setNavIndex(v),
                  items: [
                    BottomNavigationBarItem(
                        icon: SvgPicture.asset(home,
                            color: ep.navIndex == 0 ? primaryColor : secColor,
                            height: ep.navIndex == 0 ? 30 : 20),
                        label: ''),
                    BottomNavigationBarItem(
                        icon: SvgPicture.asset(file,
                            color: ep.navIndex == 1 ? primaryColor : secColor,
                            height: ep.navIndex == 1 ? 30 : 20),
                        label: ''),
                    const BottomNavigationBarItem(
                        icon: CircleAvatar(
                          radius: 30,
                          child: Icon(Icons.add, color: Colors.white),
                        ),
                        label: ''),
                    BottomNavigationBarItem(
                        icon: SvgPicture.asset(message,
                            color: ep.navIndex == 3 ? primaryColor : secColor,
                            height: ep.navIndex == 3 ? 30 : 20),
                        label: ''),
                    BottomNavigationBarItem(
                        icon: SvgPicture.asset(profile,
                            color: ep.navIndex == 4 ? primaryColor : secColor,
                            height: ep.navIndex == 4 ? 30 : 20),
                        label: ''),
                  ],
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
