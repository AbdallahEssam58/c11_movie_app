import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:movie_app_c11/firebase_options.dart';
import 'package:movie_app_c11/home.dart';
import 'package:movie_app_c11/views/movie_browse_details.dart';
import 'package:movie_app_c11/views/movie_details.dart';
import 'package:movie_app_c11/views/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routName,
      routes: {
        SplashScreen.routName: (context) => SplashScreen(),
        Home.routName: (context) =>
            Home(),
        MovieDetails.routName: (context) => MovieDetails(),
        MovieBrowseDetails.routName: (context) => MovieBrowseDetails(),
      },
    );
  }
}
