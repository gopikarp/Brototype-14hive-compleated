import 'package:flutter/material.dart';
import 'package:part14/functions/dbFunctions.dart';
import 'package:part14/model/dataModel.dart';

class addStd extends StatelessWidget {
  addStd({Key? key}) : super(key: key);
  final name = TextEditingController();
  final age = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        children: [
          TextField(
            controller: name,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Name',
              label: Text('Name'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
          ),
          TextField(
            controller: age,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Age',
              label: Text('Age'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
          ),
          ElevatedButton.icon(
            onPressed: () {
              stdBtclicked();
            },
            icon: Icon(Icons.add),
            label: Text('add students'),
          ),
        ],
      ),
    );
  }

  Future<void> stdBtclicked() async {
    final na = name.text.trim();
    final a = age.text.trim();
    if (na.isEmpty || a.isEmpty) {
      return;
    } else {
      var _std = stdModel(name: na, age: a);
      addStudent(_std);
    }
  }
}
