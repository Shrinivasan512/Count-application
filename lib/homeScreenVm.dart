import 'package:count/HomeScreenModel.dart';

class homeScreenVm extends HomeScreenModel {
  /* Create a method to add the counter by 1 */
  void updateCounter() {
     //Setcounter method is used to add the paramter of counter by 1
    setcounter(counter: counter + 1);
    // counter = counter+1;
    print("*****************");
    print(counter);
    print("***********************");
  }

    /* Create a method to subract the counter by 1 */
  void Subract() {
    //Setcounter method is used to subract the paramter of counter by 1
    setcounter(counter: counter - 1);
    print("*****************");
    print(counter);
    print("***********************");
  }
}
