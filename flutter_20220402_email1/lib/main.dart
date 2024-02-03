import 'package:flutter/material.dart';

void main() => runApp(const ListTileApp());

class ListTileApp extends StatelessWidget {
  const ListTileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const ListTileExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ListTileExample extends StatelessWidget {
  const ListTileExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Mailboxes'),
            Text(
              'Edit',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
      body: Scrollbar(
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: const <Widget>[
            _GroupedCard(
              title: 'Today',
              leadingIcon: Icons.calendar_today,
            ),
            _GroupedCard(
              title: 'Unread',
              leadingIcon: Icons.mark_email_unread_outlined,
            ),
            _GroupedCard(
              title: 'Inbox',
              leadingIcon: Icons.inbox,
            ),
            _GroupedCard(
              title: 'Archive',
              leadingIcon: Icons.archive,
            ),
            _GroupedCard(
              title: 'Junk',
              leadingIcon: Icons.delete_outline_sharp,
            ),
            _GroupedCard(
              title: 'Trash',
              leadingIcon: Icons.delete,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Icloud', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        child: SizedBox(
          height: 50,
          child: Center(
            child: Text(
              'Uploaded Just Now',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}

class _GroupedCard extends StatelessWidget {
  const _GroupedCard({
    Key? key,
    required this.title,
    required this.leadingIcon,
  }) : super(key: key);

  final String title;
  final IconData leadingIcon;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(leadingIcon),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
