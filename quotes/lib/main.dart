import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

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
    Quote(
        author: 'Louis L’Amour',
        text:
            'Start writing, no matter what. The water does not flow until the faucet is turned on.'),
    Quote(
        author: 'William Faulkner',
        text:
            'Get it down. Take chances. It may be bad, but its the only way you can do anything really good.'),
    Quote(
        author: 'Terry Pratchett',
        text: 'The first draft is just you telling yourself the story."'),
    Quote(
        author: 'Octavia E. Butler',
        text:
            'You don’t start out writing good stuff. You start out writing crap and thinking it’s good stuff, and then gradually you get better at it.'),
    Quote(author: 'Steven Pressfield', text: 'Start before you’re ready.'),
    Quote(
        author: 'Jodi Picoult',
        text: 'You can always edit a bad page. You can’t edit a blank page'),
    Quote(
        author: 'Robert Frost',
        text:
            'I have never started a poem yet whose end I knew. Writing a poem is discovering.'),
    Quote(
        author: 'Louis L’Amour',
        text:
        'Start writing, no matter what. The water does not flow until the faucet is turned on.'),
    Quote(
        author: 'William Faulkner',
        text:
        'Get it down. Take chances. It may be bad, but its the only way you can do anything really good.'),
    Quote(
        author: 'Terry Pratchett',
        text: 'The first draft is just you telling yourself the story."'),
    Quote(
        author: 'Octavia E. Butler',
        text:
        'You don’t start out writing good stuff. You start out writing crap and thinking it’s good stuff, and then gradually you get better at it.'),
    Quote(author: 'Steven Pressfield', text: 'Start before you’re ready.'),
    Quote(
        author: 'Jodi Picoult',
        text: 'You can always edit a bad page. You can’t edit a blank page'),
    Quote(
        author: 'Robert Frost',
        text:
        'I have never started a poem yet whose end I knew. Writing a poem is discovering.'),
  ];

  Widget quoteTemplate(quote) {
    return QuoteCard(quote: quote);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade200,
      appBar: AppBar(
        title: Text(
          'A W E S O M E   Q U O T E S',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.white10,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.deepOrange.shade200,
                  Colors.deepOrange.shade50
                ]),
          ),
          child: Column(
            children: quotes.map((quote) => quoteTemplate(quote)).toList(),
          ),
        ),
      ),
    );
  }
}

