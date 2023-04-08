import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:money_control/app/core/shared/theme.dart';
import 'package:money_control/app/features/auth/submodules/login/presenter/widgets/logo_widget.dart';

import '../widgets/custom_button_text.dart';
import '../widgets/custom_button_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ThemeColors.backgroundColorLogin,
      body: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [
                  const LogoWidget(),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Get your Money\nUnder Control',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Manage your expenses\nSeamlessly',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white38),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.07,
            ),
            InkWell(
              onTap: () {},
              child: const CustomButtonText(
                color: ThemeColors.buttonTheme,
                title: 'Sign Up with Email ID',
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            InkWell(
              onTap: () {},
              child: CustomButtonWidget(
                color: Colors.white,
                title: 'Sign Up with Google',
                icon: SvgPicture.asset('lib/assets/icons/google.svg'),
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Already have an account? Sign In',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
