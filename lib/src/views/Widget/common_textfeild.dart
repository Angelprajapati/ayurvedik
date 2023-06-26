import 'package:ayurvedic/src/Constant/colorsConstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

import '../../Constant/sizeconstant.dart';


// import '../Constant/sizeconstant.dart';

Padding getTextField({
  String? hintText,
  String? labelText,
  TextEditingController? textEditingController,
  Widget? prefixIcon,
  double? borderRadius,
  Widget? suffixIcon,
  double? size = 70,
  Widget? suffix,
  Color? borderColor,
  Color? fillColor,
  bool isFilled = false,
  Color? labelColor,
  TextInputType textInputType = TextInputType.name,
  TextInputAction textInputAction = TextInputAction.next,
  bool textVisible = false,
  bool readOnly = false,
  VoidCallback? onTap,
  int maxLine = 1,
  String errorText = "",
  Function(String)? onChange,
  FormFieldValidator<String>? validation,
  double fontSize = 15,
  double hintFontSize = 14,
  TextCapitalization textCapitalization = TextCapitalization.none,
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 10.0,right: 10,bottom: 13,top: 13),
    child: Container(
      decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow:  const [
            BoxShadow(
              color: AppColors.green,
              blurRadius: 3.0,
              offset: Offset(
                0.5, // Move to right 5  horizontally
                0.5, // Move to bottom 5 Vertically
              ),
            ),

          ],
          border: Border.all(color: AppColors.green),
          borderRadius:
          const BorderRadius.all(Radius.circular(25))),
      child: TextFormField(
        controller: textEditingController,
        obscureText: textVisible,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        textCapitalization: textCapitalization,
        cursorColor: AppColors.green,
        readOnly: readOnly,
        validator: validation,
        onTap: onTap,
        maxLines: maxLine,
        onChanged: onChange,
        style: TextStyle(
          fontSize: 12.sp,
        ),
        decoration: InputDecoration(
          // fillColor: fillColor ?? appTheme.textGrayColor,
          border: InputBorder.none,
          filled: isFilled,
          labelText: labelText,
          labelStyle: const TextStyle(
              // color: labelColor ?? appTheme.primaryTheme,
              fontWeight: FontWeight.w600),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          suffix: suffix,
          errorMaxLines: 2,
          errorText: (isNullEmptyOrFalse(errorText)) ? null : errorText,
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: 12.sp,
              color: Colors.grey.shade500),
        ),
      ),
    ),
  );
}