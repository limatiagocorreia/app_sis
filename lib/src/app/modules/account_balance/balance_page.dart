import 'package:app_sis/src/app/components/standard_card.dart';
import 'package:app_sis/src/app/components/standard_page.dart';
import 'package:app_sis/src/app/components/standard_text_form.dart';
import 'package:flutter/cupertino.dart';

class BalancePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BalancePageState();
  }
}

//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
class _BalancePageState extends State<BalancePage> {
  TextEditingController monthlyIncomeController = TextEditingController();
  String initialValue = '';

  presentMonthlyIncome({required String value}){
    setState(() {
      initialValue = value;
    });
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
            rightText: initialValue,
          )
        ],
      ),
    );
  }
}
