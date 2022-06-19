import 'package:amritamess/Components/Textbottom.dart';
import 'package:amritamess/Screens/welcome/Login.dart';
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
        appBar: AppBar(
          title: const Text("Homepage"),
          backgroundColor: kprimarycolor,
        ),
        drawer: Drawer(
          width: size.width * 0.5,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: kprimarycolor,
                  shape: BoxShape.rectangle,
                  //image:  Icon(Icons.camera_enhance),
                ),
                padding: const EdgeInsets.only(top: 40, left: 2.5),
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
                              return const Login();
                            }),
                          );
                        })
                  ],
                ),
              ),
              const ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
              const ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
              const ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
              ),
              const ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
              )
            ],
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
                  icon: Icon(Icons.business),
                  label: 'Business',
                  activeIcon: Login(),
                ),
                // BottomNavigationBarItem(
                //   icon: Icon(Icons.business),
                //   label: 'Business',
                // ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.school),
                  label: 'School',
                ),
              ],
            )));
  }
}
