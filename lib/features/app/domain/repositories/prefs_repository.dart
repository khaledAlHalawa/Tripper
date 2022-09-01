
import 'package:app/features/auth/domain/entities/user.dart';
import 'package:flutter/material.dart';

abstract class PrefsRepository{
  String? get token;

  Future<bool> _setToken(String token);

  Future<bool> setTheme(ThemeMode themeMode);

  Future<bool> setUser(User user);

  User? get user;

  Future<bool> clearUser();

  ThemeMode get getTheme;

  bool get hasUser;
}