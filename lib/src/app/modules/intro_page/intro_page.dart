import 'package:app_sis/src/app/components/standard_button.dart';
import 'package:app_sis/src/app/utils/export.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: PaddingSizes.introPageBorder,
          right: PaddingSizes.introPageBorder,
          top: PaddingSizes.introPageTop,
        ),
        child: Column(
          children: [
            Image.asset('assets/images/logo.png'),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(eMail),
              ),
            ),
            const SizedBox(height: 15.0),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(password),
              ),
            ),
            const SizedBox(height: 15.0),
            StandardButtonWidget(
              buttonText: login,
              onPressed: () {},
            ),
            const SizedBox(height: 15.0),
            StandardButtonWidget(
              buttonText: password,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
