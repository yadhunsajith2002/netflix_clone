import 'package:flutter/material.dart';
import 'package:netflix_clone/model/image_constant/database/images/databaseimages.dart';
import 'package:netflix_clone/utilis/color_constant/color.dart';

class ContinueWatching extends StatefulWidget {
  const ContinueWatching({super.key});

  @override
  State<ContinueWatching> createState() => _ContinueWatchingState();
}

class _ContinueWatchingState extends State<ContinueWatching> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 200,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 120,
                    height: 130,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(DataBaseImages.movies[index]),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    height: 5,
                    color: Colors.red,
                    width: 90,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.info_outline,
                          color: ColorConstant.textColor,
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert,
                          color: ColorConstant.textColor,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 10,
              );
            },
            itemCount: DataBaseImages.movies.length),
      ),
    );
  }
}
