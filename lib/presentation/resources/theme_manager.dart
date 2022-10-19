import 'package:flutter/material.dart';
import 'package:tut_app/presentation/resources/color_manager.dart';
import 'package:tut_app/presentation/resources/fonts_manager.dart';
import 'package:tut_app/presentation/resources/text_style_manager.dart';
import 'package:tut_app/presentation/resources/values_manager.dart';
ThemeData getApplicationTheme(){
  return ThemeData(
    primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.lightPrimary,
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager.grey1,
      splashColor: ColorManager.lightPrimary,


      //card theme
    cardTheme:CardTheme(
      color: ColorManager.white,
    shadowColor: ColorManager.grey,
      elevation: AppSize.s8,
  ),

      //appbar theme
    appBarTheme: AppBarTheme(
      color: ColorManager.lightPrimary,
      titleTextStyle: getRegularStyle(fontSize: FontSizeManager.s16,color: ColorManager.white)

  ),



      buttonTheme: ButtonThemeData(
        buttonColor: ColorManager.primary,
        splashColor: ColorManager.lightPrimary,
        shape: StadiumBorder(),
        disabledColor: ColorManager.grey1

  ),

    //elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(color: ColorManager.white,fontSize: FontSizeManager.s18),
shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(12),
)
      )
    ),
    //text theme
    textTheme:TextTheme(
         headline1: getSemiBoldStyle(color: ColorManager.darkGrey,fontSize: FontSizeManager.s16),
      subtitle1: getMediumStyle(color: ColorManager.lightGrey,fontSize: FontSizeManager.s14),
        caption:getRegularStyle(color: ColorManager.grey1),
      bodyText1: getRegularStyle(color: ColorManager.grey)
    ),



      //input decroration--text field form
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(8),
      hintStyle: getRegularStyle(color: ColorManager.grey,fontSize: FontSizeManager.s14),
      labelStyle: getMediumStyle(color: ColorManager.grey,fontSize: FontSizeManager.s14),
    errorStyle: getRegularStyle(color: ColorManager.error),


        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.primary,width: 1),
          borderRadius: BorderRadius.all(Radius.circular(8))
        ),


        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.grey,width: 1),
            borderRadius: BorderRadius.all(Radius.circular(8))
        ),


      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.error,width: 1),
          borderRadius: BorderRadius.all(Radius.circular(8))
      ),


      focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.primary,width: 1),
          borderRadius: BorderRadius.all(Radius.circular(8))
      ),


    )




  );





}

