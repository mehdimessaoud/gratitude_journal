import 'package:flutter/material.dart';
import 'package:gratitude_journal/Home.dart';
import 'package:gratitude_journal/gratitude_beads.dart';
import 'package:gratitude_journal/gratitude_journal.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context)=>Home(),
    '/gratitudebeads': (context)=> GratitudeBeads(),
    '/gratitudejournal': (context)=>GratitudeJournal()

  },

));

