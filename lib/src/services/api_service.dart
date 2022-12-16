import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter_challenge/src/services/github_user.dart';

class UserNotFoundException implements Exception {
  const UserNotFoundException() : super();
}

class ApiService {
  Future<GithubUser> getGithubUser(String username) async {
    try {
      var response =
          await http.get(Uri.parse('https://api.github.com/users/$username'));
      if (response.statusCode == 200) {
        return GithubUser.fromJSON(jsonDecode(response.body));
      }
      throw const UserNotFoundException();
    } catch (err) {
      rethrow;
    }
  }
}
