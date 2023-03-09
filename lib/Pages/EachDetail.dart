// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class EachDetail {
  String title;
  String description;
  String image;
  int calories;
  int carbo;
  int protein;
  String ingredient;
  String Preparation;
  EachDetail(this.title, this.description, this.image, this.calories,
      this.carbo, this.protein, this.ingredient, this.Preparation);
}

List<EachDetail> getEachDetails() {
  return <EachDetail>[
    EachDetail(
        "Chicken Fried Rice",
        "So irresistibly delicious",
        "Assets/imagess/chicken_fried_rice.png",
        250,
        35,
        6,
        IngChickenFriedRice(),
        prepChickenFriedRice()),
    EachDetail(
        "Pasta Bolognese",
        "True Italian classic with a meaty, chilli sauce",
        "Assets/imagess/pasta_bolognese.png",
        200,
        45,
        10,
        IngPastaBolognese(),
        prepPastaBolognese()),
    EachDetail(
        "Garlic Potatoes",
        "Crispy Garlic Roasted Potatoes",
        "Assets/imagess/filete_con_papas_cambray.png",
        150,
        30,
        8,
        IngGarlicPotatoes(),
        prepGarlicPotatoes()),
    EachDetail(
        "Asparagus",
        "White Onion, Fennel, and watercress Salad",
        "Assets/imagess/asparagus.png",
        190,
        35,
        12,
        IngAsparagus(),
        prepAsparagus()),
    EachDetail(
        "Filet Mignon",
        "Bacon-Wrapped Filet Mignon",
        "Assets/imagess/steak_bacon.png",
        250,
        55,
        20,
        IngFiletMignon(),
        prepFiletMignon()),
  ];
}

String IngChickenFriedRice() {
  return "Cooked white rice\n\n"
      "Cooked, diced chicken\n\n"
      "Vegetables (such as peas, carrots, and bell peppers),\n\n"
      "Soy sauce, Sesame oil, Eggs,\n\n"
      "Garlic, Ginger, Green onions,\n\n"
      "Salt and pepper (to taste).\n";
}

String IngPastaBolognese() {
  return "Ground beef or ground pork,\n\n"
      " Onion, Garlic,\n\n"
      "Carrots, Celery, Can of crushed tomatoes, \n\n"
      "Salt, Black pepper, Dried basil, Dried oregano,\n\n"
      "Bay leaves, Olive oil, Penne or spaghetti pasta.\n";
}

String IngGarlicPotatoes() {
  return "Potatoes, Garlic\n\n" "Olive oil,\n\n" "Salt, Black pepper\n";
}

String IngAsparagus() {
  return "Asparagus, \n\n" "Olive oil,\n\n" "Salt, Black pepper.\n";
}

String IngFiletMignon() {
  return "Filet mignon (beef tenderloin steaks)\n\n"
      "Salt, Pepper,\n\n"
      "Optional seasonings or marinades\n";
}

String prepChickenFriedRice() {
  String s = "Heat a large skillet or wok over high heat.\n\n"
      "Add the sesame oil and beaten eggs, and scramble them until cooked through.\n\n"
      "Add the garlic and ginger, and stir-fry for a few seconds until fragrant.\n\n"
      "Add the diced chicken, peas, carrots, and bell peppers, and stir-fry for 2-3 minutes or until the vegetables are tender.\n\n"
      "Add the cooked rice, soy sauce, and green onions, and stir-fry until the rice is heated through and the vegetables are well-mixed.\n\n"
      "Season the rice with salt and pepper to taste.\n";
  return s;
}

String prepPastaBolognese() {
  String s =
      "In a large pot of salted water, bring water to a boil. Add pasta and cook for 8-10 minutes or until al dente.\n\n"
      "In a large skillet, brown the ground beef or pork over medium-high heat. Drain any excess fat.\n\n"
      "Add the onions and garlic to the skillet and sauté for 2-3 minutes or until softened.\n\n"
      "Add the diced tomatoes, broth, tomato paste, oregano, basil, sugar and stir well.\n\n"
      "Bring the mixture to a simmer and cook for 20-25 minutes or until the sauce has thickened. Season with salt and pepper to taste.\n\n"
      "Once the sauce is ready, add the cooked pasta to the skillet and toss to coat well with the sauce.\n";
  return s;
}

String prepGarlicPotatoes() {
  String s = "Preheat your oven to 375 degrees F (190 degrees C).\n"
      "In a large pot, bring water to a boil and add the potatoes. Cook for 15-20 minutes or until tender. Drain and let cool.\n\n"
      "Once the potatoes are cool enough to handle, cut them into bite-size pieces.\n\n"
      "In a small bowl, mix together the olive oil, garlic, parsley, salt and pepper.\n\n"
      "Place the potatoes in a single layer on a baking sheet and pour the garlic mixture over them. Toss to coat the potatoes well.\n\n"
      "Bake for 25-30 minutes or until the potatoes are golden brown and crispy on the outside.\n"
      "Remove from the oven and serve hot.";
  return s;
}

String prepAsparagus() {
  String s = "Instructions:Preheat the oven to 400 degrees F. \n\n"
      "Rinse the asparagus and trim off the woody ends.\n\n"
      "Place the asparagus on a baking sheet and drizzle with olive oil.\n\n"
      "Season the asparagus with salt and pepper.\n\n"
      "Roast the asparagus in the preheated oven for 12-15 minutes, or until tender and lightly browned\n";
  return s;
}

String prepFiletMignon() {
  String s =
      "Take the steaks out of the refrigerator and let them come to room temperature for about 30 minutes before cooking.\n\n"
      "Season both sides of the steaks with salt and pepper.\n\n"
      "Heat a large skillet over high heat. Once the skillet is hot, add a tablespoon of oil or butter.\n\n"
      "Once the butter is melted and hot, add the steaks to the skillet. Cook for 3-4 minutes per side for medium-rare,.\n\n"
      "If desired, add garlic and thyme to the pan for the last minute of cooking for extra flavor.\n\n"
      "Remove the steaks from the skillet and let them rest for 5-10 minutes before serving.\n\n"
      "Serve the filet mignon with your choice of side dishes and enjoy!\n";
  return s;
}
