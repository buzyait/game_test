import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game_test/connstants/app_colors.dart';
import 'package:game_test/models/continents.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    required this.item,
    required this.ontap,
    super.key,
  });

  final Continents item;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Card(
        color: AppColors.white,
        child: Column(
          children: [
            const SizedBox(height: 5),
            Text(
              item.name,
              style: TextStyle(fontSize: 22),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'assets/icons/${item.image}.svg',
                  color: item.color,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.star_outline),
              ],
            )
          ],
        ),
      ),
    );
  }
}
