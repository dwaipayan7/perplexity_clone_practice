import 'package:flutter/material.dart';
import 'package:perplexity_clone_practice/cors/themes/app_colors.dart';
import 'package:perplexity_clone_practice/feature/widgets/side_bar_button.dart';

class SideBarWidget extends StatefulWidget {
  const SideBarWidget({super.key});

  @override
  State<SideBarWidget> createState() => _SideBarWidgetState();
}

class _SideBarWidgetState extends State<SideBarWidget> {
  bool isCollapsed = true;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: isCollapsed ? 64 : 150,
      color: AppColors.sideNav,
      duration: Duration(milliseconds: 300),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 16),

          Icon(
            Icons.auto_awesome_mosaic,
            color: Colors.white,
            size: isCollapsed ? 30 : 60,
          ),
          const SizedBox(height: 24),

          Expanded(
            child: Column(
              crossAxisAlignment: isCollapsed
                  ? CrossAxisAlignment.center
                  : CrossAxisAlignment.start,
              children: [
                SideBarButton(
                  isCollapsed: isCollapsed,
                  icon: Icons.add,
                  text: "Home",
                ),
                SideBarButton(
                  isCollapsed: isCollapsed,
                  icon: Icons.search,
                  text: "Search",
                ),
                SideBarButton(
                  isCollapsed: isCollapsed,
                  icon: Icons.language,
                  text: "Spaces",
                ),
                SideBarButton(
                  isCollapsed: isCollapsed,
                  icon: Icons.auto_awesome,
                  text: "Discover",
                ),
                SideBarButton(
                  isCollapsed: isCollapsed,
                  icon: Icons.cloud_outlined,
                  text: "Library",
                ),

                const Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isCollapsed = !isCollapsed;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 14,
                      horizontal: 10,
                    ),
                    child: isCollapsed
                        ? Icon(
                            Icons.keyboard_arrow_right,
                            color: AppColors.iconGrey,
                            size: 22,
                          )
                        : Icon(
                            Icons.keyboard_arrow_left,
                            color: AppColors.iconGrey,
                            size: 22,
                          ),
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
