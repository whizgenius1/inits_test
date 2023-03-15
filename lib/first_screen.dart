import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'constants.dart';
import 'home_body.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
      decoration: BoxDecoration(
        gradient: RadialGradient(
            colors: [Colors.white, Colors.red.withOpacity(.5)],
            radius: 0.75,
            focal: const Alignment(-0.2, -.5),
            center: const Alignment(.4, -.4),
            focalRadius: 20,
            tileMode: TileMode.clamp),
      ),
      child: NestedScrollView(
        physics: const PageScrollPhysics(),
        headerSliverBuilder: (_, isScrolling) => [
          SliverPersistentHeader(
              pinned: true, floating: true, delegate: SliverAppBarDelegate()),
          SliverAppBar(
            floating: true,
            scrolledUnderElevation: 0,
            expandedHeight: MediaQuery.of(context).size.height * .3,
            backgroundColor: Colors.transparent,
            flexibleSpace: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              physics: const PageScrollPhysics(),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Welcome!\nRajesh',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 32),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'How is it going today?',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF808D9E),
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFFF9C27),
                                padding: const EdgeInsets.all(15),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            onPressed: () {},
                            child: Row(
                              children: [
                                SvgPicture.asset(alert),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Text('Urgent Care')
                              ],
                            ))
                      ],
                    ),
                    Image.asset(doctor1)
                  ],
                ),
              ],
            ),
          )
        ],
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
          child: const HomeBodyWidget(),
        ),
      ),
    );
  }
}

class SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  @override
  double get maxExtent => 50;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(firstImg),
          CircleAvatar(
              backgroundColor: Colors.white, child: SvgPicture.asset(bell))
        ],
      ),
    );
  }
}
