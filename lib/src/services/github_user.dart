import 'package:intl/intl.dart';

class GithubUser {
  final String? name;
  final String login;
  final String accountUrl;
  final int publicRepos;
  final int followers;
  final int following;
  final String? location;
  final String? blog;
  final String? twitterUsername;
  final String? company;
  final String createdAt;
  final String avatarUrl;
  final String? bio;

  const GithubUser(
      {this.name = '',
      required this.login,
      required this.accountUrl,
      required this.publicRepos,
      required this.followers,
      required this.following,
      this.location = '',
      required this.avatarUrl,
      this.blog = '',
      this.twitterUsername = '',
      this.company = '',
      required this.createdAt,
      this.bio = ''});

  factory GithubUser.fromJSON(Map<String, dynamic> json) {
    final DateTime date = DateTime.parse(json["created_at"]);

    return GithubUser(
        name: json["name"],
        login: json["login"],
        accountUrl: json["url"],
        publicRepos: json["public_repos"],
        followers: json["followers"],
        following: json["following"],
        location: json["location"],
        avatarUrl: json["avatar_url"],
        createdAt: DateFormat('dd MMMM yyyy').format(date),
        blog: json["blog"] == '' ? null : json["blog"],
        twitterUsername: json["twitter_username"],
        company: json["company"],
        bio: json["bio"]);
  }
}
