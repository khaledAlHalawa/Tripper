import 'dart:convert';

import 'package:app/config/theme/tripper_theme.dart';
import 'package:app/features/auth/domain/entities/user.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../common/constant/configuration/prefs_key.dart';
import '../../domain/repositories/prefs_repository.dart';

@LazySingleton(as: PrefsRepository)
class PrefsRepositoryImpl extends PrefsRepository {
  PrefsRepositoryImpl(this._preferences);

  final SharedPreferences _preferences;

  Future<bool> _setToken(String token) => _preferences.setString(PrefsKey.token, token);

  @override
  String? get token => _preferences.getString(PrefsKey.token);

  @override
  ThemeMode get getTheme {
    final res = _preferences.getString(PrefsKey.theme);
    if (res == null) {
      setTheme(defaultAppTheme);
      return defaultAppTheme;
    }
    return mapAppThemeMode[res]!;
  }

  @override
  Future<bool> setTheme(ThemeMode themeMode) => _preferences.setString(PrefsKey.theme, themeMode.name);

  @override
  Future<bool> clearUser() async {
    await _preferences.remove(PrefsKey.token);
    return _preferences.remove(PrefsKey.user);
  }

  @override
  User? get user {
    final user = _preferences.getString(PrefsKey.user);
    if (user == null) {
      return null;
    }
    return User.fromJson(json.decode(user));
  }

  @override
  Future<bool> setUser(User user) async {
    if(user.bearerToken != null) {
      await _setToken(user.bearerToken!);
    }

    return _preferences.setString(PrefsKey.user, json.encode(user));
  }

  @override
  bool get hasUser => user != null;
}
