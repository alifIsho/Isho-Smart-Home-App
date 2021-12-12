import 'package:flutter/material.dart';

import 'components/body.dart';
import 'package:lottie/lottie.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Login Success"),
      ),
      body: Body(),
    );
  }
}
