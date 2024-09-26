

import 'package:flutter/material.dart';

const Color color=Color(0xffDF5532);
const Color unseletedColor=Color( 0xffD6D1D5);
const LinearGradient customGradient = LinearGradient(
  colors: [Color(0xffF39519), Color(0xffFFCD67)],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);


const TextStyle textStyle =  TextStyle(
  fontFamily: 'Roboto',          
  fontSize: 18,                  
  fontWeight: FontWeight.w500,   
  height: 21.09 / 18,            
);
const TextStyle normalText = TextStyle(
  fontFamily: 'Roboto',         
  fontSize: 14,                 
  fontWeight: FontWeight.w400,   
  height: 16.41 / 14,
  color: Colors.black            
);
const TextStyle smallHeading = TextStyle(
  fontFamily: 'Roboto',          
  fontSize: 14,                  
  fontWeight: FontWeight.w500,   
  height: 18 / 14,  
  color: Colors.black               
);
const TextStyle smallText = TextStyle(
  fontFamily: 'Roboto',          
  fontSize: 10,                  
  fontWeight: FontWeight.w400,   
  height: 11.72 / 10,
  color: Color(0xff9E95A2)              
);
const TextStyle mediumText = TextStyle(
  fontFamily: 'Roboto',          
  fontSize: 10,                  
  fontWeight: FontWeight.w400,   
  height: 11.72 / 10,  
  color: Colors.black            
);