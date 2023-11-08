// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:pocketbase/pocketbase.dart';

Future<List<UserStruct>> usersList() async {
  // Add your function code here!
  final pb = PocketBase('http://pocketbase.proplayclub.ru');
  // you can also fetch all records at once via getFullList
  final records = await pb.collection('users').getFullList(
        sort: '-created',
      );

  List<UserStruct> myList = [];
  records.forEach((record) {
    UserStruct userObject = UserStruct(
        username: record.getStringValue('username'),
        email: record.getStringValue('email'));

    myList.add(userObject);
  });

  return myList;
}
