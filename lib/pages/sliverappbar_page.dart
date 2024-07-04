import 'package:flutter/material.dart';

class SliverappbarPage extends StatefulWidget {
  const SliverappbarPage({super.key});

  @override
  State<SliverappbarPage> createState() => _SliverappbarPageState();
}

class _SliverappbarPageState extends State<SliverappbarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            expandedHeight: 220,
            floating: true,
            snap: true,
            elevation: 50,
            backgroundColor: Colors.grey,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("Sliver app Bar"),
              background: Image(
                image: AssetImage("assets/images/im_sample1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(_buildList(50)),
          )
        ],
      ),
    );
  }

  List<Widget> _buildList(int count) {
    List<Widget> items = [];
    for (int i = 0; i < count; i++) {
      items.add(_itemList(i));
    }
    return items;
  }

  Widget _itemList(int i) {
    return Container(
      height: 50,
      child: Center(
        child: Text("Item ${i}"),
      ),
    );
  }
}
