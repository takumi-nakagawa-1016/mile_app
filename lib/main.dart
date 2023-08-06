import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:helloworld/widget/page/callender_page.dart';
import 'package:helloworld/widget/page/home_page.dart';
import 'package:helloworld/widget/page/milestone_page.dart';
void main() {
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
        '/': (context) => MilestonePage(),
        '/home': (context) => HomePage(),
        '/calender': (context) => CalenderPage()
      },
    );
  }
}