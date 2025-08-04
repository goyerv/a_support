// Copyright (c) 2022 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor








import 'package:flutter/material.dart';
import '../../global_fields/fields.dart';

ThemeData lightTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: white,
    elevation: 0.0,
    toolbarHeight: tbh,
  ),
  brightness: Brightness.light,
  bottomAppBarTheme: BottomAppBarTheme(
    color: white..withOpacity(0.8),
    elevation: 0.0,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: white,
    elevation: 0.0,
    selectedIconTheme: const IconThemeData(
      color: defaultColor,
      size: 26.0,
    ),
    unselectedIconTheme: const IconThemeData(
      color: black,
      size: 26.0,
    ),
    selectedItemColor: defaultColor,
    unselectedItemColor: black,
    selectedLabelStyle: labelLarge,
    unselectedLabelStyle: labelLarge,
    showSelectedLabels: true,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: defaultColor,
    hoverColor: defaultColor..withOpacity(0.6),
    disabledColor: grey..withOpacity(0.7),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(6.0),
    ),
    textTheme: ButtonTextTheme.normal,
  ),
  cardColor: white,
  canvasColor: whiteSmoke,
  cardTheme: CardThemeData(
    color: white,
    elevation: 0.0,
    shadowColor: black..withOpacity(0.4),
    shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(15.0), side: const BorderSide(color: black, width: 5.0)),
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor: WidgetStateProperty.all(white),
    checkColor: WidgetStateProperty.all(defaultColor),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(6.0),
    ),
    side: const BorderSide(
      width: 0.5,
      color: black,
    ),
  ),
  dividerColor: whiteSmokeLighter,
  dividerTheme: const DividerThemeData(
    color: whiteSmokeLighter,
    space: 10.0,
    thickness: 10.0,
  ),
  dialogBackgroundColor: white,
  dialogTheme: DialogThemeData(
    backgroundColor: white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    titleTextStyle: labelLarge,
    contentTextStyle: bodyLarge,
    elevation: 10.0
  ),
  disabledColor: grey..withOpacity(0.7),
  dropdownMenuTheme: DropdownMenuThemeData(
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: bodyLarge,
      floatingLabelStyle: labelLarge,
      helperStyle: labelLarge.copyWith(color: black54),
      hintStyle: bodyLarge.copyWith(color: black54), 
      errorStyle: labelMedium.copyWith(color: red),
      iconColor: black,
      prefixStyle: labelMedium,
      prefixIconColor: black,
      suffixStyle: labelMedium,
      suffixIconColor: defaultColor, 
      filled: false,
      errorBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        borderSide:  BorderSide(
          color: red,
          width: 1.0,
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        borderSide:  BorderSide(
          color: defaultColor,
          width: 1.0,
        ),
      ),
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        borderSide:  BorderSide(
          color: black,
          width: 1.0,
        ),
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(defaultColor),
      shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))),
      elevation: WidgetStateProperty.all(0.5),
      side: WidgetStateProperty.all(const BorderSide(color: defaultColor, width: 0.5)),
      textStyle: WidgetStateProperty.all(bodyLarge),
      animationDuration: const Duration(milliseconds: 60),
    ),
  ),
  focusColor: whiteSmoke,
  // floatingActionButtonTheme: FloatingActionButtonThemeData(), For mobile devices
  hoverColor: whiteSmoke,
  hintColor: black54,
  inputDecorationTheme: InputDecorationTheme(
    errorMaxLines: 3,
    labelStyle: bodyLarge,
    floatingLabelStyle: labelLarge,
    helperStyle: labelLarge.copyWith(color: black54),
    hintStyle: bodyLarge.copyWith(color: black54), 
    errorStyle: labelMedium.copyWith(color: red),
    iconColor: black,
    prefixStyle: labelMedium,
    prefixIconColor: black,
    suffixStyle: labelMedium,
    suffixIconColor: defaultColor, 
    filled: false,
    focusedErrorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      borderSide:  BorderSide(
        color: red,
        width: 1.0,
      ),
    ), 
    errorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      borderSide:  BorderSide(
        color: red,
        width: 1.0,
      ),
    ),
    focusedBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      borderSide:  BorderSide(
        color: defaultColor,
        width: 1.0,
      ),
    ),
    enabledBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      borderSide:  BorderSide(
        color: black,
        width: 1.0,
      ),
    ),
  ),
  iconTheme: const IconThemeData(
    color: black,
    size: 10.0,
  ),
  listTileTheme: ListTileThemeData(
    tileColor: transparent,
    selectedColor: whiteSmoke,
    shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(7.0)),
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: defaultColor,
    linearTrackColor: transparent,
    circularTrackColor: transparent,
    refreshBackgroundColor: transparent,
  ),
  primaryColor: white,
  primaryColorLight: whiteSmokeLighter,
  primaryColorDark: whiteSmoke,
  primaryIconTheme: const IconThemeData(
    color: black,
    size: 26.0,
  ),
  // platform: TargetPlatform.android, for mobile device
  outlinedButtonTheme: OutlinedButtonThemeData(
  style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(transparent),
      textStyle: WidgetStateProperty.all(labelLarge),
      side: WidgetStateProperty.all(const BorderSide(color: defaultColor, width: 1)),
    ),
  ),
  radioTheme: RadioThemeData(
    fillColor: WidgetStateProperty.all(defaultColor),
  ),
  scaffoldBackgroundColor: whiteSmoke,
  switchTheme: SwitchThemeData(
    thumbColor: WidgetStateProperty.all(defaultColor),
    trackColor: WidgetStateProperty.all(grey),
  ),
  sliderTheme: const SliderThemeData(
    activeTrackColor: defaultColor,
    inactiveTrackColor: whiteSmoke,
    trackShape: RectangularSliderTrackShape(),
    trackHeight: 4.0,
    thumbColor: defaultColor,
    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
    overlayColor: defaultColorLighter,
    overlayShape: RoundSliderOverlayShape(overlayRadius: 25.0),
  ),
  snackBarTheme: SnackBarThemeData(
    backgroundColor: white..withOpacity(0.8),
    actionTextColor: blue,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    contentTextStyle: bodyLarge,
  ),
  tabBarTheme: TabBarThemeData(
    indicator: const UnderlineTabIndicator(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(4.0), topRight: Radius.circular(4.0)),
      borderSide: BorderSide(width: 5.0, color: defaultColor),
      insets: EdgeInsets.symmetric(horizontal: 16.0)
    ),
    indicatorSize: TabBarIndicatorSize.tab,
    labelColor: black,
    indicatorColor: defaultColor,
    overlayColor: WidgetStateProperty.all(transparent),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      overlayColor: WidgetStateColor.resolveWith((states) => transparent),
      backgroundColor: WidgetStateProperty.all(transparent),
      textStyle: WidgetStateProperty.all(labelLarge..copyWith(color: blue)),
    ),
  ),
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: defaultColor,
    selectionHandleColor: defaultColor,
    selectionColor: defaultColorLighter,
  ),
  textTheme: TextTheme(
    displayLarge: displayLarge,
    displayMedium: displayMedium,
    displaySmall: displaySmall,
    headlineLarge: headlineLarge,
    headlineMedium: headlineMedium,
    headlineSmall: headlineSmall,
    titleLarge: titleLarge,
    titleMedium: titleMedium,
    titleSmall: titleSmall,
    bodyLarge: bodyLarge,
    bodyMedium: bodyMedium,
    bodySmall: bodySmall,
    labelLarge: labelLarge,
    labelMedium: labelMedium,
    labelSmall: labelSmall,
  ),
  tooltipTheme: TooltipThemeData(
    preferBelow: true, 
    textStyle: labelSmall, 
    decoration: BoxDecoration(
      color: whiteSmokeLighter,
      borderRadius: BorderRadius.circular(10.0)
    ),
    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
    margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0), 
    excludeFromSemantics: false,
  )
);