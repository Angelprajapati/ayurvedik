import 'package:ayurvedic/src/Constant/colorsConstant.dart';
import 'package:ayurvedic/src/provider/bottom_nav_bar_provider.dart';
import 'package:ayurvedic/src/views/Categories/categoriesScreen.dart';
import 'package:ayurvedic/src/views/Menu/MenuView.dart';
import 'package:ayurvedic/src/views/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'views/MyorderView/myOrderView.dart';

class MainPageBottomBar extends StatefulWidget {
  const MainPageBottomBar({Key? key}) : super(key: key);

  @override
  State<MainPageBottomBar> createState() => _MainPageBottomBarState();
}

class _MainPageBottomBarState extends State<MainPageBottomBar> {

  static final List _widgetOptions = [
    Homescreen(),
    CategoriesView(),
    myOrderView(),
    MenuView()
  ];

  void _onItemTapped(int index) {
    Provider.of<BottomNavBarProvider>(context,listen: false).changeIndex(index);

      //_selectedIndex = index;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(Provider.of<BottomNavBarProvider>(context).index!),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
          ),
          boxShadow: [
            BoxShadow(color: AppColors.grey, spreadRadius: 0, blurRadius: 4),
          ],
        ),
        child: Consumer<BottomNavBarProvider>(
          builder: (context, navBarValue, child) {
          return BottomNavigationBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: (navBarValue.index == 0)
                    ? Container(
                    height: 8.h,
                    width: 20.w,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(10)),
                        color: AppColors.green.withOpacity(0.1)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/Icons/homeGreen.png"),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        const Text(
                          "Home",
                          style: TextStyle(
                              color: AppColors.green,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ))
                    : Image.asset("assets/Icons/home.png"),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: (navBarValue.index == 1)
                    ? Container(
                    height: 8.h,
                    width: 20.w,
                    decoration: BoxDecoration(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(10)),
                        color: AppColors.green.withOpacity(0.1)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/Icons/categoryGreen.png"),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        const Text(
                          "Categories",
                          style: TextStyle(
                              color: AppColors.green,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ))
                    : Image.asset("assets/Icons/categories.png"),
                label: "Categories",
              ),
              BottomNavigationBarItem(
                icon: (navBarValue.index == 2)
                    ? Container(
                    height: 8.h,
                    width: 20.w,
                    decoration: BoxDecoration(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(10)),
                        color: AppColors.green.withOpacity(0.1)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/Icons/orderGreen.png"),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        const Text(
                          "My Order",
                          style: TextStyle(
                              color: AppColors.green,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ))
                    : Image.asset("assets/Icons/order.png"),
                label: "My Order",
              ),
              BottomNavigationBarItem(
                icon: (navBarValue.index == 3)
                    ? Container(
                    height: 8.h,
                    width: 20.w,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(25)),
                        color: AppColors.green.withOpacity(0.1)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/Icons/menuGreen.png"),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        const Text(
                          "Menu",
                          style: TextStyle(
                              color: AppColors.green,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ))
                    : Image.asset("assets/Icons/menu.png"),
                label: "Menu",
              ),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: navBarValue.index!,
            selectedItemColor: AppColors.green,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            iconSize: 26,
            onTap: _onItemTapped,
          );
        },),
      ),
    );
  }
}
