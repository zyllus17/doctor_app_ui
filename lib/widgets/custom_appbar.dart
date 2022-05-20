import 'package:doctor_app_ui/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final IconData icon;
  late bool backButton;
  late bool profile;

  CustomAppBar({
    Key? key,
    required this.icon,
    required this.backButton,
    required this.profile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () {
              backButton ? Navigator.pop(context) : {};
            },
            icon: Icon(
              icon,
              color: AppColors.black,
              size: 25,
            ),
          ),
          profile
              ? Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(AppImages.profile),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 40,
                  width: 40,
                  child: const Icon(
                    Icons.bookmark,
                    color: AppColors.black,
                    size: 25,
                  ),
                ),
        ],
      ),
    );
  }
}
