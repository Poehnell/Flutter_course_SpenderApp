import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final itemController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  void submitData() {
    final enteredItem = itemController.text;
    final enteredAmount = double.parse(amountController.text);

    if(enteredItem.isEmpty || enteredAmount <= 0){
      return;
    }

    addTx(
      enteredItem,
      enteredAmount,
    );
  }

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
              keyboardType: TextInputType.text,
              onSubmitted: (_) => submitData(),
              // onChanged: (val) {
              //   titleInput = val;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount:"),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
              // onChanged: (val) => amountInput = val,
            ),
            FlatButton(
              onPressed: submitData,
              child: Text("Add Transaction"),
              textColor: Colors.deepOrange,
            ),
          ],
        ),
      ),
    );
  }
}
