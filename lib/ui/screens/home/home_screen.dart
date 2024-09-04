import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:mini_project/core/get_it.dart';
import 'package:mini_project/core/utils/app_colors.dart';
import 'package:mini_project/logic/bloc/restaurant/restaurant_bloc.dart';
import 'package:mini_project/ui/screens/home/details_screen.dart';
import 'package:mini_project/ui/screens/home/recommended_screen.dart';
import 'package:mini_project/ui/widgets/category_widget.dart';
import 'package:mini_project/ui/widgets/custom_text.dart';
import 'package:mini_project/ui/widgets/meal_widget.dart';
import 'package:mini_project/ui/widgets/tile_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      backgroundColor: AppColors.brand400,
      onRefresh: () async {
        getIt.get<RestaurantBloc>().add(GetResEvent());
      },
      child: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                    leading: SvgPicture.asset("assets/icons/location.svg"),
                    title: CustomText(
                      text: "Current location",
                      color: AppColors.greyscale400,
                      textAlign: TextAlign.center,
                      fontSize: 12,
                    ),
                    subtitle: CustomText(
                      text: "123 Dream Avenue, NYC",
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.w500,
                    ),
                    trailing: GestureDetector(
                      onTap: () {},
                      child: const Icon(Icons.search),
                    ),
                  ),
                  const Gap(20),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.brand100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "\$0 delivery for \n30 days! 🥳",
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                        Image.asset(
                          "assets/images/ads.png",
                          height: 120,
                          width: 120,
                        ),
                      ],
                    ),
                  ),
                  TileWidget(
                    title: "Top categories",
                    trailingText: "View all",
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 40,
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return CategoryWidget(name: "Hod dog");
                      },
                    ),
                  ),
                  const Gap(10),
                  TileWidget(
                    title: "Popular",
                    trailingText: "View all",
                  ),
                  SizedBox(
                    height: 184,
                    child: BlocBuilder<RestaurantBloc, RestaurantState>(
                      builder: (context, state) {
                        if (state is ResLoadingState) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        if (state is ResErrorState) {
                          return Center(
                            child: Text(state.errorText),
                          );
                        }
                        if (state is ResLoadedState) {
                          return ListView.builder(
                            padding: const EdgeInsets.only(left: 16),
                            scrollDirection: Axis.horizontal,
                            itemCount: state.restaurants.length,
                            itemBuilder: (context, index) {
                              final restaurant = state.restaurants[index];
                              return MealWidget(restaurant: restaurant);
                            },
                          );
                        } else {
                          return const Center(
                            child: Text("Unexpected state"),
                          );
                        }
                      },
                    ),
                  ),
                  TileWidget(
                    title: "Recommended",
                    trailingText: "View all",
                    onTap: () {
                      Navigator.of(context).push(
                        CupertinoPageRoute(
                          builder: (context) => const RecommendedScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: BlocBuilder<RestaurantBloc, RestaurantState>(
                builder: (context, state) {
                  if (state is ResLoadingState) {
                    return const SliverToBoxAdapter(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }
                  if (state is ResErrorState) {
                    return SliverToBoxAdapter(
                      child: Center(
                        child: Text(state.errorText),
                      ),
                    );
                  }
                  if (state is ResLoadedState) {
                    return SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          final restaurant = state.restaurants[index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(CupertinoPageRoute(
                                builder: (context) => DetailsScreen(
                                  resName: restaurant.name,
                                  categories: restaurant.foodCategories,
                                ),
                              ));
                            },
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 20),
                              child: MealWidget(
                                isMargin: false,
                                height: 170,
                                width: double.infinity,
                                restaurant: restaurant,
                              ),
                            ),
                          );
                        },
                        childCount: state.restaurants.length,
                      ),
                    );
                  }
                  return const SliverToBoxAdapter(
                    child: Center(
                      child: Text("Unexpected state"),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
