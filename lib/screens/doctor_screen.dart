import 'package:doctor_app_ui/data/data.dart';
import 'package:doctor_app_ui/model/model.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app_ui/widgets/widgets.dart';

class DoctorScreen extends StatelessWidget {
  final List<DoctorInformationModel> doctorInformations = doctorInformation;
  final DoctorInformationModel doctorInformationModel;

  DoctorScreen({
    Key? key,
    required this.doctorInformationModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DoctorImage(doctorInformationModel: doctorInformationModel),
              DoctorDescription(doctorInformationModel: doctorInformationModel),
            ],
          ),
        ),
      ),
    );
  }
}
