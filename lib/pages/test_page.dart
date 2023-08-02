import 'package:flutter/material.dart';
import 'package:game_test/app/components/Variant_Widget.dart';
import 'package:game_test/app/components/appbar_title_widget.dart';
import 'package:game_test/app/components/slider_widget.dart';
import 'package:game_test/connstants/app_colors.dart';
import 'package:game_test/models/suroo.dart';

class TestPage extends StatefulWidget {
  const TestPage({
    Key? key,
    required this.suroo,
  }) : super(key: key);

  final List<Suroo> suroo;
  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int index = 0;
  int tuuraJoop = 0;
  int kataJoop = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitleWidget(
          suroonunSany: index + 1,
          tuuraJoop: tuuraJoop,
          kataJoop: kataJoop,
          //List dayima 0 don bashtalat
          //suroolor bolso 1 den bashtalat
        ),
      ),
      body: Column(
        children: [
          SliderWidget(value: index),
          const SizedBox(height: 30),
          Text(
            widget.suroo[index].text,
            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/images/${widget.suroo[index].image}',
                fit: BoxFit.fill,
              ),
            ),
          ),
          VariantWidget(
            jooptor: widget.suroo[index].jooptor,
            onTap: (isTrue) {
              if (index + 1 == widget.suroo.length) {
                showDialog<void>(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Тесттин жыйынтыгы'),
                      content: Text(
                        'Туура жооптор:$tuuraJoop \n Ката жооптор:$kataJoop',
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: const Text(
                            'Кайра баштоо',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              index = 0;
                              tuuraJoop = 0;
                              kataJoop = 0;
                            });
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              } else {
                if (isTrue == true) {
                  tuuraJoop++;
                } else {
                  kataJoop++;
                }
                setState(() {
                  index++;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
