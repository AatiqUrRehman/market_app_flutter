import 'package:flutter/material.dart';
import 'package:nui_user/components/introduction/introduction_screen.dart';
import 'package:nui_user/screens/Auth/login_screen.dart';
import 'package:nui_user/screens/Auth/phone_verification_screen.dart';
import 'package:nui_user/screens/Auth/sign_up_screen.dart';
import 'package:nui_user/screens/Auth/to_auth_user_screen.dart';
import 'package:nui_user/screens/budget/add_budget_screen.dart';
import 'package:nui_user/screens/help/help_category_screen.dart';
import 'package:nui_user/screens/products/product_screen.dart';
import 'package:nui_user/screens/products/user_cart.dart';
import 'package:nui_user/screens/profile/user_profile.dart';
import 'package:nui_user/screens/supermarkets/supermarket_detail_screen.dart';
import 'package:nui_user/screens/supermarkets/supermarkets_list_screen.dart';
import 'package:nui_user/screens/profile/edit_user_profile.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => ToAuthUserScreen());

      case '/login':
        return MaterialPageRoute(builder: (_) => LoginScreen());

      case '/register':
        return MaterialPageRoute(builder: (_) => SignUpScreen());

      case '/phone_verfication':
        return MaterialPageRoute(builder: (_) => PhoneVerificationScreen());

      case '/create_budget':
        return MaterialPageRoute(builder: (_) => CreateBudgetScreen());

      case '/market_list':
        return MaterialPageRoute(builder: (_) => SupermarketsList());

      case '/market_details':
        return MaterialPageRoute(builder: (_) => SuperMarketDetailScreen());

      case '/market_details':
        return MaterialPageRoute(builder: (_) => SuperMarketDetailScreen());

      case '/product_screens':
        return MaterialPageRoute(builder: (_) => ProductScreen());

      case '/user_profile_scsreen':
        return MaterialPageRoute(builder: (_) => UserProfile());

      case '/edit_user_profile':
        return MaterialPageRoute(builder: (_) => EditProfileScreen());

      case '/help':
        return MaterialPageRoute(builder: (_) => HelpCategoryScreen());

      case '/cart':
        return MaterialPageRoute(builder: (_) => UserCart());

        return _errorRoute();
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
