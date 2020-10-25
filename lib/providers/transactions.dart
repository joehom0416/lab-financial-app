import 'package:flutter/material.dart';

class Transaction {
  final int id;
  final String title;
  final double value;
  final String category;
  final IconData iconData;
  final Color color;

  Transaction(
      {@required this.id,
      @required this.title,
      @required this.value,
      @required this.category,
      @required this.iconData,
      @required this.color});
}

class Transactions with ChangeNotifier {
  List<Transaction> _transactions = [
    Transaction(
      id:1,
      title:'PC game',
      value: 27.87,
      category: 'Gaming',
      iconData: Icons.gamepad,
      color: Color(0xfff6d784)
    ),
    Transaction(
        id:2,
        title:'Mcd',
        value: 17.00,
        category: 'Meals',
        iconData: Icons.fastfood,
        color: Color(0xfff45694)
    ),
    Transaction(
        id:3,
        title:'Software',
        value: 27.87,
        category: 'Business',
        iconData: Icons.work,
        color: Color(0xff2c1131)
    ),
    Transaction(
        id:4,
        title:'Movie',
        value: 27.87,
        category: 'Entertainment',
        iconData: Icons.casino,
        color: Color(0xff91100)
    ),
    Transaction(
        id:5,
        title:'PC game',
        value: 27.87,
        category: 'Gaming',
        iconData: Icons.gamepad,
        color: Color(0xfff6d784)
    ),
    Transaction(
        id:6,
        title:'PC game',
        value: 27.87,
        category: 'Gaming',
        iconData: Icons.gamepad,
        color: Color(0xfff6d784)
    ),
    Transaction(
        id:7,
        title:'PC game',
        value: 27.87,
        category: 'Gaming',
        iconData: Icons.gamepad,
        color: Color(0xfff6d784)
    ),
    Transaction(
        id:8,
        title:'PC game',
        value: 27.87,
        category: 'Gaming',
        iconData: Icons.gamepad,
        color: Color(0xfff6d784)
    ),
    Transaction(
        id:8,
        title:'PC game',
        value: 27.87,
        category: 'Gaming',
        iconData: Icons.gamepad,
        color: Color(0xfff6d784)
    ),
    Transaction(
        id:9,
        title:'PC game',
        value: 27.87,
        category: 'Gaming',
        iconData: Icons.gamepad,
        color: Color(0xfff6d784)
    ),

  ];

  List<Transaction> get transactions {
    return _transactions;
  }
}
