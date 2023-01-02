import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String productName;
  final String productPrice;
  final String image;
  final Function()? onPressed;

  const ProductCard({
    super.key,
    required this.productName,
    required this.productPrice,
    required this.image,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              GestureDetector(
                onTap: onPressed,
                child: Container(
                  height: 200,
                  width: 180,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  // alignment: const Alignment(0.9, -0.9),
                  //   child: Container(
                  //     padding: const EdgeInsets.all(0.1),
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(18),
                  //       color: Colors.white,
                  //       border: Border.all(color: Colors.white30),
                  //     ),
                  //     child: const IconButton(
                  //         iconSize: 30,
                  //         onPressed: null,
                  //         icon: Icon(Icons.favorite_rounded)),
                  //   ),
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: Container(
                  padding: const EdgeInsets.all(0.1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.white,
                    border: Border.all(color: Colors.white30),
                  ),
                  child: const IconButton(
                      iconSize: 30,
                      focusColor: Colors.black,
                      disabledColor: Colors.black26,
                      onPressed: null,
                      icon: Icon(Icons.favorite_rounded)),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                productName,
                style: const TextStyle(
                  color: Colors.black38,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '\$ $productPrice',
                style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
