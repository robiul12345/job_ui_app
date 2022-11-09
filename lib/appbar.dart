import 'package:flutter/material.dart';

class AppBarDimo extends StatelessWidget {
  const AppBarDimo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome home",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                "Annie Bryant",
                style: TextStyle(fontSize: 34, color: Colors.black),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                transform: Matrix4.rotationZ(50),
                child: Stack(
                  children: [
                    Icon(
                      Icons.notifications_none_outlined,
                      size: 40,
                    ),
                    Positioned(
                      right: -0,
                        child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.deepOrange),
                    ))
                  ],
                ),
              ),
              ClipOval(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(
                  "images/a.png",
                  width: 66,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
