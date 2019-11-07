import 'package:flutter/material.dart';
import 'package:tinder_clone/pages/widgets/list.users.dart';
import 'package:tinder_clone/pages/widgets/troggle.button.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key key}) : super(key: key);
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(initialIndex: 1, length: 3, vsync: this);
    _tabController.addListener(_handleTabSelection);
    _tabController.animateTo(
      _tabController.index,
      duration: Duration(milliseconds: 1000),
      curve: Curves.linear,
    );

    super.initState();
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Tab> myTabs = <Tab>[
      new Tab(icon: Icon(Icons.call)),
      new Tab(
        icon: !(_tabController.index == 1)
            ? Icon(Icons.ac_unit)
            : TroggleButton(),
      ),
      new Tab(
        icon: Icon(Icons.notifications),
      )
    ];
    return Scaffold(
      appBar: new PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: new Container(
          color: Colors.white,
          child: new SafeArea(
            child: Column(
              children: <Widget>[
                new Expanded(child: new Container()),
                new TabBar(
                  unselectedLabelColor: Colors.white,
                  labelColor: Colors.amber,
                  labelStyle: TextStyle(color: Colors.red),
                  tabs: myTabs,
                  controller: _tabController,
                  indicatorColor: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          Container(),
          ListUsers(),
          Container(),
        ],
        controller: _tabController,
      ),
    );
  }
}
