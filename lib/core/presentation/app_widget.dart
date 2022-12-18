import 'package:flutter/material.dart';
import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:lys/core/presentation/style/themes.dart'; // TODO: Referer heller til temakontroller, som vil ha tilstand for init og nåværende tema
import 'package:lys/core/presentation/page_controller.dart';

final initializationProvider = FutureProvider<Unit>((ref) async {
  // await ref.read(sembastProvider).init();
  // ref.read(dioProvider)
  //   ..options = BaseOptions(
  //     headers: {
  //       'Accept': 'application/vnd.github.v3.html+json',
  //     },
  //     validateStatus: (status) =>
  //         status != null && status >= 200 && status < 400,
  //   )
  //   ..interceptors.add(ref.read(oAuth2InterceptorProvider));
  // final authNotifier = ref.read(authNotifierProvider.notifier);
  // await authNotifier.checkAndUpdateAuthStatus();
  return unit;
});

class AppWidget extends ConsumerWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    initializationProvider;
    return ThemeProvider(
        initTheme: Themes.funsy,
        builder: (context, myTheme) {
          return const MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Lys',
              home: PageControllerView());
        });
  }
}
