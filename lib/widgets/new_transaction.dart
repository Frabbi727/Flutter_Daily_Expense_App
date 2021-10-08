import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  // const NewTransaction({Key? key}) : super(key: key);
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTx;
  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              // onChanged: (val) {
              //   titleInput = val;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              // onChanged: (val) {
              //   amountInput = val;
              // },
            ),
            TextButton(
              // style: TextButton.styleFrom(backgroundColor: Colors.red),

              onPressed: () {
                print(titleController.text);
                print(amountController.text);
                addTx(titleController.text, double.parse(amountController.text));
                
              },
              child: Text(
                'Add Trensaction',
                style: TextStyle(color: Colors.purple),
              ),
            )
          ],
        ),
      ),
    );
  }
}
