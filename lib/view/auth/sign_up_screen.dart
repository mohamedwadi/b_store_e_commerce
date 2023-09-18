import 'package:b_store_e_commerce/constant/images_path/image_path.dart';
import 'package:b_store_e_commerce/constant/manager_colors.dart';
import 'package:b_store_e_commerce/constant/routes/routes.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_button.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_text.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_text_button.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_text_click.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool obscure = true;
  late TextEditingController _textEditingControllerEmail;
  late TextEditingController _textEditingControllerPassword;
  late TextEditingController _textEditingControllerPhone;
  String? emailError;

  String? passwordError;

  String? phoneError;
  late double sizeScreenError = 100;

  @override
  void initState() {
    super.initState();
    _textEditingControllerEmail = TextEditingController();
    _textEditingControllerPassword = TextEditingController();
    _textEditingControllerPhone = TextEditingController();


  }
  @override
  void dispose() {
    _textEditingControllerEmail.dispose();
    _textEditingControllerPhone.dispose();
    _textEditingControllerPassword.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding:
                 EdgeInsetsDirectional.only(top: 123.h, start: 150.w, end: 150.w),
            child: Image.asset(
              ImagesPath.logoApp,
              width: 76.w,
              height: 76.w,
            ),
          ),
          Padding(
            padding:  EdgeInsetsDirectional.only(start: 45.w, end: 45.w, top: 148.h),
            child: Column(
              children: [
                CustomTextField(
                  errorMassage: emailError,
                  controller: _textEditingControllerEmail,
                  textInputType: TextInputType.emailAddress,
                  maxLine: null,
                  minLine: null,
                  expand: true,
                  constraints: 50,
                  hitnText: 'Email',
                  iconPrefix: Icons.mail_outline_sharp,
                ),
                Visibility(
                  visible: emailError != null,
                  child:  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Padding(
                      padding: EdgeInsetsDirectional.only(top: 8.h),
                      child: const CustomText(
                        text: 'Error email',
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                 SizedBox(
                  height: 20.h,
                ),
                CustomTextField(
                  errorMassage: phoneError,
                  controller: _textEditingControllerPhone,
                  textInputType: TextInputType.phone,
                  maxLine: null,
                  minLine: null,
                  expand: true,
                  constraints: 50,
                  hitnText: 'Mobile Number',
                  iconPrefix: Icons.phone_android_rounded,
                ),
                Visibility(
                  visible: phoneError != null,
                  child:  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Padding(
                      padding: EdgeInsetsDirectional.only(top: 8.h),
                      child: const CustomText(
                        text: 'Error phone',
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                 SizedBox(
                  height: 20.h,
                ),
                CustomTextField(
                  errorMassage: passwordError,
                  controller: _textEditingControllerPassword,
                  textInputType: TextInputType.visiblePassword,
                  maxLine: 1,
                  minLine: 1,
                  expand: false,
                  constraints: 50,
                  hitnText: 'Password',
                  iconPrefix: Icons.lock_outline,
                  iconSufix:
                      obscure ? Icons.visibility_off : Icons.visibility,
                  obscure: obscure,
                  tapIconSufix: () {
                    setState(() {
                      obscure = !obscure;
                    });
                  },
                ),
                Visibility(
                  visible: passwordError != null,
                  child:  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Padding(
                      padding: EdgeInsetsDirectional.only(top: 8.h),
                      child: const CustomText(
                        text: 'Error password',
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                 SizedBox(
                  height: 40.h,
                ),
                CustomButton(
                  onTap: () {
                    signUp();
                  },
                  text: 'Create an account',
                  color: ManagerColors.appButtonColor,
                  colorText: Colors.white,
                  redious: 10,
                ),
                 SizedBox(
                  height:  sizeScreenError.h,
                ),
                CustomTextClick(
                  onTap: () {
                    Navigator.of(context).pushNamed(Routes.signInScreen);
                    clearText();
                  },
                  text: 'Already have account ?',
                  sizeText: 14,
                  fontWeight: FontWeight.w600,
                  color: ManagerColors.textColor,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  bool check() {
    if (_textEditingControllerPhone.text.isNotEmpty &&
        _textEditingControllerPassword.text.isNotEmpty &&
        _textEditingControllerEmail.text.isNotEmpty) {
      setStateErrorValue();
      setState(() {
        sizeScreenError = 100;
      });
      return true;
    }

    setStateErrorValue();
    setState(() {
      sizeScreenError = 10;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const CustomText(
          text: 'error',
        ),
        duration: const Duration(seconds: 2),
        backgroundColor: Colors.red,
        margin:  EdgeInsetsDirectional.only(bottom: 10.h , start: 10.w ,end: 10.w),
        behavior: SnackBarBehavior.floating,
        dismissDirection: DismissDirection.horizontal,
        elevation: 0,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(
            color: Colors.red
          )
        ) ,

      ),
    );
    return false;
  }

  void signUp() {
    if (check()) {
      Navigator.pushNamed(context, Routes.profileScreen);
      clearText();
    }
  }

  void setStateErrorValue(){
    setState(() {
      emailError = _textEditingControllerEmail.text.isEmpty ? 'please Enter Email': null;
      passwordError = _textEditingControllerPassword.text.isEmpty ? 'please Enter Password': null;
      phoneError = _textEditingControllerPhone.text.isEmpty ? ' please Enter Password': null;
    });
  }

  void clearText(){
    _textEditingControllerEmail.clear();
    _textEditingControllerPhone.clear();
    _textEditingControllerPassword.clear();
  }


}
