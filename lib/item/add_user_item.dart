import 'package:flutter/material.dart';

enum Action { add, cancel }

class AddUserItem {
  static Future<Action> addUserDialog(
    BuildContext context,
  ) async {
    final action = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          title: const Text(
            'Add Users',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          content: Column(
            children: [
              const SizedBox(
                width: 148,
                height: 148,
                child: Icon(
                  Icons.photo_size_select_actual_outlined,
                  size: 148,
                ),
              ),
              SizedBox(
                width: 400,
                height: 64,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Full Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                width: 400,
                height: 64,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Phone Number',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                width: 400,
                height: 64,
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email_outlined),
                      hintText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                width: 400,
                height: 64,
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.key),
                      hintText: 'Access Code',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
            ],
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 128,
                  height: 32,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      side: MaterialStateProperty.all(const BorderSide(
                          color: Color.fromARGB(229, 58, 0, 229))),
                    ),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                          color: Color.fromARGB(229, 58, 0, 229),
                          fontWeight: FontWeight.w500),
                    ),
                    onPressed: () => Navigator.of(context).pop(Action.cancel),
                  ),
                ),
                SizedBox(
                  width: 128,
                  height: 32,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(229, 58, 0, 229)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      side: MaterialStateProperty.all(
                        const BorderSide(
                            color: Color.fromARGB(229, 58, 0, 229)),
                      ),
                    ),
                    child: const Text(
                      'Add Users',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                    onPressed: () => Navigator.of(context).pop(Action.add),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
    return (action != null) ? action : Action.cancel;
  }
}
