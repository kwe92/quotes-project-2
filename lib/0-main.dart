// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quotes/quote.dart';

void main() {
  return runApp(
    MaterialApp(
      home: quotesApp(),
    ),
  );
}

class quotesApp extends StatefulWidget {
  const quotesApp({Key? key}) : super(key: key);

  @override
  State<quotesApp> createState() => _quotesAppState();
}

List<Quote> quotesList = [
  Quote(
      author: 'Marcus Aurelius',
      quoteText:
          '“You have power over your mind - not outside events. Realize this, and you will find strength.”'),
  Quote(
      author: 'Epictetus',
      quoteText:
          '"If you want to improve, be content to be thought foolish and stupid."'),
  Quote(
      author: 'James Allen',
      quoteText:
          '"Men are anxious to improve their circumstances, but are unwilling to improve themselves; they therefore remain bound."'),
  Quote(
      author: 'Aristotle',
      quoteText: '“Knowing yourself is the beginning of all wisdom.”'),
  Quote(
      author: 'Socretes',
      quoteText: '“The only true wisdom is in knowing you know nothing.”'),
];

class _quotesAppState extends State<quotesApp> {
  int i = 0;

  void _nextQuote() {
    setState(() {
      if (i < quotesList.length) {
        i++;
      }
      if (i >= quotesList.length) {
        i = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text(
            'Quotes App',
            style: TextStyle(fontSize: 20.0),
          ),
          backgroundColor: Colors.grey[700],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Text(
                quotesList[i].quoteText,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Divider(
              height: 20.0,
              color: Colors.grey[600],
              thickness: 1.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 75, 0, 0),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: 30,
                  height: 40,
                  child: FloatingActionButton(
                    onPressed: _nextQuote,
                    backgroundColor: Colors.grey[600],
                    child: Icon(
                      Icons.arrow_right,
                      size: 16.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
