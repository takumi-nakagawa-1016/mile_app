import 'package:flutter/cupertino.dart';
import 'package:helloworld/const/route_path.dart';

void navigateToRoute (BuildContext context, RoutePath routePath) {
  String routeName = routePath.getPath();
  Navigator.pushNamed(context, routeName);
}