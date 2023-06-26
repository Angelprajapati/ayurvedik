import 'package:ayurvedic/src/Constant/colorsConstant.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TopBrandScreen extends StatelessWidget {
  const TopBrandScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          title: const Text("Top Brands"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 2.5.h,
                width: 3.h,
                child: Image.asset("assets/Icons/searchBlack.png")),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Image.asset("assets/Icons/cart.png"),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: 20,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio:0.78
            ),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  decoration:BoxDecoration(
                    border: Border.all(color: AppColors.green,width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ) ,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8,right: 8),
                            child: Container(
                              alignment: Alignment.topRight,
                              height: 4.h,
                                width: 4.w,
                                child: Image.asset("assets/Icons/favouriteBlank.png")),
                          ),
                        ],
                      ),
                      Container(
                        height: 16.h,
                          child: Image.asset("assets/imges/medicineImage.png",fit: BoxFit.fitHeight,)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text("Himalaya"),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text("Ashvagandha",style: TextStyle(fontSize: 8.sp,color: AppColors.grey),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Text("10% Off",style: TextStyle(fontSize: 8.sp,color: AppColors.green)),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text("699",style: TextStyle(fontSize: 8.sp,color: AppColors.grey)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Text("MRP 799",style: TextStyle(fontSize: 8.sp,color: AppColors.grey)),
                          )
                        ],
                      ),
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
