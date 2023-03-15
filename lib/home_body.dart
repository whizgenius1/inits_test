import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'appointment_widget.dart';
import 'constants.dart';

const List<Map<String, dynamic>> gridContent = [
  {'svg': docScope, 'text': 'Consultation'},
  {'svg': pill, 'text': 'Medicines'},
  {'svg': ambulance, 'text': 'Ambulance'},
  {'svg': docScope, 'text': 'Consultation'},
  {'svg': pill, 'text': 'Medicines'},
  {'svg': ambulance, 'text': 'Ambulance'}
];

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      ///
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
      ),
      child: ListView(
        physics: const PageScrollPhysics(),
        children: [
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Our Services',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 10,
          ),

          ///horizontal view
          SizedBox(
            height: 120,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: gridContent.length,
                itemBuilder: (_, index) => Container(
                      padding: const EdgeInsets.all(8.0),
                      margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Column(
                        children: [
                          Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xFFE9ECF2), width: 1),
                                  borderRadius: BorderRadius.circular(30)),
                              child:
                                  SvgPicture.asset(gridContent[index]['svg'])),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(gridContent[index]['text'])
                        ],
                      ),
                    )),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Appointments',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              TextButton(onPressed: () {}, child: const Text('See all'))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          AppointmentWidget(
           dataModel: dataModel[0],
          )
        ],
      ),
    );
  }
}
