import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:part14/model/dataModel.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

ValueNotifier<List<stdModel>> stdListNotifier = ValueNotifier([]);

Future<void> addStudent(stdModel value) async {
  final stdDB = await Hive.openBox<stdModel>('std_db');
  await stdDB.add(value);
  await refreshUi();
}

Future<List<stdModel>> getAllStd() async {
  final stdDB = await Hive.openBox<stdModel>('std_db');
  return stdDB.values.toList();
}

Future<void> refreshUi() async {
  final studentList = await getAllStd();
  stdListNotifier.value.clear();
  stdListNotifier.value.addAll(studentList);
  stdListNotifier.notifyListeners();
}

Future<void> deletstd(int id) async {
  final stdDB = await Hive.openBox<stdModel>('std_db');
  stdDB.deleteAt(id);
  getAllStd();
  await refreshUi();
}













  // stdListNotifier.value.add(value);
  // print(value.toString());

 // final _id = await stdDB.add(value);
  // value.id = _id;


















// import 'package:flutter/cupertino.dart';
// import 'package:part14/model/dataModel.dart';

// ValueNotifier<List<stdModel>> stdnotifier = ValueNotifier([]);
// void addstd(stdModel v) {
//   stdnotifier.value.add(v);
//   stdnotifier.notifyListeners();
// }
