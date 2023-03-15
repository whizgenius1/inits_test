import 'dart:ui';

import 'data_model.dart';

const svgFileName = 'assets/svgs';
const imgFileName = 'assets/images';

const String alert = '$svgFileName/inits_alert.svg';
const String bell = '$svgFileName/inits_bell.svg';
const String ambulance = '$svgFileName/inits_ambulance.svg';
const String docScope = '$svgFileName/inits_doc_scope.svg';
const String file = '$svgFileName/inits_file.svg';
const String home = '$svgFileName/inits_home.svg';
const String message = '$svgFileName/inits_message.svg';
const String pill = '$svgFileName/inits_pill.svg';
const String profile = '$svgFileName/inits_profile.svg';
const String menu = '$svgFileName/inits_menu.svg';
const String dot ='$svgFileName/inits_dot.svg';

const String firstImg = '$imgFileName/inits_img1.png';
const String doctor1 = '$imgFileName/inits_doctor1.png';
const String doc1 = '$imgFileName/inits_doc1.png';
const String doc2 = '$imgFileName/inits_doc2.png';
const String doc3 = '$imgFileName/inits_doc3.png';
const String doc4 = '$imgFileName/inits_doc4.png';


const Color primaryColor = Color(0xFF183E78);
const Color secColor = Color(0xFF808D9E);

List<DataModel> dataModel = doctorContent.map((e) => DataModel.fromJson(e)).toList();