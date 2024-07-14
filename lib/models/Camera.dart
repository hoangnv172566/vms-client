import 'package:admin/constants.dart';
import 'package:flutter/material.dart';

class Camera {
  
  final String? name, location;
  
  final int? id;
  final bool? status;

  Camera({
    this.name,
    this.location,
    this.id,
    this.status
  });
}

List demoCameras = [
  Camera(
    name: "Camera 1",
    location: "Location 1",
    id: 1,
    status: true
  ),
  Camera(
    name: "Camera 2",
    location: "Location 2",
    id: 2,
    status: false
  )
];
