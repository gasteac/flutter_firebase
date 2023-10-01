import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  

  const ChatScreen({super.key});

  @override
  
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
String userEmail = user?.email ?? 'Usuario no autenticado';
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlutterChat'),
        actions: [
          IconButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              icon: Icon(
                Icons.exit_to_app_rounded,
                color: Theme.of(context).colorScheme.primary,
              ))
        ],
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Bienvenido', style: TextStyle(fontSize: 20),),
          Text(userEmail)
        ],
      )),
    );
  }
}
