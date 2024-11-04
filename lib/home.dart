import 'package:flutter/material.dart';
import 'package:week2/card_demo.dart';
import 'package:week2/column_page.dart';
import 'package:week2/counter_page.dart';
import 'package:week2/list_view_menu.dart';
import 'package:week2/my_card.dart';
import 'package:week2/row_page.dart';
import 'package:week2/screens/initState.dart';
import 'package:week2/screens/setStat.dart';
import 'package:week2/screens/stateFull.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Home page"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Mark Zuckerberg"),
              accountEmail: Text("mark@facebook.com"),
              currentAccountPicture: CircleAvatar(
                // child: Icon(Icons.android),
                backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/1/18/Mark_Zuckerberg_F8_2019_Keynote_%2832830578717%29_%28cropped%29.jpg'),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () async {
               await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.apps),
              title: const Text('Row widget'),
              onTap: () async {
                await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RowPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.perm_data_setting),
              title: const Text('Column widget'),
              onTap: () async{
                await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ColumnPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.list),
              title: const Text('List view menu'),
              onTap: () async {
                await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ListViewMenu(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.badge),
              title: const Text('Card demo'),
              onTap: () async {
                await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CardDemo(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.card_travel),
              title: const Text('My Card'),
              onTap: () async {
               await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyCard(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.library_add),
              title: const Text('Set State'),
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SetStateDemo(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.library_books),
              title: const Text('Stateful widget'),
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StateFullDemo(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.backspace),
              title: const Text('Init state'),
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InitStateDemo(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.countertops),
              title: const Text('Counter App'),
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CounterPage(name: 'AAAA'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('MyHome'),
      ),
    );
  }
}
