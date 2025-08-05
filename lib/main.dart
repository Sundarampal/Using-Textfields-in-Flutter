import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: EditableTextExample());
  }
}

class EditableTextExample extends StatefulWidget {
  const EditableTextExample({super.key});

  @override
  State<EditableTextExample> createState() => _EditableTextExampleState();
}

class _EditableTextExampleState extends State<EditableTextExample> {
  int n1 = 0, n2 = 0, n3 = 0;
  int result = 0;

  void addNumbers() {
    setState(() {
      result = n1 + n2 + n3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('calculate number'), centerTitle: true),
      body: Column(
        children: [
          TextField(
            keyboardType: TextInputType.number,
            onChanged: (value) {
              setState(() {
                n1 = int.tryParse(value) ?? 0;
              });
            },
          ),
          TextField(
            keyboardType: TextInputType.number,
            onChanged: (value) {
              setState(() {
                n2 = int.tryParse(value) ?? 0;
              });
            },
          ),
          TextField(
            keyboardType: TextInputType.number,
            onChanged: (value) {
              setState(() {
                n3 = int.tryParse(value) ?? 0;
              });
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(onPressed: addNumbers, child: Text("Add")),
          SizedBox(height: 20),
          Text('Result: $result'),
        ],
      ),
    );
  }
}
