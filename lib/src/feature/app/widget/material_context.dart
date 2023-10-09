import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizzle_starter/src/core/localization/localization.dart';
import 'package:sizzle_starter/src/core/routes/routes.dart';
import 'package:sizzle_starter/src/feature/app/widget/locale_scope.dart';
import 'package:sizzle_starter/src/feature/app/widget/theme_scope.dart';

/// {@template material_context}
/// [MaterialContext] is an entry point to the material context.
///
/// This widget sets locales, themes and routing.
/// {@endtemplate}
class MaterialContext extends StatefulWidget {
  /// {@macro material_context}
  const MaterialContext({super.key});

  @override
  State<MaterialContext> createState() => _MaterialContextState();
}

class _MaterialContextState extends State<MaterialContext> {
  late final GoRouter _router;

  @override
  void initState() {
    _router = GoRouter(
      routes: $appRoutes,
      initialLocation: '/snippet',
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = ThemeScope.of(context).theme;
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
      theme: theme.lightTheme,
      darkTheme: theme.darkTheme,
      themeMode: theme.mode,
      localizationsDelegates: Localization.localizationDelegates,
      supportedLocales: Localization.supportedLocales,
      locale: LocaleScope.of(context).locale,
    );
  }
}
