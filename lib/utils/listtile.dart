import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  String author,description,time;
  CustomListTile({required this.author,required this.description,required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:15.0, left: 15, right: 15),
      child: Container(
            height: 150,
            width: MediaQuery.of(context).size.width-30,
            color: Colors.white,
            child: Stack(
              children: [
                Container(
                  width: 20,
                  height: 75,
                  color: Colors.pink[50],
                ),
                Container(
                  width: 75,
                  height: 20,
                  color: Colors.pink[50],
                ),
                Padding(
                  padding: const EdgeInsets.only(left:35.0,top: 30),
                  child: Container(
                    width: 80,
                    height: 90,
                    child: Image.asset("assets/cars.jpeg",fit: BoxFit.cover,)),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:130.0, top: 30,right: 5),
                      child: Container(
                        width: 200,
                        child: Text(description, style: TextStyle(fontSize: 16,color: Colors.blueGrey[700],
                        fontWeight: FontWeight.w800),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Padding(
                        padding: const EdgeInsets.only(left:100.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.pink[200],
                              radius: 10,
                            ),
                            SizedBox(width: 5,),
                            Text(author),
                            SizedBox(width: 15,),
                            Text(time, style: TextStyle(fontSize: 13),)
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
      ),
    );
  }
}