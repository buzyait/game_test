import 'package:flutter/material.dart';
import 'package:game_test/connstants/app_colors.dart';
import 'package:game_test/models/suroo.dart';

class AppBarTitleWidget extends StatelessWidget {
  const AppBarTitleWidget({
    required this.tuuraJoop,
    required this.kataJoop,
    required this.suroonunSany,
    super.key,
  });
  final int suroonunSany;
  final int tuuraJoop;
  final int kataJoop;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Row(
              children: [
                Text(
                  '$tuuraJoop',
                  style: TextStyle(fontSize: 16, color: AppColors.yellow),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    '${asiaQuestions.length}',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  '$kataJoop',
                  style: TextStyle(fontSize: 16, color: AppColors.active),
                ),
              ],
            ),
          ),
        ),
        Text(
          '$suroonunSany',
          style: TextStyle(fontSize: 22),
        ),
        Row(
          children: [
            SizedBox(
              width: 70,
              height: 30,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const Icon(Icons.favorite, color: AppColors.red);
                },
              ),
            ),
            //Icon(Icons.favorite, color: AppColors.red),
            //Icon(Icons.favorite, color: AppColors.red),
            // Icon(Icons.favorite, color: AppColors.red),
            InkWell(
              onTap: () {},
              child: const Icon(Icons.more_vert),
            ),
          ],
        )
      ],
    );
  }
}
