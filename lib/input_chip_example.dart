import 'package:flutter/material.dart';

class InputChipExample extends StatefulWidget {
  @override
  _InputChipExampleState createState() => _InputChipExampleState();
}

class _InputChipExampleState extends State<InputChipExample> {
  final controllerInput = TextEditingController();
  final listChips = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Chip'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: controllerInput,
              onSubmitted: (value) {
                setState(() {
                  controllerInput.text = '';
                  listChips.add(value);
                });
              },
              decoration: InputDecoration(
                hintText: 'Input a email',
                isDense: true,
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            Wrap(
              children: listChips.map((e) {
                return InputChip(
                  avatar: CircleAvatar(child: Icon(Icons.account_circle),),
                  label: Text(e),
                  onDeleted: () => setState(() => listChips.remove(e)),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
