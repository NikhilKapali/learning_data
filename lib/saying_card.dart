import 'package:flutter/material.dart';
import 'sayings.dart';

class SayingCard extends StatelessWidget {

  final Sayings saying;
  final Function delete;
  SayingCard({ this.saying, this.delete });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              saying.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              saying.aurthor,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 8.0),
            FlatButton.icon(onPressed: delete,
                icon: Icon(Icons.delete_forever_rounded),
                label: Text('delete')
      )
          ],
        ),
      ),
    );
  }
}