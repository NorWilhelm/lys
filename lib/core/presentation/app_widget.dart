import 'package:flutter/material.dart';
import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lys/core/presentation/routes/app_router.gr.dart';
import 'package:lys/main.dart';
import 'package:lys/core/presentation/style/colors.dart'; // TODO: Implement at this level?

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
  const AppWidget({Key? key}) : super(key: key);

  // final appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = getIt<AppRouter>();
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Lys',
        routerDelegate: router.delegate(),
        routeInformationParser: router.defaultRouteParser());
  }
}
