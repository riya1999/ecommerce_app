import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../icons/t_circular_icon.dart';

class TProductQuantityWithAddRemove extends StatelessWidget {
  const TProductQuantityWithAddRemove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: TSizes.md,
          color: THelperFunction.isDarkMode(context)
              ? Colors.white
              : TColors.black,
          backgroundColor: THelperFunction.isDarkMode(context)
              ? TColors.darkerGray
              : TColors.light,
        ),
        SizedBox(
          width: TSizes.spaceBtwIteams,
        ),
        Text(
          '2',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox(
          width: TSizes.spaceBtwIteams,
        ),
        TCircularIcon(
            icon: Iconsax.add,
            width: 32,
            height: 32,
            size: TSizes.md,
            color: Colors.white,
            backgroundColor: TColors.primary),
      ],
    );
  }
}
