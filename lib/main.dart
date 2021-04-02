import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

// mis imports
import 'package:ecommerce_app/components/horizontal_listview.dart';
import 'package:ecommerce_app/components/products.dart';
// import 'style.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = Container(
      height: 250.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/banner/banner1.jpg'),
          AssetImage('images/banner/banner2.jpg'),
          AssetImage('images/banner/banner3.jpg'),
          AssetImage('images/banner/banner4.jpg'),
        ],
        autoplay: false,
        dotSize: 4.0,
        indicatorBgPadding: 6.0,
        // animationCurve: Curves.fastLinearToSlowEaseIn,
        // animationDuration: Duration(milliseconds: 1000),
      ),
    );

    // las tabs de bottom navigator
    // inicio tienda news carrito y cuenta
    final tabs = [
      //1. INICIO: el carousel de banners
      // imageCarousel,
      ListView(
        children: [
          imageCarousel,
          Center(
            child: Text(
              "Inicio",
              style: TextStyle(fontSize: 30.0),
            ),
          ),
        ],
      ),
      // 2. TIENDA:
      ListView(
        children: [
          // Lista horizontal de categorias
          HorizontalList(),
          // container/galeria/gridview de productos
          Container(
            height: 510.0,
            child: Products(),
          ),
        ],
      ),
      // 3. NEWS: noticias
      Center(
        child: Text(
          "News",
          style: TextStyle(fontSize: 30.0),
        ),
      ),
      // 4. CARRITO:
      Center(
        child: Text(
          "Carrito",
          style: TextStyle(fontSize: 30.0),
        ),
      ),
      // 6. CUENTA:
      Center(
        child: Text(
          "Cuenta",
          style: TextStyle(fontSize: 30.0),
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 158, 184),
        title: Text('Tiendita'),
        actions: [
          IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
          IconButton(
              icon: Icon(Icons.favorite, color: Colors.white),
              onPressed: () {}),
        ],
      ),
      // las tabs de bottom navigator
      // inicio tienda news carrito y cuenta
      body: tabs[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Color.fromARGB(255, 255, 158, 184),
        fixedColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white54,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Tienda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Carrito',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Cuenta',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      // drawer: Drawer(
      //   child: ListView(
      //     children: [
      //       // header
      //       UserAccountsDrawerHeader(
      //         accountName: Text('User'),
      //         accountEmail: Text('E-mail'),
      //         currentAccountPicture: GestureDetector(
      //           child: CircleAvatar(
      //             backgroundColor: Colors.grey,
      //             child: Icon(
      //               Icons.person,
      //               color: Colors.white,
      //             ),
      //           ),
      //         ),
      //         decoration:
      //             BoxDecoration(color: Color.fromARGB(255, 255, 158, 184)),
      //       ),
      //       // body
      //       InkWell(
      //         onTap: () {},
      //         child: ListTile(
      //           title: Text('Inicio'),
      //           leading: Icon(Icons.home),
      //         ),
      //       ),
      //       InkWell(
      //         onTap: () {},
      //         child: ListTile(
      //           title: Text('Mi cuenta'),
      //           leading: Icon(Icons.person),
      //         ),
      //       ),
      //       InkWell(
      //         onTap: () {},
      //         child: ListTile(
      //           title: Text('Mis pedidos'),
      //           leading: Icon(Icons.shopping_basket),
      //         ),
      //       ),
      //       InkWell(
      //         onTap: () {},
      //         child: ListTile(
      //           title: Text('Categorías'),
      //           leading: Icon(Icons.dashboard),
      //         ),
      //       ),
      //       InkWell(
      //         onTap: () {},
      //         child: ListTile(
      //           title: Text('Favoritos'),
      //           leading: Icon(Icons.favorite),
      //         ),
      //       ),
      //       // Divider
      //       Divider(),
      //       InkWell(
      //         onTap: () {},
      //         child: ListTile(
      //           title: Text('Ajustes'),
      //           leading: Icon(Icons.settings),
      //         ),
      //       ),
      //       InkWell(
      //         onTap: () {},
      //         child: ListTile(
      //           title: Text('Info'),
      //           leading: Icon(Icons.help),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
