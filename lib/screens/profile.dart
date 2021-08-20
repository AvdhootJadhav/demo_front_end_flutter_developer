import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: [
          Container(
            child: Stack(
              children:[
                Image.asset("assets/cars.jpeg"),
                ],
            )
          ),
          AppBar(
            iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/3-20, bottom: MediaQuery.of(context).size.height/2-20,
            left: 15,
            right: 15
            ),
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width-30,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(5)
                )
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:110.0, top: 10),
                        child: Text("Little Butterfly", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:110.0, top: 10),
                        child: Text("Product Designer", style: TextStyle(fontSize: 16, )),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:110.0, top: 3),
                        child: Text("Kathmandu", style: TextStyle(fontSize: 13, color: Colors.grey),),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("285"),
                        Text("3025"),
                        Text("650")
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:60.0),
                        child: Text("Likes"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: Text("Comments"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:25.0),
                        child: Text("Favourites"),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:180.0, left: 30),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Image.asset("assets/cars.jpeg", fit: BoxFit.cover,)),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/2+40,
            left: 15,
            right: 15
            ),
            child: Container(
              width: MediaQuery.of(context).size.width-30,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5)
                )
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:20.0, top: 20),
                    child: Row(
                      children: [
                        Text("User Information",style: TextStyle(fontSize: 17),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Divider(
                      thickness: 0.1,
                      color: Colors.grey,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text("Email"),
                    subtitle: Text("butterfly.little@gmail.com"),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("Phone"),
                    subtitle: Text("+977-9815225566"),
                  ),
                  ListTile(
                    leading: Icon(Icons.tab),
                    title: Text("Website"),
                    subtitle: Text("https://www.littlebutterfly.com"),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}