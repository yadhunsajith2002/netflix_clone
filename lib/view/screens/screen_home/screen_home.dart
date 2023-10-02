import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:netflix_clone/model/names/names.dart';
import 'package:netflix_clone/utilis/color_constant/color.dart';
import 'package:netflix_clone/model/image_constant/database/images/databaseimages.dart';
import 'package:netflix_clone/view/screens/screen_home/widgets/contaner_scroll.dart';
import 'package:netflix_clone/view/screens/screen_home/widgets/previewscroll.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});
  TextStyle style = TextStyle(fontSize: 15);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            leading: Image.asset("assets/logos/logos_netflix-icon.png"),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "TV Shows",
                  style: style,
                ),
                Text(
                  "Movies",
                  style: style,
                ),
                Text(
                  "My List",
                  style: style,
                ),
              ],
            ),
            backgroundColor: Colors.transparent,
            expandedHeight: 300,
            pinned: false,
            flexibleSpace: FlutterCarousel.builder(
                itemCount: 4,
                itemBuilder: (context, index, realIndex) {
                  return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage(DataBaseImages.carousel[index]))));
                },
                options: CarouselOptions(
                    pageSnapping: true,
                    autoPlayCurve: Curves.easeInCirc,
                    showIndicator: false,
                    autoPlay: true,
                    height: MediaQuery.of(context).size.height * 0.4)),
          ),
          SliverList(
              delegate:
                  SliverChildBuilderDelegate(childCount: 1, (context, index) {
            return Column(
              children: [
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
                            color: ColorConstant.textColor,
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
                        color: ColorConstant.textColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.play_arrow),
                            Text(
                              "Play",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
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
                            color: ColorConstant.textColor,
                          ),
                          Text(
                            "Info",
                            style: TextStyle(color: ColorConstant.textColor),
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
                  primary: true,
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
          }))
        ],
      ),
    );
  }
}
