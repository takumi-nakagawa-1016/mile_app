import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:helloworld/widget/page/callender_page.dart';
import 'package:helloworld/widget/page/milestone_page.dart';

class RegisterPage extends StatefulWidget{
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

  }
}