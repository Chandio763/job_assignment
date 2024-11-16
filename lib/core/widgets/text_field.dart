import 'package:flutter/material.dart';

import '../../app/config/app_colors.dart';

class GlobalTextFormField extends StatelessWidget {
  const GlobalTextFormField({super.key, this.titleText, this.suffixIcon, required this.hintText, required this.controller});
  final TextEditingController? controller;
  final String? hintText;
  final Widget? suffixIcon;
  final String? titleText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleText !=null? Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Text(titleText!, style: const TextStyle(color: Colors.white, fontSize: 10.91),),
        ): const SizedBox.shrink(),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            isDense: true,
            hintText: hintText,
            suffixIcon: suffixIcon!=null? Padding(
                        padding: const EdgeInsets.only(right: 8.0, left:8),
                        child: suffixIcon,
                      ):null,
            hintStyle: const TextStyle(color: AppColors.greyColor, fontSize: 10.91),
            contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            suffixIconColor: const Color(0xffC7D2D6),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: AppColors.greyColor),
            )
          ),
        ),
      ],
    );
  }
}