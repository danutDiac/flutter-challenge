# Frontend Mentor - GitHub user search app solution

This is a solution to the [GitHub user search app challenge on Frontend Mentor](https://www.frontendmentor.io/challenges/github-user-search-app-Q09YOgaH6). Frontend Mentor challenges help you improve your coding skills by building realistic projects. 

## Table of contents

- [Overview](#overview)
  - [The challenge](#the-challenge)
  - [Screenshot](#screenshot)
- [My process](#my-process)
  - [Built with](#built-with)
  - [What I learned](#what-i-learned)
  - [Useful resources](#useful-resources)
- [Authors](#authors)

## Overview

### The challenge

Users should be able to:

- View the optimal layout for the app depending on their device's screen size
- See hover states for all interactive elements on the page
- Search for GitHub users by their username
- See relevant user information based on their search
- Switch between light and dark themes
- **Bonus**: Have the correct color scheme chosen for them based on their computer preferences. _Hint_: Research `prefers-color-scheme` in CSS.

### Screenshot

![](./screenshot.jpg)

Add a screenshot of your solution. The easiest way to do this is to use Firefox to view your project, right-click the page and select "Take a Screenshot". You can choose either a full-height screenshot or a cropped one based on how long the page is. If it's very long, it might be best to crop it.

Alternatively, you can use a tool like [FireShot](https://getfireshot.com/) to take the screenshot. FireShot has a free option, so you don't need to purchase it. 

Then crop/optimize/edit your image however you like, add it to your project, and update the file path in the image above.

**Note: Delete this note and the paragraphs above when you add your screenshot. If you prefer not to add a screenshot, feel free to remove this entire section.**

## My process

### Built with

- Flutter 2.18.5
- Dart
- cupertino_icons: ^1.0.2 - for search, bottom icons
- provider: ^6.0.5 - for updating layout based on theme select
- http: 0.13.5 - for getting github user data
- url_launcher: ^6.1.7  - for opening urls with a browser
- intl: ^0.18.0 - for some data parsing

### What I learned

- The difference between `Statefull` and `Stateless` classes / widgets.
- Basic styling in Flutter (using the right widget)
  - `Row` only accepts children with known height. Use `Expanded` or `Flexible` to solve possible conflicts.
  - use `Container` to add colors to a component
  - use `Padding` to add spacing
  - use `Column` or `ListView` to show components one on top of another
  - it's not easy to find a good "fit to page" on big screen that would also know to scroll on smaller screens
  - There are different ways to set the properties of a component (ex: the style of a button can be through ButtonStyle or through `TextButton.styleFrom()`)
- When a component redraws and why it wouldn't redraw (ex: nothing redraws without using `setState`). When and how to redraw a child component depending on its type (`Statefull` or `Stateless`).
- How to listen to changes through a `Provider`.
- How to add and use `font-icons` in Flutter.


### Useful resources

- [Flutter for react developers](https://docs.flutter.dev/get-started/flutter-for/react-native-devs)
- [setState tips](https://levelup.gitconnected.com/6-easy-tips-when-working-with-setstate-in-a-flutter-application-3d629bc77a16)
- [promoted variables](https://dart.dev/tools/non-promotion-reasons#property-or-this)

## Authors

- [Robert Zanceany](https://github.com/robertZanceanu-thinslices)
- [Robert Ieremciuc](https://github.com/RobertIeremciuc)
- [Cezar Cazacu](https://github.com/CezarCazacu)
- [Danut](https://github.com/danutDiac)
