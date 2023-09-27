import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/const/route_path.dart';
import 'package:helloworld/utility/route_util.dart';

PreferredSize customFooter(context) {
  return PreferredSize(
      preferredSize: Size(100, 100),
      child: BottomAppBar(
        elevation: 8, // 影の強度を設定します
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                navigateToRoute(context, RoutePath.home);
              },
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {
                navigateToRoute(context, RoutePath.milestone);
              },
              icon: Icon(
                Icons.check_circle_rounded,
                size: 40,
              ),
            ),
            IconButton(
              onPressed: () {
                navigateToRoute(context, RoutePath.calender);
              },
              icon: Icon(Icons.calendar_month),
            ),
          ],
        ),
      ));
}
