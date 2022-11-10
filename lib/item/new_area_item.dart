import 'package:flutter/material.dart';

class NewAreaItem extends StatelessWidget {
  const NewAreaItem({Key? key}) : super(key: key);

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
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: const Icon(
                    Icons.more_horiz,
                    size: 15,
                  )),
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
