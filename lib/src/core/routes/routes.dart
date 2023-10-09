import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizzle_starter/src/feature/home/widget/home_screen.dart';

part 'routes.g.dart';

/// {@template home_route}
/// The route that is located in the root of the app.
/// {@endtemplate}
@TypedShellRoute<HomeRoute>(
  routes: [
    TypedGoRoute<SnippetRoute>(path: '/snippet'),
  ],
)
final class HomeRoute extends ShellRouteData {
  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    Widget navigator,
  ) =>
      HomeScreen(child: navigator);
}

/// {@template snippet_route}
/// The snippet route, where actual creation and configuration
/// of snippet happens
/// {@endtemplate}
final class SnippetRoute extends GoRouteData {
  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) =>
      const Placeholder();
}
