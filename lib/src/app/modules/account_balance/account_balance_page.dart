import 'package:app_sis/src/app/components/standard_page.dart';
import 'package:flutter/material.dart';

class AccountBalancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardPage(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Valor em conta :   -R\$ 500,20",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25,
              color: Colors.red),
            )
          ],
        ),
      ),
      pageTitle: "Saldo",
    );
  }
}
