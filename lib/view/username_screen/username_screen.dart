import 'package:flutter/material.dart';
import 'package:netflix_clone/utilis/color_constant/color.dart';
import 'package:netflix_clone/model/image_constant/database/images/databaseimages.dart';
import 'package:netflix_clone/model/names/names.dart';
import 'package:netflix_clone/view/bottomnavi/bottom_navi.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.primaryColor,
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 150,
                  ),
                  DataBaseImages.logo,
                  SizedBox(
                    width: 100,
                  ),
                  Icon(
                    Icons.edit,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(75),
                child: GridView.builder(
                  itemCount: DataBaseImages.gridImages.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 140,
                      crossAxisSpacing: 0.1),
                  itemBuilder: (context, index) => Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MainScreen(),
                          ));
                        },
                        child: Container(
                          height: 100,
                          width: 92,
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
                  ),
                ),
              )),
              SizedBox(
                height: 60,
              ),
            ],
          ),
        ));
  }
}
