import 'package:ayurvedic/src/Constant/colorsConstant.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class myOrderView extends StatelessWidget {
  const myOrderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,

          title: Text(
            "My Order",
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
          ),
        ),
        body: TabBarView(children: [
          Icon(Icons.apps),
          Icon(Icons.movie),
        ]),
      ),
    );
  }
}
