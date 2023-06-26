import 'package:ayurvedic/src/views/loginScreen/LoginScreen_password.dart';
import 'package:ayurvedic/src/views/verifyCodeScreen/verifyCodeScreen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../Constant/colorsConstant.dart';
import '../Widget/common_buttons.dart';
import '../Widget/common_textfeild.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  bool confirmpasswordVisible = false;
  bool passwordVisible = false;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              child: Image.asset(
            "assets/imges/signupBg.png",
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          )),
          SingleChildScrollView(
            child: Form(
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Sign Up",
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  getTextField(
                      prefixIcon: Container(
                          height: 1.h,
                          width: 1.w,
                          child: Image.asset("assets/Icons/user.png")),
                      hintText: "Enter Username"),
                  getTextField(
                      prefixIcon: Container(
                          height: 1.h,
                          width: 1.w,
                          child: Image.asset("assets/Icons/email.png")),
                      hintText: "Enter Your Email"),
                  getTextField(
                      prefixIcon: Container(
                          height: 1.h,
                          width: 1.w,
                          child: Image.asset("assets/Icons/mobile.png")),
                      hintText: "Enter Your Mobile Number"),
                  StatefulBuilder(
                    builder: (context, setState) => getTextField(
                        textVisible: passwordVisible,
                        suffixIcon: IconButton(
                          icon: passwordVisible
                              ? Image.asset(
                                  "assets/Icons/lockeye.png",
                                )
                              : const Icon(
                                  Icons.visibility_outlined,
                                  color: AppColors.grey,
                                ),
                          onPressed: () {
                            setState(
                              () {
                                passwordVisible = !passwordVisible;
                              },
                            );
                          },
                        ),
                        prefixIcon: Container(
                            height: 1.h,
                            width: 1.w,
                            child: Image.asset("assets/Icons/lock.png")),
                        hintText: "Password"),
                  ),
                  StatefulBuilder(
                    builder: (context, setState) => getTextField(
                        textVisible: confirmpasswordVisible,
                        suffixIcon: IconButton(
                          icon: confirmpasswordVisible
                              ? Image.asset(
                                  "assets/Icons/lockeye.png",
                                )
                              : const Icon(
                                  Icons.visibility_outlined,
                                  color: AppColors.grey,
                                ),
                          onPressed: () {
                            setState(
                              () {
                                confirmpasswordVisible =
                                    !confirmpasswordVisible;
                              },
                            );
                          },
                        ),
                        prefixIcon: Container(
                            height: 1.h,
                            width: 1.w,
                            child: Image.asset("assets/Icons/lock.png")),
                        hintText: "Confirm Password"),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>  verifyCodeScreen()));
                    },
                      child: getButton(title: "Sign up", width: 95.w, borderRadius: 25,textSize: 16.sp,fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 1.h,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>  LoginScreen_password()));
                    },
                    child: RichText(
                      text:  TextSpan(
                        style: TextStyle(color: AppColors.grey,fontSize: 12.sp),
                        text: 'Already have an Account ?',
                        children: const <TextSpan>[
                          TextSpan(
                              text: ' Log in',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.green)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
