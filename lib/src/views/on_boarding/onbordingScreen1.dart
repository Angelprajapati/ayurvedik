import 'package:ayurvedic/src/Constant/colorsConstant.dart';
import 'package:ayurvedic/src/views/startScreen/startScreen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  final List<OnboardingItem> _onboardingItems = [
    OnboardingItem(
      title: 'Find Your Favourite Item',
      description: 'Find Your Favourite product to find Your Daily Products',
      imagePath: 'assets/imges/onboarding1.png',
    ),
    OnboardingItem(
      title: 'Easy & Safe Payment',
      description: 'Pay for the products you buy safely & easily.',
      imagePath: 'assets/imges/onboarding2.png',
    ),
    OnboardingItem(
      title: 'Product Delivery',
      description: 'Your products are delivered home safely & securely',
      imagePath: 'assets/imges/onboarding3.png',
    ),
  ];

  void _navigateToNextScreen() {
    if (_currentPage < _onboardingItems.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) => const StartScreen()));
    }
  }

  void _navigateToPreviousScreen() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: _onboardingItems.length,
              onPageChanged: (int index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (BuildContext context, int index) {
                final item = _onboardingItems[index];
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Image.asset(
                        item.imagePath,
                      ),
                    ),
                     SizedBox(height: 2.h),
                    Text(
                      item.title,
                      style:  TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                     SizedBox(height: 1.h),
                    Container(
                      width: 250,
                      child: Text(
                        item.description,
                        textAlign: TextAlign.center,
                        style:  TextStyle(
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          (_currentPage == 0)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 1.5.h,
                        width: 5.w,
                        decoration: const BoxDecoration(
                            color: AppColors.green,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                      ),
                    ),
                    Container(
                      height: 1.5.h,
                      width: 5.w,
                      decoration: const BoxDecoration(
                          color: AppColors.grey, shape: BoxShape.circle),
                    ),
                    Container(
                      height: 1.5.h,
                      width: 5.w,
                      decoration: const BoxDecoration(
                          color: AppColors.grey, shape: BoxShape.circle),
                    )
                  ],
                )
              : (_currentPage == 1)
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 1.5.h,
                          width: 5.w,
                          decoration: const BoxDecoration(
                              color: AppColors.grey, shape: BoxShape.circle),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 1.5.h,
                            width: 5.w,
                            decoration: const BoxDecoration(
                                color: AppColors.green,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                          ),
                        ),
                        Container(
                          height: 1.5.h,
                          width: 5.w,
                          decoration: const BoxDecoration(
                              color: AppColors.grey, shape: BoxShape.circle),
                        )
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 1.5.h,
                          width: 5.w,
                          decoration: const BoxDecoration(
                              color: AppColors.grey, shape: BoxShape.circle),
                        ),
                        Container(
                          height: 1.5.h,
                          width: 5.w,
                          decoration: const BoxDecoration(
                              color: AppColors.grey, shape: BoxShape.circle),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 1.5.h,
                            width: 5.w,
                            decoration: const BoxDecoration(
                                color: AppColors.green,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                          ),
                        ),
                      ],
                    ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (_currentPage < 2)
                TextButton(
                  onPressed: _navigateToPreviousScreen,
                  child: Text(
                    _currentPage == _onboardingItems.length ? '' : 'Skip',
                    style: TextStyle(color: Colors.black, fontSize: 14.sp),
                  ),
                ),
              (_currentPage == _onboardingItems.length - 1)
                  ? InkWell(
                      onTap: () {
                        _navigateToNextScreen();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                            height: 6.h,
                            width: 90.w,
                            decoration: const BoxDecoration(
                                color: AppColors.green,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                            child: Center(
                                child: Text(
                              'Let Start',
                              style: TextStyle(
                                  color: AppColors.white, fontSize: 14.sp),
                            ))),
                      ),
                    )
                  : TextButton(
                      onPressed: _navigateToNextScreen,
                      child: Container(
                          height: 6.h,
                          width: 30.w,
                          decoration: const BoxDecoration(
                              color: AppColors.green,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          child: Center(
                              child: Text(
                            'Next',
                            style: TextStyle(
                                color: AppColors.white, fontSize: 14.sp),
                          ))),
                    ),
            ],
          ),
          SizedBox(
            height: 5.h,
          )
        ],
      ),
    );
  }
}

class OnboardingItem {
  final String title;
  final String description;
  final String imagePath;

  OnboardingItem({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}
