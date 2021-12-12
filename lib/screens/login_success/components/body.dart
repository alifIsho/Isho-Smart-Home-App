import 'package:flutter/material.dart';
import 'package:isho_smart_home/components/default_button.dart';
import 'package:isho_smart_home/data_read.dart';
import 'package:isho_smart_home/screens/home/home_screen.dart';
import 'package:isho_smart_home/size_config.dart';



class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),

        Image.asset(
          "assets/images/success.png",
          //"assets/correctgreen.gif",
          height: SizeConfig.screenHeight * 0.4, //40%
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          "Login Success",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Let's Start",
            press: () {
              Navigator.pushNamed(context, DataRead.routeName);
              //Navigator.pushNamed(context, HomeScreen.routeName);
            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}
