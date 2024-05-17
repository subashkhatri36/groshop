import 'package:flutter/material.dart';
import 'package:groshop/cores/components/groshop_page.dart';
import 'package:groshop/cores/components/navigation_menu.dart';
import 'package:groshop/features/navpage/pages/cart_page.dart';
import 'package:groshop/features/navpage/pages/checkout_page.dart';
import 'package:groshop/features/navpage/pages/favorite_page.dart';
import 'package:groshop/features/navpage/pages/home_page.dart';
import 'package:groshop/features/navpage/pages/payment_page.dart';
import 'package:groshop/features/navpage/pages/payment_successful_page.dart';
import 'package:groshop/features/navpage/pages/pin_enter_page.dart';
import 'package:groshop/features/navpage/pages/profile_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int navIndex = 0;
  int cartProgressIndex = -1;

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const HomePage(),
      FavoritePage(
        backIconClick: () {
          navIndex = 0;
          setState(() {});
        },
      ),
      CartPage(
        backIconClick: () {
          navIndex = 0;
          cartProgressIndex = -1;
          setState(() {});
        },
        onPressed: () {
          cartProgressIndex = 0;
          setState(() {});
        },
        label: 'Book Now',
      ),
      ProfilePage(
        backIconClick: () {
          navIndex = 0;
          setState(() {});
        },
      ),
    ];

    List<Widget> cartProgressPages = [
      CheckoutPage(
        backIconClick: () {
          cartProgressIndex = -1;
          setState(() {});
        },
        onPressed: () {
          cartProgressIndex = 1;
          setState(() {});
        },
        label: 'Proceed to Pay',
      ),
      PaymentPage(
        backIconClick: () {
          cartProgressIndex = 0;
          setState(() {});
        },
        onPressed: () {
          cartProgressIndex = 2;
          setState(() {});
        },
        label: 'Pay Now',
      ),
      PinEnterPage(
          backIconClick: () {
            cartProgressIndex = 1;
            setState(() {});
          },
          onPressed: () {
            cartProgressIndex = 3;
            setState(() {});
          },
          label: 'ENTER'),
      PaymentSuccessfulPage(
        backIconClick: () {
          cartProgressIndex = -1;
          navIndex = 0;
          setState(() {});
        },
        onPressed: () {
          navIndex = 0;
          cartProgressIndex = -1;
          setState(() {});
        },
      ),
    ];

    return GroshopPage(Column(
      children: [
        Expanded(
            child: navIndex == 2 && cartProgressIndex != -1
                ? cartProgressPages[cartProgressIndex]
                : pages[navIndex]),
        NavigationMenu(
          currentPostionSelect: navIndex,
          position: (int current) {
            navIndex = current;
            setState(() {});
          },
        ),
      ],
    ));
  }
}
