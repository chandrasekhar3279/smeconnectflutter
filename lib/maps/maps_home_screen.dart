import 'package:flutter/material.dart';
import 'package:smeconnect/maps/simple_map.dart';
class MapsHomeScreen extends StatelessWidget {
  const MapsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Flutter Google Maps'),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const SimpleMapsWideget(),),);
            }, child:const Text('Simple Maps')),
          ],
        ),
      ),
    );
  }
}