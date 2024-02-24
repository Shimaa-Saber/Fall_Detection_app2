import 'package:fall_detection/core/theming/colors.dart';

// import '..\theming\colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ElevatedButtonWidget extends StatelessWidget {
  ElevatedButtonWidget({
    super.key,
    required this.title,
    required this.tap,
  });
  final String title;
  void Function()? tap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        onPressed: tap,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18.sp,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
