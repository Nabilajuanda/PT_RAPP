import 'package:flutter/material.dart';
import 'package:pt_rapp_area/item/add_area_item.dart';
import 'package:pt_rapp_area/item/new_area_widget.dart';

class AreaPage extends StatefulWidget {
  static const routeName = '/area_page';

  const AreaPage({Key? key}) : super(key: key);

  @override
  State<AreaPage> createState() => _AreaStatePage();
}

class _AreaStatePage extends State<AreaPage> {
  @override
  Widget build(BuildContext context) {
    bool isDesktop(BuildContext context) =>
        MediaQuery.of(context).size.width > 600;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              //---------- Dashboard
              if (isDesktop(context))
                Expanded(
                  flex: 4,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Dashboard',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 19),
                    ),
                  ),
                ),

              //---------- Home
              Expanded(
                flex: 4,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Home',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 19),
                  ),
                ),
              ),

              //---------- History
              Expanded(
                flex: 4,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'History',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 19),
                  ),
                ),
              ),

              //---------- Area
              Expanded(
                flex: 4,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Area',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 19),
                  ),
                ),
              ),

              //---------- Users
              Expanded(
                flex: 4,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Users',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 19),
                  ),
                ),
              ),

              //---------- Excavator
              Expanded(
                flex: 4,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Excavator',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 19),
                  ),
                ),
              ),

              //---------- Notification button
              Expanded(
                flex: 1,
                child: IconButton(
                  iconSize: 30,
                  icon: const Icon(
                    Icons.notifications_none,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ),

              //---------- Person Profil button
              Expanded(
                flex: 1,
                child: IconButton(
                  iconSize: 30,
                  icon: const Icon(
                    Icons.account_circle_outlined,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),

          backgroundColor: const Color.fromRGBO(244, 244, 244, 1),
          titleTextStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 24,
          ),

          // Menu
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  //---------- TextField Search Area
                  if (isDesktop(context))
                    Container(
                      padding: const EdgeInsets.only(
                          left: 50.0, bottom: 50.0, top: 50.0, right: 15),
                      width: 539,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'Search Area',
                          suffixIcon: const Icon(Icons.search),
                        ),
                      ),
                    ),

                  //---------- Tombol Search
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(50, 50),
                      foregroundColor: Colors.black,
                    ),
                    onPressed: () {},
                    child: const Icon(Icons.car_rental),
                  ),

                  //---------- Tombol Add New Area
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 540, right: 55),
                      child: SizedBox(
                        width: 70,
                        height: 40,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(229, 58, 0, 229)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10)))),
                          child: Row(
                            children: const [
                              Icon(Icons.add_box_outlined),
                              SizedBox(
                                width: 15,
                              ),
                              Text('Add New Area'),
                            ],
                          ),
                          onPressed: () {
                            AddAreaItem.addCancelDialog(context);
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 25),
                child: NewAreaItem(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
