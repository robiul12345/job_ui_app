import 'package:flutter/material.dart';
import 'package:jobappsui/bottomshidtappbar.dart';
import 'package:jobappsui/model.dart';

class DetelisCompany extends StatefulWidget {
  CompanyInfo companyInfo;

  DetelisCompany(this.companyInfo);

  @override
  State<DetelisCompany> createState() => _DetelisCompanyState();
}

class _DetelisCompanyState extends State<DetelisCompany> {
   var d_list = CompanyInfo.generationCompanyList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            BottomShitaAppBar(widget.companyInfo),
            Expanded(
                child: Container(
                    child: ListView.builder(
                        itemBuilder: (context, index) => Container(
                            ))))
          ],
        ),
      ),
    );
  }
}
