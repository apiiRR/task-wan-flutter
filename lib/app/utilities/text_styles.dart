import 'package:flutter/material.dart';

const FontWeight regular = FontWeight.w400;
const FontWeight medium = FontWeight.w500;
const FontWeight semibold = FontWeight.w600;
const FontWeight bold = FontWeight.w700;

TextStyle text3Xl(colorText, weight) {
  return TextStyle(
      color: colorText, fontSize: 42, fontWeight: weight, height: 1.1);
}

TextStyle text2Xl(colorText, weight) {
  return TextStyle(
      color: colorText, fontSize: 34, fontWeight: weight, height: 1.2);
}

TextStyle textXl(colorText, weight) {
  return TextStyle(
      color: colorText, fontSize: 26, fontWeight: weight, height: 1.2);
}

TextStyle textLg(colorText, weight) {
  return TextStyle(
      color: colorText, fontSize: 22, fontWeight: weight, height: 1.4);
}

TextStyle textBase(colorText, weight) {
  return TextStyle(
      color: colorText, fontSize: 18, fontWeight: weight, height: 1.4);
}

TextStyle textSm(colorText, weight) {
  return TextStyle(
      color: colorText, fontSize: 16, fontWeight: weight, height: 1.4);
}

TextStyle textXs(colorText, weight) {
  return TextStyle(color: colorText, fontSize: 14, fontWeight: weight);
}

TextStyle text2Xs(colorText, weight) {
  return TextStyle(color: colorText, fontSize: 12, fontWeight: weight);
}
