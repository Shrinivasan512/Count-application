import 'package:mobx/mobx.dart';
/* Build the generic  */
part 'HomeScreenModel.g.dart';

class HomeScreenModel = _HomeScreenModelBase with _$HomeScreenModel;

abstract class _HomeScreenModelBase with Store {
  /* Observable is used to view the changes  */
  @observable
  /* Declare the variable counter as 0 */
  int counter = 0;
  /* Returns nothing as the method to use the required paramter from the user */
  void setcounter({required int counter}) {
    /* This  is initiated to self call the variable counter */
    this.counter = counter;
  }
}
