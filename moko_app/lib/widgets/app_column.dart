import 'package:flutter/material.dart';
import 'package:moko_app/utils/color.dart';
import 'package:moko_app/utils/dimensions.dart';
import 'package:moko_app/widgets/big_text.dart';
import 'package:moko_app/widgets/icon_and_text.dart';
import 'package:moko_app/widgets/small_text.dart';

class AppColumn extends StatelessWidget {
  const AppColumn({Key? key, required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, size: Dimensions.font26,),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(
                5,
                (index) => const Icon(
                  Icons.stars,
                  color: AppColors.mainColor,
                  size: 15,
                ),
              ),
            ),
            SizedBox(width: Dimensions.width10),
            SmallText(text: '4.5'),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: '1245'),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: 'Comments'),
          ],
        ),
        SizedBox(height: Dimensions.height20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            IconeAndText(
                icon: Icons.circle_sharp,
                text: 'Normal',
                iconColor: AppColors.iconColor1),
            IconeAndText(
                icon: Icons.location_on,
                text: '1.7km',
                iconColor: AppColors.mainColor),
            IconeAndText(
                icon: Icons.circle_sharp,
                text: '15min',
                iconColor: AppColors.iconColor2),
          ],
        ),
      ],
    );
  }
}
