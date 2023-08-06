import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

PreferredSize customAppbar(){
  return PreferredSize(
      preferredSize: const Size(100,100),
      child: Container(
        height: 90,
        color: Colors.white,
      )
  );
}
