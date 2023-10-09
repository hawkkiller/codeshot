import 'package:flutter/material.dart';

/// {@template home_screen}
/// The Screen that is located in the root of the app.
///
/// This creates a [Navigator] widet to show other pages.
/// {@endtemplate}
class HomeScreen extends StatefulWidget {
  /// {@macro home_screen}
  const HomeScreen({
    required this.child,
    super.key,
  });

  /// The child navigator
  final Widget child;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: widget.child,
      );
}
