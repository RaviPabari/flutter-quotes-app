import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
    final Quote quote;
    final Function delete;
    QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {


    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Cookie',
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 10),
            Text(
              quote.author,
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Cookie',
                color: Colors.grey[600],
              ),
            ),
            //SizedBox(height: 6),
            FlatButton.icon(
              icon: Icon(Icons.delete_sweep),
              label: Text('Delete Quote'),
              onPressed: delete,
            )
          ],
        ),
      ),
    );
  }
}
