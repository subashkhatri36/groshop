import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:groshop/features/login/login_page.dart';
import 'package:groshop/features/navpage/navigation_page.dart';
import 'package:groshop/features/product_detail/product_detail_page.dart';
import 'package:groshop/features/signup/signup_page.dart';
import 'package:groshop/features/signup/signup_successful_page.dart';
import 'package:groshop/features/start_page/start_page.dart';
import 'package:groshop/router/router_path.dart';

final routerConfig = GoRouter(routes: [
  GoRoute(
      path: loginPath,
      builder: (BuildContext context, sate) {
        return const LoginPage();
      }),
  GoRoute(
      path: signUpPath,
      builder: (BuildContext context, sate) {
        return const SignupPage();
      }),
  GoRoute(
      path: signUpSuccessfulPath,
      builder: (BuildContext context, sate) {
        return const SingUpSuccessfulPage();
      }),
  GoRoute(
      path: startPagePath,
      builder: (BuildContext context, sate) {
        return const StartPage();
      }),
  GoRoute(
      path: navPath,
      builder: (BuildContext context, sate) {
        return const NavigationPage();
      }),
  GoRoute(
      path: productDetailPagepath,
      builder: (BuildContext context, sate) {
        return const ProductDetailPage();
      }),
]);
