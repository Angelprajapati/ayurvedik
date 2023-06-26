import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../Constant/colorsConstant.dart';
import '../Widget/common_buttons.dart';

class newArrivalWidget extends StatelessWidget {
  const newArrivalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 28.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 20.h,
                width: 30.w,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 12.h,
                          width: 35.w,
                          child: Image.asset("assets/imges/medicineImage.png",)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Himalaya"),
                        Text("Ashvagandha",style: TextStyle(color: AppColors.grey,fontSize: 9.sp),),
                        Text("MRP 345",style: TextStyle(color: AppColors.grey,fontSize: 9.sp)),
                      ],
                    ),
                    SizedBox(height: 1.h,),
                    getButton(title: "Add",height: 2.2.h,width: 12.w,textSize: 4.5.sp,borderRadius: 10 )

                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}