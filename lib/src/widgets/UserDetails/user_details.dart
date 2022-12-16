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
        decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(24)),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                    height: 122,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: color_constants.lightGrey),
                    child: Image.network(
                        "https://qph.cf2.quoracdn.net/main-qimg-b2ffb3a32c2e07826c887815599de6f3")),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('datTa',
                        style: Theme.of(context).textTheme.displayLarge),
                    Text('datqwdqwda'),
                    Text('dfhwieufh')
                  ],
                )
              ],
            )
          ],
        ));
  }
}
