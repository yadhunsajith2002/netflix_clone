import 'package:flutter/material.dart';
import 'package:netflix_clone/utilis/color_constant/color.dart';
import 'package:netflix_clone/model/image_constant/database/images/databaseimages.dart';
import 'package:netflix_clone/model/names/names.dart';
import 'package:netflix_clone/utilis/styles/textstyle.dart';
import 'package:netflix_clone/view/bottomnavi/bottom_navi.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.15,
          child: ListView.builder(
            itemCount: DataBaseImages.gridImages.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  InkWell(
                    child: Container(
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
        SizedBox(
          height: 20,
        ),
        Container(
          color: Colors.grey.shade900,
          height: 280,
          // color: Colors.amber,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.message,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Tell Friends about Netflix",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 350,
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamusbibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,",
                    style: StyleConstant.stylewhiteclr,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Terms and Conditions",
                  style: StyleConstant.stylegreyclr,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 37,
                      color: Colors.black,
                      width: MediaQuery.of(context).size.width * 0.6,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white),
                          onPressed: () {},
                          child: Text(
                            "Copy Link",
                            style: TextStyle(color: Colors.black),
                          )),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 70,
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) {
                      return VerticalDivider(
                        thickness: 2,
                        color: Colors.white12,
                      );
                    },
                    itemCount: DataBaseImages.linkImages.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          children: [
                            InkWell(
                              // onTap: () {
                              //   Navigator.of(context).push(MaterialPageRoute(
                              //     builder: (context) => MainScreen(),
                              //   ));
                              // },
                              child: Container(
                                child: Image.asset(
                                  DataBaseImages.linkImages[index],
                                  height: 50,
                                  width: 60,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/icons/Group 76.png"),
                Row(
                  children: [
                    Divider(
                      thickness: 5,
                      color: Colors.yellow,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                // Divider(
                //   color: Colors.grey.shade300,
                // ),
                Text(
                  "App Settings",
                  style: StyleConstant.stylewhiteclr,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Account",
                  style: StyleConstant.stylewhiteclr,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Help",
                  style: StyleConstant.stylewhiteclr,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Sign Out",
                  style: StyleConstant.stylewhiteclr,
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
