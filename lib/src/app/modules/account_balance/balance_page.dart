import 'package:app_sis/src/app/components/standard_button.dart';
import 'package:app_sis/src/app/components/standard_card.dart';
import 'package:app_sis/src/app/components/standard_page.dart';
import 'package:app_sis/src/app/components/standard_text_form.dart';
import 'package:flutter/material.dart';

class BalancePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BalancePageState();
  }
}

class _BalancePageState extends State<BalancePage> {
  TextEditingController monthlyIncomeController = TextEditingController();

  double initialValue = 0.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  presentMonthlyIncome({required String value}) {
    setState(
      () {
        initialValue = double.parse(value);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return StandardPage(
      pageTitle: 'Saldo',
      body: Column(
        children: [
          StandardTextForm(
            userInputController: monthlyIncomeController,
            onEditingComplete: () {
              presentMonthlyIncome(value: monthlyIncomeController.text);
            },
            label: 'Entrada do mês:',
          ),
          SizedBox(height: 20),
          StandardCard(
            leftText: 'R\$',
            rightText: initialValue.toString(),
          ),
          SizedBox(
            height: 20,
          ),
          StandardButton(
            buttonText: 'Limpar',
            onPressed: () {
              presentMonthlyIncome(value: initialValue.toString());
            },
          )
        ],
      ),
    );
  }
}
