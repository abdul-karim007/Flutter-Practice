import 'package:flutter/material.dart';
import 'package:mobilepaymentapp/Constants/text/textconstants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List<String> chats = [
  // TextConstants.listTitle1,
  // TextConstants.listTitle2,
  // TextConstants.listTitle3,
  // TextConstants.listTitle4,
  // TextConstants.listTitle5
];
TextEditingController chatNameText = TextEditingController();

class _HomeScreenState extends State<HomeScreen> {
  addChats() {
    setState(() {
      chats.add(chatNameText.text);
      chatNameText.clear();
    });
  }

  removeChats(index) {
    setState(() {
      chats.removeAt(index);
    });
  }

  updateChats(){
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * .7,
            child: TextField(controller: chatNameText),
          ),
          ElevatedButton(
            onPressed: () {
              addChats();
            },
            child: Text('Add Chats'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: ((context, index) {
                return ListTile(
                  tileColor: Colors.grey,
                  title: Text(chats[index]),
                  trailing: SizedBox(
                    width: 100,
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            removeChats(index);
                          },
                          color: Colors.black,
                          icon: Icon(Icons.delete_forever),
                        ),
                        IconButton(
                          onPressed: () {
                            
                          },
                          color: Colors.black,
                          icon: Icon(Icons.update),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      )),
    );
  }
}
