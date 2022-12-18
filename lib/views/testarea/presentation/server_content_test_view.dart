import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lys/core/shared/providers/providers.dart';

class ServerContentTestView extends ConsumerStatefulWidget {
  const ServerContentTestView({super.key});

  @override
  ConsumerState<ServerContentTestView> createState() =>
      _ServerContentTestViewState();
}

class _ServerContentTestViewState extends ConsumerState<ServerContentTestView> {
  @override
  void initState() {
    super.initState();
    //Future.microtask(() => getData());
  }

  void getData() {
    //Future.microtask(() => ref.read(testProvider.notifier).getData());
  }

  @override
  Widget build(BuildContext context) {
    final content = ref.watch(testProvider);
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Row(
        children: [
          const Text('Server content:   '),
          TextButton(onPressed: () => getData(), child: const Text('GET DATA')),
          Text(content.str.toString())
        ],
      ),
    ]);
  }
}
