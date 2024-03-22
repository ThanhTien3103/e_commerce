import 'package:e_commerce/src/view/widgets/balloon_icon_widget.dart';
import 'package:e_commerce/src/view/widgets/card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/category_card_widget.dart';



class HomeScenes extends StatelessWidget {
  const HomeScenes({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoryCardWidget> list = [
      const CategoryCardWidget(icon: Icon(Icons.flash_on_outlined), title: 'Flash Deal'),
      const CategoryCardWidget(icon: Icon(Icons.message), title: 'Bill'),
      const CategoryCardWidget(icon: Icon(Icons.games_outlined), title: 'Game'),
      const CategoryCardWidget(icon: Icon(Icons.gif_box_outlined), title: 'Daily Gift'),
      const CategoryCardWidget(icon: Icon(Icons.more), title: 'More'),
    ];
    List<CardWidget> listProductStyle = [
      CardWidget(line: [Text('Smartphone', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)), Text('18 Brands', style: TextStyle(color: Colors.white.withOpacity(1), fontSize: 14, fontWeight: FontWeight.bold) )], image: 'assets/images/Image_Banner_2.png',),
      const CardWidget(line: [Text('Fashion', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)), Text('24 Brands', style: TextStyle(color: Colors.white, fontSize: 14) )], image: 'assets/images/Image_Banner_3.png',)
    ];
    List<CardWidget> listProduct = [
      CardWidget(line: [Text('', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)), Text('', style: TextStyle(color: Colors.white.withOpacity(1), fontSize: 14, fontWeight: FontWeight.bold) )], image: 'assets/images/Image_Popular_Product_1.png',),
      CardWidget(line: [Text('', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)), Text('', style: TextStyle(color: Colors.white.withOpacity(1), fontSize: 14, fontWeight: FontWeight.bold) )], image: 'assets/images/Image_Popular_Product_2.png',),
      CardWidget(line: [Text('', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)), Text('', style: TextStyle(color: Colors.white.withOpacity(1), fontSize: 14, fontWeight: FontWeight.bold) )], image: 'assets/images/Image_Popular_Product_3.png',),
    ];
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 150,
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 55,
                            padding: const EdgeInsets.symmetric(horizontal: 5), // Adjust horizontal padding as needed
                            child: CupertinoSearchTextField(
                              placeholder: 'Search product',
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black12.withOpacity(0.05),
                              ),// Placeholder text
                              placeholderStyle: const TextStyle(color: Colors.grey), // Adjust placeholder font size
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5), // Adjust horizontal padding as needed
                          child: BalloonIconWidget(
                            icons: const Icon(Icons.shopping_cart_outlined, size: 30, color: Colors.grey),
                            label: 'Cart',
                            onPress: () {},
                            color: Colors.black12.withOpacity(0.05),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5), // Adjust horizontal padding as needed
                          child: BalloonIconWidget(
                            icons: const Icon(Icons.notifications_active_outlined, size: 30, color: Colors.grey),
                            label: 'Notify',
                            onPress: () {},
                            color: Colors.black12.withOpacity(0.05),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 100,
                      width: 400,
                      child: CardWidget(
                        line: [Text('A Summer Surprise', style: TextStyle(color: Colors.white, fontSize: 14)), Text('CashBack 20%', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold))],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      height: 100, // Adjust the height as needed
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: list.length,
                        itemBuilder: (context, index) => list[index],
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Special for you',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      overflow: TextOverflow.ellipsis
                                  ),
                                  maxLines: 1,
                                ),
                              )
                          ),
                          Container(
                            width: 100,
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(right: 20),
                            child: const InkWell(
                              child: Text('See More', style: TextStyle(color: Colors.grey, fontSize: 16)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 150,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: listProductStyle.length,
                        itemBuilder: (context, index) => Container(
                          width: 250,
                          padding: const EdgeInsets.only(left: 20),
                          child: listProductStyle[index],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Popular Product',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      overflow: TextOverflow.ellipsis
                                  ),
                                  maxLines: 1,
                                ),
                              )
                          ),
                          Container(
                            width: 100,
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(right: 20),
                            child: const InkWell(
                              child: Text('See More', style: TextStyle(color: Colors.grey, fontSize: 16)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 250,
                      padding: const EdgeInsets.all(10),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: listProduct.length,
                        itemBuilder: (context, index) => Container(
                          width: 250,
                          padding: const EdgeInsets.only(left: 20),
                          child: listProduct[index],
                        ),
                      ),
                    ),
                  ],
                ),
              )
          )
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(bottom: 10),
        height: 100,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white54,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BalloonIconWidget(icons: const Icon(Icons.home, color: Colors.deepOrange,), label: 'home', onPress: () {}),
            BalloonIconWidget(icons: const Icon(Icons.favorite_border,  color: Colors.grey), label: 'favorite', onPress: () {}),
            BalloonIconWidget(icons: const Icon(Icons.message_outlined,  color: Colors.grey), label: 'message', onPress: () {}),
            BalloonIconWidget(icons: const Icon(Icons.account_circle_outlined,  color: Colors.grey), label: 'account', onPress: () {}),
          ],
        ),
      ),
    );
  }

}