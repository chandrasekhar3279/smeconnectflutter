import 'package:flutter/material.dart';
import 'package:smeconnect/components/custom_button.dart';
import 'package:smeconnect/pages/log_in/log_in.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  // signIn(){
        
   
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('Welcome to SME\'S CONNECT'),
          CustomButton(btnText: "Sign-In", onBtnClick: (){
            Navigator.push(context,MaterialPageRoute(builder: ((context) => LogIn())));
          }),
        ]),
      ),
    );
  }
}