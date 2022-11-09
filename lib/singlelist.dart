import 'package:flutter/material.dart';

class ListSingle extends StatefulWidget {
  const ListSingle({Key? key}) : super(key: key);

  @override
  State<ListSingle> createState() => _ListSingleState();
}

class _ListSingleState extends State<ListSingle> {
  final List<String> _list = ["All", "⚡ Popular", "⭐ Feaatured"];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 55,
      width: double.infinity,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),

            decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.green)),
                child: Text(
                  _list[index],
                  style: TextStyle(fontSize: 20, color: Colors.cyan),
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 10,
              ),
          itemCount: _list.length),
    );
  }
}
