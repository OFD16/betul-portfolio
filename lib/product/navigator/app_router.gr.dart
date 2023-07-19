// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AboutRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AboutScreen(),
      );
    },
    BlogRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BlogScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    MyBlogsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyBlogsScreen(),
      );
    },
    MyProjectsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyProjectsScreen(),
      );
    },
    ProjectRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProjectScreen(),
      );
    },
  };
}

/// generated route for
/// [AboutScreen]
class AboutRoute extends PageRouteInfo<void> {
  const AboutRoute({List<PageRouteInfo>? children})
      : super(
          AboutRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BlogScreen]
class BlogRoute extends PageRouteInfo<void> {
  const BlogRoute({List<PageRouteInfo>? children})
      : super(
          BlogRoute.name,
          initialChildren: children,
        );

  static const String name = 'BlogRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyBlogsScreen]
class MyBlogsRoute extends PageRouteInfo<void> {
  const MyBlogsRoute({List<PageRouteInfo>? children})
      : super(
          MyBlogsRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyBlogsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyProjectsScreen]
class MyProjectsRoute extends PageRouteInfo<void> {
  const MyProjectsRoute({List<PageRouteInfo>? children})
      : super(
          MyProjectsRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyProjectsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProjectScreen]
class ProjectRoute extends PageRouteInfo<void> {
  const ProjectRoute({List<PageRouteInfo>? children})
      : super(
          ProjectRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProjectRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
