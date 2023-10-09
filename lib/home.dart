import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List items = [
    {"image":"images/pink-handbags.jpg", "title":"bag 1","sub": "300"},
    {"image":"images/OIP.jpg", "title":"bag 2","sub": "500"},
    {"image":"images/sneakers.png", "title":"Sneakers","sub": "1500"},
    {"image":"images/smart-watch.png", "title":"Smart Watch","sub": "600"},
    {"image":"images/headphone.png", "title":"Head phone","sub": "800"},
    {"image":"images/sneakers.png", "title":"Sneakers","sub": "1500"},
    {"image":"images/smart-watch.png", "title":"Smart Watch","sub": "600"},
    {"image":"images/headphone.png", "title":"Head phone","sub": "800"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(color: Colors.black),
        title: Text("SHRINE"),
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.tune),
            color: Colors.black,
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 5),
              child: Card(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 6),
                      width: 200,
                      child: Center(
                        child: Image.asset(
                          items[index]["image"],
                          height: 60,
                          fit: BoxFit.fill,
                        ),
                       ),
                    ),
                    ListTile(
                      title: Text(items[index]["title"],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      subtitle: Text(items[index]["sub"],style: TextStyle(fontSize: 20)),
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                  ],
                ),
              ),
            );
          },

        ),
      ),
    );
  }
}
