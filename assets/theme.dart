import "package:flutter/material.dart";

// class PlanTheme  {
  
// final TextTheme textTheme ="";
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

  
//   static MaterialScheme darkScheme() {
//     return const MaterialScheme(
//       brightness: Brightness.dark,
//       primary: Color(4287680243),
//       surfaceTint: Color(4287680243),
//       onPrimary: Color(4278203721),
//       primaryContainer: Color(4278209641),
//       onPrimaryContainer: Color(4291094527),
//       secondary: Color(4288007671),
//       onSecondary: Color(4278203470),
//       secondaryContainer: Color(4278209391),
//       onSecondaryContainer: Color(4291421951),
//       tertiary: Color(4291477993),
//       onTertiary: Color(4281478220),
//       tertiaryContainer: Color(4282991204),
//       onTertiaryContainer: Color(4293320447),
//       error: Color(4294948011),
//       onError: Color(4285071365),
//       errorContainer: Color(4287823882),
//       onErrorContainer: Color(4294957782),
//       background: Color(4279178263),
//       onBackground: Color(4292862951),
//       surface: Color(4279178263),
//       onSurface: Color(4292862951),
//       surfaceVariant: Color(4282468429),
//       onSurfaceVariant: Color(4290824141),
//       outline: Color(4287337111),
//       outlineVariant: Color(4282468429),
//       shadow: Color(4278190080),
//       scrim: Color(4278190080),
//       inverseSurface: Color(4292862951),
//       inverseOnSurface: Color(4281086260),
//       inversePrimary: Color(4280051078),
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
//       surfaceDim: Color(4279178263),
//       surfaceBright: Color(4281678397),
//       surfaceContainerLowest: Color(4278849298),
//       surfaceContainerLow: Color(4279770143),
//       surfaceContainer: Color(4280033315),
//       surfaceContainerHigh: Color(4280691502),
//       surfaceContainerHighest: Color(4281414969),
//     );
//   }

//   ThemeData dark() {
//     return theme(darkScheme().toColorScheme());
//   }

//   static MaterialScheme lightMediumContrastScheme() {
//     return const MaterialScheme(
//       brightness: Brightness.light,
//       primary: Color(4278208611),
//       surfaceTint: Color(4280051078),
//       onPrimary: Color(4294967295),
//       primaryContainer: Color(4281957277),
//       onPrimaryContainer: Color(4294967295),
//       secondary: Color(4278208361),
//       onSecondary: Color(4294967295),
//       secondaryContainer: Color(4282481313),
//       onSecondaryContainer: Color(4294967295),
//       tertiary: Color(4282728031),
//       onTertiary: Color(4294967295),
//       tertiaryContainer: Color(4286017684),
//       onTertiaryContainer: Color(4294967295),
//       error: Color(4287365129),
//       onError: Color(4294967295),
//       errorContainer: Color(4292490286),
//       onErrorContainer: Color(4294967295),
//       background: Color(4294376190),
//       onBackground: Color(4279770143),
//       surface: Color(4294376190),
//       onSurface: Color(4279770143),
//       surfaceVariant: Color(4292666345),
//       onSurfaceVariant: Color(4282205257),
//       outline: Color(4284047461),
//       outlineVariant: Color(4285889665),
//       shadow: Color(4278190080),
//       scrim: Color(4278190080),
//       inverseSurface: Color(4281086260),
//       inverseOnSurface: Color(4293784053),
//       inversePrimary: Color(4287680243),
//       primaryFixed: Color(4281957277),
//       onPrimaryFixed: Color(4294967295),
//       primaryFixedDim: Color(4279788163),
//       onPrimaryFixedVariant: Color(4294967295),
//       secondaryFixed: Color(4282481313),
//       onSecondaryFixed: Color(4294967295),
//       secondaryFixedDim: Color(4280508807),
//       onSecondaryFixedVariant: Color(4294967295),
//       tertiaryFixed: Color(4286017684),
//       onTertiaryFixed: Color(4294967295),
//       tertiaryFixedDim: Color(4284372858),
//       onTertiaryFixedVariant: Color(4294967295),
//       surfaceDim: Color(4292270815),
//       surfaceBright: Color(4294376190),
//       surfaceContainerLowest: Color(4294967295),
//       surfaceContainerLow: Color(4293981432),
//       surfaceContainer: Color(4293586675),
//       surfaceContainerHigh: Color(4293257453),
//       surfaceContainerHighest: Color(4292862951),
//     );
//   }

//   ThemeData lightMediumContrast() {
//     return theme(lightMediumContrastScheme().toColorScheme());
//   }

