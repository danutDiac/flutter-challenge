import 'package:flutter/material.dart';
import 'package:flutter_challenge/src/widgets/UserDetails/user_contact.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../assets/icons2/custom_icons_icons.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => UserDetailsState();
}

class UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
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
                  const Padding(
                    padding: EdgeInsets.only(right: 19),
                    child: SizedBox(
                      height: 70,
                      width: 70,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://avatars.githubusercontent.com/u/102725250?s=400&v=4"),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('The Octocat',
                          style: Theme.of(context).textTheme.headline1),
                      Text('@octocat',
                          style: Theme.of(context).textTheme.headline6),
                      Text('Joined 25 Jan 2022',
                          style: Theme.of(context).textTheme.headline5)
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 23),
              child: Text(
                  'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros.',
                  style: Theme.of(context).textTheme.bodyText2),
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
                        '8',
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
                        '3839',
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
                        '9',
                        style: Theme.of(context).textTheme.headline1,
                      )
                    ],
                  )
                ],
              ),
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  UserContact(
                      icon: CustomIcons2.location, title: 'San Francisco'),
                  UserContact(
                      url: 'https://github.blog',
                      title: 'https://github.blog',
                      icon: CustomIcons2.link),
                  UserContact(icon: CustomIcons2.twitter, isAvailable: false),
                  UserContact(
                    url: 'https://gitlab.com/octocat',
                    title: '@octocat',
                    icon: CustomIcons2.officeBuilding,
                  )
                ])
          ],
        ));
  }
}
