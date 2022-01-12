import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),


));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'Random Motivator', text:'Any random motivational thought'),
    Quote(author: 'DJ Khaled', text:'Random motivational thought..another one!'),
    Quote(author: 'Walter White', text:'I am the One who knocks'),
  ];

  Widget quoteTemplate(quote){
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),

      color: Colors.white54,
      elevation: 10,
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black54,

              ),
            ),
            SizedBox(height: 6),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade200,
      appBar: AppBar(
        title: Text('A W E S O M E   Q U O T E S',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),),

        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.white10,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.deepOrange.shade200, Colors.deepOrange.shade50]

          ),
        ),

        child: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    ),
    );
  }
}


