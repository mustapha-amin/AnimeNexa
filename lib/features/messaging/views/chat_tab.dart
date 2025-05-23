import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChatsTab extends StatelessWidget {
  const ChatsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        //TODO: implement real messages
        return ListTile(
          onTap: () {
            context.go('/messaging/chatView');
          },
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('lib/assets/images/unnamed (14).png'),
          ),
          title: Text(
            'Jon Doe',
            style: theme.textTheme.labelMedium,
          ),
          subtitle: Text(
            'Hey',
            style: theme.textTheme.bodySmall,
          ),
          trailing: Column(
            children: [
              Text('10:00 AM'),
              Container(
                width: 25,
                height: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: theme.primaryColor,
                ),
                child: Center(
                  child: Text(
                    20.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
