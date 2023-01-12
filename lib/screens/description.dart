import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/screens/chat.dart';

class ProductDescription extends StatefulWidget {
  static const String id = 'ProductDescription';
  const ProductDescription({super.key});

  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  final List<String> imgList = [
    'images/shoe.jpg',
    'images/shoe.jpg',
    'images/shoe.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                // CarouselSlider.builder(
                //   itemCount: imgList.length,
                //   itemBuilder: ((context, index, realIndex) {
                //     final image = imgList[index];
                //     return buildImage(image, index);
                //   }),
                //   options: CarouselOptions(height: 100),
                // ),
                Container(
                  height: 400,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'images/shoe.jpg',
                          )),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25))),
                ),
                Positioned(
                  top: 50,
                  left: 10,
                  child: Container(
                    padding: const EdgeInsets.all(0.1),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                      border: Border.all(color: Colors.white30),
                    ),
                    child: IconButton(
                        iconSize: 30,
                        onPressed: () {
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        icon: Icon(Icons.arrow_back_rounded)),
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 10,
                  child: Container(
                    padding: const EdgeInsets.all(0.1),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                      border: Border.all(color: Colors.white30),
                    ),
                    child: const IconButton(
                        iconSize: 30,
                        onPressed: null,
                        icon: Icon(Icons.favorite_rounded)),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Autumn shoes',
                          style: TextStyle(
                            color: Colors.black87,
                            letterSpacing: 1,
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '\$ 14',
                          style: TextStyle(
                              color: Colors.black87,
                              letterSpacing: -2,
                              fontSize: 30,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            height: 40,
                            width: 180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.grey.shade200),
                            child: Row(
                              children: const [
                                FaIcon(
                                  FontAwesomeIcons.tags,
                                  color: Colors.black45,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Genuine leather',
                                  style: TextStyle(
                                    letterSpacing: 1,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            height: 40,
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.grey.shade200),
                            child: Row(
                              children: const [
                                FaIcon(
                                  FontAwesomeIcons.cloudRain,
                                  color: Colors.black45,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Autumn',
                                  style: TextStyle(
                                    letterSpacing: 1,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 35, left: 22, right: 22),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: const [
                              Text(
                                'size:',
                                style: TextStyle(
                                  color: Colors.black45,
                                  letterSpacing: 1,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                '9.5',
                                style: TextStyle(
                                  color: Colors.black54,
                                  letterSpacing: 1,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              const Text(
                                'heel:',
                                style: TextStyle(
                                  color: Colors.black45,
                                  letterSpacing: 1,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                textBaseline: TextBaseline.alphabetic,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                children: const [
                                  Text(
                                    '5',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      letterSpacing: 1,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'cm',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      letterSpacing: 1,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: const [
                              Text(
                                'width:',
                                style: TextStyle(
                                  letterSpacing: 1,
                                  fontSize: 20,
                                  color: Colors.black45,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'AA',
                                style: TextStyle(
                                  color: Colors.black54,
                                  letterSpacing: 1,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Text(
                        'I sell confortable autumn boots. I\'ve only worn them for one season, so they\'re in good condition. Ready to sell for your price.',
                        style: TextStyle(
                          height: 1.35,
                          color: Colors.black87,
                          letterSpacing: 0.5,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              child: Container(
                                alignment: const Alignment(0, 0),
                                height: 65,
                                width: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xFF2C2C2C)),
                                child: const Text(
                                  'Buy now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    letterSpacing: 0.5,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  Navigator.pushNamed(context, ChatScreen.id);
                                });
                              },
                              child: Container(
                                alignment: const Alignment(0, 0),
                                height: 65,
                                width: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xFFD9FB70)),
                                child: const Text(
                                  'Chat with the seller',
                                  style: TextStyle(
                                    color: Colors.black,
                                    letterSpacing: 0.5,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Widget buildImage(String image, int index) => Container(
//       child: Image.asset(image, fit: BoxFit.cover),
//     );
