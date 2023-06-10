import 'package:auto_route/auto_route.dart';
import 'package:betul_portfolio/screens/about_view.dart';
import 'package:betul_portfolio/screens/blog_view.dart';
import 'package:betul_portfolio/screens/project_view.dart';
import 'package:betul_portfolio/screens/my_blogs_view.dart';
import 'package:betul_portfolio/screens/my_projects_view.dart';
import '../../screens/homeScreen//home_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(path: '/Home', page: HomeRoute.page, initial: true),
        AutoRoute(path: '/About', page: AboutRoute.page),
        AutoRoute(path: '/MyProjects', page: MyProjectsRoute.page),
        AutoRoute(path: '/MyBlogs', page: MyBlogsRoute.page),
        AutoRoute(path: '/Project/id', page: ProjectRoute.page),
        AutoRoute(path: '/Blog/id', page: BlogRoute.page),
      ];
}

//@AutoRouterConfig(replaceInRouteName: 'Page,Route')
// class AppRouter extends $AppRouter{

//   @override
//   List<AutoRoute> get routes => [
//     // AutoRoute(
//     //   path: '/Home',
//     //   page: HomeScreen.page,
//     //   children: [
//     //     AutoRoute(path: 'About', page: AboutScreen.page),
//     //     // AutoRoute(path: 'posts', page: PostsRoute.page),
//     //     // AutoRoute(path: 'settings', page: SettingsRoute.page),
//     //   ],
//     // ),
//     // AutoRoute(path: '/login', page: LoginRoute.page)
//   ];

//  }

// @AutoRouterConfig(
//   replaceRouteName: 'View,Route',

//   routes: <AutoRoute>[
//     AutoRoute(
//       page: HomeScreen,
//       path: '/HomeView',
//       initial: true,
//     ),
//     AutoRoute(
//       page: AboutScreen,
//       path: '/AboutView',
//     ),
//   ],
// )
// class $AppRouter {}

// @AutoRouterConfig(replaceInRouteName: 'Screen,Route')
// class AppRouter extends $AppRouter {
//   @override
//   List<AutoRoute> get routes => [
//         /// routes go here
//         AutoRoute(AboutScreen.page, page: null),
//       ];
// }
