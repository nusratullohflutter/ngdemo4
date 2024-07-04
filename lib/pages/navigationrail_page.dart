import 'package:flutter/material.dart';

class NavigationrailPage extends StatefulWidget {
  const NavigationrailPage({super.key});

  @override
  State<NavigationrailPage> createState() => _NavigationrailPageState();
}

class _NavigationrailPageState extends State<NavigationrailPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Navigation Rail Page"),
      ),
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.selected,
            destinations: [
              //#favorite navigatin rail//

              NavigationRailDestination(
                icon: Icon(Icons.favorite_border),
                selectedIcon: Icon(Icons.favorite),
                label: Text("First"),
              ),

              //#bookmark navigatin rail//

              NavigationRailDestination(
                icon: Icon(Icons.bookmark_border),
                selectedIcon: Icon(Icons.bookmark),
                label: Text("Second"),
              ),

              //#star navigatin rail//

              NavigationRailDestination(
                icon: Icon(Icons.star_border),
                selectedIcon: Icon(Icons.star),
                label: Text("Third"),
              )
            ],
          ),
          VerticalDivider(
            thickness: 1,
            width: 1,
          ),
          Expanded(
              child: Center(
            child: Text("Selected index $_selectedIndex"),
          ))
        ],
      ),
    );
  }
}
