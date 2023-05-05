import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GemaApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({ Key? key }) : super(key: key);

  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      centerTitle: true,
      title: const Text("06TPLM002 - 201011402105",textAlign: TextAlign.center),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,children: [
            const Text("Kelas 06TPLM002"),
            const Text("Gema Bagustian Perdana"),
            const Text("NIM : 201011402105"),
            ElevatedButton(onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> MyhomePage()));
            }, child: Text("Next Gird"))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
      items: const [
      BottomNavigationBarItem(
      icon: Icon(
      Icons.search,
      ),
      label: "Explore",
      ),
      BottomNavigationBarItem(
      icon: Icon(
      Icons.chat,
      ),
      label: "Feed",
      ),
      BottomNavigationBarItem(
      icon: Icon(
      Icons.settings,
      ),
      label: "Setting",
      ),
      ],
      ),
    );
  }
}

class MyhomePage extends StatefulWidget {
  const MyhomePage({Key? key}) : super(key: key);

  @override
  _MyhomePageState createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Gema grid"),
        ),
        body: Center(
          child: GridView.count(
            crossAxisCount: 4,
            children: [
              Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(8),
                color: Colors.pink,
                child: Text("Kotak Pertama"),
              ),
              Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(8),
                color: Colors.blue,
                child: Text("Kotak Kedua"),
              ),
              Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(8),
                color: Colors.green,
                child: Text("Kotak Ketiga"),
              ),
              Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(8),
                color: Colors.cyan,
                child: Text("Kotak Keempat"),
              ),
              Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(8),
                color: Colors.orange,
                child: Text("Kotak Kelima"),
              ),
              Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(8),
                color: Colors.brown,
                child: Text("Kotak Keenam"),
              ),
              Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(8),
                color: Colors.purple,
                child: Text("Kotak Ketujuh"),
              ),
              Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(8),
                color: Colors.blue,
                child: Text("Kotak Kedelapan"),
              ),
              Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(8),
                color: Colors.red,
                child: Text("Kotak Kesembilan"),
              ),
              Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(8),
                color: Colors.white,
                child: Text("Kotak Kesepuluh"),
              ),
              Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(8),
                color: Colors.yellow,
                child: Text("Kotak Kesebelas"),
              ),
              Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(8),
                color: Colors.pink,
                child: Text("Kotak Keduabelas"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}