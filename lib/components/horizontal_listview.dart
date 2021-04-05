import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      height: 90.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            imageLocation: 'images/horizontal_list/tshirt.png',
            imageCaption: '1',
          ),
          Category(
            imageLocation: 'images/horizontal_list/dress.png',
            imageCaption: '2',
          ),
          Category(
            imageLocation: 'images/horizontal_list/jeans.png',
            imageCaption: '3',
          ),
          Category(
            imageLocation: 'images/horizontal_list/formal.png',
            imageCaption: '4',
          ),
          Category(
            imageLocation: 'images/horizontal_list/informal.png',
            imageCaption: '4',
          ),
          Category(
            imageLocation: 'images/horizontal_list/shoe.png',
            imageCaption: '4',
          ),
          Category(
            imageLocation: 'images/horizontal_list/accessories.png',
            imageCaption: '4',
          ),
          // Category(
          //   imageLocation: 'images/horizontal_list/strawberry.png',
          //   imageCaption: '1',
          // ),
          // Category(
          //   imageLocation: 'images/horizontal_list/apple.png',
          //   imageCaption: '2',
          // ),
          // Category(
          //   imageLocation: 'images/horizontal_list/cherry.png',
          //   imageCaption: '3',
          // ),
          // Category(
          //   imageLocation: 'images/horizontal_list/peach.png',
          //   imageCaption: '4',
          // ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageCaption;
  final String imageLocation;

  Category({this.imageLocation, this.imageCaption});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              imageLocation,
              width: 100.0,
              height: 60.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                imageCaption,
                style: TextStyle(fontSize: 13.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
