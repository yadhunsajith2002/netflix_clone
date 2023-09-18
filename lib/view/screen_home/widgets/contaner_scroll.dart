import 'package:flutter/material.dart';
import 'package:netflix_clone/utilis/color_constant/color.dart';
import 'package:netflix_clone/utilis/image_constant/database/images/databaseimages.dart';

class ContainerScroll extends StatelessWidget {
  const ContainerScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12, top: 10),
              child: Text(
                "Continue to watch Emenalo",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    color: ColorConstant.textColor),
              ),
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 160,
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 10,
              );
            },
            itemCount: DataBaseImages.movies.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                height: 110,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(DataBaseImages.movies[index]))),
              );
            },
          ),
        )
      ],
    );
  }
}
