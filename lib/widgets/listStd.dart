import 'package:flutter/material.dart';
import 'package:part14/functions/dbFunctions.dart';
import 'package:part14/model/dataModel.dart';

class listStd extends StatelessWidget {
  const listStd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: stdListNotifier,
      builder: (
        BuildContext ctx,
        List<stdModel> stdlist,
        Widget? child,
      ) {
        return ListView.separated(
          itemBuilder: (context, index) {
            final data = stdlist[index];
            return ListTile(
              title: Text(data.name),
              subtitle: Text(data.age),
              trailing: IconButton(
                onPressed: () {
                  deletstd(index);
                  // if (data.id != null) {
                  //   deletstd(data.id!);
                  // } else {
                  //   print('std id is null cant deleate');
                  // }
                },
                icon: Icon(Icons.delete),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: stdlist.length,
        );
      },
    );
  }
}
