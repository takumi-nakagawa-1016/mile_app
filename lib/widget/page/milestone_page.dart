import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/widget/component/common/footer.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../component/common/header.dart';

class MilestonePage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _milestonePage(context, ref);
  }

  Widget _milestonePage(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: customAppbar(),
      body: ListView.builder(
        itemCount: 15, // 表示するボックスの数
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0), // ボックス間の余白を設定
            child: Container(
              height: 100, // ボックスの高さ
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), // 角丸の半径
                gradient: LinearGradient(
                  colors: [Colors.blue[300]!, Colors.blue[700]!], // グラデーションの色
                  begin: Alignment.topLeft, // グラデーションの開始位置
                  end: Alignment.bottomRight, // グラデーションの終了位置
                ),
              ),
              child: Center(
                child: Text(
                  'Your Content Here',
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: customFooter(context),
    );
  }

}
