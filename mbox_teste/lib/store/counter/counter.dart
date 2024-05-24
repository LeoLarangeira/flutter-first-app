import 'package:mobx/mobx.dart';

part 'counter.g.dart';

class Counter = _Counter with _$Counter;

// The underscore (_) indicates that the class is private.
// With 'Store', Dart allows us to use mixins, enabling this template to be reused across different classes.
// The 'store' transforms the class into an Observable object, making its properties and methods observable.
abstract class _Counter with Store {
  @observable
  int count = 0;

  @action
  void increment() {
    count++;
  }

  @action
  void decrement() {
    count--;
  }
}
