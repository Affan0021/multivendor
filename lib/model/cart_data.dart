import 'package:flutter/cupertino.dart';

import 'cart_model.dart';

class DataModel extends ChangeNotifier{
  List<CartModel> taskList = []; //contians all the task

  addTaskInList(String title ,String price , String image , String mrp){
    CartModel notesModel = CartModel("${title}","${price}", "${mrp}" , image);
    taskList.add(notesModel);

    notifyListeners();
    //code to do
  }

}