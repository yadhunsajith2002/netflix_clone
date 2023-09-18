import 'package:flutter/material.dart';
import 'package:netflix_clone/utilis/color_constant/color.dart';
import 'package:netflix_clone/utilis/image_constant/database/images/databaseimages.dart';
import 'package:netflix_clone/utilis/styles/textstyle.dart';
import 'package:netflix_clone/view/screen_coming_soon/widgets/relaese_movies.dart';
import 'package:netflix_clone/view/screen_coming_soon/widgets/releasedetails.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Container(
              height: 19,
              width: 19,
              child: Image.asset(
                "assets/logos/Group 49.png",
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Notifications",
              style: StyleConstant.style,
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 130,
          width: double.infinity,
          color: ColorConstant.secondaryColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              children: [
                ReleaseMoviecontainer(
                  image: "assets/images/movies/movie3.jpeg",
                ),
                SizedBox(
                  height: 8,
                ),
                ReleaseMoviecontainer(
                  image: "assets/images/movies/movie8.jpeg",
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) {
            return ReleaseDetails();
          },
        )
      ],
    );
  }
}
