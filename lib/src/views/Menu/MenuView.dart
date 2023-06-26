import 'package:ayurvedic/src/Constant/colorsConstant.dart';
import 'package:ayurvedic/src/views/Menu/ProfileScreen/profileview.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MenuView extends StatelessWidget {
  const MenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        elevation: 0,
        // toolbarHeight: 80,
        title: const Text("Menu"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 4.h,
            ),
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/imges/user.png"),
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              "FirstName LastName",
              style: TextStyle(fontSize: 12.sp),
            ),
            SizedBox(
              height: 3.h,
            ),
            Stack(
              children: [
                Container(
                  height: 50.2.h,
                  decoration: BoxDecoration(
                      color: AppColors.green.withOpacity(0.3),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 1.h,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => const profileView()));
                      },
                      child: Container(
                        height: 7.h,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                    height: 5.h,
                                    child:
                                        Image.asset("assets/Icons/myprofile.png"))),
                            Expanded(
                                flex: 4,
                                child: Text(
                                  "My Profile",
                                  style: TextStyle(fontSize: 12.sp),
                                )),
                            Expanded(child: Image.asset("assets/Icons/back.png")),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 7.h,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                  height: 5.h,
                                  child:
                                      Image.asset("assets/Icons/sequrity.png"))),
                          Expanded(
                              flex: 4,
                              child: Text(
                                "Security",
                                style: TextStyle(fontSize: 12.sp),
                              )),
                          Expanded(child: Image.asset("assets/Icons/back.png")),
                        ],
                      ),
                    ),
                    Container(
                      height: 7.h,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                  height: 5.h,
                                  child:
                                      Image.asset("assets/Icons/language.png"))),
                          Expanded(
                              flex: 4,
                              child: Text(
                                "Language",
                                style: TextStyle(fontSize: 12.sp),
                              )),
                          Expanded(child: Image.asset("assets/Icons/back.png")),
                        ],
                      ),
                    ),
                    Container(
                      height: 7.h,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                  height: 5.h,
                                  child: Image.asset(
                                      "assets/Icons/privacyPolicy.png"))),
                          Expanded(
                              flex: 4,
                              child: Text(
                                "Privacy Policy",
                                style: TextStyle(fontSize: 12.sp),
                              )),
                          Expanded(child: Image.asset("assets/Icons/back.png")),
                        ],
                      ),
                    ),
                    Container(
                      height: 7.h,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                  height: 5.h,
                                  child: Image.asset("assets/Icons/help.png"))),
                          Expanded(
                              flex: 4,
                              child: Text(
                                "Help Center",
                                style: TextStyle(fontSize: 12.sp),
                              )),
                          Expanded(child: Image.asset("assets/Icons/back.png")),
                        ],
                      ),
                    ),
                    Container(
                      height: 7.h,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                  height: 5.h,
                                  child: Image.asset(
                                      "assets/Icons/invitefriends.png"))),
                          Expanded(
                              flex: 4,
                              child: Text(
                                "Invite Friends",
                                style: TextStyle(fontSize: 12.sp),
                              )),
                          Expanded(child: Image.asset("assets/Icons/back.png")),
                        ],
                      ),
                    ),
                    Container(
                      height: 7.h,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                  height: 5.h,
                                  child: Image.asset("assets/Icons/logout.png"))),
                          Expanded(
                              flex: 4,
                              child: Text(
                                "Log Out",
                                style: TextStyle(fontSize: 12.sp),
                              )),
                          Expanded(child: Image.asset("assets/Icons/back.png")),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
