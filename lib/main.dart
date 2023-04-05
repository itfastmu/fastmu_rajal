import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pages/initial_app.dart';
import 'pages/login_view.dart';
import 'pages/list_periksa.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Color(0xff263C92),
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light
    )
  );

  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context) => const InitApp(),
        LoginApp.nameRoute : (context) => const LoginApp(),
        ListPeriksa.nameRoute : (context) => ListPeriksa()
      },
    );
  }
}

// Fastmu Rawat inap