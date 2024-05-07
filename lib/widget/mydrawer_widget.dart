import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.red),
                  accountName: Padding(
                    padding: EdgeInsets.only(top: 35),
                    child: Text("Nakhim"),
                  ),
                  accountEmail: Text("nakhim@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://imgs.search.brave.com/IY6daWWTxmQf8TxfGkRuTenI2bBxx8v9VilA8DmfuFI/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzLmNvbS9p/bWFnZXMvaGQvY29v/bC1hbmltZS1wcm9m/aWxlLXBpY3R1cmUt/Z21wdW9ldnlkam15/eXR4eS5qcGc"),
                  ),
                )),
            listtile(
              text: 'home',
              icon: Icons.home,
            ),
            listtile(
              text: 'My Accont',
              icon: Icons.person,
            ),
            listtile(
              text: 'My Order',
              icon: Icons.shop,
            ),
            listtile(
              text: 'My Wish List',
              icon: Icons.favorite,
            ),
            listtile(
              text: 'Settings',
              icon: Icons.settings,
            ),
            listtile(
              text: 'Log Out',
              icon: Icons.logout_outlined,
            )
          ],
        ),
      ),
    );
  }
}

class listtile extends StatelessWidget {
  const listtile({
    super.key,
    required this.icon,
    required this.text,
  });
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.red,
      ),
      title: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
