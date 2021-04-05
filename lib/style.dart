import 'package:flutter/material.dart';

const LargeTextSize = 40.0;
const MediumTextSize = 22.0;
const PriceSize = 15.0;
const BodyTextSize = 12.0;

const String FontNameDefault = 'Lora';

const AppBarTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  // fontWeight: FontWeight.normal,
  fontSize: MediumTextSize,
  color: Colors.white,
);

const Headline6TextStyle = TextStyle(
  fontFamily: FontNameDefault,
  // fontWeight: FontWeight.w300,
  fontSize: LargeTextSize,
  color: Colors.black87,
);
const BodyText1TextStyle = TextStyle(
  fontFamily: FontNameDefault,
  // fontWeight: FontWeight.w100,
  fontSize: BodyTextSize,
  color: Colors.black,
);
const PriceTextStyle = TextStyle(
  color: Colors.red,
  fontWeight: FontWeight.w800,
  fontSize: PriceSize,
);

ThemeData theme() {
  return ThemeData(
    appBarTheme: AppBarTheme(
      textTheme: TextTheme(headline6: AppBarTextStyle),
    ),
    textTheme: TextTheme(
      bodyText1: BodyText1TextStyle,
      headline1: Headline6TextStyle,
      headline2: PriceTextStyle,
    ),
  );
}

// ThemeData basicTheme() {
//   TextTheme _basicTextTheme(TextTheme base) {
//     return base.copyWith(
//         headline1: base.headline1.copyWith(
//       fontFamily: 'Lora',
//       fontSize: 22.0,
//       color: Colors.white,
//     ));
//   }

//   final ThemeData base = ThemeData.light();
//   return base.copyWith(
//     textTheme: _basicTextTheme(base.textTheme),
//     primaryColor: Color.fromARGB(255, 255, 158, 184),
//   );
// }
