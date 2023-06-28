import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homepage',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
  slivers: <Widget>[
    const SliverAppBar(
      pinned: true,
      expandedHeight: 100.0,
      flexibleSpace: FlexibleSpaceBar(
        title: Text('Find Your\nFavorite Food',
        style: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),),
        
      ),
    ),
SliverPadding(
      padding: const EdgeInsets.all(20),
      
      sliver: SliverList(
                  delegate: SliverChildListDelegate([
                  
                    Text(
                      'Popular Menu',
                      style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
              ),
                    ),
                  ]),
                ),
    ),
  SliverPadding(
      padding: const EdgeInsets.all(20),
      
      sliver: SliverGrid.count(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
      
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            color: const Color.fromARGB(255, 255, 238, 218),
            child: Column(children: [
                  Image.asset(
                    'assets/zingerBurger.png',
                    fit: BoxFit.contain,
                  ),
              Text("Zinger Burger",
              style:TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
              ),
                            Text("Rp 20.000",
              style:TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 100, 64),
                    ),
              ),

            ],),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: const Color.fromARGB(255, 255, 238, 218),
            child: const Text('Heed not the rabble'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: const Color.fromARGB(255, 255, 238, 218),
            child: const Text('Sound of screams but the'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: const Color.fromARGB(255, 255, 238, 218),
            child: const Text('Who scream'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: const Color.fromARGB(255, 255, 238, 218),
            child: const Text('Revolution is coming...'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: const Color.fromARGB(255, 255, 238, 218),
            child: const Text('Revolution, they...'),
          ),
        ],
      ),
    ),


  ],
)
      ),
    );
  }
}
