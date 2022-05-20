import 'package:doctor_app_ui/constants/constants.dart';
import 'package:doctor_app_ui/model/model.dart';
import 'package:flutter/material.dart';

class MedicalServices extends StatelessWidget {
  const MedicalServices({
    Key? key,
    required this.medicalServices,
  }) : super(key: key);

  final List<MedicalServicesModel> medicalServices;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const ClampingScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 4,
      mainAxisSpacing: 10,
      children: List.generate(
        medicalServices.length,
        (index) {
          return Column(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: medicalServices[index].color,
                ),
                child: Image.asset(
                  medicalServices[index].image,
                  color: AppColors.white,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                medicalServices[index].title,
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          );
        },
      ),
    );
  }
}
