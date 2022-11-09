import 'package:flutter/material.dart';
import 'package:jobappsui/deteilscompany.dart';
import 'package:jobappsui/model.dart';

import 'bottomshidtappbar.dart';

class ComanyList extends StatefulWidget {
  const ComanyList({Key? key}) : super(key: key);

  @override
  State<ComanyList> createState() => _ComanyListState();
}

class _ComanyListState extends State<ComanyList> {
  final com_list = CompanyInfo.generationCompanyList();


  add_Detlis(){
   // return showModalBottomSheet(context: context, builder: (context)=>DetelisCompany(com_list[index]));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: (){
             // add_Detlis();
               showModalBottomSheet(context: context, builder: (context)=>BottomShitaAppBar(com_list[index]));

              //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetelisCompany(com_list[index])));
            },
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.green.withOpacity(0.2)),
                  width: 300,
                  child: Row(
                    children: [
                      Expanded(
                         // flex: 4,
                          child: Container(
                            padding: EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image(
                                      image: AssetImage(com_list[index].logoUrl,),
                                      height: 40,
                                      width: 40,
                                    ),SizedBox(width: 15,),
                                    Text(com_list[index].comany,style: TextStyle(fontSize: 22),),
                                  ],
                                ),
                                SizedBox(height: 15,),
                                Text(com_list[index].title,maxLines:2,style: TextStyle(fontSize: 20),),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(children: [
                                  Icon(Icons.location_on_outlined),
                                  Container(
                                    width: 160,
                                    child: Text(
                                      com_list[index].location,
                                      maxLines: 3,
                                      style: TextStyle(fontSize: 20,),
                                    ),
                                  ),
                                ],)

                              ],
                            ),
                          )),
                      Container(
                        padding: EdgeInsets.all(15),
                        child: Column(

                          children: [Icon(Icons.label_important_outline)],
                        ),
                      ),
                    ],
                  ),
                ),
          ),
          separatorBuilder: (_, index) => SizedBox(
                width: 7,
              ),
          itemCount: com_list.length),
    );
  }
}
