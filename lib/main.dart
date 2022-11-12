import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lys/core/presentation/app_widget.dart';
import 'core/presentation/routes/app_router.gr.dart';

GetIt getIt = GetIt.instance;

void main() {
  getIt.registerSingleton<AppRouter>(AppRouter());

  runApp(
    const ProviderScope(
      child: AppWidget(),
    ),
  );
}
