import 'package:dek_mhob/components/my_current_location.dart';
import 'package:dek_mhob/components/my_description_box.dart';
import 'package:dek_mhob/components/my_drawer.dart';
import 'package:dek_mhob/components/my_food_tile.dart';
import 'package:dek_mhob/components/my_sliver_app_bar.dart';
import 'package:dek_mhob/components/my_tab_bar.dart';
import 'package:dek_mhob/models/food.dart';
import 'package:dek_mhob/models/restaurant.dart';
import 'package:dek_mhob/pages/food_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: FoodCategory.values.length,
      vsync: this,
    );
  }

  // sort out and return a list of food items that belong to a specific category
  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> menu) {
    return menu.where((food) => food.category == category).toList();
  }

  // return list of foods in given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      final foodsInThisCategory = _filterMenuByCategory(category, fullMenu);
      return ListView.builder(
        itemCount: foodsInThisCategory.length,
        itemBuilder: (context, index) {
          final food = foodsInThisCategory[index];
          return MyFoodTile(
            food: food,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return FoodPage(food: food);
                },
              ),
            ),
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            MySliverAppBar(
              title: MyTabBar(tabController: _tabController),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  const MyCurrentLocation(),
                  const MyDescriptionBox()
                ],
              ),
            )
          ];
        },
        body: Consumer<Restaurant>(
          builder: (context, restaurant, child) {
            return TabBarView(
              controller: _tabController,
              children: getFoodInThisCategory(restaurant.menu),
            );
          },
        ),
      ),
    );
  }
}
