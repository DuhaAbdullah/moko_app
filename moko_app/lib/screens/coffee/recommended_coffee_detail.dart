import 'package:flutter/material.dart';
import 'package:moko_app/routes/routes_helper.dart';
import 'package:moko_app/utils/color.dart';
import 'package:moko_app/utils/dimensions.dart';
import 'package:moko_app/widgets/app_icon.dart';
import 'package:moko_app/widgets/big_text.dart';
import 'package:moko_app/widgets/expandable_text_widget.dart';
import 'package:get/get.dart';
import 'package:moko_app/utils/app_constants.dart';
import '../../controller/recommended_product_controller.dart';

class RecommendedCoffeeDetail extends StatelessWidget {
  const RecommendedCoffeeDetail({
    Key? key,
    required this.pageId,
  }) : super(key: key);
  final int pageId;

  @override
  Widget build(BuildContext context) {
    //this to find a controller
    var product =
        Get.find<RecommendedProductController>().recommendedProductList[pageId];
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (() {
                    Get.toNamed(RouteHelper.getInitial());
                  }),
                  child: const AppIcon(icon: Icons.clear),
                ),
                const AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                child: Center(
                  child: BigText(text: 'DO'),
                ),
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                  'http://mvs.bslmeiyu.com/uploads/' + product.img!,
                  fit: BoxFit.cover,
                  width: double.maxFinite,
                  ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: const ExpandableTextWidget(
                    text:
                        'Coffee is a plant (Coffea) and the name of the drink that is made from this plant. The coffee plant is a bush or tree that can grow up to ten meters he first branded coffee to be sold commercially to the public was Nescafé in 1879. The drink is made from the seeds of the coffee plant, called coffee beans. Coffee is usually served hot, and is a popular drink in many countries. Coffee contains a chemical called caffeine, a mild drug that keeps people awak drying the beans and then roasting. The beans are dried a short time after they are picked. This preserves them and makes them ready to be packed or roasted. Before the beans are made into a drink, they must be roasted or groud into tiny pieces in a coffee mil When the ground coffee is pla high, but is usually Coffee is a plant (Coffea) and the name of the drink that is made from this plant. The coffee plant is a bush or tree that can grow up to ten meters he first branded coffee to be sold commercially to the public was Nescafé in 1879. The drink is made from the seeds of the coffee plant, called coffee beans. Coffee is usually served hot, and is a popular drink in many countries. Coffee contains a chemical called caffeine, a mild drug that keeps people awak drying the beans and then roasting. The beans are dried a short time after they are picked. This preserves them and makes them ready to be packed or roasted. Before the beans are made into a drink, they must be roasted or groud into tiny pieces in a coffee mil When the ground coffee is pla high, but is usua Coffee is a plant (Coffea) and the name of the drink that is made from this plant. The coffee plant is a bush or tree that can grow up to ten meters he first branded coffee to be sold commercially to the public was Nescafé in 1879. The drink is made from the seeds of the coffee plant, called coffee beans. Coffee is usually served hot, and is a popular drink in many countries. Coffee contains a chemical called caffeine, a mild drug that keeps people awak drying the beans and then roasting. The beans are dried a short time after they are picked. This preserves them and makes them ready to be packed or roasted. Before the beans are made into a drink, they must be roasted or groud into tiny pieces in a coffee mil When the ground coffee is pla high, but is usua Coffee is a plant (Coffea) and the name of the drink that is made from this plant. The coffee plant is a bush or tree that can grow up to ten meters he first branded coffee to be sold commercially to the public was Nescafé in 1879. The drink is made from the seeds of the coffee plant, called coffee beans. Coffee is usually served hot, and is a popular drink in many countries. Coffee contains a chemical called caffeine, a mild drug that keeps people awak drying the beans and then roasting. The beans are dried a short time after they are picked. This preserves them and makes them ready to be packed or roasted. Before the beans are made into a drink, they must be roasted or groud into tiny pieces in a coffee mil When the ground coffee is pla high, but is usua cut shorter',
                  ),
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20 * 2.5,
                right: Dimensions.width20 * 2.5,
                top: Dimensions.height10,
                bottom: Dimensions.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  icon: Icons.remove,
                ),
                BigText(
                  text: "\$12.88" "X" + "0",
                  color: AppColors.mainBlockColor,
                  size: Dimensions.font20,
                ),
                AppIcon(iconSize: Dimensions.iconSize16, icon: Icons.add),
              ],
            ),
          ),
          Container(
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
                    child: const Icon(
                      Icons.favorite,
                      color: AppColors.mainColor,
                      size: 28,
                    )),
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
          ),
        ],
      ),
    );
  }
}

class AppConstants {}
