import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'camera.dart';

Future<void> main() async {
//? Ensure that plugin services are initialized so that availableCameras can be called
  WidgetsFlutterBinding.ensureInitialized();
//? Get the List of the available Cameras on the Device
  final cameras = await availableCameras();
//? Get a camera from the avaiable list of cameras
  final firstCamera = cameras.first;
  runApp(
    MaterialApp(
      theme: ThemeData.light(),
      home: CameraApp(camera: firstCamera),
    ),
  );
}