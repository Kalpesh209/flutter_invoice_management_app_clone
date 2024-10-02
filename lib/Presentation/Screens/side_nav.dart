import 'package:flutter/material.dart';
import 'package:flutter_invoice_management_app_clone/Business/tab_controllers.dart';
import 'package:flutter_invoice_management_app_clone/Presentation/Screens/init_screen/splash_screen.dart';
import 'package:flutter_invoice_management_app_clone/Presentation/Screens/main_view.dart';
import 'package:flutter_invoice_management_app_clone/Presentation/Widgets/text_builder.dart';

class SideNav extends StatefulWidget {
  const SideNav({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SideNavState createState() => _SideNavState();
}

class _SideNavState extends State<SideNav> {
  final drawer = TabControllers();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        child: SafeArea(
          child: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 100.0,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 1,
                            color: Colors.black12,
                            offset: Offset(1, 1),
                          )
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.white),
                    child: const Center(
                      child: ListTile(
                        leading: CircleAvatar(
                          maxRadius: 30.0,
                          backgroundColor: Colors.black26,
                          child: TextBuilderWidget(
                            text: 'Logo',
                            color: Colors.white,
                          ),
                        ),
                        title: TextBuilderWidget(
                          text: 'Invoice Management UI',
                          fontWeight: FontWeight.w600,
                          textAlign: TextAlign.start,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: drawer.drawer.length,
                  itemBuilder: (BuildContext context, int i) {
                    return ListTile(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (_) => MainViewScreen(initRoute: i)),
                            (route) => false);
                      },
                      leading: Icon(
                        drawer.drawer[i].icon,
                        color: Colors.black,
                      ),
                      title: TextBuilderWidget(
                        text: drawer.drawer[i].title,
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    );
                  },
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (_) => const SplashScreen()),
                        (route) => false);
                  },
                  leading: const Icon(
                    Icons.power_settings_new,
                    color: Colors.black,
                  ),
                  title: const TextBuilderWidget(
                    text: 'Log out',
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
