import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lys/core/shared/providers/providers.dart';

class OnlineStatusBadge extends ConsumerStatefulWidget {
  const OnlineStatusBadge({super.key});

  @override
  ConsumerState<OnlineStatusBadge> createState() => _OnlineStatusBadgeState();
}

class _OnlineStatusBadgeState extends ConsumerState<OnlineStatusBadge> {
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
    return Row(
      // TODO: Animate color change and fade out-in with the online status
      children: [
        if (serverState.serverOptions.version != null)
          Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.deepPurple,
                ),
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(left: 4), child: Text('Online'))
          ])
        else
          Row(children: const [
            Icon(Icons.cloud_off_outlined),
            Padding(padding: EdgeInsets.only(left: 4), child: Text('Offline'))
          ])
      ],
    );
  }
}
