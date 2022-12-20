import 'package:flutter/material.dart';
import 'package:flutter_challenge/src/services/github_user.dart';
import 'package:flutter_challenge/src/widgets/UserDetails/user_contact.dart';

import '../../assets/icons2/custom_icons_icons.dart';
import '../reusable/single_row_table_with_background.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key, required this.user});
  final GithubUser user;

  @override
  State<UserDetails> createState() => UserDetailsState();
}

class UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    final user = widget.user;

    final String bioText = user.bio ?? 'This profile has no bio';

    final List<TableElement> tableElements = [
      TableElement(rowName: 'Repos', rowValue: user.publicRepos.toString()),
      TableElement(rowName: 'Followers', rowValue: user.followers.toString()),
      TableElement(rowName: 'Following', rowValue: user.following.toString()),
    ];

    return Container(
        margin: const EdgeInsets.only(top: 10, bottom: 16),
        padding:
            const EdgeInsets.only(top: 32, bottom: 48, left: 24, right: 24),
        decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(24)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 19),
                    child: SizedBox(
                      height: 70,
                      width: 70,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(user.avatarUrl),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(user.name ?? user.login,
                          style: Theme.of(context).textTheme.headline1),
                      Text('@${user.login}',
                          style: Theme.of(context).textTheme.headline6),
                      Text('Joined ${user.createdAt}',
                          style: Theme.of(context).textTheme.headline5)
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 23),
              child:
                  Text(bioText, style: Theme.of(context).textTheme.bodyText2),
            ),
            SingleRowTableWithBackground(
              elements: tableElements,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              UserContact(icon: CustomIcons2.location, title: user.location),
              UserContact(
                  url: user.blog, title: user.blog, icon: CustomIcons2.link),
              UserContact(
                icon: CustomIcons2.twitter,
                title: user.twitterUsername,
              ),
              UserContact(
                url: 'https://github.com/${user.company?.substring(1)}',
                title: user.company != null ? '@${user.company}' : null,
                icon: CustomIcons2.officeBuilding,
              )
            ])
          ],
        ));
  }
}
