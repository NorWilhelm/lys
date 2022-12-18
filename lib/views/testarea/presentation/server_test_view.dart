import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lys/core/shared/providers/providers.dart';

class ServerTestView extends ConsumerStatefulWidget {
  const ServerTestView({super.key});

  @override
  ConsumerState<ServerTestView> createState() => _ServerTestViewState();
}

class _ServerTestViewState extends ConsumerState<ServerTestView> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => checkBackendConnection());
  }

  void checkBackendConnection() {
    ref.read(serverProvider.notifier).getBackendProperties(context);
  }

  @override
  Widget build(BuildContext context) {
    final serverState = ref.watch(serverProvider);
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Row(
        children: const [
          Text(
              'Frontend version: 0.0.2'), // TODO: Bind frontend version to the project's version number
        ],
      ),
      Row(
        children: [const Text('Server name:   '), Text(serverState.serverName)],
      ),
      Row(
        children: [
          const Text('Server :   '),
          Text(serverState.server),
        ],
      ),
      Row(children: [
        const Text('Server version: '),
        if (serverState.serverOptions.version != null)
          Text(
            serverState.serverOptions.version!,
            style: const TextStyle(
              color: Color.fromARGB(255, 102, 100, 99),
              fontSize: 12,
            ),
          )
        else
          const Text(
            "(No connection)",
            style: TextStyle(color: Colors.red),
          )
      ])
    ]);
  }
}