//   static MaterialScheme lightHighContrastScheme() {
//     return const MaterialScheme(
//       brightness: Brightness.light,
//       primary: Color(4278199606),
//       surfaceTint: Color(4280051078),
//       onPrimary: Color(4294967295),
//       primaryContainer: Color(4278208611),
//       onPrimaryContainer: Color(4294967295),
//       secondary: Color(4278199609),
//       onSecondary: Color(4294967295),
//       secondaryContainer: Color(4278208361),
//       onSecondaryContainer: Color(4294967295),
//       tertiary: Color(4280491581),
//       onTertiary: Color(4294967295),
//       tertiaryContainer: Color(4282728031),
//       onTertiaryContainer: Color(4294967295),
//       error: Color(4283301890),
//       onError: Color(4294967295),
//       errorContainer: Color(4287365129),
//       onErrorContainer: Color(4294967295),
//       background: Color(4294376190),
//       onBackground: Color(4279770143),
//       surface: Color(4294376190),
//       onSurface: Color(4278190080),
//       surfaceVariant: Color(4292666345),
//       onSurfaceVariant: Color(4280165673),
//       outline: Color(4282205257),
//       outlineVariant: Color(4282205257),
//       shadow: Color(4278190080),
//       scrim: Color(4278190080),
//       inverseSurface: Color(4281086260),
//       inverseOnSurface: Color(4294967295),
//       inversePrimary: Color(4292472831),
//       primaryFixed: Color(4278208611),
//       onPrimaryFixed: Color(4294967295),
//       primaryFixedDim: Color(4278202692),
//       onPrimaryFixedVariant: Color(4294967295),
//       secondaryFixed: Color(4278208361),
//       onSecondaryFixed: Color(4294967295),
//       secondaryFixedDim: Color(4278202441),
//       onSecondaryFixedVariant: Color(4294967295),
//       tertiaryFixed: Color(4282728031),
//       onTertiaryFixed: Color(4294967295),
//       tertiaryFixedDim: Color(4281215048),
//       onTertiaryFixedVariant: Color(4294967295),
//       surfaceDim: Color(4292270815),
//       surfaceBright: Color(4294376190),
//       surfaceContainerLowest: Color(4294967295),
//       surfaceContainerLow: Color(4293981432),
//       surfaceContainer: Color(4293586675),
//       surfaceContainerHigh: Color(4293257453),
//       surfaceContainerHighest: Color(4292862951),
//     );
//   }

//   ThemeData lightHighContrast() {
//     return theme(lightHighContrastScheme().toColorScheme());
//   }


//   static MaterialScheme darkMediumContrastScheme() {
//     return const MaterialScheme(
//       brightness: Brightness.dark,
//       primary: Color(4287943672),
//       surfaceTint: Color(4287680243),
//       onPrimary: Color(4278196517),
//       primaryContainer: Color(4283996347),
//       onPrimaryContainer: Color(4278190080),
//       secondary: Color(4288336380),
//       onSecondary: Color(4278196263),
//       secondaryContainer: Color(4284454591),
//       onSecondaryContainer: Color(4278190080),
//       tertiary: Color(4291741166),
//       onTertiary: Color(4279701808),
//       tertiaryContainer: Color(4287925425),
//       onTertiaryContainer: Color(4278190080),
//       error: Color(4294949553),
//       onError: Color(4281794561),
//       errorContainer: Color(4294923337),
//       onErrorContainer: Color(4278190080),
//       background: Color(4279178263),
//       onBackground: Color(4292862951),
//       surface: Color(4279178263),
//       onSurface: Color(4294507519),
//       surfaceVariant: Color(4282468429),
//       onSurfaceVariant: Color(4291153106),
//       outline: Color(4288521386),
//       outlineVariant: Color(4286416010),
//       shadow: Color(4278190080),
//       scrim: Color(4278190080),
//       inverseSurface: Color(4292862951),
//       inverseOnSurface: Color(4280691502),
//       inversePrimary: Color(4278210155),
//       primaryFixed: Color(4291094527),
//       onPrimaryFixed: Color(4278194974),
//       primaryFixedDim: Color(4287680243),
//       onPrimaryFixedVariant: Color(4278205266),
//       secondaryFixed: Color(4291421951),
//       onSecondaryFixed: Color(4278194976),
//       secondaryFixedDim: Color(4288007671),
//       onSecondaryFixedVariant: Color(4278205015),
//       tertiaryFixed: Color(4293320447),
//       onTertiaryFixed: Color(4279372843),
//       tertiaryFixedDim: Color(4291477993),
//       onTertiaryFixedVariant: Color(4281872978),
//       surfaceDim: Color(4279178263),
//       surfaceBright: Color(4281678397),
//       surfaceContainerLowest: Color(4278849298),
//       surfaceContainerLow: Color(4279770143),
//       surfaceContainer: Color(4280033315),
//       surfaceContainerHigh: Color(4280691502),
//       surfaceContainerHighest: Color(4281414969),
//     );
//   }

