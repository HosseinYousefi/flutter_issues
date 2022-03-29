import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/auth/auth_form/auth_form_notifier.dart';
import '../common/common_app_bar.dart';

class AuthFormView extends HookConsumerWidget {
  const AuthFormView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authFormStateProvider);
    final notifier = ref.watch(authFormStateProvider.notifier);

    return Scaffold(
      appBar: CommonAppBar(
        title: const Text('Paste Your GitHub Token'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'GitHub Token',
                errorText:
                    state.hasError ? 'Incorrect format for GitHub Token' : null,
              ),
              enableSuggestions: false,
              autocorrect: false,
              onChanged: notifier.tokenChanged,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: notifier.authenticated,
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
