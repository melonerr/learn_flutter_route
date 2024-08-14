import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learnflutter_go_route/presentation/routes/pages_name.dart';

class IMenu {
  IMenu(
      {required this.title,
      required this.textBtn,
      required this.description,
      required this.onPressed});
  String title;
  String textBtn;
  String description;
  void Function(BuildContext) onPressed;
}

List<IMenu> menuList = [
  IMenu(
    title: "Push Method",
    textBtn: "Go to the about page",
    onPressed: (context) => context.push(PageName.aboutRoute),
    description:
        "Push Method is the method who add new layer above the current pages screen, so you can pop the new screen later",
  ),
  IMenu(
    title: "Push Replacement",
    textBtn: "Go to the about page",
    onPressed: (context) => context.pushReplacement(PageName.aboutRoute),
    description:
        "Push Replacement Method is the method replace the current screen",
  ),
  IMenu(
    title: "Go Method",
    textBtn: "Go to the about page",
    onPressed: (context) => context.go(PageName.aboutRoute),
    description:
        "Go Method is the method who replace the current screen same like the push replacement",
  ),
  IMenu(
    title: "Push with Extra Argument",
    textBtn: "Go to arguments page",
    onPressed: (context) => GoRouter.of(context).push(
      PageName.argumentsRoute,
      extra: 'Ini argument dari homepage',
    ),
    description: "You can passing single argument to the page",
  ),
  IMenu(
    title: "Push with Arguments",
    textBtn: "Go to multi-arguments page",
    onPressed: (context) => GoRouter.of(context).push(
      PageName.multiArgumentsRoute,
      extra: {
        'arg1': 'Ini argument pertama dari homepage',
        'arg2': 'Ini argument kedua dari homepage',
      },
    ),
    description: "You can passing multiple argument to the page",
  ),
];
