import 'package:flutter/material.dart';
import 'package:tut_app/presentation/resources/fonts_manager.dart';

TextStyle _getTextStyle(double fontSize,fontWeight,Color color){
  return TextStyle(
    fontSize: fontSize,
    fontFamily: FontConstant.fontFamily,
    color: color,
    fontWeight: fontWeight,

  );
}
 TextStyle getRegularStyle({double fontSize = FontSizeManager.s12,required Color color})
 {
   return _getTextStyle(fontSize, FontWeightManager.regular, color);
 }



TextStyle getMediumStyle({double fontSize = FontSizeManager.s12,required Color color})
{
  return _getTextStyle(fontSize, FontWeightManager.medium, color);
}




TextStyle getBoldStyle({double fontSize = FontSizeManager.s12,required Color color})
{
  return _getTextStyle(fontSize, FontWeightManager.bold, color);
}



TextStyle getSemiBoldStyle({double fontSize = FontSizeManager.s12,required Color color})
{
  return _getTextStyle(fontSize, FontWeightManager.semiBold, color);
}



TextStyle getLightStyle({double fontSize = FontSizeManager.s12,required Color color})
{
  return _getTextStyle(fontSize, FontWeightManager.light, color);
}