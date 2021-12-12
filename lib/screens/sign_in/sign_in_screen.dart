import 'package:flutter/material.dart';
import 'package:isho_smart_home/constants.dart';

import 'components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Color(0xFFFFECDF),
        title: Text("Sign In"),
      ),
      body: Body(),
    );
  }
}
