import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widgets.dart';
import 'circular_container.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: SizedBox(
        height: 400,
        child: Container(
          color: TColors.primary,
          /// If [size.infinite' : is not true. in stack] error occurred -> Read Readme.md file at [Design error] #1
          child: Stack(
            children: [
              /// Background Custom Shape
              Positioned(top: -150, right: -250, child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1))),
              Positioned(top: 100, right: -300, child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1))),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
