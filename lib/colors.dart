import 'package:flutter/material.dart';

const Color tdRed = Color(0xFFDA4040);
const Color tdBlue = Color.fromARGB(255, 12, 105, 219);

const Color tdBlack = Color(0xFF3A3A3A);
const Color tdGrey = Color(0xFF717171);

const Color tdBGColor = Color(0xFFEEEFF5);

// 
// class MaterialTheme {

//   final TextTheme textTheme;
//     const MaterialTheme(this.textTheme);

//   static MaterialScheme lightScheme() {
//     return const MaterialScheme(
//       brightness: Brightness.light,
//       primary: Color(4280051078),
//       surfaceTint: Color(4280051078),
//       onPrimary: Color(4294967295),
//       primaryContainer: Color(4291094527),
//       onPrimaryContainer: Color(4278197804),
//       secondary: Color(4280771465),
//       onSecondary: Color(4294967295),
//       secondaryContainer: Color(4291421951),
//       onSecondaryContainer: Color(4278197807),
//       tertiary: Color(4284504701),
//       onTertiary: Color(4294967295),
//       tertiaryContainer: Color(4293320447),
//       onTertiaryContainer: Color(4280096566),
//       error: Color(4290386458),
//       onError: Color(4294967295),
//       errorContainer: Color(4294957782),
//       onErrorContainer: Color(4282449922),
//       background: Color(4294376190),
//       onBackground: Color(4279770143),
//       surface: Color(4294376190),
//       onSurface: Color(4279770143),
//       surfaceVariant: Color(4292666345),
//       onSurfaceVariant: Color(4282468429),
//       outline: Color(4285626493),
//       outlineVariant: Color(4290824141),
//       shadow: Color(4278190080),
//       scrim: Color(4278190080),
//       inverseSurface: Color(4281086260),
//       inverseOnSurface: Color(4293784053),
//       inversePrimary: Color(4287680243),
//       primaryFixed: Color(4291094527),
//       onPrimaryFixed: Color(4278197804),
//       primaryFixedDim: Color(4287680243),
//       onPrimaryFixedVariant: Color(4278209641),
//       secondaryFixed: Color(4291421951),
//       onSecondaryFixed: Color(4278197807),
//       secondaryFixedDim: Color(4288007671),
//       onSecondaryFixedVariant: Color(4278209391),
//       tertiaryFixed: Color(4293320447),
//       onTertiaryFixed: Color(4280096566),
//       tertiaryFixedDim: Color(4291477993),
//       onTertiaryFixedVariant: Color(4282991204),
//       surfaceDim: Color(4292270815),
//       surfaceBright: Color(4294376190),
//       surfaceContainerLowest: Color(4294967295),
//       surfaceContainerLow: Color(4293981432),
//       surfaceContainer: Color(4293586675),
//       surfaceContainerHigh: Color(4293257453),
//       surfaceContainerHighest: Color(4292862951),
//     );
//   }

//   ThemeData light() {
//     return theme(lightScheme().toColorScheme());
//   }

  
//   static MaterialTheme darkScheme() {
//     return const MaterialTheme(
//       'brightness': Brightness.dark,
//       'surfaceTint': Color(4287680243),
//       'primary': Color(4287680243),
//       'onPrimary': Color(4278203721),
//       'primaryContainer': Color(4278209641),
//       'onPrimaryContainer': Color(4291094527),
//       'secondary': Color(4288007671),
//       'onSecondary': Color(4278203470),
//       'secondaryContainer': Color(4278209391),
//       'onSecondaryContainer': Color(4291421951),
//       'tertiary': Color(4291477993),
//       'onTertiary': Color(4281478220),
//       'tertiaryContainer': Color(4282991204),
//       'onTertiaryContainer': Color(4293320447),
//       'error': Color(4294948011),
//       'onError': Color(4285071365),
//       'errorContainer': Color(4287823882),
//       'onErrorContainer': Color(4294957782),
//       'background': Color(4279178263),
//       'onBackground': Color(4292862951),
//       'surface': Color(4279178263),
//       'onSurface': Color(4292862951),
//       'surfaceVariant': Color(4282468429),
//       'onSurfaceVariant': Color(4290824141),
//       'outline': Color(4287337111),
//       'outlineVariant': Color(4282468429),
//       'shadow': Color(4278190080),
//       'scrim': Color(4278190080),
//       'inverseSurface': Color(4292862951),
//       'inverseOnSurface': Color(4281086260),
//       'inversePrimary': Color(4280051078),
//       'primaryFixed': Color(4291094527),
//       'onPrimaryFixed': Color(4278197804),
//       'primaryFixedDim': Color(4287680243),
//       'onPrimaryFixedVariant': Color(4278209641),
//       'secondaryFixed': Color(4291421951),
//       'onSecondaryFixed': Color(4278197807),
//       'secondaryFixedDim': Color(4288007671),
//       'onSecondaryFixedVariant': Color(4278209391),
//       'tertiaryFixed': Color(4293320447),
//       'onTertiaryFixed': Color(4280096566),
//       'tertiaryFixedDim': Color(4291477993),
//       'onTertiaryFixedVariant': Color(4282991204),
//       'surfaceDim': Color(4279178263),
//       'surfaceBright': Color(4281678397),
//       'surfaceContainerLowest': Color(4278849298),
//       'surfaceContainerLow': Color(4279770143),
//       'surfaceContainer': Color(4280033315),
//       'surfaceContainerHigh': Color(4280691502),
//       'surfaceContainerHighest': Color(4281414969),
//     );
//   }

//   ThemeData dark() {
//     return theme(darkScheme().toColorScheme());
//   }
// }