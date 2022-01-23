import 'dart:io';
import 'MainMenu.dart';
import 'Route.dart';
import 'SubMenus.dart';

void main(){
  String? choice = Mainmenu.show();
  Route.route(choice!);
  }
  
