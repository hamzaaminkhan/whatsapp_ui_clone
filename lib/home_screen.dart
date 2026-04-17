import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(

          appBar: AppBar(
            centerTitle: false,
            title: Text('Whatsapp'),
            backgroundColor: Colors.teal.shade500,

            bottom: const TabBar(
                tabs: [

                  Tab(
                    child:
                        
                    Text('Chats'),
                  ),
                  Tab(
                    child:
                    Text('Updates'),
                  ),
                  Tab(
                    child:
                    Text('Groups'),
                  ),
                  Tab(
                    child:
                    Text('Calls'),
                  ),

                ]

          ),
            actions: [
              Icon(Icons.search_rounded),
              SizedBox(width: 15),
              Icon(Icons.camera_alt_sharp),
              SizedBox(width: 10),
              PopupMenuButton(
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: '1',
                        child: Text('New group')
                    ),
                    PopupMenuItem(
                        value: '2',
                        child: Text('New community')
                    ),
                    PopupMenuItem(
                        value: '3',
                        child: Text('Broadcast lists')
                    ),
                    PopupMenuItem(
                        value: '4',
                        child: Text('Linked devices')
                    ),
                    PopupMenuItem(
                        value: '5',
                        child: Text('Starred')
                    ),
                    PopupMenuItem(
                        value: '6',
                        child: Text('Read all')
                    ),
                    PopupMenuItem(
                        value: '7',
                        child: Text('Settings')
                    ),
                  ]
              ),
              SizedBox(width: 10)
            ],
          ),
          body:  TabBarView(
              children: [

                ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index){
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('data:image/jpeg;base64,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'),
                      ),
                      title: Text('Linkedin bot'),
                      subtitle: Text('We are hiring! Apply Now'),
                      trailing: Text('6:32pm'),
                    );
                  },
                ),

                ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index){
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.green,
                            width: 4
                          )
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRI2By8ob0Owt3DfEob5AepDezPkcwiJR4LsQ&s'),
                        ),
                      ),
                      title: const Text('Mark Manson'),
                      subtitle: Text('35m ago' )
                    );
                  },
                ),

                ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index){
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('data:image/jpeg;base64,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'),
                      ),
                      title: Text('The Al Qaeda Of Preston 🀄'),
                      subtitle: Text('Enisten Plays: sent a Sticker'),
                      trailing: Text('5:28pm'),
                    );
                  },
                ),

                ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index){
                    return ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage('data:image/jpeg;base64,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'),
                      ),
                      title: const Text('Elon musk'),
                      subtitle: Text(index /3 == 0 ? "you missed audio call" : 'hour ago'),
                      trailing: Icon(index /3 == 0 ? Icons.phone : Icons.video_call),
                    );
                  },
                ),
              ]
          ),
        )
    );
  }
}
