import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ImageCarousel(),
  ));
}

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({Key? key}) : super(key: key);

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  List<CarouselItem> itemList = [
    CarouselItem(
      image: const NetworkImage(
        'https://images.unsplash.com/photo-1550928431-ee0ec6db30d3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      ),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.bottomCenter,
          end: FractionalOffset.topCenter,
          colors: [
            Colors.blueAccent.withOpacity(1),
            Colors.black.withOpacity(.3),
          ],
          stops: const [0.0, 1.0],
        ),
      ),
      title: 'naeim jafari, 36',
      titleTextStyle: const TextStyle(
        fontSize: 35.0,
        color: Colors.white,
      ),
      onImageTap: (i) {},
    ),
    CarouselItem(
      image: const NetworkImage(
        'https://images.unsplash.com/photo-1595781277164-b410ee840b64?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHNleHklMjB3b21lbiUyMG1vZGVsc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
      ),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.bottomCenter,
          end: FractionalOffset.topCenter,
          colors: [
            Colors.blueAccent.withOpacity(1),
            Colors.black.withOpacity(.3),
          ],
          stops: const [0.0, 1.0],
        ),
      ),
      title: 'Komang Gita, 32',
      titleTextStyle: const TextStyle(
        fontSize: 35.0,
        color: Colors.white,
      ),
      // leftSubtitle: '11 Feb 2022',
      // rightSubtitle: 'v1.0.0',
      onImageTap: (i) {},
    ),
    CarouselItem(
      image: const NetworkImage(
        'https://images.unsplash.com/photo-1649864729883-0ba943d27f62?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHNleHklMjB3b21lbiUyMG1vZGVsc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
      ),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.bottomCenter,
          end: FractionalOffset.topCenter,
          colors: [
            Colors.blueAccent.withOpacity(1),
            Colors.black.withOpacity(.3),
          ],
          stops: const [0.0, 1.0],
        ),
      ),
      title: 'Brian Lawson, 25',
      titleTextStyle: const TextStyle(
        fontSize: 35.0,
        color: Colors.white,
      ),
      onImageTap: (i) {},
    ),
    CarouselItem(
      image: const NetworkImage(
        'https://images.unsplash.com/photo-1581044777550-4cfa60707c03?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8c2V4eSUyMHdvbWVuJTIwbW9kZWxzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
      ),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.bottomCenter,
          end: FractionalOffset.topCenter,
          colors: [
            Colors.blueAccent.withOpacity(1),
            Colors.black.withOpacity(.3),
          ],
          stops: const [0.0, 1.0],
        ),
      ),
      title: 'luobu linka, 23',
      titleTextStyle: const TextStyle(
        fontSize: 35.0,
        color: Colors.white,
      ),
      onImageTap: (i) {},
    ),
    CarouselItem(
      image: const NetworkImage(
        'https://images.unsplash.com/photo-1671848606001-02938c4a6dea?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTF8fHNleHklMjB3b21lbiUyMG1vZGVsc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
      ),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.bottomCenter,
          end: FractionalOffset.topCenter,
          colors: [
            Colors.blueAccent.withOpacity(1),
            Colors.black.withOpacity(.3),
          ],
          stops: const [0.0, 1.0],
        ),
      ),
      title: 'Carlos Macias, 28',
      titleTextStyle: const TextStyle(
        fontSize: 35.0,
        color: Colors.white,
      ),
      onImageTap: (i) {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Carousel slider'
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CustomCarouselSlider(
                      items: itemList,
                      height: 600,
                      subHeight: 100,
                      width: MediaQuery.of(context).size.width * .9,
                      autoplay: true,
                      dotSpacing: 10.0,
                      selectedDotHeight: 50.0,
                      selectedDotWidth: 50.0,
                      unselectedDotHeight: 30.0,
                      unselectedDotWidth: 30.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
