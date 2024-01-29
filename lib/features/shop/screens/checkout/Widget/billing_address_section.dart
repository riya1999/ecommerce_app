import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TSectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'change',
          onPressed: () {},
        ),
        Row(
          children: [
            Icon(Icons.phone, color: TColors.gray, size: 16,),
            SizedBox(width: TSizes.spaceBtwIteams,),
            Text('+92-969-4893589',style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        SizedBox(width: TSizes.spaceBtwIteams/2),
        Row(
          children: [
            Icon(Icons.location_history, color: TColors.gray, size: 16,),
            SizedBox(width: TSizes.spaceBtwIteams,),
            Text('South Laina, USA',style: Theme.of(context).textTheme.bodyMedium,softWrap: true,),
            SizedBox(width: TSizes.spaceBtwIteams/2),
          ],
        )
      ],
    );
  }
}
