import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_flutter/view/weight/const.dart'; // Assuming 'textStyle' is defined in 'const.dart'

class CustomAppBr extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBr({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white, // Set a custom background color
      elevation: 0,                  // Remove the shadow below the AppBar
      leading: const SizedBox.shrink(),    // Empty leading to keep title on the left
      titleSpacing: 0,               // Adjust title spacing to align with leading
      title: const Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Portfolio",
          style: textStyle,            // Apply custom textStyle from 'const.dart'
        ),
      ),
      actions: [
        Image.asset(
          "assets/ic_round-shopping-bag.png",
          height: 24.h,
          width: 24.w,
        ),
       const SizedBox(width: 10,),
        Padding(
          padding: EdgeInsets.only(right: 15.w),  // Spacing on the right side
          child: Image.asset(
            "assets/ic_baseline-notifications.png",
            height: 24.h,
            width: 24.w,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight); // AppBar height
}
