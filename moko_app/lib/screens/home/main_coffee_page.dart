import 'package:flutter/material.dart';
import 'package:moko_app/screens/home/coffee_page_body.dart';
import 'package:moko_app/utils/color.dart';
import 'package:moko_app/utils/dimensions.dart';
import 'package:moko_app/widgets/big_text.dart';
import 'package:moko_app/widgets/small_text.dart';





class MainCoffeePage extends StatefulWidget {
  const MainCoffeePage({Key? key}) : super(key: key);

  @override
  _MainCoffeePageState createState() => _MainCoffeePageState();
}

class _MainCoffeePageState extends State<MainCoffeePage> {
  @override
  Widget build(BuildContext context) {
    //print('current height is ' + MediaQuery.of(context).size.height.toString());
    //print('current width is ' + MediaQuery.of(context).size.width.toString());
    return Scaffold(
      body: Column(
        children: [
          //showing the header
          Container(
            child: Container(
              margin: EdgeInsets.only(
                  top: Dimensions.height45, bottom: Dimensions.height15),
              padding: EdgeInsets.only(
                  left: Dimensions.width20, right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: 'Pakistan',
                        color: AppColors.mainColor,
                        size: 30,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: 'Islamabad',
                            color: Colors.black45,
                            size: 12,
                          ),
                          const Icon(Icons.arrow_drop_down_rounded),
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.width45,
                      height: Dimensions.height45,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: Dimensions.iconSize24,
                      ),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15),
                        color: AppColors.mainColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          //showing the body
          const Expanded(
              child: SingleChildScrollView(
            child: CoffeePageBody(),
          ))
        ],
      ),
    );
  }
}
