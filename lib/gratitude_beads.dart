import 'package:flutter/material.dart';


class GratitudeBeads extends StatefulWidget {
  @override
  _GratitudeBeadsState createState() => _GratitudeBeadsState();
}

class _GratitudeBeadsState extends State<GratitudeBeads> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        title: Text('gratitude beads'),
        centerTitle: true,
        elevation:0,
      ),
    );
  }
}
