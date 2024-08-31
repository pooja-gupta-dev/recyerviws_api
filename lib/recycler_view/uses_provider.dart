import 'package:flutter/material.dart';
import 'service.dart';
import 'model_class.dart';

class UserProvider with ChangeNotifier {
  List<ModelClass> _users = [];
  List<ModelClass> _favoriteUsers = [];

  List<ModelClass> get users => _users;
  List<ModelClass> get favoriteUsers => _favoriteUsers;

  final UserService _userService = UserService();

  UserProvider() {
    fetchUsers();
  }

  Future<void> fetchUsers() async {
    _users = await _userService.fetchUsers();
    notifyListeners();
  }

  void toggleFavorite(ModelClass user) {
    if (_favoriteUsers.contains(user)) {
      _favoriteUsers.remove(user);
    } else {
      _favoriteUsers.add(user);
    }
    notifyListeners();
  }

  bool isFavorite(ModelClass user) {
    return _favoriteUsers.contains(user);
  }

  // void removeFromFavorites(ModelClass user) {
  //
  // }
}
