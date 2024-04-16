import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:housing_complex_objects/model/housing_complex_items.dart';
import 'package:housing_complex_objects/ui/screens/object_detail_screen.dart';
import 'package:housing_complex_objects/ui/screens/object_screen.dart';
import 'package:housing_complex_objects/utils/constants.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

final _shellNavigatorHomeKey =
    GlobalKey<NavigatorState>(debugLabel: 'shellInit');
final _shellNavigatorAKey = GlobalKey<NavigatorState>(debugLabel: 'shellA');
final _shellNavigatorBKey = GlobalKey<NavigatorState>(debugLabel: 'shellB');

final goRouter = GoRouter(
  initialLocation: '/objects',
  navigatorKey: rootNavigatorKey,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => Container(),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _shellNavigatorHomeKey,
          routes: [
            GoRoute(
                path: '/objects',
                name: 'objects',
                pageBuilder: (context, state) => NoTransitionPage(
                      child: ObjectsScreen(),
                    ),
                routes: [
                  GoRoute(
                    path: 'objects-detail-:title',
                    name: 'object-detail',
                    builder: (context, state) {
                      final args =
                      state.extra! as Map<String, Item>;
                      return ObjectDetailsScreen(
                        item: args['item']!,
                      );
                    },
                  ),
                ]),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorAKey,
          routes: [
            GoRoute(
              path: '/series',
              name: 'series',
              pageBuilder: (context, state) => NoTransitionPage(
                child: ObjectsScreen(),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorBKey,
          routes: [
            GoRoute(
              path: '/profile',
              name: 'profile',
              pageBuilder: (context, state) => NoTransitionPage(
                child: ObjectsScreen(),
              ),
            ),
          ],
        ),
      ],
    ),
  ],
);

class ScaffoldWithNavigationBar extends StatelessWidget {
  const ScaffoldWithNavigationBar({
    super.key,
    required this.body,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });

  final Widget body;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      bottomNavigationBar: NavigationBar(
        surfaceTintColor: Colors.transparent,
        indicatorColor: Colors.transparent,
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        selectedIndex: selectedIndex,
        destinations: const [
          NavigationDestination(
            label: 'Объекты',
            icon: Icon(
              Icons.home_outlined,
              color: Colors.grey,
            ),
            selectedIcon: Icon(
              Icons.home,
              color: Colors.indigoAccent,
            ),
          ),
          NavigationDestination(
            label: 'Сеты',
            icon:

                ///Todo найти картинки и вставить
                ///Image.asset('assets/images/.png',width: 30,),
                Icon(
              Icons.photo_outlined,
              color: Colors.grey,
            ),
            selectedIcon: Icon(
              Icons.photo,
              color: Colors.indigoAccent,
            ),
          ),
          NavigationDestination(
            label: 'Профиль',
            icon: Icon(
              Icons.person_outline,
              color: Colors.grey,
            ),
            selectedIcon: Icon(
              Icons.person,
              color: Colors.indigoAccent,
            ),
          ),
        ],
        onDestinationSelected: onDestinationSelected,
      ),
    );
  }
}

class ScaffoldWithNavigationRail extends StatelessWidget {
  const ScaffoldWithNavigationRail({
    super.key,
    required this.body,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });

  final Widget body;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            indicatorColor: Colors.transparent,
            selectedIndex: selectedIndex,
            onDestinationSelected: onDestinationSelected,
            labelType: NavigationRailLabelType.all,
            destinations: const <NavigationRailDestination>[
              NavigationRailDestination(
                  label: Text(
                    'Объекты',
                    style: TextStyle(fontWeight: kFontWeight),
                  ),
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.grey,
                  ),
                  selectedIcon: Icon(
                    Icons.home,
                    color: Colors.indigoAccent,
                  )),
              NavigationRailDestination(
                  label: Text(
                    'Сеты',
                    style: TextStyle(fontWeight: kFontWeight),
                  ),

                  ///Todo найти картинки и вставить
                  ///Image.asset('assets/images/.png',width: 30,),
                  icon: Icon(
                    Icons.photo_outlined,
                    color: Colors.grey,
                  ),
                  selectedIcon: Icon(
                    Icons.photo,
                    color: Colors.indigoAccent,
                  )),
              NavigationRailDestination(
                  label: Text(
                    'Профиль',
                    style: TextStyle(fontWeight: kFontWeight),
                  ),
                  icon: Icon(
                    Icons.person_outline,
                    color: Colors.grey,
                  ),
                  selectedIcon: Icon(
                    Icons.person,
                    color: Colors.indigoAccent,
                  )),
            ],
          ),
          const VerticalDivider(thickness: 1, width: 1),
          // This is the main content.
          Expanded(
            child: body,
          ),
        ],
      ),
    );
  }
}

class ScaffoldWithNestedNavigation extends StatelessWidget {
  const ScaffoldWithNestedNavigation({
    Key? key,
    required this.navigationShell,
  }) : super(
            key: key ?? const ValueKey<String>('ScaffoldWithNestedNavigation'));
  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 450) {
        return ScaffoldWithNavigationBar(
          body: navigationShell,
          selectedIndex: navigationShell.currentIndex,
          onDestinationSelected: _goBranch,
        );
      } else {
        return ScaffoldWithNavigationRail(
          body: navigationShell,
          selectedIndex: navigationShell.currentIndex,
          onDestinationSelected: _goBranch,
        );
      }
    });
  }
}
