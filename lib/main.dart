import 'package:flutter/material.dart';
import 'package:flutter_challenge/src/services/api_service.dart';
import 'package:flutter_challenge/src/services/github_user.dart';
import 'package:flutter_challenge/src/theme/theme_manager.dart';
import 'package:flutter_challenge/src/widgets/SearchBar/searchBar.dart';

import 'src/widgets/Header/header.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<ThemeManager>(
    create: (_) => new ThemeManager(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeManager>(builder: (context, theme, child) {
      return MaterialApp(
        title: 'Flutter Challenge',
        theme: theme.getTheme(),
        home: const MyHomePage(),
      );
    });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late GithubUser response;
  bool userNotFound = false;

  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    try {
      response = await ApiService().getGithubUser('octocat');
    } on UserNotFoundException catch (e) {
      userNotFound = true;
    } catch (err) {
      print(err);
    }
  }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
        ),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: const [
              Header(),
              SearchBar(),
            ],
          ),
        )),
      ),
    );
  }
}
