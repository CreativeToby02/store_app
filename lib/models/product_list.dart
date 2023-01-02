import 'package:flutter/material.dart';
import 'collection.dart';
import 'product_card.dart';

class ProductList extends StatelessWidget {
  final Function() onPressed;

  const ProductList({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const CollectionPic(),
            Row(
              children: [
                ProductCard(
                  onPressed: onPressed,
                  productName: 'Wool sweater',
                  productPrice: '8',
                  image: 'images/product1.jpg',
                ),
                ProductCard(
                  productName: 'Goat wool sweater',
                  productPrice: '10',
                  image: 'images/product2.jpg',
                ),
              ],
            ),
            Row(
              children: const [
                ProductCard(
                  productName: 'Black boots',
                  productPrice: '15',
                  image: 'images/product3.jpg',
                ),
                ProductCard(
                  productName: 'Travel backpack',
                  productPrice: '12',
                  image: 'images/product4.jpg',
                ),
              ],
            ),
            Row(
              children: const [
                ProductCard(
                  productName: 'Blue jeans',
                  productPrice: '7',
                  image: 'images/product5.jpg',
                ),
                ProductCard(
                  productName: 'Old rings',
                  productPrice: '3',
                  image: 'images/product6.jpg',
                ),
              ],
            ),
            Row(
              children: const [
                ProductCard(
                  productName: 'Warm coat',
                  productPrice: '18',
                  image: 'images/product7.jpg',
                ),
                ProductCard(
                  productName: 'Autumn shoes',
                  productPrice: '14',
                  image: 'images/product8.jpg',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
