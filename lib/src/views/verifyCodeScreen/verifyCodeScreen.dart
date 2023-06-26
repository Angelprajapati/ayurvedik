
import 'package:ayurvedic/src/Constant/colorsConstant.dart';
import 'package:ayurvedic/src/views/Widget/common_buttons.dart';
import 'package:ayurvedic/src/my_app.dart';
import 'package:ayurvedic/src/views/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:sizer/sizer.dart';

class verifyCodeScreen extends StatelessWidget {
  const verifyCodeScreen({Key? key}) : super(key: key);

  @override
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
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Verification Code",
                  style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 2.h,),
                Container(
                  width: 60.w,
                  child: Text(
                    "Enter 6 Digit OTP sent to register mail id",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: AppColors.grey),
                  ),
                ),
                SizedBox(height: 1.h,),
                Container(
                  height: 9.h,
                  child: OtpTextField(
                    fieldWidth: 45,
                    cursorColor: AppColors.green,
                    margin: EdgeInsets.all(10),
                    numberOfFields: 6,
                    filled: true,
                    fillColor: AppColors.green.withOpacity(0.3),
                    enabledBorderColor: AppColors.green.withOpacity(0.1),
                    focusedBorderColor: AppColors.green,
                    keyboardType: TextInputType.number,
                    showFieldAsBox: true,
                    disabledBorderColor: AppColors.green.withOpacity(0.3),
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    //runs when every textfield is filled
                    // onSubmit: (String verificationCode){
                    //   showDialog(
                    //       context: context,
                    //       builder: (context){
                    //         return AlertDialog(
                    //           title: Text("Verification Code"),
                    //           content: Text('Code entered is $verificationCode'),
                    //         );
                    //       }
                    //   );
                    // }, // end onSubmit
                  ),
                ),
                SizedBox(height: 5.h,),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                        MainPageBottomBar()), (Route<dynamic> route) => false);
                  },
                    child: getButton(title: "Verify",width: 90.w,borderRadius: 25,))
              ],
            ),
          )
        ],
      ),
    );
  }
}
