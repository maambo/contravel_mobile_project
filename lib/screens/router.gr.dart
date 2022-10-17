// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i10;

import '../chat_app/login_page.dart' as _i7;
import '../chat_app/Register_page.dart' as _i8;
import '../Home/home_screen.dart' as _i5;
import '../Home/select_seat_screen.dart' as _i6;
import '../search/search_screen.dart' as _i3;
import '../Service_provider/Servece_provider.dart' as _i4;
import 'bottom_bar.dart' as _i1;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    BottomBar.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.BottomBar(),
      );
    },
    HomeRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    SearchRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SearchScreen(),
      );
    },
    ServiceProviderRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.ServiceProviders(),
      );
    },
    FeedbackRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    HomeScreen.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.HomeScreen(),
      );
    },
    SelectSeatRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.SelectSeatPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.LoginPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.RegisterPage(),
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          BottomBar.name,
          path: '/',
          children: [
            _i9.RouteConfig(
              HomeRouter.name,
              path: 'home',
              parent: BottomBar.name,
              children: [
                _i9.RouteConfig(
                  HomeScreen.name,
                  path: '',
                  parent: HomeRouter.name,
                ),
                _i9.RouteConfig(
                  SelectSeatRoute.name,
                  path: 'fromTicketToselect',
                  parent: HomeRouter.name,
                ),
              ],
            ),
            _i9.RouteConfig(
              SearchRouter.name,
              path: 'search',
              parent: BottomBar.name,
            ),
            _i9.RouteConfig(
              ServiceProviderRouter.name,
              path: 'serviceProvider',
              parent: BottomBar.name,
            ),
            _i9.RouteConfig(
              FeedbackRouter.name,
              path: 'feedback',
              parent: BottomBar.name,
              children: [
                _i9.RouteConfig(
                  LoginRoute.name,
                  path: '',
                  parent: FeedbackRouter.name,
                ),
                _i9.RouteConfig(
                  RegisterRoute.name,
                  path: 'fromLogToReg',
                  parent: FeedbackRouter.name,
                ),
              ],
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.BottomBar]
class BottomBar extends _i9.PageRouteInfo<void> {
  const BottomBar({List<_i9.PageRouteInfo>? children})
      : super(
          BottomBar.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'BottomBar';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class HomeRouter extends _i9.PageRouteInfo<void> {
  const HomeRouter({List<_i9.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i3.SearchScreen]
class SearchRouter extends _i9.PageRouteInfo<void> {
  const SearchRouter()
      : super(
          SearchRouter.name,
          path: 'search',
        );

  static const String name = 'SearchRouter';
}

/// generated route for
/// [_i4.ServiceProviders]
class ServiceProviderRouter extends _i9.PageRouteInfo<void> {
  const ServiceProviderRouter()
      : super(
          ServiceProviderRouter.name,
          path: 'serviceProvider',
        );

  static const String name = 'ServiceProviderRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class FeedbackRouter extends _i9.PageRouteInfo<void> {
  const FeedbackRouter({List<_i9.PageRouteInfo>? children})
      : super(
          FeedbackRouter.name,
          path: 'feedback',
          initialChildren: children,
        );

  static const String name = 'FeedbackRouter';
}

/// generated route for
/// [_i5.HomeScreen]
class HomeScreen extends _i9.PageRouteInfo<void> {
  const HomeScreen()
      : super(
          HomeScreen.name,
          path: '',
        );

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i6.SelectSeatPage]
class SelectSeatRoute extends _i9.PageRouteInfo<void> {
  const SelectSeatRoute()
      : super(
          SelectSeatRoute.name,
          path: 'fromTicketToselect',
        );

  static const String name = 'SelectSeatRoute';
}

/// generated route for
/// [_i7.LoginPage]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i8.RegisterPage]
class RegisterRoute extends _i9.PageRouteInfo<void> {
  const RegisterRoute()
      : super(
          RegisterRoute.name,
          path: 'fromLogToReg',
        );

  static const String name = 'RegisterRoute';
}
