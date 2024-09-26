import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_flutter/view/weight/const.dart';

class CustomContainer extends StatelessWidget {
  final String image;

  const CustomContainer({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15.h),
      child: Container(
        width: 343.w, // Using ScreenUtil for responsive width
        height: 110.h, // Using ScreenUtil for responsive height
        decoration: BoxDecoration(
          color: Colors.white, // Change the color as needed (set to white for visibility)
          border: Border.all(width: 1, color: const Color(0xffE0E0E0)), // Border color
          borderRadius: BorderRadius.circular(10), // Optional: rounded corners
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image,
              height: 110.h,
              width: 110.w,
              fit: BoxFit.cover, 
            ),
            SizedBox(width: 10.w), 
            Expanded( 
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const Padding(
                    padding:  EdgeInsets.only(top: 25,left: 15,right: 60),
                    child:  Text(
                      "Kemampuan Merangkum Tulisan",
                      textAlign: TextAlign.start,
                      style: smallHeading,
                    ),
                  ),
                  SizedBox(height: 22.h,),
                  Row(
                    children: [
                    Padding(
                     padding:  EdgeInsets.only(left: 15.w,),
                      child:   Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                         const Text(
                              "BAHASA SUNDA",
                              style: mediumText,
                            ),
                             SizedBox(height: 2.h), 
                              const Text(
                                "Oleh Al-Baiqi Samaan",
                                style: smallText,
                              ),
                        ],
                      ),
                    ),
                      SizedBox(width: 40.w,),
                      Padding(
                      padding: const  EdgeInsets.only(left: 5,right: 16),
                        child: Container(
                          width: 50.w,
                          height: 26.h,
                          decoration: BoxDecoration(
                            gradient: customGradient,
                            borderRadius: BorderRadius.circular(8),
                            
                          ),
                          child: const Center(child: Text("A")),
                        ),
                      ),
                    ],
                  ),
                
             
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
