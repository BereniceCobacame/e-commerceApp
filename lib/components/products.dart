import 'package:ecommerce_app/pages/product_detail.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name": "Blusa 1",
      "picture": "images/productos/blusa1.jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Blusa 2",
      "picture": "images/productos/blusa2.jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Blusa 3",
      "picture": "images/productos/blusa3.jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Bolso 1",
      "picture": "images/productos/bolso1.jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Bolso 2",
      "picture": "images/productos/bolso2.jpg",
      "old_price": 120,
      "price": 85,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return SingleProduct(
          productName: productList[index]['name'],
          productPicture: productList[index]['picture'],
          productOldprice: productList[index]['old_price'],
          productPrice: productList[index]['price'],
        );
      },
    );
  }
}

class SingleProduct extends StatelessWidget {
  final productName;
  final productPicture;
  final productOldprice;
  final productPrice;

  SingleProduct(
      {this.productName,
      this.productPicture,
      this.productOldprice,
      this.productPrice});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: productName,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  // pasando los valores del producto a la clase/page
                  // de detalle de producto, single product
                  builder: (context) => ProductDetails(
                        productDetailName: productName,
                        productDetailNewprice: productPrice,
                        productDetailOldprice: productOldprice,
                        productDetailPicture: productPicture,
                      ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        productName,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        "\$$productPrice",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w800),
                      ),
                      subtitle: Text(
                        "\$$productOldprice",
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    productPicture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
