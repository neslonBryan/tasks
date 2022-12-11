import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class HomePage extends StatelessWidget {
  CollectionReference taskReference =
      FirebaseFirestore.instance.collection("tasks");

  Stream<int> counter() async* {
    for (int i = 0; i < 10; i++) {
      await Future.delayed(const Duration(seconds: 1));
      yield i;
    }
  }

  @override
  Widget build(BuildContext context) {
    counter().listen((event) {
      print(event);
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Nice"),
      ),
      body: StreamBuilder(
        stream: counter(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            int data = snapshot.data;
            return Center(
              child: Text(
                data.toString(),
                style: TextStyle(fontSize: 30),
              ),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
