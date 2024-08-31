
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recyerviws_api/recycler_view/uses_provider.dart';

class FavoriteUsersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,

        title: Text('Favorite Users'),
      ),
      backgroundColor: Colors.blueGrey,
      body: Consumer<UserProvider>(
        builder: (context, provider, child) {
          final favoriteUsers = provider.favoriteUsers;

          if (favoriteUsers.isEmpty) {
            return Center(child: Text('No favorite users.'));
          } else {
            return ListView.builder(
              itemCount: favoriteUsers.length,
              itemBuilder: (context, index) {
                final user = favoriteUsers[index];
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  elevation: 4,
                  shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colors.white12,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(user.avatar),
                    ),
                    title: Text('${user.firstName} ${user.lastName}'),
                    subtitle: Text(user.email),
                    trailing: IconButton(
                      icon: Icon(Icons.remove_circle_outline),
                      onPressed: () {
                        provider.toggleFavorite(user);
                      },
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
