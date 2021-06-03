

import 'package:ecom/homeModel.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.asNewInstance();

void setUpLocator()
{

  locator.registerFactory<homeModel>(() => homeModel());


}