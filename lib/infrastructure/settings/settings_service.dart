import 'dart:ui';

import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/settings/entities/settings.dart';
import '../../domain/settings/settings_interfaces.dart';
import '../core/gql_client.dart';

final settingsServiceProvider = Provider((ref) {
  final store = ref.watch(storeProvider).asData!.value;
  return SettingsService(store);
});

final settingsProvider = StreamProvider<Settings>((ref) {
  final settingsService = ref.watch(settingsServiceProvider);
  return settingsService.onSettingsChanged;
});

class SettingsService implements ISettingsService {
  final Store store;

  const SettingsService(this.store);

  Brightness _parseBrightness(String brightnessStr) {
    return Brightness.values.firstWhere((b) => b.name == brightnessStr);
  }

  @override
  Brightness get brightness {
    final brightnessStr = store.get('settings')?['brightness'] ?? 'light';
    return _parseBrightness(brightnessStr);
  }

  @override
  set brightness(Brightness brightness) {
    store.put('settings', {
      ...?store.get('settings'),
      'brightness': brightness.name,
    });
  }

  @override
  Stream<Settings> get onSettingsChanged {
    return store.watch('settings').map((settings) {
      final brightnessStr = settings?['brightness'] ?? 'light';
      return Settings(brightness: _parseBrightness(brightnessStr));
    });
  }
}
