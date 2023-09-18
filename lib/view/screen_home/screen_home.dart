import 'package:flutter/material.dart';
import 'package:netflix_clone/utilis/color_constant/color.dart';
import 'package:netflix_clone/view/screen_home/widgets/contaner_scroll.dart';
import 'package:netflix_clone/view/screen_home/widgets/previewscroll.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 425,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/Rectangle 26.jpg"))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    child: Image.asset("assets/logos/logos_netflix-icon.png"),
                  ),
                  Text(
                    "TV Shows",
                    style:
                        TextStyle(fontSize: 18, color: ColorConstant.textColor),
                  ),
                  Text(
                    "Movies",
                    style:
                        TextStyle(fontSize: 18, color: ColorConstant.textColor),
                  ),
                  Text(
                    "My List",
                    style:
                        TextStyle(fontSize: 18, color: ColorConstant.textColor),
                  ),
                ],
              ),
              Text(
                "#2 Today",
                style: TextStyle(fontSize: 18, color: ColorConstant.textColor),
              ),
            ],
          ),
        ),
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
        ContainerScroll(),
        ContainerScroll(),
        ContainerScroll(),
        ContainerScroll(),
        ContainerScroll()
      ],
    );
  }
}
