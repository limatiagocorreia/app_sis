import 'package:app_sis/src/app/components/standard_button.dart';
import 'package:app_sis/src/app/components/standard_page.dart';
import 'package:app_sis/src/app/modules/account_balance/account_balance_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardPage(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15.0,
            ),
            StandardButton(
              buttonText: "Ver saldo",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => AccountBalancePage()),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      pageTitle: "Home",
    );
  }
}
