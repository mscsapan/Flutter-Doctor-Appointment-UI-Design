import 'package:doctor_appointment_design/model/doctor_model.dart';

class ConversationModel {
  final String image;
  final String message;
  final bool patient;

  ConversationModel(
      {required this.image, required this.message, required this.patient});
}

final List<ConversationModel> conversationList = [
  ConversationModel(
      image: docImages[1],
      message:
          'Hi Doctor,I am a cardio patient.\nI need your help immediately.',
      patient: true),
  ConversationModel(
      image: docImages[1],
      message: 'Hi,don’t worry.I am here.\nLet me know your situation now.',
      patient: false),
  ConversationModel(
      image: docImages[1],
      message: 'I feel very sick for previous few days.\nPlease do something.',
      patient: true),
  ConversationModel(
      image: docImages[1],
      message: 'Hi,don’t worry.I am here.\nLet me know your situation now.',
      patient: false),
  ConversationModel(image: docImages[1], message: 'Okk Doctor', patient: true),
  ConversationModel(image: docImages[1], message: 'typing...', patient: false),
];
