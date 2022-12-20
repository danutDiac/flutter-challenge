import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UserContact extends StatelessWidget {
  final IconData icon;
  final String? title;
  final String? url;
  bool isAvailable = true;

  UserContact({Key? key, required this.icon, this.title = '', this.url = ''})
      : super(key: key) {
    if (title == null) {
      isAvailable = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
        opacity: isAvailable ? 1 : 0.5,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.only(right: 19.25),
              child: Icon(
                icon,
                color: Theme.of(context).iconTheme.color,
                size: 20,
              ),
            ),
            isAvailable
                ? TextButton(
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    onPressed: () async =>
                        await launchUrl(Uri.parse(url ?? '')),
                    child: Text(title ?? '',
                        style: Theme.of(context).textTheme.headline4))
                : Text('Not available',
                    style: Theme.of(context).textTheme.headline4)
          ]),
        ));
  }
}
