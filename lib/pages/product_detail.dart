// import 'package:check_radio_group/radio/radio_group.dart';
import 'package:flutter/material.dart';

// radio button imports
// import 'package:check_radio_group/check/check_group.dart';
// import 'package:check_radio_group/model/group_style.dart';
// import 'package:check_radio_group/model/item_group.dart';
// import 'package:check_radio_group/radio/radio_group.dart';

class ProductDetails extends StatefulWidget {
  final productDetailName;
  final productDetailNewprice;
  final productDetailOldprice;
  final productDetailPicture;

  ProductDetails({
    this.productDetailName,
    this.productDetailNewprice,
    this.productDetailOldprice,
    this.productDetailPicture,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  // final List<GroupItem> radioItems = [
  //   GroupItem(title: 'S'),
  //   GroupItem(title: 'M'),
  //   GroupItem(title: 'L'),
  // ];

  // GroupItem _selected;

  // void initState() {
  //   setState(() {
  //     _selected = radioItems[0];
  //   });
  //   super.initState();
  // }

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

          // Container(
          //   child: RadioGroup(
          //     items: radioItems,
          //     selected: _selected,
          //     style: GroupStyle(
          //         // activeColor: Colors.red,
          //         // checkPosition: ListTileControlAffinity.trailing,
          //         // titleAlign: TextAlign.end,
          //         // titleStyle: TextStyle(fontSize: 12),
          //         ),
          //     onSelected: (item) {
          //       // print(item.title);
          //     },
          //   ),
          // ),
//  ===== CHILDREN 3 DEL LISTVIEW: Botones =====
          Row(
            children: [
              RadioGroup(),
//  ========= Primer boton: Tamaño =========
              // RadioGroup(
              //   items: radioItems,
              //   selected: _selected,
              //   style: GroupStyle(
              //       // activeColor: Colors.red,
              //       // checkPosition: ListTileControlAffinity.trailing,
              //       // titleAlign: TextAlign.end,
              //       // titleStyle: TextStyle(fontSize: 12),
              //       ),
              //   onSelected: (item) {
              //     // print(item.title);
              //   },
              // ),
              // Expanded(
              //     child: MaterialButton(
              //   onPressed: () {},
              //   color: Colors.white,
              //   textColor: Colors.grey,
              //   elevation: 0.2,
              //   child: Row(
              //     children: [
              //       Expanded(
              //         child: Text("Tamaño"),
              //       ),
              //       Expanded(
              //         child: Icon(Icons.arrow_drop_down),
              //       ),
              //     ],
              //   ),
              // )),
//  ========= Segundo boton: Color =========
              // Expanded(
              //     child: MaterialButton(
              //   onPressed: () {},
              //   color: Colors.white,
              //   textColor: Colors.grey,
              //   elevation: 0.2,
              //   child: Row(
              //     children: [
              //       Expanded(
              //         child: Text("Color"),
              //       ),
              //       Expanded(
              //         child: Icon(Icons.arrow_drop_down),
              //       ),
              //     ],
              //   ),
              // )),
//  ========= Tercer boton: Cantidad =========
              // Expanded(
              //     child: MaterialButton(
              //   onPressed: () {},
              //   color: Colors.white,
              //   textColor: Colors.grey,
              //   elevation: 0.2,
              //   child: Row(
              //     children: [
              //       Expanded(
              //         child: Text("Cantidad"),
              //       ),
              //       Expanded(
              //         child: Icon(Icons.arrow_drop_down),
              //       ),
              //     ],
              //   ),
              // )),
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

class RadioGroup extends StatefulWidget {
  @override
  RadioGroupWidget createState() => RadioGroupWidget();
}

class RadioGroupWidget extends State {
  // String radioButtonItem = 'S';
  int id = 1;
  // List<String> _group = ['S', 'M', 'L'];

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Radio(
              value: 1,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  // radioButtonItem = 'S';
                  id = 1;
                });
              },
            ),
            Text(
              'S',
              style: new TextStyle(fontSize: 17.0),
            ),
            Radio(
              value: 2,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  // radioButtonItem = 'M';
                  id = 2;
                });
              },
            ),
            Text(
              'M',
              style: new TextStyle(
                fontSize: 17.0,
              ),
            ),
            Radio(
              value: 3,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  // radioButtonItem = 'L';
                  id = 3;
                });
              },
            ),
            Text(
              'L',
              style: new TextStyle(fontSize: 17.0),
            ),
          ],
        ),
      ],
    );
  }
}
