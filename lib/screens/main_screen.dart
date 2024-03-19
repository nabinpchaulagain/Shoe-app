import 'package:flutter/material.dart';
import 'package:shoeapp/homescreendemo.dart';
import 'package:shoeapp/screens/buttonnavigationbarscreen/addto_cart.dart';
import 'package:shoeapp/screens/buttonnavigationbarscreen/bell_screen.dart';
import 'package:shoeapp/screens/buttonnavigationbarscreen/favourite_screen.dart';

import 'package:shoeapp/screens/buttonnavigationbarscreen/profile_screen.dart';
import 'package:shoeapp/screens/forgot_password_screen/forgotpassword_screen.dart';
import 'package:shoeapp/screens/indexscreen/index_screen.dart';
import 'package:shoeapp/screens/loginscreen/loginscreen.dart';
import 'package:shoeapp/screens/onboardscreen/boardscreen.dart';
import 'package:shoeapp/screens/onboardscreen/onboard1.dart';
import 'package:shoeapp/screens/onboardscreen/onboard2.dart';
import 'package:shoeapp/screens/onboardscreen/onboard3.dart';
import 'package:shoeapp/screens/registerscreen/register_screen.dart';
import 'package:shoeapp/screens/splash_screen/splassh_screen1.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case SplashScreen.routeName:
            return MaterialPageRoute(
                builder: (context) => const SplashScreen());
          case OnBoard.routeName:
            return MaterialPageRoute(builder: (context) => const OnBoard());
          case OnBoard1.routeName:
            return MaterialPageRoute(builder: (context) => const OnBoard1());
          case OnBoard2.routeName:
            return MaterialPageRoute(builder: (context) => const OnBoard2());
          case OnBoard3.routeName:
            return MaterialPageRoute(builder: (context) => const OnBoard3());
          case LoginScreen.routeName:
            return MaterialPageRoute(builder: (context) => const LoginScreen());

          case RegisterScreen.routeName:
            return MaterialPageRoute(
                builder: (context) => const RegisterScreen());
          case ForgotpasswordScreen.routeName:
            return MaterialPageRoute(
                builder: (context) => const ForgotpasswordScreen());
          case IndexScreen.routeName:
            return MaterialPageRoute(builder: (context) => const IndexScreen());
          case HomeScreen.routeName:
            return MaterialPageRoute(builder: (context) => const HomeScreen());
          case FavouriteScreen.routeName:
            return MaterialPageRoute(
                builder: (context) => const FavouriteScreen());
          case BellScreen.routeName:
            return MaterialPageRoute(builder: (_) => const BellScreen());
          case ProfileScreen.routeName:
            return MaterialPageRoute(builder: (_) => const ProfileScreen());
          case AddtoCart.routeName:
            return MaterialPageRoute(builder: (_) => const AddtoCart());
        }
        return null;
      },
    );
  }
}
