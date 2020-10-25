import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/transactions.dart';
import './transaction_item.dart';
import 'package:intl/intl.dart';
class TransactionCard extends StatefulWidget {
  final double height;

  TransactionCard(this.height);

  @override
  _TransactionCardState createState() => _TransactionCardState();
}

class _TransactionCardState extends State<TransactionCard> {
  int _date=16;

  @override
  Widget build(BuildContext context) {
    final mediaQuery=MediaQuery.of(context);
    final providedTransactions=Provider.of<Transactions>(context);

    return Positioned(
      bottom: 0,
      left: mediaQuery.size.width * .03,
      child: AnimatedContainer(
        duration: Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
        width: mediaQuery.size.width * .94,
        height: mediaQuery.size.height * widget.height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          )
        ),
        child: Column(
          children: [

            Container(
              height: 60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top:8, right: 12),
                    child: Text('See All',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      InkWell(
                        onTap: (){setState(() {
                          return _date--;
                        });},
                        child: Icon(Icons.arrow_left),
                      ),
                      Text(
                        '$_date ${DateFormat('MMMM yyyy').format(DateTime.now())}',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'
                        ),
                      ),
                      InkWell(
                        onTap: (){setState(() {
                          return _date++;
                        });},
                        child: Icon(Icons.arrow_right),
                      ),
                    ],),
                  )
                ],
              ),
            ),

            Expanded(
              child: ListView.builder(
                  itemCount: providedTransactions.transactions.length,
                  itemBuilder: (context,i){
                return TransactionItem(providedTransactions.transactions[i]);
              }),
            ),
          ],
        ),
      ),
    );
  }
}
