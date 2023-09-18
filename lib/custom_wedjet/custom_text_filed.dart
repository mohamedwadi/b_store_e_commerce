import 'package:b_store_e_commerce/constant/manager_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hitnText,
      this.constraints = 56,
      this.maxLine = 1,
      this.minLine = 1,
      required this.expand,
      this.textInputType = TextInputType.none,
      this.obscure = false,
        this.iconPrefix = null,
        this.iconSufix = null ,
      this.tapIconSufix,
      required this.controller,
      this.errorMassage});

  final String? hitnText;
  final String? errorMassage;
  final IconData? iconPrefix;
  final double constraints;
  final int? maxLine;
  final int? minLine;
  final bool expand;
  final TextInputType textInputType;
  final bool obscure;
  final IconData? iconSufix;
  final void Function()? tapIconSufix;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscure,
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.w500,
        color: ManagerColors.textInputColor,
        fontSize: 12,
      ),

      keyboardType: textInputType,
      decoration: InputDecoration(
        suffixIcon:  iconPrefix != null  ? Padding(
          padding:  EdgeInsetsDirectional.only(bottom: 3.h),
          child: IconButton(
            onPressed: tapIconSufix,
            icon: Icon(iconSufix),
            color: ManagerColors.hintTextColor,
          ),
        ) : null ,
        contentPadding: EdgeInsetsDirectional.symmetric(horizontal: 15),
        hintText: hitnText,
        hintStyle: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          color: ManagerColors.hintTextColor,
          fontSize: 14.sp,
        ),
        prefixIcon: iconPrefix != null  ? Padding(
          padding:  EdgeInsetsDirectional.only(bottom: 3.h,),
          child: Icon(
            iconPrefix,color: ManagerColors.hintTextColor,),
        ): null,
        constraints: BoxConstraints(
          maxHeight: constraints.h,
        ),
        enabledBorder: OutlineInputBorder(
            borderSide:  BorderSide(color: Color(0xff000000).withOpacity(0.184), width: 1),
            borderRadius: BorderRadius.circular(10.r)),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xff586BCA), width: 1),
          borderRadius: BorderRadius.circular(10.r),
        ),
        errorText: errorMassage,
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1),
          borderRadius: BorderRadius.circular(10.r),

        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1),
          borderRadius: BorderRadius.circular(10.r),
        ),
        errorStyle: const TextStyle(
          fontSize: 0.01
        )
      ),
      maxLines: maxLine,
      minLines: minLine,
      expands: expand,

    );
  }
}
