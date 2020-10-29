import 'package:flutter/material.dart';
import 'sayings.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));

}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Sayings> sayings = [
    Sayings(aurthor: '2pac', text: 'life of an OG', date: '1994-01-01'),
    Sayings(aurthor: '2pac', text: 'Bad boys fo life', date: '1994-02-02'),
    Sayings(aurthor: 'Eminem', text: 'lose yourself', date: '1998-05-20'),
    Sayings(aurthor: 'jCole', text: 'Everything come back around full circle', date: '2001-12-24'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Gin-Tama'),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: sayings.map((say) => Text('${say.text} - ${say.aurthor} - ${say.date}')).toList(),
      ),

    );
  }
}
