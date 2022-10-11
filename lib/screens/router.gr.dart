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
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:auto_route/empty_router_widgets.dart' as _i5;
import 'package:flutter/material.dart' as _i9;

import '../chat_app/login_page.dart' as _i6;
import '../chat_app/Register_page.dart' as _i7;
import '../Home/home_screen.dart' as _i2;
import '../search/search_screen.dart' as _i3;
import '../Service_provider/Servece_provider.dart' as _i4;
import 'bottom_bar.dart' as _i1;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    BottomBar.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.BottomBar(),
      );
    },
    HomeRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomeScreen(),
      );
    },
    SearchRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SearchScreen(),
      );
    },
    ServiceProviderRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.ServiceProviders(),
      );
    },
    FeedbackRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.EmptyRouterPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.LoginPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.RegisterPage(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          BottomBar.name,
          path: '/',
          children: [
            _i8.RouteConfig(
              HomeRouter.name,
              path: 'home',
              parent: BottomBar.name,
            ),
            _i8.RouteConfig(
              SearchRouter.name,
              path: 'search',
              parent: BottomBar.name,
            ),
            _i8.RouteConfig(
              ServiceProviderRouter.name,
              path: 'serviceProvider',
              parent: BottomBar.name,
            ),
            _i8.RouteConfig(
              FeedbackRouter.name,
              path: 'feedback',
              parent: BottomBar.name,
              children: [
                _i8.RouteConfig(
                  LoginRoute.name,
                  path: '',
                  parent: FeedbackRouter.name,
                ),
                _i8.RouteConfig(
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
class BottomBar extends _i8.PageRouteInfo<void> {
  const BottomBar({List<_i8.PageRouteInfo>? children})
      : super(
          BottomBar.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'BottomBar';
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRouter extends _i8.PageRouteInfo<void> {
  const HomeRouter()
      : super(
          HomeRouter.name,
          path: 'home',
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i3.SearchScreen]
class SearchRouter extends _i8.PageRouteInfo<void> {
  const SearchRouter()
      : super(
          SearchRouter.name,
          path: 'search',
        );

  static const String name = 'SearchRouter';
}

/// generated route for
/// [_i4.ServiceProviders]
class ServiceProviderRouter extends _i8.PageRouteInfo<void> {
  const ServiceProviderRouter()
      : super(
          ServiceProviderRouter.name,
          path: 'serviceProvider',
        );

  static const String name = 'ServiceProviderRouter';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class FeedbackRouter extends _i8.PageRouteInfo<void> {
  const FeedbackRouter({List<_i8.PageRouteInfo>? children})
      : super(
          FeedbackRouter.name,
          path: 'feedback',
          initialChildren: children,
        );

  static const String name = 'FeedbackRouter';
}

/// generated route for
/// [_i6.LoginPage]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i7.RegisterPage]
class RegisterRoute extends _i8.PageRouteInfo<void> {
  const RegisterRoute()
      : super(
          RegisterRoute.name,
          path: 'fromLogToReg',
        );

  static const String name = 'RegisterRoute';
}
