import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseStore{
  CollectionReference testTable = FirebaseFirestore.instance.collection('tests');

  void uploadData(String user, String content, String date){
    this.testTable.add({
      'pseudo': "",
      'content': "",
          'date': "",
    });
  }


}