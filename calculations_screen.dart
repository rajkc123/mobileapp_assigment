// screens/arithmetic_screen.dart

import 'package:flutter/material.dart';

class CalculationsScreen extends StatefulWidget {
  const CalculationsScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CalculationsScreenState createState() => _CalculationsScreenState();
}

class _CalculationsScreenState extends State<CalculationsScreen> {
  final TextEditingController firstNumberController = TextEditingController();
  final TextEditingController secondNumberController = TextEditingController();
  String operation = 'Add';
  double result = 0.0;

  void calculate() {
    double firstNumber = double.tryParse(firstNumberController.text) ?? 0.0;
    double secondNumber = double.tryParse(secondNumberController.text) ?? 0.0;

    switch (operation) {
      case 'Add':
        result = firstNumber + secondNumber;
        break;
      case 'Subtract':
        result = firstNumber - secondNumber;
        break;
      case 'Multiply':
        result = firstNumber * secondNumber;
        break;
      case 'Divide':
        result = firstNumber / secondNumber;
        break;
      default:
        result = 0.0;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Arithmetic_Raj_KC'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: firstNumberController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'First Number'),
            ),
            TextField(
              controller: secondNumberController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Second Number'),
            ),
            SizedBox(height: 10),
            Text('Select Operation:'),
            Column(
              children: [
                Radio(
                  value: 'Add',
                  groupValue: operation,
                  onChanged: (value) {
                    setState(() {
                      operation = value.toString();
                    });
                  },
                ),
                Text('Add'),
                Radio(
                  value: 'Subtract',
                  groupValue: operation,
                  onChanged: (value) {
                    setState(() {
                      operation = value.toString();
                    });
                  },
                ),
                Text('Subtract'),
                Radio(
                  value: 'Multiply',
                  groupValue: operation,
                  onChanged: (value) {
                    setState(() {
                      operation = value.toString();
                    });
                  },
                ),
                Text('Multiply'),
                Radio(
                  value: 'Divide',
                  groupValue: operation,
                  onChanged: (value) {
                    setState(() {
                      operation = value.toString();
                    });
                  },
                ),
                Text('Divide'),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculate,
              child: Text('Calculate'),
            ),
            SizedBox(height: 20),
            Text(
              'Result: $result',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
