import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final productDetailName;
  final productDetailNewprice;
  final productDetailOldprice;
  final productDetailPicture;

  ProductDetails(
      {this.productDetailName,
      this.productDetailNewprice,
      this.productDetailOldprice,
      this.productDetailPicture});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
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
//  ===== INICIO DEL BODY/LISTVIEW =====
      body: ListView(
        children: [
//  ===== CHILDREN 1 DEL LISTVIEW: Imagen del producto =====
          Container(
            height: 410.0,
            color: Colors.black,
            child: GridTile(
              child: Container(
                color: Colors.white70,
                child: Image.asset(widget.productDetailPicture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.productDetailName,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black54),
                  ),
                  // title: Row(
                  //   children: [
                  //     Expanded(
                  //       child: Text(
                  //         "\$${widget.productDetailOldprice}",
                  //         style: TextStyle(
                  //             color: Colors.grey,
                  //             decoration: TextDecoration.lineThrough),
                  //       ),
                  //     ),
                  //     Expanded(
                  //       child: Text(
                  //         "\$${widget.productDetailNewprice}",
                  //         style: TextStyle(
                  //             fontWeight: FontWeight.bold, color: Colors.red),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ),
              ),
            ),
          ),
//  ===== CHILDREN 2 DEL LISTVIEW: Precio =====
          Container(
            height: 50.0,
            padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
            child: Text(
              "\$${widget.productDetailNewprice}",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20.0),
            ),
          ),
//  ===== CHILDREN 3 DEL LISTVIEW: Botones =====
          Row(
            children: [
//  ========= Primer boton: Tamaño =========
              Expanded(
                  child: MaterialButton(
                onPressed: () {},
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(
                      child: Text("Tamaño"),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              )),
//  ========= Segundo boton: Color =========
              Expanded(
                  child: MaterialButton(
                onPressed: () {},
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(
                      child: Text("Color"),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              )),
//  ========= Tercer boton: Cantidad =========
              Expanded(
                  child: MaterialButton(
                onPressed: () {},
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(
                      child: Text("Cantidad"),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              )),
            ],
          ),
        ],
      ),
//  ===== FINAL DEL BODY/LISTVIEW =====

// ===== BOTTOM BAR =====
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
                child: MaterialButton(
                  padding: EdgeInsets.all(2.0),
                  height: 40.0,
                  onPressed: () {},
                  color: Color.fromARGB(255, 255, 158, 184),
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text("Comprar"),
                ),
              ),
            ),
            IconButton(
              padding: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0),
              icon: Icon(
                Icons.add_shopping_cart,
                color: Colors.red,
              ),
              onPressed: () {},
            ),
            IconButton(
              padding: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0),
              icon: Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
