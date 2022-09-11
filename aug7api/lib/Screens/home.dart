import 'package:aug7api/Models/userModel.dart';
import 'package:aug7api/Services/services.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameCont = TextEditingController();
    TextEditingController emailCont = TextEditingController();
    TextEditingController uNameCont = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * .5,
            child: TextField(
              controller: nameCont,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .5,
            child: TextField(controller: emailCont,),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .5,
            child: TextField(controller: uNameCont,),
          ),
          ElevatedButton(
              onPressed: () {
                postData(Data(
                    name: nameCont.text, email: emailCont.text, username: uNameCont.text));
              },
              child: const Text("Add Data")),
          Expanded(
            child: FutureBuilder(
                future: getUser(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: snapshot.data.data.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(snapshot.data.data[index].name),
                            subtitle: Text("${snapshot.data.data[index].id}"),
                            trailing: Wrap(children: [
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      updateData(
                                          model: Data(
                                              name: "xyz",
                                              email: "xyz@email.com",
                                              username: "@xyz"),
                                          id: snapshot.data.data[index].id);
                                    });
                                  },
                                  icon: const Text("Update")),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      deleteData(
                                          id: snapshot.data.data[index].id);
                                    });
                                  },
                                  icon: const Text("Delete")),
                            ]),
                          );
                        });
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                }),
          ),
        ],
      ),
    );
  }
}
