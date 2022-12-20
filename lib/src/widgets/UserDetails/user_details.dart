import 'package:flutter/material.dart';
import 'package:flutter_challenge/src/services/github_user.dart';
import 'package:flutter_challenge/src/widgets/UserDetails/user_contact.dart';

import '../../assets/icons2/custom_icons_icons.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key, required this.user});
  final GithubUser? user;

  @override
  State<UserDetails> createState() => UserDetailsState();
}

class UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    final user = widget.user;

    if (user == null) {
      return Container(
        child: Text('No user found!'),
      );
    }

    final String bioText = user.bio ?? 'This profile has no bio';

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
            Container(
              margin: const EdgeInsets.only(bottom: 24),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 19),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).backgroundColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          'Repos',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                      Text(
                        user.publicRepos.toString(),
                        style: Theme.of(context).textTheme.headline1,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          'Followers',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                      Text(
                        user.followers.toString(),
                        style: Theme.of(context).textTheme.headline1,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          'Following',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                      Text(
                        user.following.toString(),
                        style: Theme.of(context).textTheme.headline1,
                      )
                    ],
                  )
                ],
              ),
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
