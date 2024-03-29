import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TBillingAmountSection extends StatelessWidget {
  const TBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// SubTotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('SubTotal', style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$256.0', style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwIteams / 2 ,),

        /// Shipping fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$6.0', style: Theme.of(context).textTheme.labelLarge ,)
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwIteams / 2 ,),

        /// Tax fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee', style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$6.0', style: Theme.of(context).textTheme.labelLarge ,)
          ],
        ),

        const SizedBox(height: TSizes.spaceBtwIteams / 2 ,),

        /// Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Totals', style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$6.0', style: Theme.of(context).textTheme.titleMedium ,)
          ],
        ),
      ],
    );
  }
}
