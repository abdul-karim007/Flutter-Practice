import 'package:assignmentsharedpref/Constants/text/textconstants.dart';
import 'package:assignmentsharedpref/pages/saved.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
TextEditingController update = TextEditingController();
TextEditingController chatNameText1 = TextEditingController();
String toDoText = '';

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

  updateChats(index) {
    setState(() {
      chats.replaceRange(index, index + 1, {chats[index]});
      update.clear();
    });
  }

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    chatNameText.text = SavedData().getData() as String;
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        semanticLabel: 'Drawer',
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              Text(
                'To-Do App',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.settings,
                        size: 20,
                      ),
                      Text(
                        'Settings',
                        style: TextStyle(fontSize: 25),
                      ),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.question_mark_rounded,
                      size: 20,
                    ),
                    Text(
                      'Help',
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.search,
                      size: 20,
                    ),
                    Text(
                      'About Us',
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                ),
              ),
              TextButton(onPressed: () {}, child: Text('Logout'))
            ],
          ),
        ),
      ),
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(TextConstants.tittle),
      ),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * .7,
            child: TextField(controller: chatNameText),
          ),
          ElevatedButton(
            onPressed: () async {
              addChats();
              await SavedData().setData(chatNameText.text);
              // todoData(chatNameText.text);
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
                            showDialog(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                      title: Text(
                                        TextConstants.update,
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      alignment: Alignment.center,
                                      backgroundColor:
                                          Colors.white.withOpacity(.5),
                                      content: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: TextField(
                                              controller: update,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                              ),
                                              onChanged: (value) {
                                                chats[index] = value;
                                              },
                                            ),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              updateChats(index);
                                              Navigator.of(context).pop();
                                            },
                                            child: Text('update'),
                                          )
                                        ],
                                      ),
                                    ));
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
          // Padding(
          //   padding: const EdgeInsets.only(bottom: 15.0),
          //   child:
          //    FloatingActionButton(
          //     onPressed: () {
          //       Scaffold.of(context).openDrawer();
          //     },
          //     child: Icon(Icons.add),
          //   ),
          // )
          Builder(builder: (context) {
            return FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () =>
                  Scaffold.of(context).openDrawer(), // <-- Opens drawer.
            );
          }),
        ],
      )),
    );
  }

  Future<void> todoData(todo) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('todoData', todo);
  }

  Future<void> saveToDo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.getString('todoData');
  }
}
