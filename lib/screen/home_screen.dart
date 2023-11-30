import 'package:flutter/material.dart';
import 'package:test_eform_open/screen/param_test_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<int> fidList = [71, 72, 73, 74, 75];

  List<String> fnameList = ['71동의서', '72동의서', '73동의서', '74동의서', '75동의서'];

  List<bool> isCheckList = [false, false, false, false, false];

  int formId = 71;

  String formName = '마취 설명 및 동의서';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: List.generate(
            fidList.length,
            (index) => CheckboxListTile(
                title: InkWell(
                  child: Text(fidList[index].toString()),
                  onTap: () {
                    List<String> selectFid = [];
                    List<String> selectFname = [];

                    for (int i = 0; i < fnameList.length; i++) {
                      if (isCheckList[i]) {
                        selectFname.add(fnameList[i]);
                        selectFid.add(fidList[i].toString());
                      }
                    }

                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => ParamTestScreen(
                            formIdList: selectFid, formNameList: selectFname)));
                  },
                ),
                subtitle: InkWell(
                    child: Text(fnameList[index].toString()),
                    onTap: () {
                      List<String> selectFid = [];
                      List<String> selectFname = [];

                      for (int i = 0; i < fnameList.length; i++) {
                        if (isCheckList[i]) {
                          selectFname.add(fnameList[i]);
                          selectFid.add(fidList[i].toString());
                        }
                      }

                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => ParamTestScreen(
                              formIdList: selectFid,
                              formNameList: selectFname)));
                    }),
                value: isCheckList[index],
                onChanged: (bool? value) => setState(() {
                      if (value != null) isCheckList[index] = value;
                    }))),
      ),
    );
  }
}
