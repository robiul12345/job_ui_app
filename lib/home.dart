import 'package:flutter/material.dart';
import 'package:jobappsui/appbar.dart';
import 'package:jobappsui/companylist.dart';
import 'package:jobappsui/search_content.dart';
import 'package:jobappsui/singlelist.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(

            children: [
              Row(
                children: [
                  Expanded(
                      flex:2,
                      child: Container()),
                  Expanded(
                    flex: 1,
                      child: Container(
                    color: Colors.black.withOpacity(0.1),
                  )),

                ],
              ),
              AppBarDimo(),
              SearchContent(),
              SizedBox(height: 10,),
              ListSingle(),
              ComanyList(),
            ],
          ),
        ),
      ),
    );
  }
}
