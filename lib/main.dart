import 'package:flutter/material.dart';
import 'package:flutter_challenge/src/services/api_service.dart';
import 'package:flutter_challenge/src/services/github_user.dart';
import 'package:flutter_challenge/src/theme/theme_manager.dart';
import 'package:flutter_challenge/src/widgets/UserDetails/user_details.dart';
import 'package:flutter_challenge/src/widgets/SearchBar/search_bar.dart';

import 'src/widgets/Header/header.dart';
import 'package:provider/provider.dart';

import 'src/widgets/UserDetails/user_details_loading.dart';

void main() {
  runApp(ChangeNotifierProvider<ThemeManager>(
    create: (_) => ThemeManager(),
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
  bool userNotFound = false;
  bool loading = false;
  GithubUser? githubUser;

  @override
  void initState() {
    super.initState();
    _getData('octocat');
  }

  _getData(String user) async {
    try {
      userNotFound = false;
      setState(() {
        loading = true;
      });
      githubUser = await ApiService().getGithubUser(user);
    } on UserNotFoundException catch (e) {
      userNotFound = true;
    } catch (err) {
      print(err);
    } finally {
      setState(() {
        loading = false;
      });
    }
  }

  _resetNoResults() {
    userNotFound = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final GithubUser? githubUsr = githubUser;
    Widget userDetails = const SizedBox.shrink();

    if (githubUsr != null && !loading) {
      userDetails = UserDetails(user: githubUsr);
    }
    if (loading) {
      userDetails = const UserDetailsLoading();
    }

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
        ),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 24, right: 24, left: 24),
                      child: Column(
                        children: [
                          const Header(),
                          SearchBar(
                            onSearch: (text) => _getData(text),
                            noResults: userNotFound,
                            resetNoResults: _resetNoResults,
                          ),
                          userDetails,
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
