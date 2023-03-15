import 'constants.dart';

class DataModel {
  final String doctorName;
  final String field;
  final String date;
  final String image;
  final List<String> advice;
  DataModel(
      {required this.doctorName,
      required this.field,
      required this.date,
      required this.image,
      required this.advice});

  DataModel.fromJson(Map<String, dynamic> parsedJson)
      : doctorName = parsedJson['doctorName'],
        field = parsedJson['field'],
        date = parsedJson['date'],
        image = parsedJson['image'],
        advice = parsedJson['advice'];
}

List<Map<String, dynamic>> doctorContent = [
  {
    'doctorName': 'Dr. Prem Tiwari',
    'field': 'Orthopedic',
    'date': DateTime.now().toString(),
    'image': doc1,
    'advice': ['Drink water', 'Eat healthy', 'Do exercise']
  },
  {
    'doctorName': 'Dr. Sakshi Sinha',
    'field': 'Obstetrician',
    'date': DateTime.now().toString(),
    'image': doc2,
    'advice': ['eat well', 'Eat fruits', 'Do exercise']
  },
  {
    'doctorName': 'Dr. Padma Jignesh',
    'field': 'Orthopedic',
    'date': DateTime.now().toString(),
    'image': doc3,
    'advice': ['Drink water', 'Eat healthy', 'Do exercise']
  },
  {
    'doctorName': 'Dr. Aaron Leigh',
    'field': 'Dermatologist',
    'date': DateTime.now().toString(),
    'image': doc4,
    'advice': ['Drink water', 'Eat healthy', 'Do exercise']
  }
];
