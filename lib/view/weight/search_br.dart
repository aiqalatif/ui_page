import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_flutter/view/weight/const.dart';

class CustomSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0), // Margin around the search bar
      padding: const EdgeInsets.symmetric(horizontal: 20.0), // Padding inside the search bar
      decoration: BoxDecoration(
        color: Colors.white, // Background color of the search bar
        borderRadius: BorderRadius.circular(10.0), // Rounded corners
        border: Border.all(color: Colors.grey, width: 1.0), // Border color and width
      ),
      child: Row(
        children: <Widget>[
         const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search a project',
                hintStyle: TextStyle(color: Colors.grey), // Hint text style
                border: InputBorder.none, // No default border
              ),
            ),
          ),
          Container(
            height: 28.h,
            width: 28.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: color, // Custom color for the search button
            ),
            child: Center(
              child: IconButton(
                icon: const Icon(Icons.search, color: Colors.white),
                onPressed: () {
                  // Action to be performed on button press
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
