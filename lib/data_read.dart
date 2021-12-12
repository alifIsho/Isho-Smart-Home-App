import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';

class DataRead extends StatelessWidget {
  static String routeName = "/data_read";

  @override
  Widget build(BuildContext context) {
    return dataread();
  }
}

class dataread extends StatefulWidget {
  const dataread({Key? key}) : super(key: key);

  @override
  _datareadState createState() => _datareadState();
}

class _datareadState extends State<dataread> {

  var firestore = FirebaseFirestore.instance;
  Future getData() async {

    QuerySnapshot qn = await firestore.collection("products").get();

    return qn.docs;
  }

  // void printData() async{
  //   final prodes= await firestore.collection('products').get();
  //   for (var message in prodes.docs){
  //     print(message.data());
  //   }
  // }

  void snapData() async {
    await for (var snapshot in firestore.collection('products').snapshots()) {
      for (var message in snapshot.docs) {
        //final proOwn= message.data['owner'];
        print(message.data());
      }
    }
  }

  @override
  void initState() {

    super.initState();
    snapData();
    //printData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Products"),
      ),
      body: StreamBuilder(stream: FirebaseFirestore.instance.collection('products').snapshots(),
        builder: (context,AsyncSnapshot<QuerySnapshot>snapshot){
          return ListView(
            children: snapshot.data!.docs.map((product){
              return Center(
                child: ListTile(title: Text(product['name']),),
              );
            }).toList(),
          );
        },
      ),

    );
  }
}

