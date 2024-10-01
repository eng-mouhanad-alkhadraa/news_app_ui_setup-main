import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategroryModel> categories = const [
    CategroryModel(
        image: 'assets/images/Business.jpg', categoryname: 'Business'),
    CategroryModel(
        image: 'assets/images/entertaiment.jpg', categoryname: 'Entertainment'),
    CategroryModel(image: 'assets/images/health.jpg', categoryname: 'Health'),
    CategroryModel(
        image: 'assets/images/science.webp', categoryname: 'Science'),
    CategroryModel(
        image: 'assets/images/technology.jpg', categoryname: 'Technology'),
    CategroryModel(image: 'assets/images/Sports.jpeg', categoryname: 'Sports'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
