import 'package:b_store_e_commerce/constant/images_path/image_path.dart';
import 'package:b_store_e_commerce/constant/manager_colors.dart';
import 'package:b_store_e_commerce/constant/routes/routes.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_button.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_text.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_text_click.dart';
import 'package:b_store_e_commerce/custom_wedjet/custom_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool obscure = true;
  late TextEditingController _textEditingControllerEmail;
  late TextEditingController _textEditingControllerPassword;
  String? emailError;
  String? passwordError;


  void initState() {
    super.initState();
    _textEditingControllerEmail = TextEditingController();
    _textEditingControllerPassword = TextEditingController();
  }
  @override
  void dispose() {
    _textEditingControllerPassword.dispose();
    _textEditingControllerPassword.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding:
                  EdgeInsetsDirectional.only(top: 82.h, start: 150.w, end: 150.w),
              child: Image.asset(
                ImagesPath.logoApp,
                width: 76.w,
                height: 76.w,
              ),
            ),
            SizedBox(height: 150.h,),
            Padding(
              padding:  EdgeInsetsDirectional.only(start: 40.w, end: 40.w),
              child: Column(
                children: [
                  CustomTextField(
                    errorMassage: emailError ,
                    controller: _textEditingControllerEmail ,
                    textInputType: TextInputType.emailAddress,
                    maxLine: null,
                    minLine: null,
                    expand: true,
                    constraints: 50,
                    hitnText: 'Email',
                    iconPrefix: Icons.mail_outline_sharp,
                  ),Visibility(
                    visible: emailError != null,
                    child:  Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Padding(
                        padding: EdgeInsetsDirectional.only(top: 8.h),
                        child: CustomText(
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
                        child: CustomText(
                          text: 'Error password',
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: CustomTextClick(
                      onTap: (){
                        setState(() {
                          emailError = null;
                          passwordError = null;
                        });
                        _textEditingControllerEmail.clear();
                        _textEditingControllerPassword.clear();
                        Navigator.pushNamed(context, Routes.forgetPasswordScreen);
                      },
                      text: 'Forgot Password ?',
                      sizeText: 12,
                      fontWeight: FontWeight.bold,
                      color: ManagerColors.textColor,
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  CustomButton(
                    onTap: () {
                      signIn();
                    },
                    text: 'Sign In',
                    color: ManagerColors.appButtonColor,
                    colorText: Colors.white,
                    redious: 10,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  CustomTextClick(
                    text: 'Create an account ?',
                    sizeText: 14,
                    fontWeight: FontWeight.w600,
                    color: ManagerColors.textColor,
                    onTap: (){
                      Navigator.pop(context);
                    },
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
    if (
        _textEditingControllerPassword.text.isNotEmpty &&
        _textEditingControllerEmail.text.isNotEmpty) {
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
        margin: const EdgeInsetsDirectional.only(bottom: 10 , start: 10 ,end: 10),
        behavior: SnackBarBehavior.floating,
        dismissDirection: DismissDirection.horizontal,
        elevation: 0,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
                color: Colors.red
            )
        ) ,

      ),
    );
    return false;
  }

  void signIn() {
    if (check()) {
      Navigator.pushNamed(context, Routes.homeScreen);
    }
  }

  void setStateErrorValue(){
    setState(() {
      emailError = _textEditingControllerEmail.text.isEmpty ? 'please Enter Email': null;
      passwordError = _textEditingControllerPassword.text.isEmpty ? 'please Enter Password': null;
    });
  }
}
