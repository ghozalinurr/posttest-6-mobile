import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:postest6_1915026001_ghozalinurrahman/detailpage.dart';
import 'package:postest6_1915026001_ghozalinurrahman/form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3A3845),
        title: Text(
          "Tips App",
          style: TextStyle(
            color: Color(0xFFF7CCAC),
          ),
        ),
      ),
      body: SecondPage(),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF3A3845),
              ),
              child: Text(
                "Tips App",
                style: TextStyle(
                  color: Color(0xFFF7CCAC),
                ),
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.add),
              title: Text("Add Item"),
              tileColor: Color(0xFFC69B7B),
              onTap: () {
                Get.to(FormPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final List<BottomNavigationBarItem> _myItem = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite),
      label: "Favorite",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: "Profil",
    ),
  ];

  final List<Widget> _myPages = [
    Column(
      children: [
        Text("pertama"),
      ],
    ),
    Column(
      children: [
        Text("kedua"),
      ],
    ),
    Column(
      children: [
        Text("ketiga"),
      ],
    ),
  ];

  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7CCAC),
      body: SingleChildScrollView(
        child: _myPages.elementAt(_pageIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        items: _myItem,
        onTap: (int newIndex) {
          setState(() {
            _pageIndex = newIndex;
          });
        },
      ),
    );
  }
}

class SizeOrder extends StatelessWidget {
  const SizeOrder({Key? key, this.isActive = false, required this.size})
      : super(key: key);

  final bool isActive;
  final String size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 45,
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 5, left: 5, top: 20),
      decoration: BoxDecoration(
        color: isActive ? Color(0xFF3A3845) : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          color: Color(0xFF3A3845),
        ),
      ),
      child: Text(
        size,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: isActive ? Color(0xFFF7CCAC) : Color(0xFF3A3845),
        ),
      ),
    );
  }
}

class AddCart extends StatelessWidget {
  const AddCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      height: 40,
      margin: EdgeInsets.only(top: 20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xFF3A3845),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        "Add to Cart",
        style: TextStyle(
          fontSize: 20,
          color: Color(0xFFF7CCAC),
        ),
      ),
    );
  }
}

class ShopIcon extends StatelessWidget {
  const ShopIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 40,
      margin: EdgeInsets.only(top: 20, left: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xFFF7CCAC),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          color: Color(0xFF3A3845),
        ),
      ),
      child: Icon(
        Icons.shopping_cart,
        color: Color(0xFF3A3845),
        size: 24.0,
      ),
    );
  }
}

class pindah extends StatelessWidget {
  const pindah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: TextButton(
        child: Text(
          "view",
          style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 31, 14, 1),
          ),
        ),
        onPressed: () {
          Get.to(Detail());
        },
      ),
    );
  }
}
