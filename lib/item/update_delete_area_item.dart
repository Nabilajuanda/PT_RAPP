import 'package:flutter/material.dart';

enum Action { update, delete, cancel }

class UpdateDeleteAreaItem {
  static Future<Action> updateDeleteDialog(
    BuildContext context,
  ) async {
    final action = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: SizedBox(
              height: 80,
              width: 80,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.edit_rounded),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(Action.update);
                        },
                        child: const Text('Update'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/outline_delete_black_24dp.png'),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(Action.delete);
                        },
                        child: const Text('Delete'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
    return (action != null) ? action : Action.cancel;
  }
}
