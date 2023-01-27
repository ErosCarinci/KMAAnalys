import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_html/flutter_html.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  late CarouselSlider carouselSlider;

  List imageList = [
'assets/images/dator-ritningar-byggarbetsplats-1000.jpg',
'assets/images/flygbild-arbetsfordon-vag-1000.jpg',
'assets/images/ritning-tva-man-1000.jpg',

];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 8, 161, 125),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 250.0,
                initialPage: 0,
                autoPlay: true,
                reverse: false,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                scrollDirection: Axis.horizontal,
                autoPlayInterval: const Duration(seconds: 5),
                autoPlayAnimationDuration: const Duration(milliseconds: 2000),
                onPageChanged: (index, reason) => _currentIndex = index,
                // pauseAutoPlayOnTouch: Duration(seconds: 10),
                // scrollDirection: Axis.horizontal,
              ),
              items: imageList
                  .map(
                    (item) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        margin: const EdgeInsets.only(
                          top: 10.0,
                          bottom: 20.0,
                        ),
                        elevation: 6.0,
                        shadowColor: Color.fromARGB(255, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          child: Image.asset(
                            item,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Welcome, order your KMA here', 
                style: 
                TextStyle(
                  fontSize: 21, fontFamily: 'Lato Black', color: Colors.white,
                  ),
                ),
                
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}