import 'package:ayurvedic/src/Constant/colorsConstant.dart';
import 'package:ayurvedic/src/views/ProductDetails/productDetailsScreen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../Widget/common_buttons.dart';

class bestDealWidget extends StatelessWidget {
  const bestDealWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 27.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailScreen(),));
                },
                child: Container(
                  height: 20.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 12.h,
                            width: 35.w,
                            child: Image.asset("assets/imges/medicineImage.png",)),
                      ),
                      Positioned(
                        top: 2,
                        right: 15,
                        child: CircleAvatar(
                          backgroundColor: AppColors.green,
                          radius: 14,
                          child: Column(
                            children: [
                              Text("10%",style: TextStyle(fontSize: 6.sp,color: AppColors.white),),
                              Text("Off",style: TextStyle(fontSize: 6.sp,color: AppColors.white))
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 34,
                        left: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Himalaya"),
                            Text("Ashvagandha",style: TextStyle(color: AppColors.grey,fontSize: 9.sp),),
                            Text("MRP 345",style: TextStyle(color: AppColors.grey,fontSize: 9.sp)),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 8,
                          left: 35,
                          child: getButton(title: "Add to cart",height: 2.2.h,width: 12.w,textSize: 4.5.sp,borderRadius: 10 ))

                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
