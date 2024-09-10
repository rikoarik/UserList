import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/data_controller.dart';

class ListViewPage extends StatelessWidget {
  final DataController dataController = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Obx(() {
        if (dataController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            itemCount: dataController.users.length,
            itemBuilder: (context, index) {
              var user = dataController.users[index];
              return Card(
                elevation: 5,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(user.avatar),
                  ),
                  title: Text('${user.firstName} ${user.lastName}', style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text(user.email),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // Handle user click here
                  },
                ),
              );
            },
          );
        }
      }),
    );
  }
}
