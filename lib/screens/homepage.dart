import 'package:demo_flutter/screens/FirstPage.dart';
import 'package:demo_flutter/screens/profile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4, 
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.category_sharp,color: Colors.blueGrey[800],),
            onPressed: (){},
          ),
          backgroundColor: Colors.white,
          title: Text("Categories", style: TextStyle(color: Colors.blueGrey[800]),),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.search, color: Colors.blueGrey[800],)
              )
          ],
          bottom: TabBar(
            labelPadding: EdgeInsets.only(left:5, right: 5),
            labelColor: Colors.pink[300],
            indicatorColor: Colors.pink[300],
            unselectedLabelColor: Colors.blueGrey[900],
            tabs: [
              Tab(text: "For You",),
              Tab(text:"Design"),
              Tab(text: "Beauty",),
              Tab(text: "Education",)
            ],
            
          ),
        ),
        body: TabBarView(
          children:[
            FirstPage(),
            FirstPage(),
            FirstPage(),
            FirstPage(),
          ]
          ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.grey,),
              label: "",
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.folder, color: Colors.pink[200],),
              label: ""
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite, color: Colors.grey,),
              label: ""
              ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                },
                child: Icon(Icons.person, color: Colors.grey,)),
              label: ""
              ),
            BottomNavigationBarItem(
              backgroundColor: Colors.pink,
              icon: Icon(Icons.settings, color: Colors.grey,),
              label: ""
              ),
          ],
        ),
      ),
      );
  }
}