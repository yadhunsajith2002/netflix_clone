import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:netflix_clone/model/names/names.dart';
import 'package:netflix_clone/utilis/color_constant/color.dart';
import 'package:netflix_clone/model/image_constant/database/images/databaseimages.dart';
import 'package:netflix_clone/view/screen_home/widgets/contaner_scroll.dart';
import 'package:netflix_clone/view/screen_home/widgets/previewscroll.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        FlutterCarousel.builder(
            itemCount: 4,
            itemBuilder: (context, index, realIndex) {
              return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(DataBaseImages.movies[index]))));
            },
            options: CarouselOptions(
                pageSnapping: true,
                autoPlayCurve: Curves.easeInCirc,
                showIndicator: false,
                autoPlay: true,
                height: MediaQuery.of(context).size.height * 0.4)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 80,
              width: 50,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  Text(
                    "My List",
                    style: TextStyle(color: ColorConstant.textColor),
                  )
                ],
              ),
            ),
            Container(
                width: 80,
                color: Colors.white,
                child: Image.asset(
                  "assets/logos/Group 13.jpg",
                  height: 30,
                  width: 50,
                )),
            Container(
              height: 80,
              width: 50,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                  Text(
                    "Info",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        PreviewScroll(),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: Names.names.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: ContainerScroll(index: index),
            );
          },
        ),
      ],
    );
  }
}
