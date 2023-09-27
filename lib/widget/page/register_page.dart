import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/widget/page/milestone_page.dart';

import '../../const/route_path.dart';
import '../../utility/route_util.dart';

class RegisterPage extends StatefulWidget{
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return auth.currentUser == null ? signInPage() : MilestonePage();
  }

  Widget signInPage() {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft, // 左斜め上
            end: Alignment.bottomRight, // 右下
            colors: [Colors.green.shade500, Colors.blue.shade600],
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20), // 左右に20の余白を追加
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Mile&Task',
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'League Spartan',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50),
              const Text(
                '新規登録',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),

              TextFormField(
                decoration: InputDecoration(
                  labelText: 'メールアドレス',
                  border: OutlineInputBorder(),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
              const SizedBox(height: 10),

              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'パスワード',
                  border: OutlineInputBorder(),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () => navigateToRoute(context, RoutePath.calender),
                child: const Text('新規登録'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}