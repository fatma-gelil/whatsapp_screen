import 'package:flutter/material.dart';
import 'package:nti2/chat_model.dart';
import 'package:nti2/features/home/screens/home_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key, required this.chatModel});
  final ChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 50,
        backgroundImage: chatModel.image,
      ),
      title: Text(
        chatModel.title,
        style: style(),
      ),
      subtitle: Text(
        chatModel.subtitle,
        style: style(),
      ),
    );
  }
}
