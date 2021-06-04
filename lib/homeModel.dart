

import 'package:ecom/authService.dart';
import 'package:ecom/setUpLocator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:scoped_model/scoped_model.dart';

class homeModel extends Model{

  authService authServ  = locator<authService>();

  Future<User> authEmail() async
  {

    User user = await authServ.authGogl();

    return user;

  }


}