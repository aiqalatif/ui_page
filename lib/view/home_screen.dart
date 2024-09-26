import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_flutter/tab_br.dart';
import 'package:ui_flutter/view/weight/const.dart';
import 'package:ui_flutter/view/weight/custom_app_br.dart';
import 'package:ui_flutter/view/weight/custom_container.dart';
import 'package:ui_flutter/view/weight/search_br.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBr(),
      body: Stack(
        children: [
          // Scrollable content
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40.h,
                  width: 375.w,
                  child: TabBarExample(),
                ),
                CustomSearchBar(),
                const CustomContainer(image: "assets/image.png"),
                SizedBox(height: 10.h),
                const CustomContainer(image: "assets/imagee.png"),
                SizedBox(height: 10.h),
                const CustomContainer(image: "assets/images.png"),
                SizedBox(height: 10.h),
                const CustomContainer(image: "assets/image.png"),
                SizedBox(height: 10.h),
                const CustomContainer(image: "assets/image.png"),
              ],
            ),
          ),
          // Fixed filter button
          Positioned(
            bottom: 20.h, // Positioned at the bottom
            left: 120.w,
            right: 120.w,
            child: Container(
              height: 40.h, 
              width: 20.w,
              decoration: BoxDecoration(
                color: color, // Change this to your desired color
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.filter_list, color: Colors.white),
                    const SizedBox(width: 10),
                    Text(
                      "Filter",
                      style: TextStyle(color: Colors.white, fontSize: 16.sp),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
