import 'package:flutter/material.dart';
import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<Transaction> transaction = [
    Transaction(
      title: 'shose',
      id: 't1',
      amount: 69.0,
      date: DateTime.now(),
    ),
    Transaction(
      title: 'bag',
      id: 't2',
      amount: 45.0,
      date: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text('Hello world'),
                elevation: 5,
              ),
            ),
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.red,
                child: Text('This is List'),
                elevation: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
