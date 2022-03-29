import 'package:flutter/material.dart';
import 'package:flutterissues/application/settings/settings_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/auth/auth_form/auth_form_notifier.dart';

class CommonAppBar extends HookConsumerWidget implements PreferredSizeWidget {
  final Widget title;

  const CommonAppBar({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authFormNotifier = ref.watch(authFormStateProvider.notifier);
    final settings = ref.watch(settingsStateProvider);
    final settingsNotifier = ref.watch(settingsNotifierProvider);
    return AppBar(
      title: title,
      leading: IconButton(
        onPressed: authFormNotifier.loggedOut,
        icon: const Icon(Icons.logout),
      ),
      actions: [
        const Center(child: Text('Dark Mode?')),
        Switch(
          value: settings.brightness == Brightness.dark,
          onChanged: settingsNotifier.darkModeToggled,
        ),
      ],
    );
  }

  @override
  final Size preferredSize = const Size.fromHeight(kToolbarHeight);
}
