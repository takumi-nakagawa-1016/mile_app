enum RoutePath {
  milestone,
  calender,
  home,
  register,
  first,
  login,
}

extension RoutePathExtension on RoutePath {
  String getPath() {
    switch (this) {
      case RoutePath.milestone:
        return '/';
      case RoutePath.register:
        return '/register';
      case RoutePath.first:
        return '/first';
      case RoutePath.login:
        return '/login';
      case RoutePath.calender:
        return '/calender';
      case RoutePath.home:
        return '/home';
      default:
        return '/';
    }
  }
}
