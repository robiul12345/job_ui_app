import 'package:flutter/material.dart';
import 'package:jobappsui/model.dart';

class BottomShitaAppBar extends StatelessWidget {
  CompanyInfo companyInfo;

  BottomShitaAppBar(this.companyInfo);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20),
       //  height: 570,
        decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image(
                      image: AssetImage(companyInfo.logoUrl),
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      companyInfo.comany,
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.label),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.more_horiz),
                  ],
                )
              ],
            ),
            SizedBox(height: 10),
            Text(
              companyInfo.title,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on),
                    Text(
                      companyInfo.location,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Text(
                  companyInfo.fullTime,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            ...companyInfo.req
                .map((e) => Container(
              padding: EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            height: 5,
                            width: 6,
                            decoration:BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle
                            ),
                          ),
                          Text(e,style: TextStyle(fontSize: 16),maxLines: 5,)],
                      ),
                    ))
                .toList()
          ],
        ),
      ),
    );
  }
}
