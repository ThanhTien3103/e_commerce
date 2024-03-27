import 'package:e_commerce/src/view/widgets/button_orange_widget.dart';
import 'package:e_commerce/src/view_models/detail_model_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailScenes extends StatelessWidget {
  DetailScenes({super.key});

  final controller = Get.find<DetailViewModel>();
  var productImageUrl = [
    [
      'assets/images/ps4_console_white_1.png',
      'assets/images/ps4_console_white_2.png',
      'assets/images/ps4_console_white_3.png',
      'assets/images/ps4_console_white_4.png',
    ],
    [
      'assets/images/ps4_console_blue_1.png',
      'assets/images/ps4_console_blue_2.png',
      'assets/images/ps4_console_blue_3.png',
      'assets/images/ps4_console_blue_4.png',
    ],
  ];
  var productHasColor = [
    Colors.white,
    Colors.purple,
    Colors.yellow,
    Colors.redAccent,
  ];

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
        fit: BoxFit.fitWidth,
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
              )),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          body: Obx(() => Container(
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
                          onPressed: () {}, //Todo: add notify handle action
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
                      expandedHeight: MediaQuery.of(context).size.height * 0.3,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Container(
                            alignment: Alignment.center,
                            color: Colors.grey.withOpacity(0.2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(height: 80),
                                Expanded(
                                  child: Image.asset(
                                    productImageUrl[controller.currentColor
                                        .value][controller.currentImage.value],
                                    fit: BoxFit.fill,
                                    colorBlendMode: BlendMode.dstATop,
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  child: Center(
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: productImageUrl[
                                              controller.currentColor.value]
                                          .length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return GestureDetector(
                                          onTap: () {
                                            controller
                                                .changeCurrentImage(index);
                                          },
                                          child: Row(
                                            children: [
                                              _buildSquareContainer(
                                                  productImageUrl[controller
                                                      .currentColor
                                                      .value][index],
                                                  index ==
                                                      controller
                                                          .currentImage.value),
                                              const SizedBox(
                                                width: 10,
                                              )
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                )
                              ],
                            )),
                      ),
                    ),
                    SliverToBoxAdapter(
                        child: Stack(
                      children: [
                        Container(
                            padding: const EdgeInsets.only(left: 20),
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height*0.52 ,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                ),
                                color: Colors.white),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 40),
                                const Text(
                                  'Wireless Controller for PS4',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                const SizedBox(height: 70),
                                SizedBox(
                                    width: 300,
                                    child: Text(
                                      'Wireless Controller for PS4 gives you what you want in your gaming from over precision control your games to sharing what you want',
                                      maxLines: controller.maxLines.value,
                                      style: const TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          color: Colors.grey),
                                    )),
                                const SizedBox(height: 30),
                                InkWell(
                                  onTap: () {
                                    (controller.maxLines.value == 3)
                                        ? controller.showDetail()
                                        : controller.hintDetail();
                                  },
                                  child: (controller.maxLines.value == 3)
                                      ? const Text('See More Detail >',
                                          style: TextStyle(
                                              color: Colors.deepOrange,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600))
                                      : const Text('Hide Detail >',
                                          style: TextStyle(
                                              color: Colors.deepOrange,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600)),
                                ),
                              ],
                            )),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                              padding: const EdgeInsets.only(left: 20),
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height / 20,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                ),
                                color: Colors.grey.withOpacity(0.2),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 300,
                                    height: 50,
                                    child: ListView.builder(
                                      itemCount: productHasColor.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return GestureDetector(
                                          onTap: () {
                                            if (index <
                                                productImageUrl.length) {
                                              controller
                                                  .changeCurrentColor(index);
                                            }
                                          },
                                          child: ColorDot(
                                              color: productHasColor[index],
                                              isCurrent: index ==
                                                  controller
                                                      .currentColor.value),
                                        );
                                      },
                                    ),
                                  ),
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
                              )),
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
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: ButtonOrange(
                                title: 'Add To Cart', onPress: () {}),
                          )
                        ),
                      ),
                    )
                  ],
                ),
              ))),
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
