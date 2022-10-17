import 'package:auto_route/annotations.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:contravel/Home/select_seat_screen.dart';
import '../Service_provider/Servece_provider.dart';
import '../chat_app/Register_page.dart';
import '../chat_app/login_page.dart';
import '../screens/bottom_bar.dart';
import '../search/search_screen.dart';

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
        page: EmptyRouterPage,
        children: [
          AutoRoute(
            path: '',
            page: HomeScreen,
          ),
          AutoRoute(
            path: 'fromTicketToselect',
            page: SelectSeatPage,
          )
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
