import 'package:ayurvedic/src/Constant/colorsConstant.dart';
import 'package:ayurvedic/src/provider/homescreen_provider.dart';
import 'package:ayurvedic/src/views/TopBrand/topbrandScreen.dart';
import 'package:ayurvedic/src/views/home/bestDealWidget.dart';
import 'package:ayurvedic/src/views/home/newArrivalWidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Homescreen extends StatelessWidget {
  Homescreen({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        elevation: 0,
        // toolbarHeight: 80,
        leadingWidth: 170,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Image.asset("assets/imges/applogo.png"),
        ),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Icons/like.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Icons/notification.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Icons/cart.png"),
              ),
            ],
          )
        ],
      ),
      body: Consumer<HomescreenProvider>(
        builder: (context, value, child) => Column(
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Delivering To :"),
                ),
                DropdownButtonHideUnderline(
                  child: DropdownButton(
                    // Initial Value
                    value: value.selected,

                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),

                    // Array list of items
                    items: value.items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      value.setSelectedItem(newValue!);
                      print(newValue);
                    },
                  ),
                ),
              ],
            ),
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
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.green),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.h),
            Expanded(
              child: SingleChildScrollView(
                child: Consumer<HomescreenProvider>(builder: (context, value, child) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 26.h,
                        width: double.infinity,
                        child: PageView.builder(
                          onPageChanged: (index) {
                            context.read<HomescreenProvider>().setCurrentPage(0);
                          },
                          itemCount: value.images.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                height: 20.h,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                child: Image.asset(
                                  value.images[index % value.images.length],
                                  fit: BoxFit.fill,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (var i = 0; i < value.images.length; i++)
                            buildIndicator(value.currentPage == i)
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        "Substitutes are the smarter choice",
                        style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Image.asset("assets/imges/substitute.png"),
                      SizedBox(
                        height: 2.h,
                      ),
                      Stack(
                        children: [
                          Container(
                              height: 36.h,
                              width: double.infinity,
                              child: Image.asset(
                                "assets/imges/bgcategories.png",
                                fit: BoxFit.cover,
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8, left: 18),
                                    child: Text(
                                      "Best deal on top brands",
                                      style: TextStyle(fontSize: 14.sp),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 18, top: 8),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (BuildContext context) =>
                                                    TopBrandScreen()));
                                      },
                                      child: Text(
                                        "View All",
                                        style: TextStyle(
                                            fontSize: 14.sp, color: AppColors.green),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 18),
                                child: Text(
                                  "Time to shop your heart out!",
                                  style:
                                  TextStyle(color: AppColors.grey, fontSize: 11.sp),
                                ),
                              ),
                              bestDealWidget()
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Stack(
                        children: [
                          Container(
                              height: 37.h,
                              width: double.infinity,
                              child: Image.asset(
                                "assets/imges/bgcategories.png",
                                fit: BoxFit.cover,
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8, left: 18),
                                    child: Text(
                                      "New Arrivals",
                                      style: TextStyle(fontSize: 14.sp),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 18, top: 8),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (BuildContext context) =>
                                                    TopBrandScreen()));
                                      },
                                      child: Text(
                                        "View All",
                                        style: TextStyle(
                                            fontSize: 14.sp, color: AppColors.green),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 18),
                                child: Text(
                                  "New Wellness range just for you",
                                  style:
                                  TextStyle(color: AppColors.grey, fontSize: 11.sp),
                                ),
                              ),
                              newArrivalWidget()
                            ],
                          )
                        ],
                      ),
                    ],
                  );
                },)
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildIndicator(bool isselected) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        height: 3.h,
        width: 3.w,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isselected ? AppColors.green : AppColors.grey),
      ),
    );
  }
}
