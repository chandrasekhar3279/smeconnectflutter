import 'package:flutter/material.dart';

class FittedBoxWidget extends StatelessWidget {
  const FittedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FittedBox'),
      ),
      body: Center(
        child: Container(
          height: 40,
          width: 300,
          color: Colors.red,
          child:const Center(child: FittedBox(child:  Text('FLUTTER widgets learning',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.normal),))),
        ),
      ),
    );
  }
}
