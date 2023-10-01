import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/widgets/chat_messages.dart';
import 'package:flutter_firebase/widgets/new_message.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ManadaChat🐺'),
        actions: [
          TextButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              child: const Text('Cerrar Sesion'),
              )
        ],
      ),
      body: const Column(
        children: [
          Expanded(child: ChatMessages()),
          NewMessage(),
        ],
      ),
    );
  }
}
