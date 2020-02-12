import 'package:flutter/material.dart';


class GratitudeJournal extends StatefulWidget {
  @override
  _GratitudeJournalState createState() => _GratitudeJournalState();
}

class _GratitudeJournalState extends State<GratitudeJournal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        title: Text('Gratitude Journal'),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
