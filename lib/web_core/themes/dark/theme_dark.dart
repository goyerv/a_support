// Goyerv Ltd © 2022. All rights reserved








import 'package:flutter/material.dart';
import '../../global_fields/fields.dart';

ThemeData darkTheme = ThemeData(
  appBarTheme: AppBarTheme(
    backgroundColor: black,
    elevation: 0.0,
    toolbarHeight: tbh,
    color: black,
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
  cardTheme: CardTheme(
    color: black,
    elevation: 0.0,
    shadowColor: white..withOpacity(0.5),
    shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(15.0), side: const BorderSide(color: black, width: 5.0)),
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor: MaterialStateProperty.all(transparent),
    checkColor: MaterialStateProperty.all(defaultColor),
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
  dialogTheme: DialogTheme(
    backgroundColor: black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    titleTextStyle: headline1,
    contentTextStyle: bodyText1,
    alignment: Alignment.center,
    elevation: 10.0,
  ),
  disabledColor: grey..withOpacity(0.7),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(defaultColor),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))),
      elevation: MaterialStateProperty.all(0.0),
      side: MaterialStateProperty.all(const BorderSide(color: defaultColor, width: 0.5)),
      textStyle: MaterialStateProperty.all(bodyText1),
      animationDuration: const Duration(milliseconds: 60),
    ),
  ),
  // floatingActionButtonTheme: FloatingActionButtonThemeData(), For mobile devices
  hoverColor: monaiki,
  hintColor: white54,
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: bodyText1.copyWith(color: white),
    floatingLabelStyle: labelLarge.copyWith(color: white),
    helperStyle: labelLarge.copyWith(color: white54),
    hintStyle: labelLarge.copyWith(color: white54),
    errorStyle: labelMedium.copyWith(color: red),
    iconColor: defaultColor,
    prefixStyle: caption,
    prefixIconColor: defaultColor,
    suffixStyle: caption,
    suffixIconColor: defaultColor, 
    filled: false,
    errorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
      borderSide:  BorderSide(
        color: red,
        width: 1.0,
      ),
    ),
    focusedBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
      borderSide:  BorderSide(
        color: defaultColor,
        width: 1.0,
      ),
    ),
    enabledBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
      borderSide:  BorderSide(
        color: black,
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
      backgroundColor: MaterialStateProperty.all(defaultColor),
      textStyle: MaterialStateProperty.all(button.copyWith(color: white)),
      side: MaterialStateProperty.all(const BorderSide(color: defaultColor, width: 0.5)),
    ),
  ),
  radioTheme: RadioThemeData(
    fillColor: MaterialStateProperty.all(defaultColor),
  ),
  scaffoldBackgroundColor: monaiki,
  switchTheme: SwitchThemeData(
    thumbColor: MaterialStateProperty.all(defaultColor),
    trackColor: MaterialStateProperty.all(defaultColorLighter),
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
    actionTextColor: defaultColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    contentTextStyle: bodyText1,
  ),
  scrollbarTheme: ScrollbarThemeData(
    thumbVisibility: MaterialStateProperty.all(true),
    trackVisibility: MaterialStateProperty.all(false),
    thumbColor: MaterialStateProperty.all(defaultColor),
    minThumbLength: 30.0,
    interactive: true,
  ),
  tabBarTheme: const TabBarTheme(
    indicator: BoxDecoration(
      color: defaultColor,
    ),
    indicatorSize: TabBarIndicatorSize.tab,
    labelColor: white,
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      overlayColor: MaterialStateColor.resolveWith((states) => transparent),
      backgroundColor: MaterialStateProperty.all(white),
      textStyle: MaterialStateProperty.all(button..copyWith(color: defaultColor)),
    ),
  ),
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: defaultColor,
    selectionHandleColor: defaultColor,
    selectionColor: defaultColorLighter,
  ),
  textTheme: TextTheme(
    displayLarge: displayLarge..copyWith(color: white),
    displayMedium: displayMedium..copyWith(color: white),
    displaySmall: displaySmall..copyWith(color: white),
    headlineLarge: headlineLarge..copyWith(color: white),
    headlineMedium: headlineMedium..copyWith(color: white),
    headlineSmall: headlineSmall..copyWith(color: white),
    titleLarge: titleLarge..copyWith(color: white),
    titleMedium: titleMedium..copyWith(color: white),
    titleSmall: titleSmall..copyWith(color: white),
    bodyLarge: bodyLarge..copyWith(color: white),
    bodyMedium: bodyMedium..copyWith(color: white),
    bodySmall: bodySmall..copyWith(color: white),
    labelLarge: labelLarge..copyWith(color: white),
    labelMedium: labelMedium..copyWith(color: white),
    labelSmall: labelSmall..copyWith(color: white),
  ),
  
);