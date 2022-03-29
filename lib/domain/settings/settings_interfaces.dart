import 'package:flutter/material.dart';

import 'entities/settings.dart';

abstract class ISettingsService {
  // Getter and setter of brightness
  Brightness get brightness;
  set brightness(Brightness brightness);

  Stream<Settings> get onSettingsChanged;
}
