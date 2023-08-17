/// * --------------------------------------------------------------------------- * ///
///
/// project name  : payeewise
/// devloper name : karthikeyan maruthachalam
/// created date  : Aug 17, 2023 5:30 PM
///
///  * --------------------------------------------------------------------------- * ///

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:payeewise/modules/root/provider/root_provider.dart';
import 'package:provider/provider.dart';

class RootWidget extends StatelessWidget {
  const RootWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<RootProvider>(
      builder: (context, value, child) {
        return Scaffold(
          body: value.body,
          // extendBody: true,
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: 'Business',
              ),
              BottomNavigationBarItem(
                icon: CircleAvatar(child: Icon(Icons.add)),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'School',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'School',
              ),
            ],
            currentIndex: value.tabIndex,
            selectedItemColor: Colors.amber[800],
            onTap: (index) {
              value.setTabIndex = index;
            },
          ),
          // floatingActionButton: FloatingActionButton(onPressed:(){}, child: Icon(MdiIcons.plus)),
          // floatingActionButtonLocation:  FloatingActionButtonLocation.centerDocked,
        );
      },
    );
  }
}
