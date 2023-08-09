import 'package:slicing_healthy_pet/model/service_model.dart';

class DoctorModel {
  String name;
  String image;
  List<String> service;
  String distance;

  DoctorModel({
    required this.name,
    required this.image,
    required this.service,
    required this.distance,
  });

}

var doctors = [
  DoctorModel(name: "Dr. Stone", image: "dr_stone.jpg", service: [Service.vaccine, Service.spa], distance: '10'),
  DoctorModel(name: "Dr. Stone", image: "dr_stone.jpg", service: [Service.vaccine, Service.spa], distance: '10'),
  DoctorModel(name: "Dr. Stone", image: "dr_stone.jpg", service: [Service.vaccine, Service.spa], distance: '10'),
  DoctorModel(name: "Dr. Stone", image: "dr_stone.jpg", service: [Service.vaccine, Service.spa], distance: '10'),
];

