import 'package:doctor_app_ui/constants/constants.dart';
import 'package:flutter/material.dart';

class DetailInfo extends StatelessWidget {
  final String text;
  final String number;
  final String? subtitle;

  const DetailInfo({
    Key? key,
    required this.text,
    required this.number,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.headline4,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: number,
                style: Theme.of(context).textTheme.headline2!.copyWith(
                      color: AppColors.blue,
                    ),
              ),
              TextSpan(
                text: subtitle,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: AppColors.textGrey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
