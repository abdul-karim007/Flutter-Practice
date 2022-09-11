import 'package:flutter/material.dart';
import 'package:july24api/model/user.dart';
import 'package:july24api/services/userServices.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<List<UserModel>> users = getUsers();
  final TextEditingController searchController = TextEditingController();
  searchUser() {
    setState(() {
      users = searchUsers(searchController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            TextField(
              controller: searchController,
              decoration: InputDecoration(
                  hintText: "Search By Name",
                  suffix: IconButton(
                    onPressed: () => searchUser(),
                    icon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  )),
            ),
            Expanded(
              child: FutureBuilder(
                  future: users,
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                          itemCount: snapshot.data.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(
                                  "${snapshot.data[index].name} - (${snapshot.data[index].username})"),
                              subtitle: Text(
                                  "${snapshot.data[index].email} - (${snapshot.data[index].phone})"),
                              trailing: Text('${snapshot.data[index].company}'),
                            );
                          });
                    } else {
                      return const CircularProgressIndicator();
                    }
                  }),
            ),
          ],
        ));
  }
}
