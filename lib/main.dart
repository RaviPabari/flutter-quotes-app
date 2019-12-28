import 'package:flutter/material.dart';
import 'quote.dart';
import 'Quote_Card.dart';

void main() => runApp(MaterialApp(
      home: HomeScreen(),
    ));

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Quote> quotes = [
    Quote(
        author: '--Master Oogway',
        text:
            "Yesterday is history,tomorrow is a mystery,and today is a gift...that's why they call it present."),
    Quote(
        author: '--Master Shifu',
        text:
            "If you only do what you can do, you will never be more than who you are."),
    Quote(
          author: "--Po's Father", 
          text: 
          "There is no secret ingredient."),
    Quote(
        author: "--Master Ooway",
        text:
            "Your mind is like this water, my friend. When it is agitated, it becomes difficult to see. But if you allow it to settle, the answer becomes clear"),
    Quote(
        author: "--Po",
        text:
            "Legend tells of a legendary warrior whose kung fu skills were the stuff of legend."),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Quotes From Kung Fu Panda',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Cookie',
            ),
          ),
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
        backgroundColor: Colors.blueGrey,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add,
           // color: Colors.grey,
          ),
          backgroundColor: Colors.grey,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: quotes.map((quote) => QuoteCard(quote :quote)).toList(),
        ));
  }
}


