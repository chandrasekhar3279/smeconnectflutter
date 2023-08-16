import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SimpleMapsWideget extends StatefulWidget {
  const SimpleMapsWideget({super.key});

  @override
  State<SimpleMapsWideget> createState() => _SimpleMapsWidegetState();
}

class _SimpleMapsWidegetState extends State<SimpleMapsWideget> {
  final Completer <GoogleMapController> _controller = Completer();
  static const CameraPosition initialPosition = CameraPosition(target: LatLng(37.7749, -122.4194),zoom: 14.0);
  static const CameraPosition targetPosition = CameraPosition(target: LatLng(32.15478, -135.78945),zoom: 14.0,bearing: 192.0,tilt:60 );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Google Maps'),
      ),
      body: GoogleMap(initialCameraPosition: initialPosition,mapType: MapType.normal,onMapCreated: (GoogleMapController controller){
        _controller.complete(controller);
      },),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){}, label:const Text("to the lake"), icon:const Icon(Icons.directions_boat),),
    );
  }
  Future<void> goToLake()async{
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(targetPosition));
  }
}