import 'package:app_sis/src/app/components/standard_card.dart';
import 'package:app_sis/src/app/components/standard_page.dart';
import 'package:app_sis/src/app/model/transaction_model.dart';
import 'package:flutter/material.dart';

class TransactionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TransactionPageState();
  }
}

class _TransactionPageState extends State<TransactionPage> {
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
                    onTap: (() => print(transactionItem.transactionName)),
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
