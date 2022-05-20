import 'package:doctor_app_ui/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomTextBox extends StatelessWidget {
  const CustomTextBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardAppearance: Brightness.dark,
      style: const TextStyle(color: AppColors.black),
      decoration: InputDecoration(
        suffixIcon: const Icon(
          Icons.search,
          color: AppColors.black,
        ),
        hintText: AppText.searchDoctor,
        hintStyle: Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(color: AppColors.textGrey),
        fillColor: AppColors.grey,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
