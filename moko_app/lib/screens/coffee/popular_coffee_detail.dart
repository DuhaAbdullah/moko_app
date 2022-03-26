import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moko_app/controller/popular_product_controller.dart';
import 'package:moko_app/screens/home/main_coffee_page.dart';
import 'package:moko_app/utils/app_constants.dart';
import 'package:moko_app/utils/dimensions.dart';
import 'package:moko_app/widgets/app_column.dart';
import 'package:moko_app/widgets/app_icon.dart';
import 'package:moko_app/widgets/expandable_text_widget.dart';
import 'package:moko_app/controller/recommended_product_controller.dart' as dp;
import '../../utils/color.dart';
import '../../widgets/big_text.dart';

// ignore: must_be_immutable
class PopularCoffeeDetail extends StatelessWidget {
  PopularCoffeeDetail({Key? key, required this.pageId}) : super(key: key);

  int pageId;
  @override
  Widget build(BuildContext context) {
    //this to find a controller
    var product =
        Get.find<PopularProductController>().popularProductList[pageId];
    //print("page is id "+ pageId.toString());
    //print("product name is: "+ product.name.toString());
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
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(AppConstants.baseUrl +
                        AppConstants.uploadUrl +
                        product.img!),
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
                      AppColumn(text: product.name!),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      BigText(text: 'Details'),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child:
                              ExpandableTextWidget(text: product.description!),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
        bottomNavigationBar: GetBuilder<PopularProductController>(
          builder: ((popularProduct) {
            return Container(
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
                        BigText(text: popularProduct.quantity.toString()),
                        SizedBox(
                          width: Dimensions.width10 / 2,
                        ),
                        GestureDetector(
                          onTap: () {
                            popularProduct.setQuanitiy(true);
                          },
                          child: const Icon(
                            Icons.add,
                            color: AppColors.signColor,
                          ),
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
                      text: "\$ ${product.price!} | Add to cart",
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                    ),
                  )
                ],
              ),
            );
          }),
        ));
  }
}
