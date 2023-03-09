import 'package:flutter/material.dart';

class RecipeDetails {
  int flag;
  String title;
  String description;
  String image;
  int calories;
  int carbo;
  int protein;
  RecipeDetails(this.flag, this.title, this.description, this.image,
      this.calories, this.carbo, this.protein);
}

List<RecipeDetails> getRecipes() {
  return <RecipeDetails>[
    RecipeDetails(0, "Chicken Fried Rice", "So irresistibly delicious",
        "Assets/imagess/chicken_fried_rice.png", 250, 35, 6),
    RecipeDetails(
        0,
        "Pasta Bolognese",
        "True Italian classic with a meaty, chilli sauce",
        "Assets/imagess/pasta_bolognese.png",
        200,
        45,
        10),
    RecipeDetails(0, "Garlic Potatoes", "Crispy Garlic Roasted Potatoes",
        "Assets/imagess/filete_con_papas_cambray.png", 150, 30, 8),
    RecipeDetails(0, "Asparagus", "White Onion, Fennel, and watercress Salad",
        "Assets/imagess/asparagus.png", 190, 35, 12),
    RecipeDetails(0, "Filet Mignon", "Bacon-Wrapped Filet Mignon",
        "Assets/imagess/steak_bacon.png", 250, 55, 20),
  ];
}
