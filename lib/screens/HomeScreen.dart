import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final bool hideTitleWhenExpanded = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            // SliverAppBar(
            //   expandedHeight: 100.0,
            //   flexibleSpace: FlexibleSpaceBar(
            //     background: Image.asset(
            //       'assets/images/img_masjid.jpeg',
            //       fit: BoxFit.fill,
            //     ),
            //   ),
            // ),
            //below is the previous
            SliverPersistentHeader(
              pinned: true,
              floating: true,
              delegate: CustomSliverDelegate(
                expandedHeight: 200.0,
              ),
            ),

            SliverList(
              delegate: SliverChildListDelegate(
                [
                  const Card(
                    child: ListTile(
                      title: Text('info 1'),
                    ),
                  ),
                  const Card(
                    child: ListTile(
                      title: Text('info 2'),
                    ),
                  ),
                  const Card(
                    child: ListTile(
                      title: Text('info 1'),
                    ),
                  ),
                  const Card(
                    child: ListTile(
                      title: Text('info 2'),
                    ),
                  ),
                  const Card(
                    child: ListTile(
                      title: Text('info 1'),
                    ),
                  ),
                  const Card(
                    child: ListTile(
                      title: Text('info 2'),
                    ),
                  ),
                  const Card(
                    child: ListTile(
                      title: Text('info 1'),
                    ),
                  ),
                  const Card(
                    child: ListTile(
                      title: Text('info 2'),
                    ),
                  ),
                  const Card(
                    child: ListTile(
                      title: Text('info 1'),
                    ),
                  ),
                  const Card(
                    child: ListTile(
                      title: Text('info 2'),
                    ),
                  ),
                  const Card(
                    child: ListTile(
                      title: Text('info 1'),
                    ),
                  ),
                  const Card(
                    child: ListTile(
                      title: Text('info 2'),
                    ),
                  ),
                  const Card(
                    child: ListTile(
                      title: Text('info 1'),
                    ),
                  ),
                  const Card(
                    child: ListTile(
                      title: Text('info 2'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// this one is the previouse
class CustomSliverDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final bool hideTitleWhenExpanded;

  CustomSliverDelegate({
    required this.expandedHeight,
    this.hideTitleWhenExpanded = true,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final appBarSize = expandedHeight - shrinkOffset;
    final cardTopPosition = expandedHeight / 1.3 - shrinkOffset;
    final proportion = 2 - (expandedHeight / appBarSize);
    final percent = proportion < 0 || proportion > 1 ? 0.0 : proportion;
    return SizedBox(
      height: expandedHeight + expandedHeight / 2,
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height:
                    appBarSize < kToolbarHeight ? kToolbarHeight : appBarSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/img_masjid.jpeg'),
                      fit: BoxFit.fill),
                ),
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0.0,
                  title: Opacity(
                    opacity: 1.0 - percent,
                    child: Text("DMI APP"),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            top: cardTopPosition > 0 ? cardTopPosition : 0,
            bottom: 0.0,
            child: Opacity(
              opacity: percent,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30 * percent),
                child: Card(
                  elevation: 5.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.menu_book),
                      Icon(Icons.menu_book),
                      Icon(Icons.menu_book),
                      Icon(Icons.menu_book),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => expandedHeight + expandedHeight / 2;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
