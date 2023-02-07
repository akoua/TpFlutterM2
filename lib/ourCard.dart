import 'dart:math';

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

/**
 * The representation of the card
 */
class OurCard extends StatelessWidget {
  String myName = WordPair.random().asPascalCase;
  String myInitial = '';
  String myNumber = '+337';

  String _nounGenerator() {
    //myName = WordPair.random().asPascalCase;
    return myName;
  }

  String _numberGenerator() {
    // myNumber = '$myNumber$randomNumeric(9)';

    return '+33${Random().nextInt(1000000000)}';
  }

  String _createInitial() {
    RegExp exp = RegExp('[A-Z]+');
    var allMatches = exp.allMatches(myName);
    for (final m in allMatches) {
      myInitial = myInitial + m[0]!;
    }
    return myInitial;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.indigoAccent,
          child: Text(_createInitial(),
              style: const TextStyle(color: Colors.black)),
        ),
        title: Text(_nounGenerator()),
        subtitle: Text(_numberGenerator()),
      ),
    );
  }
}