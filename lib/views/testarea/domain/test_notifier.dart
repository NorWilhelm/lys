import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'test_notifier.freezed.dart';

const JsonEncoder encoder = JsonEncoder.withIndent("\t");

@freezed
class TestModel with _$TestModel {
  const TestModel._();
  const factory TestModel({
    @Default(null) String? str,
  }) = _TestModel;
}

class TestNotifier extends StateNotifier<TestModel> {
  TestNotifier({
    required this.dio,
    required this.server,
  }) : super(
          const TestModel(),
        );

  final Dio dio;
  final String server;

  Future<void> getData() async {
    try {
      final Response response = await dio.get("$server/test");
      if (response.data != null) {
        final String str = response.data.toString();
        debugPrint('Response: ');
        debugPrint(str);
        state = state.copyWith(str: str);
      }
    } on DioError catch (e) {
      debugPrint(e.toString());
      debugPrint('TODO: Handle Error');
    }
  }
}
