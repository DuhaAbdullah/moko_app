import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moko_app/controller/popular_product_controller.dart';
import 'package:moko_app/screens/home/main_coffee_page.dart';
import 'package:moko_app/utils/dimensions.dart';
import 'package:moko_app/widgets/app_column.dart';
import 'package:moko_app/widgets/app_icon.dart';
import 'package:moko_app/widgets/expandable_text_widget.dart';

import '../../utils/color.dart';
import '../../widgets/big_text.dart';

class PopularCoffeeDetail extends StatelessWidget {
  PopularCoffeeDetail({Key? key, required this.pageId}) : super(key: key);

  int pageId;
  @override
  Widget build(BuildContext context) {
    //this to find a controller
    var product =   Get.find<PopularProductController>().popularProductList[pageId];
    print("page is id ");
    return Scaffold(
        body: Stack(
          children: [
            //background image
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularCoffeeImgSize,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/coffee_img1.jpg'),
                  ),
                ),
              ),
            ),
            //icon widget
            Positioned(
              top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.to(() => const MainCoffeePage());
                      },
                      child: const AppIcon(icon: Icons.arrow_back_ios)),
                  const AppIcon(icon: Icons.shopping_bag_outlined),
                ],
              ),
            ),
            //details to the cooffee
            Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                top: Dimensions.popularCoffeeImgSize - 20,
                child: Container(
                  padding: EdgeInsets.only(
                      left: Dimensions.width20,
                      right: Dimensions.width20,
                      top: Dimensions.height20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AppColumn(text: 'Cappuccino'),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      BigText(text: 'Details'),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      const Expanded(
                        child: SingleChildScrollView(
                          child: ExpandableTextWidget(
                              text:
                                  'Coffee is a plant (Coffea) and the name of the drink that is made from this plant. The coffee plant is a bush or tree that can grow up to ten meters he first branded coffee to be sold commercially to the public was Nescafé in 1879. The drink is made from the seeds of the coffee plant, called coffee beans. Coffee is usually served hot, and is a popular drink in many countries. Coffee contains a chemical called caffeine, a mild drug that keeps people awak drying the beans and then roasting. The beans are dried a short time after they are picked. This preserves them and makes them ready to be packed or roasted. Before the beans are made into a drink, they must be roasted or groud into tiny pieces in a coffee mil When the ground coffee is pla high, but is usually cut shorter'),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
        bottomNavigationBar: Container(
          height: Dimensions.navigationContainer,
          padding: EdgeInsets.only(
              top: Dimensions.height10,
              bottom: Dimensions.height10,
              left: Dimensions.width20,
              right: Dimensions.width20),
          decoration: BoxDecoration(
              color: AppColors.buttonBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20 * 2),
                topRight: Radius.circular(Dimensions.radius20 * 2),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.remove,
                      color: AppColors.signColor,
                    ),
                    SizedBox(
                      width: Dimensions.width10 / 2,
                    ),
                    BigText(text: '0'),
                    SizedBox(
                      width: Dimensions.width10 / 2,
                    ),
                    const Icon(
                      Icons.add,
                      color: AppColors.signColor,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height10,
                    bottom: Dimensions.height10,
                    left: Dimensions.width20,
                    right: Dimensions.width20),
                child: BigText(
                  text: '\$10 | Add to cart',
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                  color: AppColors.mainColor,
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                ),
              )
            ],
          ),
        ));
  }
}
