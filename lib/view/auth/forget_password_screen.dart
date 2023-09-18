import 'package:b_store_e_commerce/constant/manager_colors.dart';
import 'package:b_store_e_commerce/constant/routes/routes.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_app_bar.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_button.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_text.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_text_button.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  late TextEditingController _textEditingControllerEmail;
  String? emailError;

  @override
  void initState() {
    super.initState();
    _textEditingControllerEmail = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(
              leadingIcons: Icons.arrow_back_ios_new,
              sizeLeadingIcons: 20,
              trailingIcons: null,
              sizeTrailingIcons: 24,
              title: 'Back',
              onTapLeading: () {
                Navigator.pop(context);
              },
              onTapTrailing: () {},
            ),
            SizedBox(
              height: 35.h,
            ),
            Padding(
              padding:  EdgeInsetsDirectional.only(start: 35.w),
              child: CustomText(
                text: 'Recover\nyour account',
                color: ManagerColors.textInputColor,
                size: 25.sp,
                weight: FontWeight.bold,
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 45.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 186.h,
                  ),
                  CustomTextField(
                    hitnText: 'Enter your email',
                    expand: true,
                    maxLine: null,
                    minLine: null,
                    constraints: 50,
                    controller: _textEditingControllerEmail,
                    textInputType: TextInputType.emailAddress,
                    errorMassage: emailError,
                  ),
                  Visibility(
                    visible: emailError != null,
                    child:  Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Padding(
                        padding: EdgeInsetsDirectional.only(top: 8.h),
                        child: CustomText(
                          text: 'please Enter Email',
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomButton(
                    onTap: next,
                    text: 'Next',
                    color: ManagerColors.appButtonColor,
                    redious: 10,
                    colorText: Colors.white,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  bool check() {
    if (_textEditingControllerEmail.text.isNotEmpty) {
      setStateErrorValue();
      return true;
    }

    setStateErrorValue();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const CustomText(
          text: 'error',
        ),
        duration: const Duration(seconds: 2),
        backgroundColor: Colors.red,
        margin:
             EdgeInsetsDirectional.only(bottom: 10.h, start: 10.w, end: 10.w),
        behavior: SnackBarBehavior.floating,
        dismissDirection: DismissDirection.horizontal,
        elevation: 0,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.red)),
      ),
    );
    return false;
  }

  void next() {
    if (check()) {}
  }

  void setStateErrorValue() {
    setState(() {
      emailError = _textEditingControllerEmail.text.isEmpty
          ? 'please Enter Email'
          : null;
    });
  }
}
