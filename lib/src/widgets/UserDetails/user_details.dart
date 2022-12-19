import 'package:flutter/material.dart';
import '../../theme/color_codes.dart' as color_constants;

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
                                  "https://avatars.githubusercontent.com/u/102725250?s=400&v=4")))),
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
            )
          ],
        ));
  }
}
