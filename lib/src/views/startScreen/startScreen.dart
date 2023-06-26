import 'package:ayurvedic/src/Constant/colorsConstant.dart';
import 'package:ayurvedic/src/views/SignupScreen/signupScreen.dart';
import 'package:ayurvedic/src/views/loginScreen/LoginScreen_password.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
           Positioned(
            top: 30,
              right: 30,
              child: Text(
            "Skip",
            style: TextStyle(color: Colors.black,fontSize: 14.sp),
          )),


          Center(
            child: Image.asset(
              "assets/imges/loginorsignup.png",
              fit: BoxFit.fill,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
            ),
          ),
          Positioned(
            // top: 400,
            bottom: 140,
            child: Center(
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>  SignupScreen()));
                },
                child: Container(
                    height: 6.5.h,
                    width: 90.w,
                    decoration: const BoxDecoration(
                        color: AppColors.green,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child:  Center(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold),
                        ))),
              ),
            ),
          ),
          Positioned(
            // top: 400,
            bottom: 70,
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) =>  LoginScreen_password()));
              },
              child: Container(
                height: 6.5.h,
                width: 90.w,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: AppColors.green),
                child:  Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
