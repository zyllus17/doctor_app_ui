import 'package:doctor_app_ui/constants/constants.dart';
import 'package:doctor_app_ui/data/data.dart';
import 'package:doctor_app_ui/model/model.dart';
import 'package:doctor_app_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<MedicalServicesModel> medicalServices = medicalService;
    final List<DoctorInformationModel> doctorInformations = doctorInformation;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                CustomAppBar(
                  backButton: false,
                  profile: true,
                  icon: Icons.sort,
                ),
                SizedBox(height: 20.h),
                Text(
                  AppText.findDoctor,
                  style: Theme.of(context).textTheme.headline1,
                ),
                SizedBox(height: 20.h),
                const CustomTextBox(),
                SizedBox(height: 20.h),
                MedicalServices(medicalServices: medicalServices),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppText.topDoctors,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Text(
                      AppText.viewAll,
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: AppColors.blue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                DoctorInformation(doctorInformations: doctorInformations),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
