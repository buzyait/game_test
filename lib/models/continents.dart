import 'package:flutter/material.dart';
import 'package:game_test/connstants/app_colors.dart';
import 'package:game_test/connstants/app_text.dart';
import 'package:game_test/models/suroo.dart';

class Continents {
  const Continents({
    required this.name,
    required this.image,
    required this.color,
    this.suroo,
  });
  final String name;
  final String image;
  final Color color;
  final List<Suroo>? suroo;
}

const europe =
    Continents(name: AppText.europe, image: 'europe', color: AppColors.blue);

final asia = Continents(
  name: AppText.asia,
  image: 'asia',
  color: AppColors.asia,
  suroo: asiaQuestions,
);

const northAmerica = Continents(
    name: AppText.northAmerica,
    image: 'north_america',
    color: AppColors.northAmerica);

const southAmerica = Continents(
    name: AppText.southAmerica,
    image: 'south_america',
    color: AppColors.southAmerica);

const africa =
    Continents(name: AppText.africa, image: 'africa', color: AppColors.africa);

const australia = Continents(
    name: AppText.australia, image: 'australia', color: AppColors.australia);

List<Continents> continents = [
  europe,
  asia,
  northAmerica,
  southAmerica,
  africa,
  australia,
];
