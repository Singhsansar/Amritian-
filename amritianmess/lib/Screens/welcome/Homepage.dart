import 'package:amritamess/Components/Textbottom.dart';
import 'package:amritamess/Screens/welcome/About.dart';
import 'package:amritamess/Screens/welcome/Editprofile.dart';
import 'package:amritamess/Screens/welcome/Hostel.dart';
import 'package:amritamess/Screens/welcome/Login.dart';
import 'package:amritamess/Screens/welcome/Mess.dart';
import 'package:amritamess/Screens/welcome/Note.dart';
import 'package:amritamess/Screens/welcome/Routine.dart';
import 'package:amritamess/Screens/welcome/Settings.dart';
import 'package:amritamess/Screens/welcome/announcement.dart';
import 'package:amritamess/constants.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: kprimaryLightcolor,
        appBar: AppBar(
          title: const Text("Homepage"),
          backgroundColor: kprimarycolor,
        ),
        drawer: Drawer(
          width: size.width * 0.6,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: kprimarycolor,
                  shape: BoxShape.rectangle,
                  //image:  Icon(Icons.camera_Draw),
                ),
                padding: EdgeInsets.only(top: 40, left: size.width * 0.05),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: Image.asset(
                        "assets/icons/profile.png",
                        width: 70,
                        height: 60,
                      ),
                    ),
                    TextBottom(
                        text: "Edit Profile",
                        fontsiz: 15,
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return const Profile();
                            }),
                          );
                        })
                  ],
                ),
              ),
              ListTile(
                leading: IconButton(
                  color: kprimarycolor,
                  icon: const Icon(Icons.home),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return const Homepage();
                    })));
                  },
                ),
                title: const Text("Home"),
              ),
              // const ListTile(
              //   leading: Icon(Icons.home),
              //   title: Text("Home"),
              // ),
              ListTile(
                leading: IconButton(
                  color: kprimarycolor,
                  icon: const Icon(Icons.settings),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return const Setting();
                    })));
                  },
                ),
                title: const Text("Settings"),
              ),
              ListTile(
                leading: IconButton(
                  color: kprimarycolor,
                  icon: const Icon(Icons.logout),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return const Login();
                    })));
                  },
                ),
                title: const Text("Logout"),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            //margin: const EdgeInsets.symmetric(vertical: 20),
            padding:
                EdgeInsets.only(left: size.width * 0.06), //main homepage body
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        IconButton(
                          //padding: const EdgeInsets.all(10),
                          iconSize: size.width * 0.35,
                          icon: Image.asset("assets/icons/announcement1.png"),
                          tooltip: "Announcement",
                          focusColor: Colors.blue,
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const Announcement();
                            }));
                          },
                        ),
                        const Text(
                          "Announcement",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 17,
                    ),
                    Column(
                      children: [
                        IconButton(
                          iconSize: size.width * 0.42,
                          icon: Image.asset("assets/icons/food2.png"),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const Mess();
                            }));
                          },
                        ),
                        const Text(
                          "Mess",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        IconButton(
                          iconSize: size.width * 0.42,
                          icon: Image.asset("assets/icons/Hostel2.png"),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const Hostel();
                            }));
                          },
                        ),
                        const Text(
                          "Hostel",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          iconSize: size.width * 0.42,
                          icon: Image.asset("assets/icons/routine.png"),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const Routine();
                            }));
                          },
                        ),
                        const Text(
                          "Routine",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        IconButton(
                          iconSize: size.width * 0.4,
                          icon: Image.asset("assets/icons/todo.png"),
                          focusColor: Colors.blue,
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const Note();
                            }));
                          },
                        ),
                        const Text(
                          "Note",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          iconSize: size.height * 0.2,
                          icon: Image.asset("assets/icons/aboutus.png"),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const About();
                            }));
                          },
                        ),
                        const Text(
                          "About",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: size.width * 0.45),
                      child: Column(
                        children: [
                          IconButton(
                            iconSize: size.width * 0.4,
                            icon: Image.asset("assets/icons/Setting.png"),
                            focusColor: Colors.blue,
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const Setting();
                              }));
                            },
                          ),
                          const Text(
                            "Setting",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: kprimarycolor,
              primaryColor: Colors.white,
              textTheme: Theme.of(context)
                  .textTheme
                  .copyWith(caption: const TextStyle(color: kprimarycolor)),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: const [
                // const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.alarm_add_rounded),
                  label: 'Reminder',
                  activeIcon: Login(),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.school),
                  label: 'School',
                ),
              ],
            )));
  }
}
