
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inits_test/constants.dart';

import 'appointment_widget.dart';
import 'data_model.dart';

class SecScreen extends StatefulWidget {
  const SecScreen({Key? key}) : super(key: key);

  @override
  State<SecScreen> createState() => _SecScreenState();
}

class _SecScreenState extends State<SecScreen> with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade50,
      margin: const EdgeInsets.fromLTRB(10, 20, 10, 100),
      child: NestedScrollView(
          headerSliverBuilder: (_, isScrolling) => [
                SliverAppBar(
                  backgroundColor: Colors.white,
                  floating: true,
                  flexibleSpace: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Schedule',
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.w700),
                      ),
                      CircleAvatar(
                          backgroundColor: const Color(0xFFF8F8FB),
                          child: SvgPicture.asset(bell))
                    ],
                  ),
                ),
                SliverPersistentHeader(
                    pinned: true,
                    floating: true,
                    delegate: SliverTabAppBarDelegate(tabs: const [
                      Tab(
                        child: Text('Upcoming',
                            style: TextStyle(color: Colors.black)),
                      ),
                      Tab(
                        child: Text(
                          'Past',
                          style: TextStyle(color: Colors.black),
                        ),
                      )
                    ], controller: _controller)),
              ],
          body: Center(
            child: TabBarView(
              controller: _controller,
              children: const [First(), First()],
            ),
          )),
    );
  }
}

class SliverTabAppBarDelegate extends SliverPersistentHeaderDelegate {
  final List<Tab> tabs;
  final TabController controller;

  SliverTabAppBarDelegate({required this.tabs, required this.controller});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xFFF6F7FA),
            borderRadius: BorderRadius.circular(30)),
        child: TabBar(
          controller: controller,
          tabs: tabs,
          padding: const EdgeInsets.all(5),
          indicator: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          unselectedLabelStyle: const TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
          labelStyle: const TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }

  @override
  double get maxExtent => 80;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: doctorContent.length,
        itemBuilder: (_, index) => Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              child:
                  AppointmentWidget(isGreen: true, dataModel: dataModel[index]),
            ));
  }
}
