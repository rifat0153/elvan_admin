import 'package:elvan_admin/features/auth/ui/screens/desktop/desktop_login_screen.dart';
import 'package:elvan_admin/features/auth/ui/screens/desktop/mobile_login_screen.dart';
import 'package:elvan_admin/shared/components/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const ResponsiveLayout(
        mobile: MobileLoginScreen(),
        tablet: DesktopLoginScreen(),
        desktop: DesktopLoginScreen(),
        smallMobile: MobileLoginScreen());
  }
}
