import 'package:flutter/material.dart';

import '../widgets/search_section.dart';
import '../widgets/side_bar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          //side navbar
          SideBarWidget(),

          //search section
          Expanded(
            child: Column(
              children: [
                Expanded(child: SearchSection()),
                Container(
                  height: 20,
                )
              ],
            ),
          )

          //footer
        ],
      ),
    );
  }
}
