// Copyright (c) 2022 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor








import 'package:flutter/material.dart';
import '../../global_fields/fields.dart';

ThemeData darkTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: black,
    elevation: 0.0,
    toolbarHeight: tbh,
  ),
  brightness: Brightness.dark,
  bottomAppBarTheme: BottomAppBarTheme(
    color: black..withOpacity(0.8),
    elevation: 0.0,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: black,
    elevation: 0.0,
    selectedIconTheme: const IconThemeData(
      color: defaultColor,
      size: 26.0,
    ),
    unselectedIconTheme: const IconThemeData(
      color: white,
      size: 26.0,
    ),
    selectedItemColor: defaultColor,
    unselectedItemColor: white,
    selectedLabelStyle: labelLarge.copyWith(color: defaultColor),
    unselectedLabelStyle: labelLarge.copyWith(color: white),
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
  cardColor: black..withOpacity(0.8),
  canvasColor: monaiki,
  cardTheme: CardThemeData(
    color: black,
    elevation: 0.0,
    shadowColor: white..withOpacity(0.5),
    shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(15.0), side: const BorderSide(color: black, width: 5.0)),
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor: WidgetStateProperty.all(transparent),
    checkColor: WidgetStateProperty.all(defaultColor),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(6.0),
    ),
    side: const BorderSide(
      width: 0.5,
      color: white,
    ),
  ),  
  dividerColor: monaiki,
  dividerTheme: const DividerThemeData(
    color: whiteSmokeLighter,
    space: 10.0,
    thickness: 10.0,
  ),
  dialogBackgroundColor: black,
  dialogTheme: DialogThemeData(
    backgroundColor: black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    titleTextStyle: titleLarge,
    contentTextStyle: bodyLarge,
    alignment: Alignment.center,
    elevation: 10.0,
  ),
  disabledColor: grey..withOpacity(0.7),
  dropdownMenuTheme: DropdownMenuThemeData(
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: bodyLarge.copyWith(color: white),
      floatingLabelStyle: labelLarge.copyWith(color: white),
      helperStyle: labelLarge.copyWith(color: white54),
      hintStyle: labelLarge.copyWith(color: white54),
      errorStyle: labelMedium.copyWith(color: red),
      iconColor: defaultColor,
      prefixStyle: labelMedium,
      prefixIconColor: defaultColor,
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
          color: white,
          width: 1.0,
        ),
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(defaultColor),
      shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))),
      elevation: WidgetStateProperty.all(0.0),
      side: WidgetStateProperty.all(const BorderSide(color: defaultColor, width: 0.5)),
      textStyle: WidgetStateProperty.all(bodyLarge),
      animationDuration: const Duration(milliseconds: 60),
    ),
  ),
  // floatingActionButtonTheme: FloatingActionButtonThemeData(), For mobile devices
  hoverColor: monaiki,
  hintColor: white54,
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: bodyLarge.copyWith(color: white),
    floatingLabelStyle: labelLarge.copyWith(color: white),
    helperStyle: labelLarge.copyWith(color: white54),
    hintStyle: labelLarge.copyWith(color: white54),
    errorStyle: labelMedium.copyWith(color: red),
    iconColor: defaultColor,
    prefixStyle: labelMedium,
    prefixIconColor: defaultColor,
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
        color: white,
        width: 1.0,
      ),
    ),
  ),
  iconTheme: const IconThemeData(
    color: white,
    size: 10.0,
  ),
  listTileTheme: ListTileThemeData(
    tileColor: transparent,
    selectedColor: defaultColor,
    shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(7.0)),  
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: defaultColor,
    linearTrackColor: transparent,
    circularTrackColor: transparent,
    refreshBackgroundColor: transparent,
  ),  
  primaryColor: black,
  primaryColorLight: monaikiLighter,
  primaryColorDark: monaiki,
  primaryIconTheme: const IconThemeData(
    color: white,
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
  scaffoldBackgroundColor: monaiki,
  switchTheme: SwitchThemeData(
    thumbColor: WidgetStateProperty.all(defaultColor),
    trackColor: WidgetStateProperty.all(defaultColorLighter),
  ),
  sliderTheme: const SliderThemeData(
    activeTrackColor: defaultColor,
    inactiveTrackColor: monaiki,
    trackShape: RectangularSliderTrackShape(),
    trackHeight: 4.0,
    thumbColor: defaultColor,
    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
    overlayColor: defaultColorLighter,
    overlayShape: RoundSliderOverlayShape(overlayRadius: 25.0),
  ),
  snackBarTheme: SnackBarThemeData(
    backgroundColor: black..withOpacity(0.8),
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
    labelColor: white,
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
    displayLarge: displayLarge..copyWith(color: Colors.white70),
    displayMedium: displayMedium..copyWith(color: Colors.white70),
    displaySmall: displaySmall..copyWith(color: Colors.white70),
    headlineLarge: headlineLarge..copyWith(color: Colors.white70),
    headlineMedium: headlineMedium..copyWith(color: Colors.white70),
    headlineSmall: headlineSmall..copyWith(color: white),
    titleLarge: titleLarge..copyWith(color: white),
    titleMedium: titleMedium..copyWith(color: white),
    titleSmall: titleSmall..copyWith(color: white),
    bodyLarge: bodyLarge..copyWith(color: white),
    bodyMedium: bodyMedium..copyWith(color: white),
    bodySmall: bodySmall..copyWith(color: Colors.white70),
    labelLarge: labelLarge..copyWith(color: white),
    labelMedium: labelMedium..copyWith(color: white),
    labelSmall: labelSmall..copyWith(color: white),
  ),
  tooltipTheme: TooltipThemeData(
    preferBelow: true, 
    textStyle: labelSmall, 
    decoration: BoxDecoration(
      color: whiteSmokeLighter,
      borderRadius: BorderRadius.circular(10.0)
    ),
    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
    margin: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 8.0), 
    excludeFromSemantics: false,
  )
);