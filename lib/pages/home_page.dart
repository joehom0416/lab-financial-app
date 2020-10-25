import 'package:flutter/material.dart';
import 'package:lab_financial_app/customs/new_transaction.dart';
import '../customs/header.dart';
import '../customs/transaction_card.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _height=.55;
  double _opacity=.9;

  void _addTransaction(){
    setState(() {
      _height=.08;
      _opacity=1;
    });
  }

  void done(){
    setState(() {
      _height=.55;
      _opacity=.9;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.short_text),
          onPressed: () {},
        ),
        centerTitle: true,
        title: Text(
          'Personal Finance',
          style: TextStyle(
              fontSize: 16,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person_outline),
            onPressed: () {

            },
          )
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Header(_addTransaction),
              NewTransaction(_opacity, done)
            ],
          ),
          TransactionCard(_height),
        ],
      ),
    );
  }
}
