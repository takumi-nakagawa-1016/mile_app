// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// This is a reimplementation of the default Flutter application
// using riverpod.
void main() {
  runApp(
    // Adding ProviderScope enables Riverpod for the entire project
    const ProviderScope(child: MyApp()),
  );
}

/// Providers are declared globally and specify how to create a state
final counterProvider = StateProvider((ref) => "");

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
        child: Text('Hello World'),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(), // フッターの中央がくりぬかれた形状にする
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                // ホームアイコンがタップされた時の処理
              },
            ),
            IconButton(
              icon: Icon(Icons.directions),
              onPressed: () {
                // 道アイコンがタップされた時の処理
              },
            ),
            IconButton(
              icon: Icon(Icons.calendar_today),
              onPressed: () {
                // カレンダーアイコンがタップされた時の処理
              },
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                // ユーザーアイコンがタップされた時の処理
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                // 設定アイコンがタップされた時の処理
              },
            ),
          ],
        ),
      ),
    );
  }
}