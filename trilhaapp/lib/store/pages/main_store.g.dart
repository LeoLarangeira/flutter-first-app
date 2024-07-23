// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$mainPage on _MainPage, Store {
  late final _$pagePositionAtom =
      Atom(name: '_MainPage.pagePosition', context: context);

  @override
  int get pagePosition {
    _$pagePositionAtom.reportRead();
    return super.pagePosition;
  }

  @override
  set pagePosition(int value) {
    _$pagePositionAtom.reportWrite(value, super.pagePosition, () {
      super.pagePosition = value;
    });
  }

  late final _$_MainPageActionController =
      ActionController(name: '_MainPage', context: context);

  @override
  void changePage(dynamic controller) {
    final _$actionInfo =
        _$_MainPageActionController.startAction(name: '_MainPage.changePage');
    try {
      return super.changePage(controller);
    } finally {
      _$_MainPageActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pagePosition: ${pagePosition}
    ''';
  }
}
