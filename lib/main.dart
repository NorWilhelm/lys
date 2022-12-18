import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lys/core/presentation/app_widget.dart';

GetIt getIt = GetIt.instance;

void main() {
  runApp(
    const ProviderScope(
      child: AppWidget(),
    ),
  );
}
