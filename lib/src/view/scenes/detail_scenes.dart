import 'package:e_commerce/src/view/widgets/button_orange_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailScenes extends StatelessWidget {
  const DetailScenes({super.key});

  Widget _buildSquareContainer(String imagePath, bool isCurrent) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: (isCurrent)
              ? Border.all(
                  color: Colors.red,
                  width: 1,
                )
              : null),
      child: Image.asset(
        imagePath,
        fit: BoxFit.fill,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          floatingActionButton: Align(
              alignment: Alignment.centerRight,
              child: Container(
                padding: const EdgeInsets.only(top: 200),
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.redAccent.withOpacity(0.4),
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
              )
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          body: Container(
            color: Colors.grey.withOpacity(0.2),
            child: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  actions: [
                    IconButton(
                      icon: Container(
                        width: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('4.5'),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                          ],
                        ),
                      ),
                      onPressed: () {  }, //Todo: add notify handle action
                    ),
                  ],
                  leading: Container(
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.arrow_back_ios_new),
                        ),
                      ),
                    ),
                  ),
                  expandedHeight: 410.0,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                        alignment: Alignment.center,
                        color: Colors.grey.withOpacity(0.2),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 80),
                            Image.asset(
                              'assets/images/Image_Popular_Product_1.png',
                              fit: BoxFit.fitWidth,
                              colorBlendMode: BlendMode.dstATop,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                _buildSquareContainer(
                                    'assets/images/Image_Popular_Product_1.png',
                                    true),
                                const SizedBox(width: 10),
                                _buildSquareContainer(
                                    'assets/images/Image_Popular_Product_1.png',
                                    false),
                                const SizedBox(width: 10),
                                _buildSquareContainer(
                                    'assets/images/Image_Popular_Product_1.png',
                                    false),
                                const SizedBox(width: 10),
                                _buildSquareContainer(
                                    'assets/images/Image_Popular_Product_1.png',
                                    false),
                              ],
                            ),
                          ],
                        )),
                  ),
                ),
                SliverToBoxAdapter(
                    child: Stack(
                  children: [
                    Container(
                        padding: const EdgeInsets.only(left: 20),
                        width: 500,
                        height: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 40),
                            Text(
                              'Wireless Controller for PS4',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(height: 70),
                            SizedBox(
                                width: 300,
                                child: Text(
                                  'Wireless Controller for PS4 gives you what you want in your gaming from over precision control your games to sharing what you want',
                                  maxLines: 3,
                                  style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.grey),
                                )
                            ),
                            SizedBox(height: 30),
                            SizedBox(
                              width: 200,
                              child: InkWell(
                                child: Text('See More Detail >',
                                    style: TextStyle(
                                        color: Colors.redAccent,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600)),
                              ),
                            ),
                          ],
                        )
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.only(left: 20),
                        width: 500,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey.withOpacity(0.2),
                        ),
                        child: Row(
                          children: [
                            const ColorDot(
                                color: Colors.redAccent, isCurrent: true),
                            const ColorDot(
                                color: Colors.purple, isCurrent: false),
                            const ColorDot(
                                color: Colors.yellow, isCurrent: false),
                            const ColorDot(
                                color: Colors.white, isCurrent: false),
                            const Spacer(),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white),
                              child: const Icon(Icons.remove),
                            ),
                            const Spacer(),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white),
                              child: const Icon(Icons.add),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      height: 100,
                      child: ButtonOrange(title: 'Add To Cart', onPress: () {}),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class DotPainter extends CustomPainter {
  final Color color;

  DotPainter(this.color);
  @override
  void paint(Canvas canvas, Size size) {
    const double dotRadius = 20.0;
    final Paint dotPaint = Paint()..color = color;

    double centerX = size.width / 2;
    double centerY = size.height / 2;

    canvas.drawCircle(Offset(centerX, centerY), dotRadius, dotPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class DotLine extends StatelessWidget {
  final Color color;

  const DotLine({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(50, 50),
      painter: DotPainter(color),
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isCurrent;

  const ColorDot({super.key, required this.color, required this.isCurrent});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          border: isCurrent ? Border.all(color: Colors.red, width: 1.0) : null,
          borderRadius: BorderRadius.circular(50)),
      child: DotLine(color: color),
    );
  }
}
