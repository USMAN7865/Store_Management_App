// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:store_management_app/Presentations/Resources/color_manager.dart';
import 'package:store_management_app/Presentations/Resources/fonts_manager.dart';
import 'package:store_management_app/Presentations/Resources/style_manager.dart';
import 'package:store_management_app/Presentations/Resources/values_manager.dart';

ThemeData getApplicationtheme() {
  return ThemeData(
      //color theme
      primaryColor: ColorManager.primarycolor,
      primaryColorLight: ColorManager.primarycolor70,
      primaryColorDark: ColorManager.darkprimary,
      disabledColor: ColorManager.grey1,
      accentColor: ColorManager.grey,

      //ripple splash theme
      splashColor: ColorManager.primarycolor70,

      //cardview theme
      cardTheme: CardTheme(
          color: ColorManager.white,
          shadowColor: ColorManager.grey,
          elevation: Appsize.s4),

      //button theme
      buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: ColorManager.grey,
        buttonColor: ColorManager.primarycolor,
        splashColor: ColorManager.primarycolor70,
      ),

      //elevated Button Thene
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        textStyle: getregulartextStyle(color: ColorManager.white),
        primary: ColorManager.primarycolor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Appsize.s12)),
      )),

      //AppBar theme

      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManager.primarycolor,
        elevation: Appsize.s4,
        titleTextStyle: getregulartextStyle(
            color: ColorManager.primarycolor70, fontSize: Fontsize.s16),
      ),

      //Text theme

      textTheme: TextTheme(
          headline1: getsemiboldtextStyle(
              color: ColorManager.darkgrey, fontSize: Fontsize.s16),
          subtitle1: getmediumtextStyle(
              color: ColorManager.lightgrey, fontSize: Fontsize.s14),
          caption: getregulartextStyle(color: ColorManager.grey1),
          bodyText1: getregulartextStyle(color: ColorManager.grey)),

      //Input Form field theme

      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(AppPadding.p8),
        hintStyle: getregulartextStyle(color: ColorManager.grey1), //hintstyle
        labelStyle: getmediumtextStyle(color: ColorManager.grey), //labelstyle
        errorStyle: getregulartextStyle(color: ColorManager.error), //errorstyle

        //enableBorder
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.grey, width: Appsize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(Appsize.s8)),
        ),
        //focused Border
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.primarycolor, width: Appsize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(Appsize.s8)),
        ),

        //error Border
        errorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.error, width: Appsize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(Appsize.s8)),
        ),
        //errorfocused Border
        focusedErrorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.error, width: Appsize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(Appsize.s8)),
        ),
      ));
}
