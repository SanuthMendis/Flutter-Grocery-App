import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatefulWidget {
  const HorizontalList({super.key});

  @override
  State<HorizontalList> createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  static const List<String> sampleImages = [
    "https://images.unsplash.com/photo-1557700836-25f2464e845d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80",
    "https://images.unsplash.com/photo-1669462277329-f32f928a4a79?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
    "https://images.unsplash.com/photo-1542840410-3092f99611a3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
  ];

  @override
  Widget build(BuildContext context) {
    // final double sliderheight = 80.00;
    return Container(
      // height: sliderheight,
      child: FanCarouselImageSlider(
        imagesLink: sampleImages,
        isAssets: false,
        sliderHeight: 200.0,
        expandImageHeight: 1.0,
        expandImageWidth: 0.0,
        imageRadius: 20.0,
        isClickable: false,
        sliderWidth: 500,
      ),
    );
  }
}



















  // late final PageController pageController;
  // int pageNumber = 0;

  // late final Timer carasoulTimer;

  // Timer getTimer() {
  //   return Timer.periodic(const Duration(seconds: 1), (timer) {
  //     if (pageNumber == 4) {
  //       pageNumber = 0;
  //     }
  //     pageController.animateToPage(
  //       pageNumber,
  //       duration: const Duration(seconds: 1),
  //       curve: Curves.easeInOutCirc,
  //     );
  //     pageNumber++;
  //   });
  // }

  // @override
  // void initState() {
  //   pageController = PageController(
  //     initialPage: 0,
  //     viewportFraction: 0.88,
  //   );
  //   carasoulTimer = getTimer();
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   pageController.dispose();
  //   super.dispose();
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return SingleChildScrollView(
  //     child: Column(
  //       children: [
  //         SizedBox(
  //           height: 250,
  //           child: PageView.builder(
  //             controller: pageController,
  //             onPageChanged: (index) {
  //               pageNumber = index;
  //               setState(() {});
  //             },
  //             itemBuilder: (_, index) {
  //               return AnimatedBuilder(
  //                 animation: pageController,
  //                 builder: (context, child) {
  //                   return child!;
  //                 },
  //                 child: Container(
  //                   margin: const EdgeInsets.only(right: 25, left: 25, top: 36, bottom: 12),
  //                   decoration: BoxDecoration(
  //                     borderRadius: BorderRadius.circular(24.0),
  //                     color: Colors.redAccent.shade100,
  //                   ),
  //                   child: Image.asset(
  //                     imagePaths[index],
  //                     fit: BoxFit.cover,
  //                   ),
  //                 ),
  //               );
  //             },
  //             itemCount: 5,
  //           ),
  //         ),
  //         const SizedBox(
  //           height: 12.0,
  //         ),
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: List.generate(
  //             5,
  //             (index) => Container(
  //               margin: const EdgeInsets.all(4.0),
  //               child: Icon(Icons.circle, size: 12.0, color: pageNumber == index ? Colors.blueAccent : Colors.grey.shade300),
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

