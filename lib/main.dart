import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:sportify_app/screens/about_page.dart';
import 'package:sportify_app/screens/history_page.dart';
import 'package:sportify_app/screens/home_page.dart';
import 'package:sportify_app/screens/landing_page.dart';
import 'package:sportify_app/screens/login.dart';
import 'package:sportify_app/screens/latihan_api.dart';
import 'package:sportify_app/screens/latihan_sqllite.dart';
import 'package:sportify_app/screens/notification_page.dart';
import 'package:sportify_app/screens/profile_page.dart';
import 'package:sportify_app/screens/register_page.dart';
import 'package:sportify_app/screens/setting_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sportify_app/utils/constants.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:sportify_app/utils/helper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          title: 'Sportify App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: Constants.scaffoldBackgroundColor,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            textTheme: GoogleFonts.montserratTextTheme(),
          ),
          initialRoute: "/landing",
          onGenerateRoute: _onGenerateRoute,
          routes: {
            '/home': (context) =>
                MainScreen(title: 'Sportify', scaffoldKey: scaffoldKey),
          },
        );
      },
    );
  }
}

Route<dynamic> _onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case "/":
      return MaterialPageRoute(builder: (BuildContext context) {
        return const LandingPage();
      });
    case "/login":
      return MaterialPageRoute(builder: (BuildContext context) {
        return const LoginPage();
      });
    case "/register":
      return MaterialPageRoute(builder: (BuildContext context) {
        return const RegisterPage();
      });
    case "/home":
      return MaterialPageRoute(builder: (BuildContext context) {
        return const HomePage();
      });
    case "/history":
      return MaterialPageRoute(builder: (BuildContext context) {
        return const HistoryPage();
      });
    case "/setting":
      return MaterialPageRoute(builder: (BuildContext context) {
        return const SettingPage();
      });
    case "/profile":
      return MaterialPageRoute(builder: (BuildContext context) {
        return const ProfilePage();
      });
    case "/about":
      return MaterialPageRoute(builder: (BuildContext context) {
        return const AboutPage();
      });
    case "/notification":
      return MaterialPageRoute(builder: (BuildContext context) {
        return const NotificationPage();
      });
    case "/latihan-API":
      return MaterialPageRoute(builder: (BuildContext context) {
        return const LatihanAPI();
      });
    case "/latihan-CRUD":
      return MaterialPageRoute(builder: (BuildContext context) {
        return const LatihanSQLlite();
      });
    default:
      return MaterialPageRoute(builder: (BuildContext context) {
        return const LandingPage();
      });
  }
}

class MainScreen extends StatefulWidget {
  final String title;
  final GlobalKey<ScaffoldState> scaffoldKey;

  const MainScreen({super.key, required this.title, required this.scaffoldKey});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _page = [
    const HomePage(),
    const HistoryPage(),
    const SettingPage(),
  ];

  final List<String> _appBarTitles = const ['Sportify', 'History', 'Setting'];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitles[_selectedIndex]),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              nextScreen(context, '/notification');
            },
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                nextScreen(context, '/profile');
              },
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/basketball.jpg'),
              ),
            ),
          ),
        ],
      ),

      //drawer
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/home_bg.png"),
                    fit: BoxFit.cover),
              ),
              child: Text(
                'Sportify',
                style: TextStyle(
                    color: Constants.primaryColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: const Text('Latihan API'),
              onTap: () {
                nextScreen(context, '/latihan-API');
              },
            ),
            ListTile(
              title: const Text('Latihan CRUD'),
              onTap: () {
                nextScreen(context, '/latihan-CRUD');
              },
            ),
            ListTile(
              title: const Row(
                children: [
                  Icon(Icons.info),
                  SizedBox(width: 5),
                  Text('About Apps'),
                ],
              ),
              onTap: () {
                nextScreen(context, '/about');
              },
            ),
            ListTile(
              title: const Row(
                children: [
                  Icon(Icons.logout),
                  SizedBox(width: 5),
                  Text('Logout'),
                ],
              ),
              onTap: () {
                nextScreen(context, '/');
              },
            ),
          ],
        ),
      ),
      body: _page[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Constants.scaffoldBackgroundColor,
        buttonBackgroundColor: Constants.primaryColor,
        items: const [
          CurvedNavigationBarItem(
            child: Icon(
              Icons.home,
              color: Constants.activeMenu,
            ),
            label: 'Home',
            labelStyle: TextStyle(color: Constants.activeMenu),
          ),
          CurvedNavigationBarItem(
              child: Icon(
                Icons.history,
                color: Constants.activeMenu,
              ),
              label: 'History',
              labelStyle: TextStyle(color: Constants.activeMenu)),
          CurvedNavigationBarItem(
              child: Icon(
                Icons.settings,
                color: Constants.activeMenu,
              ),
              label: 'Setting',
              labelStyle: TextStyle(color: Constants.activeMenu)),
        ],
        onTap: _onItemTapped,
        color: Constants.primaryColor,
      ),
    );
  }
}
