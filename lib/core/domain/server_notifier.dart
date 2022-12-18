import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'server_notifier.freezed.dart';
part 'server_notifier.g.dart';

// TODO: Implement live updating server status: online/offline

const Map<String, String> servers = {
  "Server":
      "http://127.0.0.1:8000", // TODO: Change this to http://lys.helmsen.no:2500 when server is setup.
  "Local": "http://127.0.0.1:8000"
};

@freezed
class ServerOptions with _$ServerOptions {
  const ServerOptions._();
  const factory ServerOptions({
    @Default(null) String? version,
    @Default("") String readMe,
  }) = _ServerOptions;
  factory ServerOptions.fromJson(Map<String, dynamic> json) =>
      _$ServerOptionsFromJson(json);
}

@freezed
class ServerModel with _$ServerModel {
  const ServerModel._();
  const factory ServerModel({
    required String serverName,
    required String server,
    // Reqested from backend on connection
    required ServerOptions serverOptions,
  }) = _ServerModel;
}

class ServerNotifier extends StateNotifier<ServerModel> {
  ServerNotifier({
    required this.dio,
    required this.ref,
  }) : super(
          ServerModel(
            serverName: servers.keys.first,
            server: servers.values.first,
            serverOptions: const ServerOptions(),
          ),
        );
  final Dio dio;
  final Ref ref;

  Future<void> getBackendProperties(BuildContext context) async {
    try {
      final Response response = await dio.get(
        "${state.server}/",
      );
      if (response.data != null) {
        final serverOptions =
            ServerOptions.fromJson(response.data as Map<String, dynamic>);

        state = state.copyWith(
          serverOptions: serverOptions,
        );
      }
    } on DioError {
      state = state.copyWith(
        serverOptions: const ServerOptions(),
      );
    }
  }
}
