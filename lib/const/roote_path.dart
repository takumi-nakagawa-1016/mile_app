enum RoutePath {
  milestone,
  calender,
  home,
}

extension RoutePathExtension on RoutePath {
  String getPath() {
    switch (this) {
      case RoutePath.milestone:
        return '/';
      case RoutePath.calender:
        return '/calender';
      case RoutePath.home:
        return '/home';
      default:
        return '/';
    }
  }
}
