import 'package:flutter/material.dart';
import 'package:part14/widgets/addStd.dart';
import 'package:part14/widgets/listStd.dart';

class homeSc extends StatelessWidget {
  const homeSc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green,
      body: SafeArea(
        child: Column(
          children: [
            addStd(),
            Expanded(child: listStd()),
          ],
        ),
      ),
    );
  }
}
