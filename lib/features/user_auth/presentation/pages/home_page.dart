// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_aplication/features/shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("Home Page"), backgroundColor: Colors.amber),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              "Welcome to Home sans",
              style: TextStyle(fontSize: 20),
            ),
          ),
          GestureDetector(
            onTap: () {
              // FirebaseAuth.instance.signOut();
              Navigator.pushNamed(context, "/login");
            },
            child: Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                  color: mainColor, borderRadius: BorderRadius.circular(8)),
              child: const Center(
                  child: Text(
                "Sign Out",
                style: TextStyle(color: Colors.white),
              )),
            ),
          )
        ],
      )),
    );
  }
}
