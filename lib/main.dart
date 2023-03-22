import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:part14/functions/dbFunctions.dart';
import 'package:part14/homeSc.dart';
import 'package:part14/model/dataModel.dart';

import 'package:hive_flutter/hive_flutter.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(stdModelAdapter().typeId)) {
    Hive.registerAdapter(
      stdModelAdapter(),
    );
  }
  await refreshUi();
  runApp(app());
}

class app extends StatelessWidget {
  // const app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homeSc(),
    );
  }
}
