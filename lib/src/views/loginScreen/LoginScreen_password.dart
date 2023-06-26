import 'package:ayurvedic/src/Constant/colorsConstant.dart';
import 'package:ayurvedic/src/views/SignupScreen/signupScreen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../Widget/common_buttons.dart';
import '../Widget/common_textfeild.dart';

class LoginScreen_password extends StatelessWidget {
  LoginScreen_password({Key? key}) : super(key: key);

  bool passwordVisible = false;
  bool otpScreen = true;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              child: Image.asset(
            "assets/imges/loginscreen.png",
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          )),
          SingleChildScrollView(
            child: Form(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(
                      child: Text(
                    "Login",
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                  )),
                  SizedBox(
                    height: 3.h,
                  ),
                  getTextField(
                      prefixIcon: Container(
                          height: 1.h,
                          width: 1.w,
                          child: Image.asset("assets/Icons/email.png")),
                      hintText: "Enter Your Email"),
                  StatefulBuilder(
                    builder: (context, setState) =>
                    Column(
                      children: [
                        (otpScreen) ?
                        getTextField(
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
                            hintText: "Password")
                            : getTextField(
                            hintText: "Enter Otp",
                            prefixIcon: Container(
                              height: 1.h,
                              width: 1.w,
                              child: Image.asset("assets/Icons/lock.png"),
                            )),
                        SizedBox(
                          height: 1.h,
                        ),
                        const Text(
                          "OR",
                          style: TextStyle(color: AppColors.grey),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        TextButton(
                          child: (otpScreen)
                              ? const Text(
                            "Login With OTP",
                            style: TextStyle(color: AppColors.green),
                          )
                              : const Text(
                            "Login With Password",
                            style: TextStyle(color: AppColors.green),
                          ),
                          onPressed: () {
                            setState(
                                  () {
                                otpScreen = !otpScreen;
                                print(otpScreen);
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  getButton(
                      title: "Log in",
                      width: 95.w,
                      borderRadius: 25,
                      textSize: 16.sp,
                      fontWeight: FontWeight.bold),
                  SizedBox(
                    height: 1.h,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => SignupScreen()));
                    },
                    child: RichText(
                      text: TextSpan(
                        style:
                            TextStyle(color: AppColors.grey, fontSize: 12.sp),
                        text: 'Do not have an Account ?',
                        children: const <TextSpan>[
                          TextSpan(
                              text: ' Sign Up',
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
          )
        ],
      ),
    );
  }
}
