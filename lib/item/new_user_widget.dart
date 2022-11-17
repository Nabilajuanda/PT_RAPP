import 'package:flutter/material.dart';

class NewUserWidget extends StatefulWidget {
  const NewUserWidget({Key? key}) : super(key: key);

  @override
  State<NewUserWidget> createState() => _NewUserWidgetState();
}

class _NewUserWidgetState extends State<NewUserWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      width: 1280,
      padding: const EdgeInsets.all(5),
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: 9,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 450,
          mainAxisExtent: 250,
          crossAxisSpacing: 50,
          mainAxisSpacing: 30,
        ),
        itemBuilder: (context, index) => buildArea(index),
      ),
    );
  }

  Widget buildArea(int index) => Card(
        color: const Color.fromARGB(255, 209, 209, 209),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          padding: const EdgeInsets.all(8),
          child: buildAreaItem(),
        ),
      );

  Widget buildAreaItem() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, bottom: 25, top: 25, right: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 26,
                width: 26,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: PopupMenuButton(
                  offset: const Offset(0, 40),
                  iconSize: 15,
                  itemBuilder: (_) => <PopupMenuItem<String>>[
                    PopupMenuItem<String>(
                      value: 'Update',
                      child: Row(
                        children: const [
                          Icon(Icons.update),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Update'),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      value: 'Delete',
                      child: Row(
                        children: const [
                          Icon(Icons.delete),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Delete'),
                        ],
                      ),
                    )
                  ],
                  onSelected: (_) {},
                  child: const Icon(Icons.more_horiz),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Icon(
                Icons.photo_size_select_actual_outlined,
                size: 80,
              ),
              Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Area',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Kode Area : Block-A',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            color: Colors.black,
            height: 1,
            thickness: 1,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: const [
              Icon(Icons.photo_size_select_actual_outlined),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text('Block'),
              ),
            ],
          ),
          Row(
            children: const [
              Icon(Icons.photo_size_select_actual_outlined),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text('10 Excavator'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
