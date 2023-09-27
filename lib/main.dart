import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:helloworld/widget/page/callender_page.dart';
import 'package:helloworld/widget/page/first_page.dart';
import 'package:helloworld/widget/page/home_page.dart';
import 'package:helloworld/widget/page/milestone_page.dart';
import 'package:helloworld/widget/page/register_page.dart';

import 'firebase_options.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.green[200],
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => FirstPage(),
        '/register': (context) => FirstPage(),
        '/login': (context) => RegisterPage(),
        '/first': (context) => FirstPage(),
        '/home': (context) => HomePage(),
        '/calender': (context) => CalenderPage()
      },
    );
  }
}