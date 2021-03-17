import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final itemController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Item:"),
              controller: itemController,
              // onChanged: (val) {
              //   titleInput = val;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount:"),
              controller: amountController,
              // onChanged: (val) => amountInput = val,
            ),
            FlatButton(
              onPressed: () {
                addTx(
                  itemController.text,
                  double.parse(amountController.text),
                );
              },
              child: Text("Add Transaction"),
              textColor: Colors.deepOrange,
            )
          ],
        ),
      ),
    );
  }
}