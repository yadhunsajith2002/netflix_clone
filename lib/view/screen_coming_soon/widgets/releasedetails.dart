import 'package:flutter/material.dart';
import 'package:netflix_clone/utilis/color_constant/color.dart';
import 'package:netflix_clone/utilis/image_constant/database/images/databaseimages.dart';
import 'package:netflix_clone/utilis/styles/textstyle.dart';

class ReleaseDetails extends StatelessWidget {
  const ReleaseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
      width: double.infinity,
      color: Colors.grey,
      child: Column(
        children: [
          Container(
            height: 190,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(DataBaseImages.movies[5]))),
          ),
          Container(
            height: 230,
            color: Colors.black,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.notifications,
                            size: 30,
                            color: ColorConstant.textColor,
                          ),
                          Text(
                            "Remind me",
                            style: StyleConstant.stylewhiteclr,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.share,
                            size: 30,
                            color: ColorConstant.textColor,
                          ),
                          Text(
                            "Share",
                            style: StyleConstant.stylewhiteclr,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Season 1 coming on December 14",
                            style: StyleConstant.stylegreyclr,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Castle & Castle",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                            width: 390,
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam enim non posuere pulvinar diam.",
                              style: StyleConstant.stylegreyclr,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Staemy . Soapy .Slowburn . Suspendful .Teen . Mystery .",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
