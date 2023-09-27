import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../const/route_path.dart';
import '../../utility/route_util.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Positioned(
                top: 0,
                child: Image.asset(
                  'assets/logo.png',
                  width: 200,
                  height: 200,
                ),
              ),
              SizedBox(height: 50),
              const Text(
                '大きな目標に向けて'
                    '計画を立てよう',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () => navigateToRoute(context, RoutePath.register),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // ボタンの背景色
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15), // ボタンの余白
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // ボタンの角丸
                  ),
                ),
                child: Text(
                  '新規登録',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // テキストの色
                  ),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () => navigateToRoute(context, RoutePath.register),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue, // ボタンの背景色
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15), // ボタンの余白
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // ボタンの角丸
                  ),
                ),
                child: Text(
                  'ログイン',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // テキストの色
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
