import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lys/core/domain/server_notifier.dart';
import 'package:lys/views/testarea/domain/test_notifier.dart';

final serverProvider =
    StateNotifierProvider<ServerNotifier, ServerModel>((ref) {
  return ServerNotifier(ref: ref, dio: ref.watch(dioProvider));
});

final dioProvider = Provider((ref) => Dio());

final testProvider = StateNotifierProvider<TestNotifier, TestModel>((ref) {
  return TestNotifier(
    dio: ref.watch(dioProvider),
    server: ref.watch(serverProvider).server,
  );
});
