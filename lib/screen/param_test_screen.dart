import 'package:flutter/material.dart';

class ParamTestScreen extends StatelessWidget {
  ParamTestScreen(
      {super.key, required this.formIdList, required this.formNameList});

  List<String> formIdList;
  List<String> formNameList;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ...List.generate(
                  formIdList.length,
                  (index) =>
                      Text('${formIdList[index]}  ,  ${formNameList[index]}'))
              .toList(),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Go to Back button'))
        ],
      ),
    );
  }
}
