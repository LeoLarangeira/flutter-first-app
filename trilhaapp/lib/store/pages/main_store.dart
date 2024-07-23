import 'package:mobx/mobx.dart';

part 'main_store.g.dart';

class mainPage = _MainPage with _$mainPage;

abstract class _MainPage with Store {
  @observable
  int pagePosition = 0;

  @action
  void changePage(int position) {
    pagePosition = position;
  }
}
