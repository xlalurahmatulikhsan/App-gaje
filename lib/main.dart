import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_aplication/features/app/splash_screen.dart';
import 'package:my_aplication/features/user_auth/presentation/pages/login_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyB4PP0IXsUei7rV9pC3a6m1ebB30MP6Z6Y",
            appId: "1:268571322699:web:09ff5930c7c960a02ea0ce",
            messagingSenderId: "268571322699",
            projectId: "flutter-firebase-7ec44"));
  }

  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Firebase",
      home: SplashScreen(
        child: LoginPage(),
      ),
    );
  }
}
