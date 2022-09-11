import 'package:dummyapi/controllers/controller.dart';
import 'package:dummyapi/models/model.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<List<UserModel>> users = getUsers();
  final TextEditingController _searchController = TextEditingController();

  searchUser() {
    setState(() {
      users = searchUsers(_searchController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Api Integration")),
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * .5,
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: "Search By Name",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: ElevatedButton(
                onPressed: () => searchUser(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Search'),
                    Icon(
                      Icons.search,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: FutureBuilder(
              future: users,
              builder: (context, AsyncSnapshot snapshot) {
                if (!snapshot.hasData) {
                  return const CircularProgressIndicator();
                } else {
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                            "${snapshot.data[index].name} - (${snapshot.data[index].username})"),
                        subtitle: Text(
                            "${snapshot.data[index].email} - (${snapshot.data[index].phone})"),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
