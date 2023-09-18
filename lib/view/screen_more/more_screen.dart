import 'package:flutter/material.dart';
import 'package:netflix_clone/utilis/color_constant/color.dart';
import 'package:netflix_clone/utilis/image_constant/database/images/databaseimages.dart';
import 'package:netflix_clone/utilis/names/names.dart';
import 'package:netflix_clone/utilis/styles/textstyle.dart';
import 'package:netflix_clone/view/bottomnavi/bottom_navi.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          child: ListView.builder(
            itemCount: DataBaseImages.gridImages.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  InkWell(
                    // onTap: () {
                    //   Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => MainScreen(),
                    //   ));
                    // },
                    child: Container(
                      height: 73,
                      width: 90,
                      child: Image.asset(DataBaseImages.gridImages[index]),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    Names.names[index],
                    style: TextStyle(color: ColorConstant.textColor),
                  )
                ],
              );
            },
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Manage Profile",
              style: StyleConstant.stylewhiteclr,
            ),
            Icon(
              Icons.edit,
              color: Colors.white,
            )
          ],
        ),
        Container(
          height: 375,
          child: Column(
            children: [],
          ),
        )
      ],
    );
  }
}
