import 'package:flutter/material.dart';
import 'package:second_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: 'Hola', sender: Sender.MY),
    Message(text: 'Regresaste?', sender: Sender.MY),
  ];

  Future<void> sendMessage(String text) async {
    final newMessage = Message(text: text, sender: Sender.MY);
    messageList.add(newMessage);
    notifyListeners();
  } 

}