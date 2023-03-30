import 'package:flutter/material.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class MyCard extends StatefulWidget {
  final String title;

  const MyCard({required this.title, super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  final colorwhite = Colors.white;
  List data = const [
    {"color": Color(0xffff6968)},
    {"color": Color(0xff7a54ff)},
    {"color": Color(0xffff8f61)},
    {"color": Color(0xff2ac3ff)},
    {"color": Color(0xff5a65ff)},
    {"color": Color(0xff96da45)},
    {"color": Color(0xffff6968)},
    {"color": Color(0xff7a54ff)},
    {"color": Color(0xffff8f61)},
    {"color": Color(0xff2ac3ff)},
    {"color": Color(0xff5a65ff)},
    {"color": Color(0xff96da45)},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'SEARCHING...................',
                  ),
                ),
              );
            },
            icon: const Icon(
              Icons.search,
              size: 32,
            ),
          ),
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'DEVELOPER...................',
                  ),
                ),
              );
            },
            icon: const Icon(
              Icons.person,
              size: 32,
            ),
          ),
        ],
      ),
      body: myCard(),
      drawer: myDrawer(),
      floatingActionButton: myFloatingActionButton(),
      bottomNavigationBar: myBottomNavigationBar(),
    );
  }

  Widget myCard() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 18,
      ),
      child: GridView.builder(
        itemCount: data.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(4),
            child: WidgetAnimator(
              incomingEffect: WidgetTransitionEffects.incomingSlideInFromTop(
                duration: const Duration(seconds: 5),
              ),
              child: Card(
                color: data[index]["color"],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        WidgetAnimator(
                          atRestEffect: WidgetRestingEffects.dangle(
                            duration: const Duration(
                              seconds: 10,
                            ),
                          ),
                          child: Text(
                            '  Heart Rate',
                            style: TextStyle(
                              color: colorwhite,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                            color: Color.fromRGBO(255, 255, 255, 0.38),
                          ),
                          child: WidgetAnimator(
                            atRestEffect: WidgetRestingEffects.pulse(
                              duration: const Duration(
                                seconds: 5,
                              ),
                            ),
                            child: Icon(
                              Icons.favorite,
                              color: colorwhite,
                              size: 30,
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.only(
                        left: 10,
                        bottom: 20,
                      ),
                      child: WidgetAnimator(
                        atRestEffect: WidgetRestingEffects.dangle(
                          duration: const Duration(
                            seconds: 10,
                          ),
                        ),
                        child: Text(
                          '144 bpm',
                          style: TextStyle(
                            fontSize: 27,
                            color: colorwhite,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      padding: const EdgeInsets.only(
                        right: 10,
                        top: 50,
                      ),
                      child: Column(
                        children: [
                          WidgetAnimator(
                            atRestEffect: WidgetRestingEffects.dangle(
                              duration: const Duration(
                                seconds: 5,
                              ),
                            ),
                            child: Text(
                              'Healthy',
                              style: TextStyle(
                                fontSize: 18,
                                color: colorwhite,
                              ),
                            ),
                          ),
                          WidgetAnimator(
                            atRestEffect: WidgetRestingEffects.dangle(
                              duration: const Duration(
                                seconds: 5,
                              ),
                            ),
                            child: Text(
                              '50-120',
                              style: TextStyle(
                                fontSize: 18,
                                color: colorwhite,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget myDrawer() {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Colors.black,
            child: const DrawerHeader(
              child: Center(
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 30,
            ),
            child: ListTile(
              leading: CircleAvatar(
                //  backgroundColor: Colors.orange,
                radius: 20,
                foregroundImage: AssetImage(
                  'assets/images/mani.jpg',
                ),
                // child: Icon(Icons.person),
              ),
              title: Text(
                'Name : ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                'Imran Nazeer',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 30,
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 20,
                child: Icon(Icons.email),
              ),
              title: Text(
                'imrannazeer2015804@gmail.com',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                '',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 30,
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 20,
                // backgroundImage: AssetImage(
                //   'assets/images/img.jpg',
                // ),
                child: Icon(Icons.password),
              ),
              title: Text(
                'Password : ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                'jagu@804',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget myFloatingActionButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: const Icon(
            Icons.add,
            size: 32,
          ),
        ),
        FloatingActionButton(
          onPressed: () {},
          tooltip: 'Decrement',
          child: const Icon(
            Icons.remove,
            size: 32,
          ),
        ),
      ],
    );
  }

  Widget myBottomNavigationBar() {
    return SizedBox(
      height: 70,
      child: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.camera,
              size: 32,
            ),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.chat,
              size: 32,
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.group,
              size: 32,
            ),
            label: 'Groups',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.stacked_bar_chart,
              size: 32,
            ),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.call,
              size: 32,
            ),
            label: 'Calls',
          ),
        ],
      ),
    );
  }
}
