import 'package:app_sis/src/app/components/standard_button.dart';
import 'package:app_sis/src/app/components/standard_card.dart';
import 'package:app_sis/src/app/components/standard_page.dart';
import 'package:app_sis/src/app/components/standard_text_form.dart';
import 'package:app_sis/src/app/model/transaction_model.dart';
import 'package:flutter/material.dart';

class TransactionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TransactionPageState();
  }
}

class _TransactionPageState extends State<TransactionPage> {
  TextEditingController transactionNameController = TextEditingController();
  TextEditingController transactionValueController = TextEditingController();
  FocusNode transacationNameFocus = FocusNode();
  FocusNode transacationValueFocus = FocusNode();

  addNewTransaction(
      {required String? transactionName, required String transactionValue}) {
    setState(() {
      transactionList.insert(
        0,
        TransactionModel(
            transactionName: transactionName,
            transactionValue: num.parse(transactionValue)),
      );
    });
  }

  Future<void> _showDialog(
      {required String? transactionName,
      required String transactionValue}) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(title: Text(transactionName.toString()),);
      },
    );
  }

  List<TransactionModel> transactionList = [
    TransactionModel(transactionName: 'Café com o @', transactionValue: 50.0),
    TransactionModel(
        transactionName: 'Multa por velocidade', transactionValue: 150.0),
    TransactionModel(transactionName: 'Chocolate', transactionValue: 15),
    TransactionModel(transactionName: 'Netflix', transactionValue: 55),
    TransactionModel(transactionName: 'Coca-cola', transactionValue: 7),
    TransactionModel(transactionName: 'Café com o @', transactionValue: 50.0),
    TransactionModel(
        transactionName: 'Multa por velocidade', transactionValue: 150.0),
    TransactionModel(transactionName: 'Chocolate', transactionValue: 15),
    TransactionModel(transactionName: 'Netflix', transactionValue: 55),
    TransactionModel(transactionName: 'Coca-cola', transactionValue: 7),
    TransactionModel(transactionName: 'Café com o @', transactionValue: 50.0),
    TransactionModel(
        transactionName: 'Multa por velocidade', transactionValue: 150.0),
    TransactionModel(transactionName: 'Chocolate', transactionValue: 15),
    TransactionModel(transactionName: 'Netflix', transactionValue: 55),
    TransactionModel(transactionName: 'Coca-cola', transactionValue: 7),
  ];

  @override
  Widget build(BuildContext context) {
    return StandardPage(
      pageTitle: 'Extrato',
      body: SingleChildScrollView(
        child: Column(
          children: [
            StandardTextForm(
              focusNode: transacationNameFocus,
              label: 'Nome da transação:',
              userInputController: transactionNameController,
              onEditingComplete: () {
                transacationValueFocus.nextFocus();
              },
            ),
            const SizedBox(height: 5),
            StandardTextForm(
              focusNode: transacationValueFocus,
              label: 'Valor da transação:',
              userInputController: transactionValueController,
            ),
            const SizedBox(height: 5),
            StandardButton(
              buttonText: 'Adicionar transação',
              onPressed: () {
                addNewTransaction(
                  transactionName: transactionNameController.text,
                  transactionValue: transactionValueController.text,
                );
              },
            ),
            const SizedBox(height: 5),
            ListView.separated(
              shrinkWrap: true,
              itemCount: transactionList.length,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 5.0,
                );
              },
              itemBuilder: ((context, index) {
                var transactionItem = transactionList[index];
                return MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: (() {
                      _showDialog(
                        transactionName: transactionItem.transactionName,
                        transactionValue: transactionItem.transactionValue.toString(),
                      );
                    }),
                    child: StandardCard(
                      leftText: transactionItem.transactionName,
                      rightText: 'R\$${transactionItem.transactionValue}',
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
