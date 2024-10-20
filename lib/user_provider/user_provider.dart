import 'package:flutter/material.dart';
import 'package:flutter_provider_example/models/user_info.dart';

class UserProvider extends ChangeNotifier
{
    List<UserInfo> userList = <UserInfo>[];
    Future<void> addUser({required String name,required int age}) async{
        UserInfo userInfo = UserInfo(name: name,age: age);
        userList.add(userInfo);
        notifyListeners();
    }

    void removeUser({required UserInfo userObj}){
        userList.remove(userObj);
        notifyListeners();
    }
}