import 'package:ayurvedic/src/Constant/colorsConstant.dart';
import 'package:ayurvedic/src/provider/productDetails_provider.dart';
import 'package:ayurvedic/src/views/Widget/common_buttons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: const Text("Product Details"),
      ),
      body: Consumer<ProductDetailsProvider>(builder: (context, value, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset(
                    "assets/imges/medicineImage.png",
                    height: 30.h,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                "Himalaya",
                style: TextStyle(fontSize: 14.sp),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 4),
              child: Text(
                "(Wellness Pure herbs) - 30mg I Ashvagandha",
                style: TextStyle(fontSize: 10.sp, color: AppColors.grey),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Avilable"),
                ),
                SizedBox(
                  width: 6.w,
                ),
                Expanded(
                  child: Container(
                    height: 20.sp,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        value.sizes.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: GestureDetector(
                            onTap: () {
                              value.setSelectedSizeIndex(index);
                            },
                            child: Container(
                              width: 14.w,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5)),
                                  border: (value.selectedSizeIndex == index)
                                      ? Border.all(
                                          color: AppColors.green, width: 2)
                                      : Border.all(
                                          color: AppColors.grey, width: 1.5)),
                              child: Center(
                                child: Text(
                                  value.sizes[index],
                                  style: TextStyle(
                                      color: AppColors.grey, fontSize: 9.sp),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Quantity"),
                ),
                SizedBox(
                  width: 6.w,
                ),
                GestureDetector(
                  onTap: () {
                    Provider.of<ProductDetailsProvider>(context, listen: false)
                        .incrementQuantity();
                  },
                  child: Container(
                    height: 6.h,
                    width: 6.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.grey),
                    ),
                    child: Icon(
                      Icons.add,
                      size: 14,
                    ),
                  ),
                ),
                SizedBox(
                  width: 2.h,
                ),
                Container(
                    height: 3.h,
                    width: 10.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      border: Border.all(color: AppColors.grey),
                    ),
                    child: Center(child: Text("${value.quantity}"))),
                SizedBox(
                  width: 2.h,
                ),
                GestureDetector(
                  onTap: () {
                    Provider.of<ProductDetailsProvider>(context, listen: false)
                        .decrementQuantity();
                  },
                  child: Container(
                      height: 6.h,
                      width: 6.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.grey),
                      ),
                      child: Icon(
                        Icons.remove,
                        size: 14,
                      )),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Price"),
                ),
                SizedBox(
                  width: 6.h,
                ),
                Text("699")
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 2),
              child: Text(
                "In Stoke",
                style: TextStyle(color: AppColors.green),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 8),
              child: Text(
                "Product Details",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 2),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever.....",
                style: TextStyle(color: AppColors.grey, fontSize: 10.sp),
              ),
            ),
            SizedBox(height: 10.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                getButton(
                    title: "Add to Cart",
                    backColor: Colors.transparent,
                    textColor: Colors.black,
                    borderRadius: 20,
                    borderWidth: 2,
                    borderColor: AppColors.grey.withOpacity(0.3)),
                getButton(
                    title: "Buy Now",
                    borderRadius: 20,
                ),
              ],
            )
          ],
        );
      }),
    );
  }
}
