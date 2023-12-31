import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:game_test/app/components/custom_card.dart';
import 'package:game_test/connstants/app_colors.dart';
import 'package:game_test/connstants/app_text.dart';
import 'package:game_test/models/continents.dart';
import 'package:game_test/models/suroo.dart';
import 'package:game_test/pages/test_page.dart';

class NomePage extends StatelessWidget {
  const NomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.volume_up,
              color: AppColors.yellow,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: AppColors.blue,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert, color: AppColors.black),
          ),
        ],
        backgroundColor: AppColors.bgColor,
        title: const Text(
          AppText.appBarText,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: AppColors.bgColor,
      body: Column(
        children: [
          // ignore: prefer_const_constructors
          Divider(
            indent: 26,
            endIndent: 26,
            thickness: 2,
            color: AppColors.black,
          ),
          //ListViewWidget- ойдодон ылдый коздой тизип берет
          //GridViewWidget-oндон солду карай тизип берет колонкаларды
//index emne uchun jazdyk...GridView.builder de baaryn aluu uchun indexti berebiz
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: continents.length,
              itemBuilder: (context, index) {
                final continent = continents[index];
                return CustomCard(
                  ontap: () {
                    if (continent.suroo != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TestPage(
                            suroo: continent.suroo!,
                          ),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Бул континентте суроо жок'),
                        ),
                      );
                    }
                  },
                  item: continent,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
