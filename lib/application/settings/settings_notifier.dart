import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/settings/entities/settings.dart';
import '../../domain/settings/settings_interfaces.dart';
import '../../infrastructure/settings/settings_service.dart';

final settingsNotifierProvider = Provider<SettingsNotifier>((ref) {
  final settingsService = ref.watch(settingsServiceProvider);
  return SettingsNotifier(settingsService);
});

/// Provider for the current state of the [Settings].
///
/// The notifier and state providers are separated because settings
/// is currently a very simple boolean toggle, it's possible to create
/// a [StateNotifier] if we want to have other logic such as saving/undoing.
///
/// Depends on:
/// * [settingsProvider]
final settingsStateProvider = Provider<Settings>((ref) {
  return ref.watch(settingsProvider).asData!.value;
});

class SettingsNotifier {
  final ISettingsService _settingsService;

  const SettingsNotifier(this._settingsService);

  void toggleBrightness() {
    _settingsService.brightness = _settingsService.brightness == Brightness.dark
        ? Brightness.light
        : Brightness.dark;
  }
}
