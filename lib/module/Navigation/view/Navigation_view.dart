import 'package:flutter/material.dart';
import 'package:myplants/core.dart';

class BasicMainNavigationView extends StatefulWidget {
  const BasicMainNavigationView({Key? key}) : super(key: key);

  @override
  State<BasicMainNavigationView> createState() =>
      _BasicMainNavigationViewState();
}

class _BasicMainNavigationViewState extends State<BasicMainNavigationView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: selectedIndex,
      child: Scaffold(
        extendBody: true,
        body: IndexedStack(
          index: selectedIndex,
          children: [
            const DashboardView(),
            Container(
              color: Colors.red[100],
            ),
            Container(
              color: Colors.purple[100],
            ),
            const ProfilView(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff54805A),
          onPressed: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.local_florist,
                color: Color(0xffEBDD4F),
              ),
              SizedBox(
                height: 2.0,
              ),
              Text(
                'Plant',
                style: TextStyle(fontSize: 9.0, color: Color(0xffEBDD4F)),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Color(0xff54805A),
          shape: const CircularNotchedRectangle(),
          notchMargin: 5,
          child: SizedBox(
            height: 60.0,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.home,
                        color: selectedIndex == 0
                            ? Color(0xffEBDD4F)
                            : Colors.white,
                      ),
                      onPressed: () {
                        selectedIndex = 0;
                        setState(() {});
                      },
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.list,
                        color: selectedIndex == 1
                            ? Color(0xffEBDD4F)
                            : Colors.white,
                      ),
                      onPressed: () {
                        selectedIndex = 1;
                        setState(() {});
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.favorite,
                        color: selectedIndex == 2
                            ? Color(0xffEBDD4F)
                            : Colors.white,
                      ),
                      onPressed: () {
                        selectedIndex = 2;
                        setState(() {});
                      },
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.person,
                        color: selectedIndex == 3
                            ? Color(0xffEBDD4F)
                            : Colors.white,
                      ),
                      onPressed: () {
                        selectedIndex = 3;
                        setState(() {});
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
