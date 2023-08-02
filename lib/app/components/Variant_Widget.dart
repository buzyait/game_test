import 'package:flutter/material.dart';
import 'package:game_test/connstants/app_colors.dart';
import 'package:game_test/models/suroo.dart';

List<String> countries = ['Kyrgyzstan', 'China', 'Russia', 'USA'];

class VariantWidget extends StatelessWidget {
  const VariantWidget({
    required this.jooptor,
    required this.onTap,
    super.key,
  });

  final List<Joop> jooptor;
  final void Function(bool) onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 170,
          ),
          itemCount: 4,
          itemBuilder: (context, index) {
            final item = jooptor[index];
            return InkWell(
              onTap: () {
                onTap(item.isTrue);
              },
              child: Card(
                color: AppColors.active,
                child: Center(
                  child: Text(
                    item.text,
                    style: const TextStyle(fontSize: 30),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
