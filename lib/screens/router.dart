import 'package:auto_route/annotations.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:test_app/Service_provider/Servece_provider.dart';
import 'package:test_app/chat_app/Register_page.dart';
import 'package:test_app/chat_app/login_page.dart';
import 'package:test_app/screens/bottom_bar.dart';
import 'package:test_app/search/search_screen.dart';

import '../Home/home_screen.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(
    path: '/',
    page: BottomBar,
    children: [
      //===============home screen================
      AutoRoute(
        path: 'home',
        name: 'homeRouter',
        page: HomeScreen,
        children: [
          //AutoRoute(path: '', page: PostsPage),
          //AutoRoute(path: ':postId', page: SinglePostPage),
        ],
      ),

      //=============seach screen============
      AutoRoute(
        path: 'search',
        name: 'searchRouter',
        page: SearchScreen,
        children: [
          // AutoRoute(path: '', page: UsersPage),
          // AutoRoute(path: ':userId', page: UserProfilePage),
        ],
      ),

      //===============service providers screen============
      AutoRoute(
        path: 'serviceProvider',
        name: 'serviceProviderRouter',
        page: ServiceProviders,
      ),

      //===============chat screen============
      AutoRoute(
          path: 'feedback',
          name: 'feedbackRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: LoginPage,
            ),
            AutoRoute(
              path: 'fromLogToReg',
              page: RegisterPage,
            )
          ])
    ],
  )
])
class $AppRouter {}
