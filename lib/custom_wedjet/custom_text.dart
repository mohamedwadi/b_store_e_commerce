import 'package:b_store_e_commerce/constant/manager_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
   const CustomText({
    super.key,
     this.size = 14,
     this.color = Colors.white
     ,this.text = ''
     ,this.weight
     ,this.textAlign
     ,this.textDecoration
  });
  final double size;
  final Color color;
  final String text;
  final FontWeight? weight;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          decoration: textDecoration,
          decorationColor: color,
          decorationThickness: 2,
        ),
        fontSize: size.sp,
        color: color,
        fontWeight : weight,
      ),
      overflow: TextOverflow.clip,
    );
  }
}
