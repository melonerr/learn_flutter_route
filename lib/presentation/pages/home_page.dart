// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';

// Import Go Router Package
import 'package:learnflutter_go_route/presentation/models/menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Go Router',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          backgroundColor: Colors.grey.shade400,
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          child: ListView.builder(
              itemCount: menuList.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(10)),
                      child: Theme(
                        data: Theme.of(context)
                            .copyWith(dividerColor: Colors.transparent),
                        child: ExpansionTile(
                          title: Text(
                            menuList[index].title,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.blue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    )),
                                onPressed: () {
                                  menuList[index].onPressed(context);
                                },
                                child: Text(menuList[index].textBtn)),
                          ),
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8,
                                horizontal: 15,
                              ),
                              child: Text(
                                "${index + 1}. ${menuList[index].description} ",
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