//   ThemeData darkMediumContrast() {
//     return theme(darkMediumContrastScheme().toColorScheme());
//   }

//   static MaterialScheme darkHighContrastScheme() {
//     return const MaterialScheme(
//       brightness: Brightness.dark,
//       primary: Color(4294507519),
//       surfaceTint: Color(4287680243),
//       onPrimary: Color(4278190080),
//       primaryContainer: Color(4287943672),
//       onPrimaryContainer: Color(4278190080),
//       secondary: Color(4294573055),
//       onSecondary: Color(4278190080),
//       secondaryContainer: Color(4288336380),
//       onSecondaryContainer: Color(4278190080),
//       tertiary: Color(4294900223),
//       onTertiary: Color(4278190080),
//       tertiaryContainer: Color(4291741166),
//       onTertiaryContainer: Color(4278190080),
//       error: Color(4294965753),
//       onError: Color(4278190080),
//       errorContainer: Color(4294949553),
//       onErrorContainer: Color(4278190080),
//       background: Color(4279178263),
//       onBackground: Color(4292862951),
//       surface: Color(4279178263),
//       onSurface: Color(4294967295),
//       surfaceVariant: Color(4282468429),
//       onSurfaceVariant: Color(4294507519),
//       outline: Color(4291153106),
//       outlineVariant: Color(4291153106),
//       shadow: Color(4278190080),
//       scrim: Color(4278190080),
//       inverseSurface: Color(4292862951),
//       inverseOnSurface: Color(4278190080),
//       inversePrimary: Color(4278201921),
//       primaryFixed: Color(4291685375),
//       onPrimaryFixed: Color(4278190080),
//       primaryFixedDim: Color(4287943672),
//       onPrimaryFixedVariant: Color(4278196517),
//       secondaryFixed: Color(4292012799),
//       onSecondaryFixed: Color(4278190080),
//       secondaryFixedDim: Color(4288336380),
//       onSecondaryFixedVariant: Color(4278196263),
//       tertiaryFixed: Color(4293649407),
//       onTertiaryFixed: Color(4278190080),
//       tertiaryFixedDim: Color(4291741166),
//       onTertiaryFixedVariant: Color(4279701808),
//       surfaceDim: Color(4279178263),
//       surfaceBright: Color(4281678397),
//       surfaceContainerLowest: Color(4278849298),
//       surfaceContainerLow: Color(4279770143),
//       surfaceContainer: Color(4280033315),
//       surfaceContainerHigh: Color(4280691502),
//       surfaceContainerHighest: Color(4281414969),
//     );
//   }

//   ThemeData darkHighContrast() {
//     return theme(darkHighContrastScheme().toColorScheme());
//   }


//   ThemeData theme(ColorScheme colorScheme) => ThemeData(
//      useMaterial3: true,
//      brightness: colorScheme.brightness,
//      colorScheme: colorScheme,
//      textTheme: textTheme.apply(
//        bodyColor: colorScheme.onSurface,
//        displayColor: colorScheme.onSurface,
//      ),
//      scaffoldBackgroundColor: colorScheme.background,
//      canvasColor: colorScheme.surface,
//   );


//   List<ExtendedColor> get extendedColors => [
//   ];
// }

// class MaterialScheme {
//   const MaterialScheme({
//     required this.brightness,
//     required this.primary, 
//     required this.surfaceTint, 
//     required this.onPrimary, 
//     required this.primaryContainer, 
//     required this.onPrimaryContainer, 
//     required this.secondary, 
//     required this.onSecondary, 
//     required this.secondaryContainer, 
//     required this.onSecondaryContainer, 
//     required this.tertiary, 
//     required this.onTertiary, 
//     required this.tertiaryContainer, 
//     required this.onTertiaryContainer, 
//     required this.error, 
//     required this.onError, 
//     required this.errorContainer, 
//     required this.onErrorContainer, 
//     required this.background, 
//     required this.onBackground, 
//     required this.surface, 
//     required this.onSurface, 
//     required this.surfaceVariant, 
//     required this.onSurfaceVariant, 
//     required this.outline, 
//     required this.outlineVariant, 
//     required this.shadow, 
//     required this.scrim, 
//     required this.inverseSurface, 
//     required this.inverseOnSurface, 
//     required this.inversePrimary, 
//     required this.primaryFixed, 
//     required this.onPrimaryFixed, 
//     required this.primaryFixedDim, 
//     required this.onPrimaryFixedVariant, 
//     required this.secondaryFixed, 
//     required this.onSecondaryFixed, 
//     required this.secondaryFixedDim, 
//     required this.onSecondaryFixedVariant, 
//     required this.tertiaryFixed, 
//     required this.onTertiaryFixed, 
//     required this.tertiaryFixedDim, 
//     required this.onTertiaryFixedVariant, 
//     required this.surfaceDim, 
//     required this.surfaceBright, 
//     required this.surfaceContainerLowest, 
//     required this.surfaceContainerLow, 
//     required this.surfaceContainer, 
//     required this.surfaceContainerHigh, 
//     required this.surfaceContainerHighest, 
//   });

