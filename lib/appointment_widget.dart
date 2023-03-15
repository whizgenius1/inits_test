import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import 'constants.dart';
import 'data_model.dart';

class AppointmentWidget extends StatelessWidget {
  final bool isGreen;
  final DataModel dataModel;
  const AppointmentWidget(
      {Key? key, required this.dataModel, this.isGreen = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showBottomSheet(
            context: context,
            elevation: 5,
            backgroundColor: Colors.transparent,
            builder: (_) => Container(
                  height: MediaQuery.of(context).size.height * .6,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///top
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(''),
                          const Text(
                            'Summary',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 24),
                          ),
                          TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text(
                                'Cancel',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey,
                                    fontSize: 14),
                              ))
                        ],
                      ),

                      const SizedBox(
                        height: 30,
                      ),

                      ///doctor pic
                      Row(
                        children: [
                          Stack(
                            children: [
                              Image.asset(
                                dataModel.image,
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  padding: const EdgeInsets.all(1),
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: const Icon(
                                    Icons.video_call_outlined,
                                    size: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                dataModel.doctorName,
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(dataModel.field,
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF808D9E))),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text('Doctor\'s Advice',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16)),
                      const SizedBox(
                        height: 20,
                      ),
                      Expanded(
                          child: ListView.builder(
                              physics: const PageScrollPhysics(),
                              itemCount: dataModel.advice.length,
                              itemBuilder: (_, index) => Row(
                                    children: [
                                      const Icon(
                                        Icons.done,
                                        color: Colors.green,
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        dataModel.advice[index],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14),
                                      )
                                    ],
                                  )))
                    ],
                  ),
                ));
      },
      child: Container(
        height: 170,
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            //first
            Container(
              height: 150,
              width: 7,
              color: isGreen ? const Color(0xFF48BD69) : const Color(0xFF4D94FF),
            ),
            Expanded(
                child: Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 5, 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Appointment date',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF808D9E))),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const Icon(Icons.access_time_outlined),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                // dataModel.date,
                                DateFormat('E MMM dd')
                                    .format(DateTime.parse(dataModel.date)),
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 12),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              SvgPicture.asset(dot),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                '8:00 - 8:30 AM',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 12),
                              )
                            ],
                          )
                        ],
                      ),
                      SvgPicture.asset(
                        menu,
                        height: 40,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            dataModel.image,
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              padding: const EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(30)),
                              child: const Icon(
                                Icons.video_call_outlined,
                                size: 14,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            dataModel.doctorName,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(dataModel.field,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF808D9E))),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
