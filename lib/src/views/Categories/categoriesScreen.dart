import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../Constant/colorsConstant.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: Text(
          "Categories",
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/Icons/cart.png"),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 7.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.grey.withOpacity(0.7),
                        blurRadius: 2.0,
                        spreadRadius: 0.4)
                  ]),
              child: TextFormField(
                onChanged: (value) {
                  // Method For Searching
                },
                decoration: InputDecoration(
                  hintText: "Search Medicine And Health Products",
                  prefixIcon: Image.asset("assets/Icons/search.png"),
                  suffixIcon: Image.asset("assets/Icons/microphone.png"),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.green),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              itemCount: 15,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.80,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
              ),
              itemBuilder: (context, index) {
                return Container(
                  width: 35.w,
                  height: 20.h,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          stops: [0.7, 0.3],
                          tileMode: TileMode.clamp,
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [AppColors.green.withOpacity(0.2),Colors.white]),
                    color: AppColors.green.withOpacity(0.7),
                    border: Border.all(color: AppColors.green, width: 3),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 15.h,
                          child: Image.asset("assets/imges/categoryproducts1.png")),
                      Text("Nutirition Drinks ")
                    ],
                  ),
                );
              },
            ),
          )),
        ],
      ),
    );
  }
}
