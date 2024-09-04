import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_project/core/utils/app_colors.dart';
import 'package:mini_project/core/utils/app_constants.dart';
import 'package:mini_project/logic/bloc/bottom_navigation/bottomnavigation_bloc.dart';
import 'package:mini_project/ui/screens/cart/cart_screen.dart';
import 'package:mini_project/ui/screens/home/home_screen.dart';
import 'package:mini_project/ui/screens/profile/profile_screen.dart';
import 'package:mini_project/ui/screens/search/search_screen.dart';
import 'package:mini_project/ui/widgets/bottom_navigation_button.dart';

import '../../../core/get_it.dart';
import '../../../logic/bloc/restaurant/restaurant_bloc.dart';
import '../order/order_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavigationBloc(),
      child: const MainScreenContent(),
    );
  }
}

class MainScreenContent extends StatefulWidget {
  const MainScreenContent({super.key});

  @override
  State<MainScreenContent> createState() => _MainScreenContentState();
}

class _MainScreenContentState extends State<MainScreenContent> {
  final List<Widget> _screens = const [
    HomeScreen(),
    OrderScreen(),
    CartScreen(),
    SearchScreen(),
    ProfileScreen(),
  ];

  @override
  void initState() {
    super.initState();

    getIt.get<RestaurantBloc>().add(GetResEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
      builder: (context, state) {
        return Scaffold(
          body: _screens[state.index],
          bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(color: AppColors.greyscale100),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                bottom: 5,
                top: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (int i = 0; i < 5; i++)
                    BottomNavigationButton(
                      buttonText: AppConstants.bottomNavBar[i],
                      icoPath:
                          'assets/icons/bottom_bar/${AppConstants.bottomNavBar[i].toLowerCase()}.svg',
                      isTapped: state.index == i,
                      onTap: () {
                        context
                            .read<BottomNavigationBloc>()
                            .add(ChangeBottomNavigationEvent(i));
                      },
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