//   final Brightness brightness;
//   final Color primary;
//   final Color surfaceTint;
//   final Color onPrimary;
//   final Color primaryContainer;
//   final Color onPrimaryContainer;
//   final Color secondary;
//   final Color onSecondary;
//   final Color secondaryContainer;
//   final Color onSecondaryContainer;
//   final Color tertiary;
//   final Color onTertiary;
//   final Color tertiaryContainer;
//   final Color onTertiaryContainer;
//   final Color error;
//   final Color onError;
//   final Color errorContainer;
//   final Color onErrorContainer;
//   final Color background;
//   final Color onBackground;
//   final Color surface;
//   final Color onSurface;
//   final Color surfaceVariant;
//   final Color onSurfaceVariant;
//   final Color outline;
//   final Color outlineVariant;
//   final Color shadow;
//   final Color scrim;
//   final Color inverseSurface;
//   final Color inverseOnSurface;
//   final Color inversePrimary;
//   final Color primaryFixed;
//   final Color onPrimaryFixed;
//   final Color primaryFixedDim;
//   final Color onPrimaryFixedVariant;
//   final Color secondaryFixed;
//   final Color onSecondaryFixed;
//   final Color secondaryFixedDim;
//   final Color onSecondaryFixedVariant;
//   final Color tertiaryFixed;
//   final Color onTertiaryFixed;
//   final Color tertiaryFixedDim;
//   final Color onTertiaryFixedVariant;
//   final Color surfaceDim;
//   final Color surfaceBright;
//   final Color surfaceContainerLowest;
//   final Color surfaceContainerLow;
//   final Color surfaceContainer;
//   final Color surfaceContainerHigh;
//   final Color surfaceContainerHighest;
// }

// extension MaterialSchemeUtils on MaterialScheme {
//   ColorScheme toColorScheme() {
//     return ColorScheme(
//       brightness: brightness,
//       primary: primary,
//       onPrimary: onPrimary,
//       primaryContainer: primaryContainer,
//       onPrimaryContainer: onPrimaryContainer,
//       secondary: secondary,
//       onSecondary: onSecondary,
//       secondaryContainer: secondaryContainer,
//       onSecondaryContainer: onSecondaryContainer,
//       tertiary: tertiary,
//       onTertiary: onTertiary,
//       tertiaryContainer: tertiaryContainer,
//       onTertiaryContainer: onTertiaryContainer,
//       error: error,
//       onError: onError,
//       errorContainer: errorContainer,
//       onErrorContainer: onErrorContainer,
//       background: background,
//       onBackground: onBackground,
//       surface: surface,
//       onSurface: onSurface,
//       surfaceVariant: surfaceVariant,
//       onSurfaceVariant: onSurfaceVariant,
//       outline: outline,
//       outlineVariant: outlineVariant,
//       shadow: shadow,
//       scrim: scrim,
//       inverseSurface: inverseSurface,
//       onInverseSurface: inverseOnSurface,
//       inversePrimary: inversePrimary,
//     );
//   }
// }

// class ExtendedColor {
//   final Color seed, value;
//   final ColorFamily light;
//   final ColorFamily lightHighContrast;
//   final ColorFamily lightMediumContrast;
//   final ColorFamily dark;
//   final ColorFamily darkHighContrast;
//   final ColorFamily darkMediumContrast;

//   const ExtendedColor({
//     required this.seed,
//     required this.value,
//     required this.light,
//     required this.lightHighContrast,
//     required this.lightMediumContrast,
//     required this.dark,
//     required this.darkHighContrast,
//     required this.darkMediumContrast,
//   });
// }

// class ColorFamily {
//   const ColorFamily({
//     required this.color,
//     required this.onColor,
//     required this.colorContainer,
//     required this.onColorContainer,
//   });

//   final Color color;
//   final Color onColor;
//   final Color colorContainer;
//   final Color onColorContainer;
// }
