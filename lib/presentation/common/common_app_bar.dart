import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/settings/settings_notifier.dart';

class CommonAppBar extends HookConsumerWidget implements PreferredSizeWidget {
  final Widget title;
  final Widget? leading;

  const CommonAppBar({
    required this.title,
    this.leading,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsStateProvider);
    final settingsNotifier = ref.watch(settingsNotifierProvider);
    return AppBar(
      title: title,
      leading: leading,
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: settingsNotifier.toggleBrightness,
          icon: Icon(
            settings.brightness == Brightness.dark
                ? Icons.light_mode_rounded
                : Icons.dark_mode_rounded,
          ),
        ),
      ],
    );
  }

  @override
  final Size preferredSize = const Size.fromHeight(kToolbarHeight);
}
