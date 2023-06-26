import 'package:ayurvedic/src/Constant/colorsConstant.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class profileView extends StatelessWidget {
  const profileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: const Text("My Profile"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: Container(
                height: 2.5.h, child: Image.asset("assets/Icons/edit.png")),
          )
        ],
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                child: Image.asset(
                  "assets/imges/profilebg.png",
                  fit: BoxFit.cover,
                ),
              ),
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/imges/user.png"),
                  radius: 80,
                ),
              )
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Container(
              height: 18.h,
              width: 100.w,
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                      color: AppColors.grey, spreadRadius: 0, blurRadius: 4),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Name",
                          style: TextStyle(fontSize: 12.sp),
                        ),
                        const Text(
                          "Sonia Aiselney",
                          style: TextStyle(color: AppColors.grey),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Email",
                          style: TextStyle(fontSize: 12.sp),
                        ),
                        const Text(
                          "soniaasiliey@gmail.com",
                          style: TextStyle(color: AppColors.grey),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Phone Number",
                          style: TextStyle(fontSize: 12.sp),
                        ),
                        const Text(
                          "+9876543210",
                          style: TextStyle(color: AppColors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(9.0),
              child: Container(
                  height: 10.h,
                  width: 100.w,
                  decoration: const BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.grey,
                          spreadRadius: 0,
                          blurRadius: 4),
                    ],
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 8),
                          child: Text("Address",style: TextStyle(fontSize: 12.sp),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Row(
                            children: [
                              Text(
                                "Home: ",
                                style: TextStyle(fontSize: 12.sp),
                              ),
                              const Text(
                                "345, Golden City, Main Road, Surat",
                                style: TextStyle(color: AppColors.grey),
                              )
                            ],
                          ),
                        ),
                      ])))
        ],
      ),
    );
  }
}
