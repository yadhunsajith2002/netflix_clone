import 'package:flutter/material.dart';
import 'package:netflix_clone/utilis/color_constant/color.dart';
import 'package:netflix_clone/utilis/image_constant/database/images/databaseimages.dart';
import 'package:netflix_clone/utilis/names/names.dart';
import 'package:netflix_clone/view/screen_search/widgets/search_container.dart';

class Screensearch extends StatelessWidget {
  const Screensearch({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 52,
          color: ColorConstant.secondaryColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.search,
                color: ColorConstant.textColor,
              ),
              Text(
                "Search for a show,movie,gnre,etc..",
                style: TextStyle(fontSize: 18, color: ColorConstant.lightColor),
              ),
              Icon(
                Icons.mic,
                color: ColorConstant.textColor,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Text(
                "Top Searches",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: ColorConstant.textColor),
              )
            ],
          ),
        ),
        ListView.builder(
          itemCount: DataBaseImages.movies.length,
          // scrollDirection: Axis.vertical,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return SearchContainer(
                names: Names.topSearch[index],
                images: DataBaseImages.movies[index]);
          },
        )
      ],
    );
  }
}
