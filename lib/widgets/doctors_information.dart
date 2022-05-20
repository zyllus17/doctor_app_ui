import 'package:doctor_app_ui/constants/constants.dart';
import 'package:doctor_app_ui/model/doctor_information_model.dart';
import 'package:doctor_app_ui/screens/doctor_screen.dart';
import 'package:flutter/material.dart';

class DoctorInformation extends StatelessWidget {
  final List<DoctorInformationModel> doctorInformations;
  const DoctorInformation({
    Key? key,
    required this.doctorInformations,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemCount: doctorInformations.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            PageRouteBuilder(
              pageBuilder: (_, __, ___) => DoctorScreen(
                  doctorInformationModel: doctorInformations[index]),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      FadeTransition(opacity: animation, child: child),
            ),
          );
        },
        child: Container(
          color: Colors.transparent,
          margin: EdgeInsets.only(bottom: 15.h),
          child: SizedBox(
            height: 80,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage(doctorInformations[index].image),
                    ),
                  ),
                ),
                SizedBox(width: 15.w),
                Expanded(
                  child: SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  doctorInformations[index].title,
                                  style: Theme.of(context).textTheme.headline4,
                                ),
                                Row(
                                  children: [
                                    Text.rich(
                                      TextSpan(
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5,
                                        children: [
                                          TextSpan(
                                              text: doctorInformations[index]
                                                  .specialist),
                                          const TextSpan(text: '  •  '),
                                          TextSpan(
                                              text: doctorInformations[index]
                                                  .hospital),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                5,
                                (index) => Row(
                                  children: const [
                                    Icon(
                                      Icons.star_rounded,
                                      color: AppColors.yellow,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 25.h,
                          width: 56.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: AppColors.boxGreen,
                          ),
                          child: Center(
                            child: Text(
                              AppText.open,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                    color: AppColors.green,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
