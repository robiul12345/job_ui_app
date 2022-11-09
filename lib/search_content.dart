import 'package:flutter/material.dart';

class SearchContent extends StatelessWidget {
  const SearchContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(vertical: 35, horizontal: 25),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
              image: AssetImage("images/c.png"), fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Fast Search",
            style: TextStyle(fontSize: 26, color: Colors.white),
          ),
          Text(
            "You can search quickly for \n the job you want",
            style: TextStyle(fontSize: 20, color: Colors.white60),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            child: Row(
              children: [
                SizedBox(width: 10,),
                Image(image: AssetImage("images/s.png"),width: 40,height: 25,),
                SizedBox(width: 5,),
                Text(
                  "Search",
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
